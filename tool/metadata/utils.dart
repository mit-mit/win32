// Useful utilities

import 'dart:io';

import 'package:winmd/winmd.dart';

/// Strip the Unicode / ANSI suffix from the name. For example,`MessageBoxW`
/// should become `MessageBox`. Heuristic approach.
String nameWithoutEncoding(String typeName) {
  if (typeName.endsWith('DATA')) {
    return typeName;
  }
  if (typeName.endsWith('W') || typeName.endsWith('A')) {
    return typeName.substring(0, typeName.length - 1);
  }
  return typeName;
}

/// Take an input string and turn it into a multi-line doc comment.
String wrapCommentText(String inputText, [int wrapLength = 76]) {
  final words = inputText.split(' ');
  final textLine = StringBuffer('/// ');
  final outputText = StringBuffer();

  for (final word in words) {
    if ((textLine.length + word.length) >= wrapLength) {
      textLine.write('\n');
      outputText.write(textLine);
      textLine.clear();
      textLine.write('/// $word ');
    } else {
      textLine.write('$word ');
    }
  }

  outputText.write(textLine);
  return outputText.toString().trimRight();
}

/// Take a fully-qualified interface name (e.g.
/// `Windows.Win32.UI.Shell.IShellLinkW`) and return the corresponding class
/// name (e.g. `Windows.Win32.UI.Shell.ShellLink`).
String classNameForInterfaceName(String interfaceName) {
  final interfaceNameAsList = interfaceName.split('.');

  // Strip off the 'I' from the last component
  final fullyQualifiedClassName =
      (interfaceNameAsList.sublist(0, interfaceNameAsList.length - 1)
            ..add(interfaceNameAsList.last.substring(1)))
          .join('.');

  // If class has a 'W' suffix, erase it.
  return nameWithoutEncoding(fullyQualifiedClassName);
}

extension CamelCaseConversion on String {
  String toCamelCase() =>
      length >= 2 ? substring(0, 1).toLowerCase() + substring(1) : this;
}

/// Given a known file of arbitrary depth in the lib/src hierarchy, return the
/// relative path to the src parent directory.
String relativePathToSrcDirectory(File file) {
  // Find out how many parents there are to the lib/src directory
  final pathDepth = file.path.split('/').reversed.toList().indexOf('src') - 1;

  return '../' * pathDepth;
}

String importForWin32Type(TypeIdentifier identifier) {
  if (identifier.type != null && identifier.type!.isDelegate) {
    return '${folderFromNamespace(identifier.name)}/callbacks.g.dart';
  } else if (identifier.type!.isInterface) {
    return '${folderFromNamespace(identifier.name)}/${identifier.name.split(".").last}.dart';
  } else {
    return '${folderFromNamespace(identifier.name)}/structs.g.dart';
  }
}

/// Converts a namespace (e.g. `Windows.Win32.System.Console`) and returns the
/// matching folder (e.g. `system/console`).
String folderFromNamespace(String namespace) {
  final segments = namespace.split('.').skip(2).toList()..removeLast();

  return segments.join('/').toLowerCase();
}
