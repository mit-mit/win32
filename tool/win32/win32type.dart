import 'package:winmd/winmd.dart';

class TypeTuple {
  final String nativeType;
  final String dartType;
  final String attribute;

  const TypeTuple(this.nativeType, this.dartType, {this.attribute = ''});
}

const Map<BaseType, TypeTuple> baseNativeMapping = {
  BaseType.Void: TypeTuple('Void', 'void'),
  BaseType.Boolean: TypeTuple('Bool', 'bool', attribute: '@Bool()'),
  BaseType.Int8: TypeTuple('Int8', 'int', attribute: '@Int8()'),
  BaseType.Uint8: TypeTuple('Uint8', 'int', attribute: '@Uint8()'),
  BaseType.Int16: TypeTuple('Int16', 'int', attribute: '@Int16()'),
  BaseType.Uint16: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
  BaseType.Int32: TypeTuple('Int32', 'int', attribute: '@Int32()'),
  BaseType.Uint32: TypeTuple('Uint32', 'int', attribute: '@Uint32()'),
  BaseType.Int64: TypeTuple('Int64', 'int', attribute: '@Int64()'),
  BaseType.Uint64: TypeTuple('Uint64', 'int', attribute: '@Uint64()'),
  BaseType.IntPtr: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  BaseType.Float: TypeTuple('Float', 'double', attribute: '@Float()'),
  BaseType.Double: TypeTuple('Double', 'double', attribute: '@Double()'),
  BaseType.UintPtr: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  BaseType.Char: TypeTuple('Uint16', 'int', attribute: '@Uint16()')
};

const Map<String, TypeTuple> specialTypeMapping = {
  'Windows.Win32.Foundation.PWSTR':
      TypeTuple('Pointer<Utf16>', 'Pointer<Utf16>'),
  'Windows.Win32.Foundation.PSTR': TypeTuple('Pointer<Utf8>', 'Pointer<Utf8>'),
  'Windows.Win32.Foundation.LARGE_INTEGER': TypeTuple('Int64', 'int'),
  'Windows.Win32.Foundation.ULARGE_INTEGER': TypeTuple('Uint64', 'int'),
  'System.Guid': TypeTuple('GUID', 'GUID'),
};

class NewTypeProjector {
  final TypeIdentifier typeIdentifier;
  late final TypeTuple projection;

  NewTypeProjector(this.typeIdentifier) {
    projection = projectType();
  }

  String get attribute => projection.attribute;
  String get nativeType => projection.nativeType;
  String get dartType => projection.dartType;

  bool get isIntrinsic =>
      baseNativeMapping.keys.contains(typeIdentifier.baseType);

  bool get isWin32SpecialType =>
      specialTypeMapping.keys.contains(typeIdentifier.name);

  bool get isEnum => typeIdentifier.type?.parent?.name == 'System.Enum';

  bool get isWrappedValueType =>
      typeIdentifier.baseType == BaseType.ValueTypeModifier;

  bool get isPointerType =>
      typeIdentifier.baseType == BaseType.PointerTypeModifier;

  bool get isArrayType => typeIdentifier.baseType == BaseType.ArrayTypeModifier;

  bool get isWin32Delegate =>
      typeIdentifier.baseType == BaseType.ClassTypeModifier &&
      typeIdentifier.type?.parent?.name == 'System.MulticastDelegate';

  bool get isComInterface {
    if (typeIdentifier.name.endsWith('IUnknown')) {
      return true;
    }

    // Keep checking up the chain to see if this inherits from IUnknown
    var interfaces = typeIdentifier.type?.interfaces;
    while (interfaces != null && interfaces.isNotEmpty) {
      if (interfaces.first.name.endsWith('IUnknown')) {
        return true;
      }
      interfaces = interfaces.first.interfaces;
    }

    return false;
  }

  TypeTuple unwrapEnumType() {
    final fieldType = typeIdentifier.type?.findField('value__')?.typeIdentifier;
    if (fieldType == null) {
      throw Exception('Enum $typeIdentifier is missing value__');
    }
    return NewTypeProjector(fieldType).projection;
  }

  TypeTuple unwrapValueType() {
    final wrappedType = typeIdentifier.type;
    if (wrappedType == null) {
      throw Exception(
          'Wrapped type TypeIdentifier missing for $typeIdentifier.');
    }

    // A type like HWND
    if (wrappedType
        .customAttributeAsBytes('Windows.Win32.Interop.NativeTypedefAttribute')
        .isNotEmpty) {
      final typeIdentifier = wrappedType.fields.first.typeIdentifier;
      return NewTypeProjector(typeIdentifier).projection;
    } else {
      final typeClass = wrappedType.name.split('.').last;
      return TypeTuple(typeClass, typeClass);
    }
  }

  TypeTuple unwrapPointerType() {
    if (typeIdentifier.typeArg == null) {
      throw Exception('Pointer type missing for $typeIdentifier.');
    }
    final typeArg = NewTypeProjector(typeIdentifier.typeArg!);

    // Pointer<Void> in Dart is unnecessarily restrictive, versus the
    // Win32 meaning, which is more like "undefined type". We can
    // model that with a generic Pointer in Dart.
    final projection = typeArg.projection;
    if (projection.nativeType == 'Void') {
      return TypeTuple('Pointer', 'Pointer');
    }

    final nativeType = 'Pointer<${projection.nativeType}>';
    final dartType = 'Pointer<${projection.nativeType}>';

    return TypeTuple(nativeType, dartType);
  }

  TypeTuple unwrapArrayType() {
    if (typeIdentifier.typeArg == null ||
        typeIdentifier.arrayDimensions == null) {
      throw Exception('Array information missing for $typeIdentifier.');
    }

    final typeArg = NewTypeProjector(typeIdentifier.typeArg!);
    final projection = typeArg.projection;

    final nativeType = 'Array<${projection.nativeType}>';
    final dartType = 'Array<${projection.nativeType}>';
    final upperBound = typeIdentifier.arrayDimensions?.first;

    return TypeTuple(nativeType, dartType, attribute: '@Array($upperBound)');
  }

  TypeTuple unwrapCallbackType() {
    final callbackType = typeIdentifier.name.split('.').last;

    final nativeType = 'Pointer<NativeFunction<$callbackType>>';
    final dartType = 'Pointer<NativeFunction<$callbackType>>';

    return TypeTuple(nativeType, dartType);
  }

  TypeTuple projectType() {
    // Could be an intrinsic base type (e.g. Int32)
    if (isIntrinsic) {
      return baseNativeMapping[typeIdentifier.baseType]!;
    }

    // Could be a string or other special type that we want to custom-map
    if (isWin32SpecialType) {
      return specialTypeMapping[typeIdentifier.name]!;
    }

    // Could be an enum like FOLDERFLAGS
    if (isEnum) {
      return unwrapEnumType();
    }

    // Could be a wrapped type (e.g. a HWND)
    if (isWrappedValueType) {
      return unwrapValueType();
    }

    if (isPointerType) {
      return unwrapPointerType();
    }

    if (isArrayType) {
      return unwrapArrayType();
    }

    if (isWin32Delegate) {
      return unwrapCallbackType();
    }

    if (isComInterface) {
      return TypeTuple('Pointer<COMObject>', 'Pointer<COMObject>');
    }

    // default: return the name as returned by metadata
    throw Exception('Type information missing for $typeIdentifier.');
  }
}