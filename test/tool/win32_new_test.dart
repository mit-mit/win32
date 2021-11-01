@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../../tool/win32/win32type.dart';

void main() {
  test('Special types exist in metadata', () {
    final scope = MetadataStore.getWin32Scope();
    for (final specialType in specialTypeMapping.keys
        .where((type) => type.startsWith('Windows.Win32'))) {
      expect(scope.findTypeDef(specialType), isNotNull,
          reason: '$specialType missing');
    }
  });

  test('Simple int type', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.System.Console.Apis');
    final api = typedef?.findMethod('GenerateConsoleCtrlEvent');
    expect(api, isNotNull);

    final param = api!.parameters.first.typeIdentifier; // uint32

    final typeProjection = NewTypeProjector(param);
    expect(typeProjection.nativeType, equals('Uint32'));
    expect(typeProjection.dartType, equals('int'));
  });

  test('HANDLE type', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis');
    final api = typedef?.findMethod('CloseWindow');
    expect(api, isNotNull);

    final param = api!.parameters.first.typeIdentifier; // HWND

    final typeProjection = NewTypeProjector(param);
    expect(typeProjection.nativeType, equals('IntPtr'));
    expect(typeProjection.dartType, equals('int'));
  });

  test('PWSTR type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis');
    final api = typedef?.findMethod('GetWindowTextW');
    expect(api, isNotNull);

    final param = api!.parameters[1].typeIdentifier; // PWSTR

    final typeProjection = NewTypeProjector(param);
    expect(typeProjection.nativeType, equals('Pointer<Utf16>'));
    expect(typeProjection.dartType, equals('Pointer<Utf16>'));
  });

  test('LPSTR type', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef =
        scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.Apis');
    final api = typedef?.findMethod('GetKeyNameTextA');

    expect(api, isNotNull);

    final param = api!.parameters[1].typeIdentifier; // LPSTR
    final typeProjection = NewTypeProjector(param);

    expect(typeProjection.nativeType, equals('Pointer<Utf8>'));
    expect(typeProjection.dartType, equals('Pointer<Utf8>'));
  });

  test('Pointer<T>', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef =
        scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.Apis');
    final api = typedef?.findMethod('GetKeyboardState');

    expect(api, isNotNull);

    final param = api!.parameters.first.typeIdentifier; // PBYTE
    final typeProjection = NewTypeProjector(param);

    expect(typeProjection.nativeType, equals('Pointer<Uint8>'));
    expect(typeProjection.dartType, equals('Pointer<Uint8>'));
  });

  test('LPHANDLE-style parameters have the correct projection', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis');
    final api = typedef?.findMethod('CascadeWindows');
    expect(api, isNotNull);

    final param = api!.parameters.last.typeIdentifier;
    final typeProjection = NewTypeProjector(param);

    expect(typeProjection.nativeType, equals('Pointer<IntPtr>'));
    expect(typeProjection.dartType, equals('Pointer<IntPtr>'));
  });

  test('Unicode string w/ double pointer', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.UI.Shell.Apis');
    final api = typedef?.findMethod('SHGetKnownFolderPath');

    expect(api, isNotNull);

    final param = api!.parameters.last.typeIdentifier; // PWSTR *
    final typeProjection = NewTypeProjector(param);

    expect(typeProjection.nativeType, equals('Pointer<Pointer<Utf16>>'));
    expect(typeProjection.dartType, equals('Pointer<Pointer<Utf16>>'));
  });

  test('Pointer<Pointer<T>>', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef =
        scope.findTypeDef('Windows.Win32.Security.Credentials.Apis');
    final api = typedef?.findMethod('CredReadW');

    expect(api, isNotNull);

    final param = api!.parameters.last.typeIdentifier; // PCREDENTIALW *
    final typeProjection = NewTypeProjector(param);

    expect(typeProjection.nativeType, equals('Pointer<Pointer<CREDENTIALW>>'));
    expect(typeProjection.dartType, equals('Pointer<Pointer<CREDENTIALW>>'));
  });

  test('COM interface parameter', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.System.Com.Apis');
    final api = typedef?.findMethod('CoSetProxyBlanket')!;

    expect(api, isNotNull);

    final type = api!.parameters.first.typeIdentifier; // IUnknown
    final typeProjection = NewTypeProjector(type);

    expect(typeProjection.dartType, equals('Pointer<COMObject>'));
    expect(typeProjection.nativeType, equals('Pointer<COMObject>'));
  });

  test('Inherited COM interface parameter', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.System.Com.Apis');
    final api = typedef?.findMethod('CreateAntiMoniker')!;

    expect(api, isNotNull);

    final type = api!.parameters.first.typeIdentifier; // IMoniker*
    final typeProjection = NewTypeProjector(type);

    expect(typeProjection.dartType, equals('Pointer<Pointer<COMObject>>'));
    expect(typeProjection.nativeType, equals('Pointer<Pointer<COMObject>>'));
  });

  test('Pass pointers to COM interfaces', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.System.Com.Apis');
    final api = typedef?.findMethod('CoCreateInstance');

    expect(api, isNotNull);

    final param = api!.parameters[1].typeIdentifier; // LPUNKNOWN
    final typeProjection = NewTypeProjector(param);

    expect(typeProjection.dartType, equals('Pointer<COMObject>'));
    expect(typeProjection.nativeType, equals('Pointer<COMObject>'));
  });

  test('Pass double pointers to COM interfaces', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef =
        scope.findTypeDef('Windows.Win32.System.Ole.Automation.Apis');
    final api = typedef?.findMethod('GetActiveObject');

    expect(api, isNotNull);

    final type = api!.parameters.last.typeIdentifier; // IUnknown **
    final typeProjection = NewTypeProjector(type);

    expect(typeProjection.nativeType, equals('Pointer<Pointer<COMObject>>'));
    expect(typeProjection.dartType, equals('Pointer<Pointer<COMObject>>'));
  });

  test('OLECHAR is represented correctly', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.Foundation.Apis');
    final api = typedef?.findMethod('SysAllocString')!;

    expect(api, isNotNull);
    final type = api!.parameters.first.typeIdentifier; // OLECHAR *
    final typeProjection = NewTypeProjector(type);

    expect(typeProjection.nativeType, equals('Pointer<Utf16>'));
    expect(typeProjection.dartType, equals('Pointer<Utf16>'));
  });

  test('Callbacks are represented correctly', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    final api = typedef?.findMethod('EnumFontFamiliesExW');

    expect(api, isNotNull);

    final type = api!.parameters[2].typeIdentifier; // FONTENUMPROCW
    final typeProjection = NewTypeProjector(type);

    expect(typeProjection.nativeType,
        equals('Pointer<NativeFunction<FONTENUMPROCW>>'));
    expect(typeProjection.dartType,
        equals('Pointer<NativeFunction<FONTENUMPROCW>>'));
  });

  test('Callbacks are represented correctly 2', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef =
        scope.findTypeDef('Windows.Win32.System.Diagnostics.Debug.Apis');
    final api = typedef?.findMethod('SymEnumSymbolsW');

    expect(api, isNotNull);

    final type =
        api!.parameters[3].typeIdentifier; // PSYM_ENUMERATESYMBOLS_CALLBACKW
    final typeProjection = NewTypeProjector(type);

    expect(typeProjection.nativeType,
        equals('Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>>'));
    expect(typeProjection.dartType,
        equals('Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>>'));
  });

  test('Pointers to structs are represented correctly', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.UI.Controls.Dialogs.Apis');
    final api = typedef?.findMethod('ChooseFontW');

    expect(api, isNotNull);
    final type = api!.parameters.first.typeIdentifier; // CHOOSEFONTW
    final typeProjection = NewTypeProjector(type);

    expect(typeProjection.nativeType, equals('Pointer<CHOOSEFONTW>'));
    expect(typeProjection.dartType, equals('Pointer<CHOOSEFONTW>'));
  });

  test('Naked structs are represented correctly', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.System.Threading.Apis');
    final api = typedef?.findMethod('InitializeProcThreadAttributeList');

    expect(api, isNotNull);

    final type =
        api!.parameters.first.typeIdentifier; // LPPROC_THREAD_ATTRIBUTE_LIST
    final typeProjection = NewTypeProjector(type);

    expect(typeProjection.nativeType, equals('Pointer'));
    expect(typeProjection.dartType, equals('Pointer'));
  });

  test('Enumeration params are represented correctly', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    final api = typedef?.findMethod('CreateDIBitmap');

    expect(api, isNotNull);
    final type = api!.parameters.last.typeIdentifier;
    final typeProjection = NewTypeProjector(type);

    expect(typeProjection.nativeType, equals('Uint32'));
    expect(typeProjection.dartType, equals('int'));
  });

  test('Enumerations that are not 32-bit are represented correctly', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.System.EventLog.Apis');
    final api = typedef?.findMethod('ReportEventW');

    expect(api, isNotNull);

    final type = api!.parameters[1].typeIdentifier;

    final typeProjection = NewTypeProjector(type);

    expect(typeProjection.nativeType, equals('Uint16'));
    expect(typeProjection.dartType, equals('int'));
  });

  test('Pointer<Enum> params are represented correctly', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.System.Pipes.Apis');
    final api = typedef?.findMethod('GetNamedPipeInfo')!;

    expect(api, isNotNull);
    final type = api!.parameters[1].typeIdentifier;
    final typeProjection = NewTypeProjector(type);

    expect(typeProjection.nativeType, equals('Pointer<Uint32>'));
    expect(typeProjection.dartType, equals('Pointer<Uint32>'));
  });

  test('Void returns are represented correctly', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef =
        scope.findTypeDef('Windows.Win32.Security.Credentials.Apis');
    final api = typedef?.findMethod('CredFree');

    expect(api, isNotNull);

    final type = api!.returnType.typeIdentifier;
    final typeProjection = NewTypeProjector(type);

    expect(typeProjection.nativeType, equals('Void'));
    expect(typeProjection.dartType, equals('void'));
  });

  test('HANDLE should be projected as an IntPtr', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.System.Threading.Apis');
    final api = typedef?.findMethod('GetCurrentProcess');

    expect(api, isNotNull);

    final returnType = api!.returnType.typeIdentifier;

    expect(returnType.baseType, equals(BaseType.ValueTypeModifier));
    expect(returnType.name, equals('Windows.Win32.Foundation.HANDLE'));

    final projection = NewTypeProjector(returnType);
    expect(projection.nativeType, equals('IntPtr'));
    expect(projection.dartType, equals('int'));
  });

  test('LARGE_INTEGER should be projected as an Int64', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.Storage.FileSystem.Apis');
    final api = typedef?.findMethod('SetFilePointerEx');

    expect(api, isNotNull);

    final param = api!.parameters[1];

    final projection = NewTypeProjector(param.typeIdentifier);
    expect(projection.nativeType, equals('Int64'));
    expect(projection.dartType, equals('int'));
  });

  test('Struct array field projects correctly', () {
    final scope = MetadataStore.getWin32Scope();

    final procInfo = scope.findTypeDef('Windows.Win32.Graphics.Gdi.BITMAPINFO');
    final bmiColors = procInfo?.fields.last.typeIdentifier;

    expect(bmiColors, isNotNull);

    final projection = NewTypeProjector(bmiColors!);

    expect(projection.nativeType, equals('Array<RGBQUAD>'));
    expect(projection.dartType, equals('Array<RGBQUAD>'));
  });

  test('ULARGE_INTEGER projects correctly', () {
    final scope = MetadataStore.getWin32Scope();

    final procInfo = scope.findTypeDef('Windows.Win32.System.Com.STATSTG');
    final cbSize = procInfo?.fields[2].typeIdentifier; // cbSize

    expect(cbSize, isNotNull);
    final projection = NewTypeProjector(cbSize!);

    expect(projection.nativeType, equals('Uint64'));
    expect(projection.dartType, equals('int'));
  });

  test('native int parameters have the correct projection', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.Devices.Bluetooth.Apis');
    final api = typedef?.findMethod('BluetoothFindNextDevice');

    expect(api, isNotNull);

    final param = api!.parameters.first; // native int
    final projection = NewTypeProjector(param.typeIdentifier);

    expect(projection.nativeType, equals('IntPtr'));
    expect(projection.dartType, equals('int'));
  });

  test('LPVOID parameters are projected to Pointer, not Pointer<Void>', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef =
        scope.findTypeDef('Windows.Win32.Security.Credentials.Apis');
    final api = typedef?.findMethod('CredFree')!;

    expect(api, isNotNull);

    final param = api!.parameters.first;
    expect(param.name, equals('Buffer'));
    final projection = NewTypeProjector(param.typeIdentifier);

    expect(projection.nativeType, equals('Pointer'));
    expect(projection.dartType, equals('Pointer'));
  });

  test('BluetoothRemoveDevice struct', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef = scope.findTypeDef('Windows.Win32.Devices.Bluetooth.Apis');
    final api = typedef?.findMethod('BluetoothRemoveDevice');

    expect(api, isNotNull);

    final param = api!.parameters.first;
    expect(param.name, equals('pAddress'));
    final projection = NewTypeProjector(param.typeIdentifier);

    expect(projection.nativeType, equals('Pointer<BLUETOOTH_ADDRESS>'));
    expect(projection.dartType, equals('Pointer<BLUETOOTH_ADDRESS>'));
  });

  test('Array is projected correctly 1', () {
    final scope = MetadataStore.getWin32Scope();

    final struct = scope
        .findTypeDef('Windows.Win32.Devices.Bluetooth.BLUETOOTH_RADIO_INFO');
    expect(struct, isNotNull);

    final field = struct!.fields[2];
    expect(field.name, equals('szName'));
    final projection = NewTypeProjector(field.typeIdentifier);

    expect(projection.nativeType, equals('Array<Uint16>'));
    expect(projection.dartType, equals('Array<Uint16>'));
    expect(projection.attribute, equals('@Array(248)'));
  });

  test('Array is projected correctly 2', () {
    final scope = MetadataStore.getWin32Scope();

    final struct = scope
        .findTypeDef('Windows.Win32.NetworkManagement.WiFi.DOT11_NETWORK_LIST');
    expect(struct, isNotNull);

    final field = struct!.fields.last;
    expect(field.name, equals('Network'));
    final projection = NewTypeProjector(field.typeIdentifier);

    expect(projection.nativeType, equals('Array<DOT11_NETWORK>'));
    expect(projection.dartType, equals('Array<DOT11_NETWORK>'));
    expect(projection.attribute, equals('@Array(1)'));
  });

  test('Array is projected correctly 3', () {
    final scope = MetadataStore.getWin32Scope();

    final struct =
        scope.findTypeDef('Windows.Win32.UI.Magnification.MAGCOLOREFFECT');
    expect(struct, isNotNull);

    final field = struct!.fields.first;
    final projection = NewTypeProjector(field.typeIdentifier);

    expect(projection.nativeType, equals('Array<Float>'));
    expect(projection.dartType, equals('Array<Float>'));
    expect(projection.attribute, equals('@Array(25)'));
  });

  test('GUIDs are projected correctly', () {
    final scope = MetadataStore.getWin32Scope();

    final typedef =
        scope.findTypeDef('Windows.Win32.System.PropertiesSystem.Apis');
    final api = typedef?.findMethod('PSPropertyBag_WriteGUID')!;

    expect(api, isNotNull);

    final param = api!.parameters.last;
    final projection = NewTypeProjector(param.typeIdentifier);

    expect(projection.nativeType, equals('Pointer<GUID>'));
    expect(projection.dartType, equals('Pointer<GUID>'));
    expect(projection.attribute, isEmpty);
  });
}