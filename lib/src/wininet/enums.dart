/// {@category Enum}
class APP_CACHE_FINALIZE_STATE {
  static const AppCacheFinalizeStateIncomplete = 0x00000000;
  static const AppCacheFinalizeStateManifestChange = 0x00000001;
  static const AppCacheFinalizeStateComplete = 0x00000002;
}

/// {@category Enum}
class APP_CACHE_STATE {
  static const AppCacheStateNoUpdateNeeded = 0x00000000;
  static const AppCacheStateUpdateNeeded = 0x00000001;
  static const AppCacheStateUpdateNeededNew = 0x00000002;
  static const AppCacheStateUpdateNeededMasterOnly = 0x00000003;
}

/// {@category Enum}
class CACHE_CONFIG {
  static const CACHE_CONFIG_FORCE_CLEANUP_FC = 0x00000020;
  static const CACHE_CONFIG_DISK_CACHE_PATHS_FC = 0x00000040;
  static const CACHE_CONFIG_SYNC_MODE_FC = 0x00000080;
  static const CACHE_CONFIG_CONTENT_PATHS_FC = 0x00000100;
  static const CACHE_CONFIG_HISTORY_PATHS_FC = 0x00000400;
  static const CACHE_CONFIG_COOKIES_PATHS_FC = 0x00000200;
  static const CACHE_CONFIG_QUOTA_FC = 0x00000800;
  static const CACHE_CONFIG_USER_MODE_FC = 0x00001000;
  static const CACHE_CONFIG_CONTENT_USAGE_FC = 0x00002000;
  static const CACHE_CONFIG_STICKY_CONTENT_USAGE_FC = 0x00004000;
}

/// {@category Enum}
class DetectAutoProxyUrl_dwDetectFlags {
  static const PROXY_AUTO_DETECT_TYPE_DHCP = 0x00000001;
  static const PROXY_AUTO_DETECT_TYPE_DNS_A = 0x00000002;
}

/// {@category Enum}
class FORTCMD {
  static const FORTCMD_LOGON = 0x00000001;
  static const FORTCMD_LOGOFF = 0x00000002;
  static const FORTCMD_CHG_PERSONALITY = 0x00000003;
}

/// {@category Enum}
class FORTSTAT {
  static const FORTSTAT_INSTALLED = 0x00000001;
  static const FORTSTAT_LOGGEDON = 0x00000002;
}

/// {@category Enum}
class Ftp_dwFlags {
  static const FTP_TRANSFER_TYPE_ASCII = 0x00000001;
  static const FTP_TRANSFER_TYPE_BINARY = 0x00000002;
  static const FTP_TRANSFER_TYPE_UNKNOWN = 0x00000000;
  static const INTERNET_FLAG_TRANSFER_ASCII = 0x00000001;
  static const INTERNET_FLAG_TRANSFER_BINARY = 0x00000002;
}

/// {@category Enum}
class GOPHER_TYPE {
  static const GOPHER_TYPE_ASK = 0x40000000;
  static const GOPHER_TYPE_BINARY = 0x00000200;
  static const GOPHER_TYPE_BITMAP = 0x00004000;
  static const GOPHER_TYPE_CALENDAR = 0x00080000;
  static const GOPHER_TYPE_CSO = 0x00000004;
  static const GOPHER_TYPE_DIRECTORY = 0x00000002;
  static const GOPHER_TYPE_DOS_ARCHIVE = 0x00000020;
  static const GOPHER_TYPE_ERROR = 0x00000008;
  static const GOPHER_TYPE_GIF = 0x00001000;
  static const GOPHER_TYPE_GOPHER_PLUS = 0x80000000;
  static const GOPHER_TYPE_HTML = 0x00020000;
  static const GOPHER_TYPE_IMAGE = 0x00002000;
  static const GOPHER_TYPE_INDEX_SERVER = 0x00000080;
  static const GOPHER_TYPE_INLINE = 0x00100000;
  static const GOPHER_TYPE_MAC_BINHEX = 0x00000010;
  static const GOPHER_TYPE_MOVIE = 0x00008000;
  static const GOPHER_TYPE_PDF = 0x00040000;
  static const GOPHER_TYPE_REDUNDANT = 0x00000400;
  static const GOPHER_TYPE_SOUND = 0x00010000;
  static const GOPHER_TYPE_TELNET = 0x00000100;
  static const GOPHER_TYPE_TEXT_FILE = 0x00000001;
  static const GOPHER_TYPE_TN3270 = 0x00000800;
  static const GOPHER_TYPE_UNIX_UUENCODED = 0x00000040;
  static const GOPHER_TYPE_UNKNOWN = 0x20000000;
}

/// {@category Enum}
class HTTP_ADDREQ_FLAG {
  static const HTTP_ADDREQ_FLAG_ADD = 0x20000000;
  static const HTTP_ADDREQ_FLAG_ADD_IF_NEW = 0x10000000;
  static const HTTP_ADDREQ_FLAG_COALESCE = 0x40000000;
  static const HTTP_ADDREQ_FLAG_COALESCE_WITH_COMMA = 0x40000000;
  static const HTTP_ADDREQ_FLAG_COALESCE_WITH_SEMICOLON = 0x01000000;
  static const HTTP_ADDREQ_FLAG_REPLACE = 0x80000000;
}

/// {@category Enum}
class HTTP_PUSH_WAIT_TYPE {
  static const HttpPushWaitEnableComplete = 0x00000000;
  static const HttpPushWaitReceiveComplete = 0x00000001;
  static const HttpPushWaitSendComplete = 0x00000002;
}

/// {@category Enum}
class HTTP_WEB_SOCKET_BUFFER_TYPE {
  static const HTTP_WEB_SOCKET_BINARY_MESSAGE_TYPE = 0x00000000;
  static const HTTP_WEB_SOCKET_BINARY_FRAGMENT_TYPE = 0x00000001;
  static const HTTP_WEB_SOCKET_UTF8_MESSAGE_TYPE = 0x00000002;
  static const HTTP_WEB_SOCKET_UTF8_FRAGMENT_TYPE = 0x00000003;
  static const HTTP_WEB_SOCKET_CLOSE_TYPE = 0x00000004;
  static const HTTP_WEB_SOCKET_PING_TYPE = 0x00000005;
}

/// {@category Enum}
class HTTP_WEB_SOCKET_CLOSE_STATUS {
  static const HTTP_WEB_SOCKET_SUCCESS_CLOSE_STATUS = 0x000003e8;
  static const HTTP_WEB_SOCKET_ENDPOINT_TERMINATED_CLOSE_STATUS = 0x000003e9;
  static const HTTP_WEB_SOCKET_PROTOCOL_ERROR_CLOSE_STATUS = 0x000003ea;
  static const HTTP_WEB_SOCKET_INVALID_DATA_TYPE_CLOSE_STATUS = 0x000003eb;
  static const HTTP_WEB_SOCKET_EMPTY_CLOSE_STATUS = 0x000003ed;
  static const HTTP_WEB_SOCKET_ABORTED_CLOSE_STATUS = 0x000003ee;
  static const HTTP_WEB_SOCKET_INVALID_PAYLOAD_CLOSE_STATUS = 0x000003ef;
  static const HTTP_WEB_SOCKET_POLICY_VIOLATION_CLOSE_STATUS = 0x000003f0;
  static const HTTP_WEB_SOCKET_MESSAGE_TOO_BIG_CLOSE_STATUS = 0x000003f1;
  static const HTTP_WEB_SOCKET_UNSUPPORTED_EXTENSIONS_CLOSE_STATUS = 0x000003f2;
  static const HTTP_WEB_SOCKET_SERVER_ERROR_CLOSE_STATUS = 0x000003f3;
  static const HTTP_WEB_SOCKET_SECURE_HANDSHAKE_ERROR_CLOSE_STATUS = 0x000003f7;
}

/// {@category Enum}
class HTTP_WEB_SOCKET_OPERATION {
  static const HTTP_WEB_SOCKET_SEND_OPERATION = 0x00000000;
  static const HTTP_WEB_SOCKET_RECEIVE_OPERATION = 0x00000001;
  static const HTTP_WEB_SOCKET_CLOSE_OPERATION = 0x00000002;
  static const HTTP_WEB_SOCKET_SHUTDOWN_OPERATION = 0x00000003;
}

/// {@category Enum}
class INTERNET_AUTODIAL {
  static const INTERNET_AUTODIAL_FAILIFSECURITYCHECK = 0x00000004;
  static const INTERNET_AUTODIAL_FORCE_ONLINE = 0x00000001;
  static const INTERNET_AUTODIAL_FORCE_UNATTENDED = 0x00000002;
  static const INTERNET_AUTODIAL_OVERRIDE_NET_PRESENT = 0x00000008;
}

/// {@category Enum}
class INTERNET_CONNECTED_INFO_dwConnectedStateFlags {
  static const INTERNET_STATE_CONNECTED = 0x00000001;
  static const INTERNET_STATE_DISCONNECTED = 0x00000002;
  static const INTERNET_STATE_DISCONNECTED_BY_USER = 0x00000010;
  static const INTERNET_STATE_IDLE = 0x00000100;
  static const INTERNET_STATE_BUSY = 0x00000200;
}

/// {@category Enum}
class INTERNET_CONNECTION {
  static const INTERNET_CONNECTION_CONFIGURED = 0x00000040;
  static const INTERNET_CONNECTION_LAN_ = 0x00000002;
  static const INTERNET_CONNECTION_MODEM = 0x00000001;
  static const INTERNET_CONNECTION_MODEM_BUSY = 0x00000008;
  static const INTERNET_CONNECTION_OFFLINE_ = 0x00000020;
  static const INTERNET_CONNECTION_PROXY = 0x00000004;
}

/// {@category Enum}
class INTERNET_PER_CONN {
  static const INTERNET_PER_CONN_AUTOCONFIG_URL = 0x00000004;
  static const INTERNET_PER_CONN_AUTODISCOVERY_FLAGS = 0x00000005;
  static const INTERNET_PER_CONN_FLAGS = 0x00000001;
  static const INTERNET_PER_CONN_PROXY_BYPASS = 0x00000003;
  static const INTERNET_PER_CONN_PROXY_SERVER = 0x00000002;
  static const INTERNET_PER_CONN_AUTOCONFIG_SECONDARY_URL = 0x00000006;
  static const INTERNET_PER_CONN_AUTOCONFIG_RELOAD_DELAY_MINS = 0x00000007;
  static const INTERNET_PER_CONN_AUTOCONFIG_LAST_DETECT_TIME = 0x00000008;
  static const INTERNET_PER_CONN_AUTOCONFIG_LAST_DETECT_URL = 0x00000009;
}

/// {@category Enum}
class INTERNET_PROXY_INFO_dwAccessTypeFlags {
  static const INTERNET_OPEN_TYPE_DIRECT = 0x00000001;
  static const INTERNET_OPEN_TYPE_PRECONFIG = 0x00000000;
  static const INTERNET_OPEN_TYPE_PROXY = 0x00000003;
}

/// {@category Enum}
class INTERNET_SCHEME {
  static const INTERNET_SCHEME_PARTIAL = 0xfffffffe;
  static const INTERNET_SCHEME_UNKNOWN = 0xffffffff;
  static const INTERNET_SCHEME_DEFAULT = 0x00000000;
  static const INTERNET_SCHEME_FTP = 0x00000001;
  static const INTERNET_SCHEME_GOPHER = 0x00000002;
  static const INTERNET_SCHEME_HTTP = 0x00000003;
  static const INTERNET_SCHEME_HTTPS = 0x00000004;
  static const INTERNET_SCHEME_FILE = 0x00000005;
  static const INTERNET_SCHEME_NEWS = 0x00000006;
  static const INTERNET_SCHEME_MAILTO = 0x00000007;
  static const INTERNET_SCHEME_SOCKS = 0x00000008;
  static const INTERNET_SCHEME_JAVASCRIPT = 0x00000009;
  static const INTERNET_SCHEME_VBSCRIPT = 0x0000000a;
  static const INTERNET_SCHEME_RES = 0x0000000b;
  static const INTERNET_SCHEME_FIRST = 0x00000001;
  static const INTERNET_SCHEME_LAST = 0x0000000b;
}

/// {@category Enum}
class InternetCookieState {
  static const COOKIE_STATE_UNKNOWN = 0x00000000;
  static const COOKIE_STATE_ACCEPT = 0x00000001;
  static const COOKIE_STATE_PROMPT = 0x00000002;
  static const COOKIE_STATE_LEASH = 0x00000003;
  static const COOKIE_STATE_DOWNGRADE = 0x00000004;
  static const COOKIE_STATE_REJECT = 0x00000005;
  static const COOKIE_STATE_MAX = 0x00000005;
}

/// {@category Enum}
class InternetGetCookieEx_dwFlags {
  static const INTERNET_COOKIE_HTTPONLY = 0x00002000;
  static const INTERNET_COOKIE_THIRD_PARTY = 0x00000010;
  static const INTERNET_FLAG_RESTRICTED_ZONE = 0x00020000;
}

/// {@category Enum}
class REQUEST_TIMES {
  static const NameResolutionStart = 0x00000000;
  static const NameResolutionEnd = 0x00000001;
  static const ConnectionEstablishmentStart = 0x00000002;
  static const ConnectionEstablishmentEnd = 0x00000003;
  static const TLSHandshakeStart = 0x00000004;
  static const TLSHandshakeEnd = 0x00000005;
  static const HttpRequestTimeMax = 0x00000020;
}

/// {@category Enum}
class URL_CACHE_LIMIT_TYPE {
  static const UrlCacheLimitTypeIE = 0x00000000;
  static const UrlCacheLimitTypeIETotal = 0x00000001;
  static const UrlCacheLimitTypeAppContainer = 0x00000002;
  static const UrlCacheLimitTypeAppContainerTotal = 0x00000003;
  static const UrlCacheLimitTypeNum = 0x00000004;
}

/// {@category Enum}
class WININET_SYNC_MODE {
  static const WININET_SYNC_MODE_NEVER = 0x00000000;
  static const WININET_SYNC_MODE_ON_EXPIRY = 0x00000001;
  static const WININET_SYNC_MODE_ONCE_PER_SESSION = 0x00000002;
  static const WININET_SYNC_MODE_ALWAYS = 0x00000003;
  static const WININET_SYNC_MODE_AUTOMATIC = 0x00000004;
  static const WININET_SYNC_MODE_DEFAULT = 0x00000004;
}

/// {@category Enum}
class WPAD_CACHE_DELETE {
  static const WPAD_CACHE_DELETE_CURRENT = 0x00000000;
  static const WPAD_CACHE_DELETE_ALL = 0x00000001;
}

