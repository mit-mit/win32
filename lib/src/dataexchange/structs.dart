// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class METAFILEPICT extends Struct {
  @Int32() external int mm;
  @Int32() external int xExt;
  @Int32() external int yExt;
  @IntPtr() external int hMF;
}

class HCONV extends Struct {
  @IntPtr() external int Value;
}

class HCONVLIST extends Struct {
  @IntPtr() external int Value;
}

class HDDEDATA extends Struct {
  @IntPtr() external int Value;
}

class HSZ extends Struct {
  @IntPtr() external int Value;
}

class COPYDATASTRUCT extends Struct {
  @IntPtr() external int dwData;
  @Uint32() external int cbData;
  external Pointer lpData;
}

class DDEACK extends Struct {
  @Uint16() external int _bitfield;
}

class DDEADVISE extends Struct {
  @Uint16() external int _bitfield;
  @Int16() external int cfFormat;
}

class DDEDATA extends Struct {
  @Uint16() external int _bitfield;
  @Int16() external int cfFormat;
  external __ubyte__ Value;
}

class DDEPOKE extends Struct {
  @Uint16() external int _bitfield;
  @Int16() external int cfFormat;
  external __ubyte__ Value;
}

class DDELN extends Struct {
  @Uint16() external int _bitfield;
  @Int16() external int cfFormat;
}

class DDEUP extends Struct {
  @Uint16() external int _bitfield;
  @Int16() external int cfFormat;
  external __ubyte__ rgb;
}

class HSZPAIR extends Struct {
  external HSZ hszSvc;
  external HSZ hszTopic;
}

class CONVCONTEXT extends Struct {
  @Uint32() external int cb;
  @Uint32() external int wFlags;
  @Uint32() external int wCountryID;
  @Int32() external int iCodePage;
  @Uint32() external int dwLangID;
  @Uint32() external int dwSecurity;
  external SECURITY_QUALITY_OF_SERVICE qos;
}

class CONVINFO extends Struct {
  @Uint32() external int cb;
  @IntPtr() external int hUser;
  external HCONV hConvPartner;
  external HSZ hszSvcPartner;
  external HSZ hszServiceReq;
  external HSZ hszTopic;
  external HSZ hszItem;
  @Uint32() external int wFmt;
  @Uint32() external int wType;
  @Uint32() external int wStatus;
  @Uint32() external int wConvst;
  @Uint32() external int wLastError;
  external HCONVLIST hConvList;
  external CONVCONTEXT ConvCtxt;
  @IntPtr() external int hwnd;
  @IntPtr() external int hwndPartner;
}

class DDEML_MSG_HOOK_DATA extends Struct {
  @IntPtr() external int uiLo;
  @IntPtr() external int uiHi;
  @Uint32() external int cbData;
  external __uint__ Data;
}

class MONMSGSTRUCT extends Struct {
  @Uint32() external int cb;
  @IntPtr() external int hwndTo;
  @Uint32() external int dwTime;
  @IntPtr() external int hTask;
  @Uint32() external int wMsg;
  @IntPtr() external int wParam;
  @IntPtr() external int lParam;
  external DDEML_MSG_HOOK_DATA dmhd;
}

class MONCBSTRUCT extends Struct {
  @Uint32() external int cb;
  @Uint32() external int dwTime;
  @IntPtr() external int hTask;
  @Uint32() external int dwRet;
  @Uint32() external int wType;
  @Uint32() external int wFmt;
  external HCONV hConv;
  external HSZ hsz1;
  external HSZ hsz2;
  external HDDEDATA hData;
  @IntPtr() external int dwData1;
  @IntPtr() external int dwData2;
  external CONVCONTEXT cc;
  @Uint32() external int cbData;
  external __uint__ Data;
}

class MONHSZSTRUCTA extends Struct {
  @Uint32() external int cb;
  @Int32() external int fsAction;
  @Uint32() external int dwTime;
  external HSZ hsz;
  @IntPtr() external int hTask;
  external __byte__ str;
}

class MONHSZSTRUCTW extends Struct {
  @Uint32() external int cb;
  @Int32() external int fsAction;
  @Uint32() external int dwTime;
  external HSZ hsz;
  @IntPtr() external int hTask;
  external __ushort__ str;
}

class MONERRSTRUCT extends Struct {
  @Uint32() external int cb;
  @Uint32() external int wLastError;
  @Uint32() external int dwTime;
  @IntPtr() external int hTask;
}

class MONLINKSTRUCT extends Struct {
  @Uint32() external int cb;
  @Uint32() external int dwTime;
  @IntPtr() external int hTask;
  @Int32() external int fEstablished;
  @Int32() external int fNoData;
  external HSZ hszSvc;
  external HSZ hszTopic;
  external HSZ hszItem;
  @Uint32() external int wFmt;
  @Int32() external int fServer;
  external HCONV hConvServer;
  external HCONV hConvClient;
}

class MONCONVSTRUCT extends Struct {
  @Uint32() external int cb;
  @Int32() external int fConnect;
  @Uint32() external int dwTime;
  @IntPtr() external int hTask;
  external HSZ hszSvc;
  external HSZ hszTopic;
  external HCONV hConvClient;
  external HCONV hConvServer;
}
