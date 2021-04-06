/// {@category Enum}
class ARP_HARDWARE_TYPE {
  static const ARP_HW_ENET = 0x00000001;
  static const ARP_HW_802 = 0x00000006;
}

/// {@category Enum}
class ARP_OPCODE {
  static const ARP_REQUEST = 0x00000001;
  static const ARP_RESPONSE = 0x00000002;
}

/// {@category Enum}
class DL_ADDRESS_TYPE {
  static const DlUnicast = 0x00000000;
  static const DlMulticast = 0x00000001;
  static const DlBroadcast = 0x00000002;
}

/// {@category Enum}
class FALLBACK_INDEX {
  static const FallbackIndexTcpFastopen = 0x00000000;
  static const FallbackIndexMax = 0x00000001;
}

/// {@category Enum}
class FWPM_APPC_NETWORK_CAPABILITY_TYPE {
  static const FWPM_APPC_NETWORK_CAPABILITY_INTERNET_CLIENT = 0x00000000;
  static const FWPM_APPC_NETWORK_CAPABILITY_INTERNET_CLIENT_SERVER = 0x00000001;
  static const FWPM_APPC_NETWORK_CAPABILITY_INTERNET_PRIVATE_NETWORK = 0x00000002;
}

/// {@category Enum}
class FWPM_CHANGE_TYPE {
  static const FWPM_CHANGE_ADD = 0x00000001;
  static const FWPM_CHANGE_DELETE = 0x00000002;
  static const FWPM_CHANGE_TYPE_MAX = 0x00000003;
}

/// {@category Enum}
class FWPM_CONNECTION_EVENT_TYPE {
  static const FWPM_CONNECTION_EVENT_ADD = 0x00000000;
  static const FWPM_CONNECTION_EVENT_DELETE = 0x00000001;
  static const FWPM_CONNECTION_EVENT_MAX = 0x00000002;
}

/// {@category Enum}
class FWPM_ENGINE_OPTION {
  static const FWPM_ENGINE_COLLECT_NET_EVENTS = 0x00000000;
  static const FWPM_ENGINE_NET_EVENT_MATCH_ANY_KEYWORDS = 0x00000001;
  static const FWPM_ENGINE_NAME_CACHE = 0x00000002;
  static const FWPM_ENGINE_MONITOR_IPSEC_CONNECTIONS = 0x00000003;
  static const FWPM_ENGINE_PACKET_QUEUING = 0x00000004;
  static const FWPM_ENGINE_TXN_WATCHDOG_TIMEOUT_IN_MSEC = 0x00000005;
  static const FWPM_ENGINE_OPTION_MAX = 0x00000006;
}

/// {@category Enum}
class FWPM_FIELD_TYPE {
  static const FWPM_FIELD_RAW_DATA = 0x00000000;
  static const FWPM_FIELD_IP_ADDRESS = 0x00000001;
  static const FWPM_FIELD_FLAGS = 0x00000002;
  static const FWPM_FIELD_TYPE_MAX = 0x00000003;
}

/// {@category Enum}
class FWPM_FILTER0Flags {
  static const FWPM_FILTER_FLAG_NONE = 0x00000000;
  static const FWPM_FILTER_FLAG_PERSISTENT = 0x00000001;
  static const FWPM_FILTER_FLAG_BOOTTIME = 0x00000002;
  static const FWPM_FILTER_FLAG_HAS_PROVIDER_CONTEXT = 0x00000004;
  static const FWPM_FILTER_FLAG_CLEAR_ACTION_RIGHT = 0x00000008;
  static const FWPM_FILTER_FLAG_PERMIT_IF_CALLOUT_UNREGISTERED = 0x00000010;
  static const FWPM_FILTER_FLAG_DISABLED = 0x00000020;
  static const FWPM_FILTER_FLAG_INDEXED = 0x00000040;
}

/// {@category Enum}
class FWPM_NET_EVENT_TYPE {
  static const FWPM_NET_EVENT_TYPE_IKEEXT_MM_FAILURE = 0x00000000;
  static const FWPM_NET_EVENT_TYPE_IKEEXT_QM_FAILURE = 0x00000001;
  static const FWPM_NET_EVENT_TYPE_IKEEXT_EM_FAILURE = 0x00000002;
  static const FWPM_NET_EVENT_TYPE_CLASSIFY_DROP = 0x00000003;
  static const FWPM_NET_EVENT_TYPE_IPSEC_KERNEL_DROP = 0x00000004;
  static const FWPM_NET_EVENT_TYPE_IPSEC_DOSP_DROP = 0x00000005;
  static const FWPM_NET_EVENT_TYPE_CLASSIFY_ALLOW = 0x00000006;
  static const FWPM_NET_EVENT_TYPE_CAPABILITY_DROP = 0x00000007;
  static const FWPM_NET_EVENT_TYPE_CAPABILITY_ALLOW = 0x00000008;
  static const FWPM_NET_EVENT_TYPE_CLASSIFY_DROP_MAC = 0x00000009;
  static const FWPM_NET_EVENT_TYPE_LPM_PACKET_ARRIVAL = 0x0000000a;
  static const FWPM_NET_EVENT_TYPE_MAX = 0x0000000b;
}

/// {@category Enum}
class FWPM_PROVIDER_CONTEXT_SUBSCRIPTION0Flags {
  static const FWPM_SUBSCRIPTION_FLAG_NOTIFY_ON_ADD = 0x00000001;
  static const FWPM_SUBSCRIPTION_FLAG_NOTIFY_ON_DELETE = 0x00000002;
}

/// {@category Enum}
class FWPM_PROVIDER_CONTEXT_TYPE {
  static const FWPM_IPSEC_KEYING_CONTEXT = 0x00000000;
  static const FWPM_IPSEC_IKE_QM_TRANSPORT_CONTEXT = 0x00000001;
  static const FWPM_IPSEC_IKE_QM_TUNNEL_CONTEXT = 0x00000002;
  static const FWPM_IPSEC_AUTHIP_QM_TRANSPORT_CONTEXT = 0x00000003;
  static const FWPM_IPSEC_AUTHIP_QM_TUNNEL_CONTEXT = 0x00000004;
  static const FWPM_IPSEC_IKE_MM_CONTEXT = 0x00000005;
  static const FWPM_IPSEC_AUTHIP_MM_CONTEXT = 0x00000006;
  static const FWPM_CLASSIFY_OPTIONS_CONTEXT = 0x00000007;
  static const FWPM_GENERAL_CONTEXT = 0x00000008;
  static const FWPM_IPSEC_IKEV2_QM_TUNNEL_CONTEXT = 0x00000009;
  static const FWPM_IPSEC_IKEV2_MM_CONTEXT = 0x0000000a;
  static const FWPM_IPSEC_DOSP_CONTEXT = 0x0000000b;
  static const FWPM_IPSEC_IKEV2_QM_TRANSPORT_CONTEXT = 0x0000000c;
  static const FWPM_PROVIDER_CONTEXT_TYPE_MAX = 0x0000000d;
}

/// {@category Enum}
class FWPM_SERVICE_STATE {
  static const FWPM_SERVICE_STOPPED = 0x00000000;
  static const FWPM_SERVICE_START_PENDING = 0x00000001;
  static const FWPM_SERVICE_STOP_PENDING = 0x00000002;
  static const FWPM_SERVICE_RUNNING = 0x00000003;
  static const FWPM_SERVICE_STATE_MAX = 0x00000004;
}

/// {@category Enum}
class FWPM_SYSTEM_PORT_TYPE {
  static const FWPM_SYSTEM_PORT_RPC_EPMAP = 0x00000000;
  static const FWPM_SYSTEM_PORT_TEREDO = 0x00000001;
  static const FWPM_SYSTEM_PORT_IPHTTPS_IN = 0x00000002;
  static const FWPM_SYSTEM_PORT_IPHTTPS_OUT = 0x00000003;
  static const FWPM_SYSTEM_PORT_TYPE_MAX = 0x00000004;
}

/// {@category Enum}
class FWPM_VSWITCH_EVENT_TYPE {
  static const FWPM_VSWITCH_EVENT_FILTER_ADD_TO_INCOMPLETE_LAYER = 0x00000000;
  static const FWPM_VSWITCH_EVENT_FILTER_ENGINE_NOT_IN_REQUIRED_POSITION = 0x00000001;
  static const FWPM_VSWITCH_EVENT_ENABLED_FOR_INSPECTION = 0x00000002;
  static const FWPM_VSWITCH_EVENT_DISABLED_FOR_INSPECTION = 0x00000003;
  static const FWPM_VSWITCH_EVENT_FILTER_ENGINE_REORDER = 0x00000004;
  static const FWPM_VSWITCH_EVENT_MAX = 0x00000005;
}

/// {@category Enum}
class FWP_AF {
  static const FWP_AF_INET = 0x00000000;
  static const FWP_AF_INET6 = 0x00000001;
  static const FWP_AF_ETHER = 0x00000002;
  static const FWP_AF_NONE = 0x00000003;
}

/// {@category Enum}
class FWP_CLASSIFY_OPTION_TYPE {
  static const FWP_CLASSIFY_OPTION_MULTICAST_STATE = 0x00000000;
  static const FWP_CLASSIFY_OPTION_LOOSE_SOURCE_MAPPING = 0x00000001;
  static const FWP_CLASSIFY_OPTION_UNICAST_LIFETIME = 0x00000002;
  static const FWP_CLASSIFY_OPTION_MCAST_BCAST_LIFETIME = 0x00000003;
  static const FWP_CLASSIFY_OPTION_SECURE_SOCKET_SECURITY_FLAGS = 0x00000004;
  static const FWP_CLASSIFY_OPTION_SECURE_SOCKET_AUTHIP_MM_POLICY_KEY = 0x00000005;
  static const FWP_CLASSIFY_OPTION_SECURE_SOCKET_AUTHIP_QM_POLICY_KEY = 0x00000006;
  static const FWP_CLASSIFY_OPTION_LOCAL_ONLY_MAPPING = 0x00000007;
  static const FWP_CLASSIFY_OPTION_MAX = 0x00000008;
}

/// {@category Enum}
class FWP_DATA_TYPE {
  static const FWP_EMPTY = 0x00000000;
  static const FWP_UINT8 = 0x00000001;
  static const FWP_UINT16 = 0x00000002;
  static const FWP_UINT32 = 0x00000003;
  static const FWP_UINT64 = 0x00000004;
  static const FWP_INT8 = 0x00000005;
  static const FWP_INT16 = 0x00000006;
  static const FWP_INT32 = 0x00000007;
  static const FWP_INT64 = 0x00000008;
  static const FWP_FLOAT = 0x00000009;
  static const FWP_DOUBLE = 0x0000000a;
  static const FWP_BYTE_ARRAY16_TYPE = 0x0000000b;
  static const FWP_BYTE_BLOB_TYPE = 0x0000000c;
  static const FWP_SID = 0x0000000d;
  static const FWP_SECURITY_DESCRIPTOR_TYPE = 0x0000000e;
  static const FWP_TOKEN_INFORMATION_TYPE = 0x0000000f;
  static const FWP_TOKEN_ACCESS_INFORMATION_TYPE = 0x00000010;
  static const FWP_UNICODE_STRING_TYPE = 0x00000011;
  static const FWP_BYTE_ARRAY6_TYPE = 0x00000012;
  static const FWP_BITMAP_INDEX_TYPE = 0x00000013;
  static const FWP_BITMAP_ARRAY64_TYPE = 0x00000014;
  static const FWP_SINGLE_DATA_TYPE_MAX = 0x000000ff;
  static const FWP_V4_ADDR_MASK = 0x00000100;
  static const FWP_V6_ADDR_MASK = 0x00000101;
  static const FWP_RANGE_TYPE = 0x00000102;
  static const FWP_DATA_TYPE_MAX = 0x00000103;
}

/// {@category Enum}
class FWP_DIRECTION {
  static const FWP_DIRECTION_OUTBOUND = 0x00000000;
  static const FWP_DIRECTION_INBOUND = 0x00000001;
  static const FWP_DIRECTION_MAX = 0x00000002;
}

/// {@category Enum}
class FWP_ETHER_ENCAP_METHOD {
  static const FWP_ETHER_ENCAP_METHOD_ETHER_V2 = 0x00000000;
  static const FWP_ETHER_ENCAP_METHOD_SNAP = 0x00000001;
  static const FWP_ETHER_ENCAP_METHOD_SNAP_W_OUI_ZERO = 0x00000003;
}

/// {@category Enum}
class FWP_FILTER_ENUM_TYPE {
  static const FWP_FILTER_ENUM_FULLY_CONTAINED = 0x00000000;
  static const FWP_FILTER_ENUM_OVERLAPPING = 0x00000001;
  static const FWP_FILTER_ENUM_TYPE_MAX = 0x00000002;
}

/// {@category Enum}
class FWP_IP_VERSION {
  static const FWP_IP_VERSION_V4 = 0x00000000;
  static const FWP_IP_VERSION_V6 = 0x00000001;
  static const FWP_IP_VERSION_NONE = 0x00000002;
  static const FWP_IP_VERSION_MAX = 0x00000003;
}

/// {@category Enum}
class FWP_MATCH_TYPE {
  static const FWP_MATCH_EQUAL = 0x00000000;
  static const FWP_MATCH_GREATER = 0x00000001;
  static const FWP_MATCH_LESS = 0x00000002;
  static const FWP_MATCH_GREATER_OR_EQUAL = 0x00000003;
  static const FWP_MATCH_LESS_OR_EQUAL = 0x00000004;
  static const FWP_MATCH_RANGE = 0x00000005;
  static const FWP_MATCH_FLAGS_ALL_SET = 0x00000006;
  static const FWP_MATCH_FLAGS_ANY_SET = 0x00000007;
  static const FWP_MATCH_FLAGS_NONE_SET = 0x00000008;
  static const FWP_MATCH_EQUAL_CASE_INSENSITIVE = 0x00000009;
  static const FWP_MATCH_NOT_EQUAL = 0x0000000a;
  static const FWP_MATCH_PREFIX = 0x0000000b;
  static const FWP_MATCH_NOT_PREFIX = 0x0000000c;
  static const FWP_MATCH_TYPE_MAX = 0x0000000d;
}

/// {@category Enum}
class FWP_VSWITCH_NETWORK_TYPE {
  static const FWP_VSWITCH_NETWORK_TYPE_UNKNOWN = 0x00000000;
  static const FWP_VSWITCH_NETWORK_TYPE_PRIVATE = 0x00000001;
  static const FWP_VSWITCH_NETWORK_TYPE_INTERNAL = 0x00000002;
  static const FWP_VSWITCH_NETWORK_TYPE_EXTERNAL = 0x00000003;
}

/// {@category Enum}
class ICMP4_TIME_EXCEED_CODE {
  static const ICMP4_TIME_EXCEED_TRANSIT = 0x00000000;
  static const ICMP4_TIME_EXCEED_REASSEMBLY = 0x00000001;
}

/// {@category Enum}
class ICMP4_UNREACH_CODE {
  static const ICMP4_UNREACH_NET = 0x00000000;
  static const ICMP4_UNREACH_HOST = 0x00000001;
  static const ICMP4_UNREACH_PROTOCOL = 0x00000002;
  static const ICMP4_UNREACH_PORT = 0x00000003;
  static const ICMP4_UNREACH_FRAG_NEEDED = 0x00000004;
  static const ICMP4_UNREACH_SOURCEROUTE_FAILED = 0x00000005;
  static const ICMP4_UNREACH_NET_UNKNOWN = 0x00000006;
  static const ICMP4_UNREACH_HOST_UNKNOWN = 0x00000007;
  static const ICMP4_UNREACH_ISOLATED = 0x00000008;
  static const ICMP4_UNREACH_NET_ADMIN = 0x00000009;
  static const ICMP4_UNREACH_HOST_ADMIN = 0x0000000a;
  static const ICMP4_UNREACH_NET_TOS = 0x0000000b;
  static const ICMP4_UNREACH_HOST_TOS = 0x0000000c;
  static const ICMP4_UNREACH_ADMIN = 0x0000000d;
}

/// {@category Enum}
class IGMP_MAX_RESP_CODE_TYPE {
  static const IGMP_MAX_RESP_CODE_TYPE_NORMAL = 0x00000000;
  static const IGMP_MAX_RESP_CODE_TYPE_FLOAT = 0x00000001;
}

/// {@category Enum}
class IKEEXT_AUTHENTICATION_IMPERSONATION_TYPE {
  static const IKEEXT_IMPERSONATION_NONE = 0x00000000;
  static const IKEEXT_IMPERSONATION_SOCKET_PRINCIPAL = 0x00000001;
  static const IKEEXT_IMPERSONATION_MAX = 0x00000002;
}

/// {@category Enum}
class IKEEXT_AUTHENTICATION_METHOD_TYPE {
  static const IKEEXT_PRESHARED_KEY = 0x00000000;
  static const IKEEXT_CERTIFICATE = 0x00000001;
  static const IKEEXT_KERBEROS = 0x00000002;
  static const IKEEXT_ANONYMOUS = 0x00000003;
  static const IKEEXT_SSL = 0x00000004;
  static const IKEEXT_NTLM_V2 = 0x00000005;
  static const IKEEXT_IPV6_CGA = 0x00000006;
  static const IKEEXT_CERTIFICATE_ECDSA_P256 = 0x00000007;
  static const IKEEXT_CERTIFICATE_ECDSA_P384 = 0x00000008;
  static const IKEEXT_SSL_ECDSA_P256 = 0x00000009;
  static const IKEEXT_SSL_ECDSA_P384 = 0x0000000a;
  static const IKEEXT_EAP = 0x0000000b;
  static const IKEEXT_RESERVED = 0x0000000c;
  static const IKEEXT_AUTHENTICATION_METHOD_TYPE_MAX = 0x0000000d;
}

/// {@category Enum}
class IKEEXT_CERT_AUTH {
  static const IKEEXT_CERT_AUTH_FLAG_SSL_ONE_WAY = 0x00000001;
  static const IKEEXT_CERT_AUTH_ENABLE_CRL_CHECK_STRONG = 0x00000004;
  static const IKEEXT_CERT_AUTH_DISABLE_SSL_CERT_VALIDATION = 0x00000008;
  static const IKEEXT_CERT_AUTH_ALLOW_HTTP_CERT_LOOKUP = 0x00000010;
  static const IKEEXT_CERT_AUTH_URL_CONTAINS_BUNDLE = 0x00000020;
}

/// {@category Enum}
class IKEEXT_CERT_CONFIG_TYPE {
  static const IKEEXT_CERT_CONFIG_EXPLICIT_TRUST_LIST = 0x00000000;
  static const IKEEXT_CERT_CONFIG_ENTERPRISE_STORE = 0x00000001;
  static const IKEEXT_CERT_CONFIG_TRUSTED_ROOT_STORE = 0x00000002;
  static const IKEEXT_CERT_CONFIG_UNSPECIFIED = 0x00000003;
  static const IKEEXT_CERT_CONFIG_TYPE_MAX = 0x00000004;
}

/// {@category Enum}
class IKEEXT_CERT_CRITERIA_NAME_TYPE {
  static const IKEEXT_CERT_CRITERIA_DNS = 0x00000000;
  static const IKEEXT_CERT_CRITERIA_UPN = 0x00000001;
  static const IKEEXT_CERT_CRITERIA_RFC822 = 0x00000002;
  static const IKEEXT_CERT_CRITERIA_CN = 0x00000003;
  static const IKEEXT_CERT_CRITERIA_OU = 0x00000004;
  static const IKEEXT_CERT_CRITERIA_O = 0x00000005;
  static const IKEEXT_CERT_CRITERIA_DC = 0x00000006;
  static const IKEEXT_CERT_CRITERIA_NAME_TYPE_MAX = 0x00000007;
}

/// {@category Enum}
class IKEEXT_CERT_ROOT_CONFIG0Flags {
  static const IKEEXT_CERT_FLAG_ENABLE_ACCOUNT_MAPPING = 0x00000001;
  static const IKEEXT_CERT_FLAG_DISABLE_REQUEST_PAYLOAD = 0x00000002;
  static const IKEEXT_CERT_FLAG_USE_NAP_CERTIFICATE = 0x00000004;
  static const IKEEXT_CERT_FLAG_INTERMEDIATE_CA = 0x00000008;
  static const IKEEXT_CERT_FLAG_IGNORE_INIT_CERT_MAP_FAILURE = 0x00000010;
  static const IKEEXT_CERT_FLAG_PREFER_NAP_CERTIFICATE_OUTBOUND = 0x00000020;
  static const IKEEXT_CERT_FLAG_SELECT_NAP_CERTIFICATE = 0x00000040;
  static const IKEEXT_CERT_FLAG_VERIFY_NAP_CERTIFICATE = 0x00000080;
  static const IKEEXT_CERT_FLAG_FOLLOW_RENEWAL_CERTIFICATE = 0x00000100;
}

/// {@category Enum}
class IKEEXT_CIPHER_TYPE {
  static const IKEEXT_CIPHER_DES = 0x00000000;
  static const IKEEXT_CIPHER_3DES = 0x00000001;
  static const IKEEXT_CIPHER_AES_128 = 0x00000002;
  static const IKEEXT_CIPHER_AES_192 = 0x00000003;
  static const IKEEXT_CIPHER_AES_256 = 0x00000004;
  static const IKEEXT_CIPHER_AES_GCM_128_16ICV = 0x00000005;
  static const IKEEXT_CIPHER_AES_GCM_256_16ICV = 0x00000006;
  static const IKEEXT_CIPHER_TYPE_MAX = 0x00000007;
}

/// {@category Enum}
class IKEEXT_DH_GROUP {
  static const IKEEXT_DH_GROUP_NONE = 0x00000000;
  static const IKEEXT_DH_GROUP_1 = 0x00000001;
  static const IKEEXT_DH_GROUP_2 = 0x00000002;
  static const IKEEXT_DH_GROUP_14 = 0x00000003;
  static const IKEEXT_DH_GROUP_2048 = 0x00000003;
  static const IKEEXT_DH_ECP_256 = 0x00000004;
  static const IKEEXT_DH_ECP_384 = 0x00000005;
  static const IKEEXT_DH_GROUP_24 = 0x00000006;
  static const IKEEXT_DH_GROUP_MAX = 0x00000007;
}

/// {@category Enum}
class IKEEXT_EAP_AUTHENTICATION0Flags {
  static const IKEEXT_EAP_FLAG_LOCAL_AUTH_ONLY = 0x00000001;
  static const IKEEXT_EAP_FLAG_REMOTE_AUTH_ONLY = 0x00000002;
}

/// {@category Enum}
class IKEEXT_EM_SA_STATE {
  static const IKEEXT_EM_SA_STATE_NONE = 0x00000000;
  static const IKEEXT_EM_SA_STATE_SENT_ATTS = 0x00000001;
  static const IKEEXT_EM_SA_STATE_SSPI_SENT = 0x00000002;
  static const IKEEXT_EM_SA_STATE_AUTH_COMPLETE = 0x00000003;
  static const IKEEXT_EM_SA_STATE_FINAL = 0x00000004;
  static const IKEEXT_EM_SA_STATE_COMPLETE = 0x00000005;
  static const IKEEXT_EM_SA_STATE_MAX = 0x00000006;
}

/// {@category Enum}
class IKEEXT_INTEGRITY_TYPE {
  static const IKEEXT_INTEGRITY_MD5 = 0x00000000;
  static const IKEEXT_INTEGRITY_SHA1 = 0x00000001;
  static const IKEEXT_INTEGRITY_SHA_256 = 0x00000002;
  static const IKEEXT_INTEGRITY_SHA_384 = 0x00000003;
  static const IKEEXT_INTEGRITY_TYPE_MAX = 0x00000004;
}

/// {@category Enum}
class IKEEXT_KERBEROS_AUTHENTICATION1Flags {
  static const IKEEXT_KERB_AUTH_DISABLE_INITIATOR_TOKEN_GENERATION = 0x00000001;
  static const IKEEXT_KERB_AUTH_DONT_ACCEPT_EXPLICIT_CREDENTIALS = 0x00000002;
}

/// {@category Enum}
class IKEEXT_KEY_MODULE_TYPE {
  static const IKEEXT_KEY_MODULE_IKE = 0x00000000;
  static const IKEEXT_KEY_MODULE_AUTHIP = 0x00000001;
  static const IKEEXT_KEY_MODULE_IKEV2 = 0x00000002;
  static const IKEEXT_KEY_MODULE_MAX = 0x00000003;
}

/// {@category Enum}
class IKEEXT_MM_SA_STATE {
  static const IKEEXT_MM_SA_STATE_NONE = 0x00000000;
  static const IKEEXT_MM_SA_STATE_SA_SENT = 0x00000001;
  static const IKEEXT_MM_SA_STATE_SSPI_SENT = 0x00000002;
  static const IKEEXT_MM_SA_STATE_FINAL = 0x00000003;
  static const IKEEXT_MM_SA_STATE_FINAL_SENT = 0x00000004;
  static const IKEEXT_MM_SA_STATE_COMPLETE = 0x00000005;
  static const IKEEXT_MM_SA_STATE_MAX = 0x00000006;
}

/// {@category Enum}
class IKEEXT_POLICY_FLAG {
  static const IKEEXT_POLICY_FLAG_DISABLE_DIAGNOSTICS = 0x00000001;
  static const IKEEXT_POLICY_FLAG_NO_MACHINE_LUID_VERIFY = 0x00000002;
  static const IKEEXT_POLICY_FLAG_NO_IMPERSONATION_LUID_VERIFY = 0x00000004;
  static const IKEEXT_POLICY_FLAG_ENABLE_OPTIONAL_DH = 0x00000008;
}

/// {@category Enum}
class IKEEXT_PRESHARED_KEY_AUTHENTICATION1Flags {
  static const IKEEXT_PSK_FLAG_LOCAL_AUTH_ONLY = 0x00000001;
  static const IKEEXT_PSK_FLAG_REMOTE_AUTH_ONLY = 0x00000002;
}

/// {@category Enum}
class IKEEXT_QM_SA_STATE {
  static const IKEEXT_QM_SA_STATE_NONE = 0x00000000;
  static const IKEEXT_QM_SA_STATE_INITIAL = 0x00000001;
  static const IKEEXT_QM_SA_STATE_FINAL = 0x00000002;
  static const IKEEXT_QM_SA_STATE_COMPLETE = 0x00000003;
  static const IKEEXT_QM_SA_STATE_MAX = 0x00000004;
}

/// {@category Enum}
class IKEEXT_RESERVED_AUTHENTICATION0Flags {
  static const IKEEXT_RESERVED_AUTH_DISABLE_INITIATOR_TOKEN_GENERATION = 0x00000001;
}

/// {@category Enum}
class IKEEXT_SA_ROLE {
  static const IKEEXT_SA_ROLE_INITIATOR = 0x00000000;
  static const IKEEXT_SA_ROLE_RESPONDER = 0x00000001;
  static const IKEEXT_SA_ROLE_MAX = 0x00000002;
}

/// {@category Enum}
class IPSEC_AUTH_TYPE {
  static const IPSEC_AUTH_MD5 = 0x00000000;
  static const IPSEC_AUTH_SHA_1 = 0x00000001;
  static const IPSEC_AUTH_SHA_256 = 0x00000002;
  static const IPSEC_AUTH_AES_128 = 0x00000003;
  static const IPSEC_AUTH_AES_192 = 0x00000004;
  static const IPSEC_AUTH_AES_256 = 0x00000005;
  static const IPSEC_AUTH_MAX = 0x00000006;
}

/// {@category Enum}
class IPSEC_CIPHER_TYPE {
  static const IPSEC_CIPHER_TYPE_DES = 0x00000001;
  static const IPSEC_CIPHER_TYPE_3DES = 0x00000002;
  static const IPSEC_CIPHER_TYPE_AES_128 = 0x00000003;
  static const IPSEC_CIPHER_TYPE_AES_192 = 0x00000004;
  static const IPSEC_CIPHER_TYPE_AES_256 = 0x00000005;
  static const IPSEC_CIPHER_TYPE_MAX = 0x00000006;
}

/// {@category Enum}
class IPSEC_DOSP_OPTIONS0Flags {
  static const IPSEC_DOSP_FLAG_ENABLE_IKEV1 = 0x00000001;
  static const IPSEC_DOSP_FLAG_ENABLE_IKEV2 = 0x00000002;
  static const IPSEC_DOSP_FLAG_DISABLE_AUTHIP = 0x00000004;
  static const IPSEC_DOSP_FLAG_DISABLE_DEFAULT_BLOCK = 0x00000008;
  static const IPSEC_DOSP_FLAG_FILTER_BLOCK = 0x00000010;
  static const IPSEC_DOSP_FLAG_FILTER_EXEMPT = 0x00000020;
}

/// {@category Enum}
class IPSEC_FAILURE_POINT {
  static const IPSEC_FAILURE_NONE = 0x00000000;
  static const IPSEC_FAILURE_ME = 0x00000001;
  static const IPSEC_FAILURE_PEER = 0x00000002;
  static const IPSEC_FAILURE_POINT_MAX = 0x00000003;
}

/// {@category Enum}
class IPSEC_PFS_GROUP {
  static const IPSEC_PFS_NONE = 0x00000000;
  static const IPSEC_PFS_1 = 0x00000001;
  static const IPSEC_PFS_2 = 0x00000002;
  static const IPSEC_PFS_2048 = 0x00000003;
  static const IPSEC_PFS_14 = 0x00000003;
  static const IPSEC_PFS_ECP_256 = 0x00000004;
  static const IPSEC_PFS_ECP_384 = 0x00000005;
  static const IPSEC_PFS_MM = 0x00000006;
  static const IPSEC_PFS_24 = 0x00000007;
  static const IPSEC_PFS_MAX = 0x00000008;
}

/// {@category Enum}
class IPSEC_POLICY_FLAG {
  static const IPSEC_POLICY_FLAG_ND_SECURE = 0x00000002;
  static const IPSEC_POLICY_FLAG_ND_BOUNDARY = 0x00000004;
  static const IPSEC_POLICY_FLAG_NAT_ENCAP_ALLOW_PEER_BEHIND_NAT = 0x00000010;
  static const IPSEC_POLICY_FLAG_NAT_ENCAP_ALLOW_GENERAL_NAT_TRAVERSAL = 0x00000020;
  static const IPSEC_POLICY_FLAG_DONT_NEGOTIATE_SECOND_LIFETIME = 0x00000040;
  static const IPSEC_POLICY_FLAG_DONT_NEGOTIATE_BYTE_LIFETIME = 0x00000080;
  static const IPSEC_POLICY_FLAG_CLEAR_DF_ON_TUNNEL = 0x00000008;
  static const IPSEC_POLICY_FLAG_ENABLE_V6_IN_V4_TUNNELING = 0x00000100;
  static const IPSEC_POLICY_FLAG_ENABLE_SERVER_ADDR_ASSIGNMENT = 0x00000200;
  static const IPSEC_POLICY_FLAG_TUNNEL_ALLOW_OUTBOUND_CLEAR_CONNECTION = 0x00000400;
  static const IPSEC_POLICY_FLAG_TUNNEL_BYPASS_ALREADY_SECURE_CONNECTION = 0x00000800;
  static const IPSEC_POLICY_FLAG_TUNNEL_BYPASS_ICMPV6 = 0x00001000;
  static const IPSEC_POLICY_FLAG_KEY_MANAGER_ALLOW_DICTATE_KEY = 0x00002000;
}

/// {@category Enum}
class IPSEC_SA_BUNDLE1Flags {
  static const IPSEC_SA_BUNDLE_FLAG_ND_SECURE = 0x00000001;
  static const IPSEC_SA_BUNDLE_FLAG_ND_BOUNDARY = 0x00000002;
  static const IPSEC_SA_BUNDLE_FLAG_ND_PEER_NAT_BOUNDARY = 0x00000004;
  static const IPSEC_SA_BUNDLE_FLAG_GUARANTEE_ENCRYPTION = 0x00000008;
  static const IPSEC_SA_BUNDLE_FLAG_ALLOW_NULL_TARGET_NAME_MATCH = 0x00000200;
  static const IPSEC_SA_BUNDLE_FLAG_CLEAR_DF_ON_TUNNEL = 0x00000400;
  static const IPSEC_SA_BUNDLE_FLAG_ASSUME_UDP_CONTEXT_OUTBOUND = 0x00000800;
  static const IPSEC_SA_BUNDLE_FLAG_ND_PEER_BOUNDARY = 0x00001000;
  static const IPSEC_SA_BUNDLE_FLAG_SUPPRESS_DUPLICATE_DELETION = 0x00002000;
  static const IPSEC_SA_BUNDLE_FLAG_PEER_SUPPORTS_GUARANTEE_ENCRYPTION = 0x00004000;
}

/// {@category Enum}
class IPSEC_SA_CONTEXT_EVENT_TYPE0 {
  static const IPSEC_SA_CONTEXT_EVENT_ADD = 0x00000001;
  static const IPSEC_SA_CONTEXT_EVENT_DELETE = 0x00000002;
  static const IPSEC_SA_CONTEXT_EVENT_MAX = 0x00000003;
}

/// {@category Enum}
class IPSEC_TOKEN_MODE {
  static const IPSEC_TOKEN_MODE_MAIN = 0x00000000;
  static const IPSEC_TOKEN_MODE_EXTENDED = 0x00000001;
  static const IPSEC_TOKEN_MODE_MAX = 0x00000002;
}

/// {@category Enum}
class IPSEC_TOKEN_PRINCIPAL {
  static const IPSEC_TOKEN_PRINCIPAL_LOCAL = 0x00000000;
  static const IPSEC_TOKEN_PRINCIPAL_PEER = 0x00000001;
  static const IPSEC_TOKEN_PRINCIPAL_MAX = 0x00000002;
}

/// {@category Enum}
class IPSEC_TOKEN_TYPE {
  static const IPSEC_TOKEN_TYPE_MACHINE = 0x00000000;
  static const IPSEC_TOKEN_TYPE_IMPERSONATION = 0x00000001;
  static const IPSEC_TOKEN_TYPE_MAX = 0x00000002;
}

/// {@category Enum}
class IPSEC_TRAFFIC_TYPE {
  static const IPSEC_TRAFFIC_TYPE_TRANSPORT = 0x00000000;
  static const IPSEC_TRAFFIC_TYPE_TUNNEL = 0x00000001;
  static const IPSEC_TRAFFIC_TYPE_MAX = 0x00000002;
}

/// {@category Enum}
class IPSEC_TRANSFORM_TYPE {
  static const IPSEC_TRANSFORM_AH = 0x00000001;
  static const IPSEC_TRANSFORM_ESP_AUTH = 0x00000002;
  static const IPSEC_TRANSFORM_ESP_CIPHER = 0x00000003;
  static const IPSEC_TRANSFORM_ESP_AUTH_AND_CIPHER = 0x00000004;
  static const IPSEC_TRANSFORM_ESP_AUTH_FW = 0x00000005;
  static const IPSEC_TRANSFORM_TYPE_MAX = 0x00000006;
}

/// {@category Enum}
class IPV4_OPTION_TYPE {
  static const IP_OPT_EOL = 0x00000000;
  static const IP_OPT_NOP = 0x00000001;
  static const IP_OPT_SECURITY = 0x00000082;
  static const IP_OPT_LSRR = 0x00000083;
  static const IP_OPT_TS = 0x00000044;
  static const IP_OPT_RR = 0x00000007;
  static const IP_OPT_SSRR = 0x00000089;
  static const IP_OPT_SID = 0x00000088;
  static const IP_OPT_ROUTER_ALERT = 0x00000094;
  static const IP_OPT_MULTIDEST = 0x00000095;
}

/// {@category Enum}
class IPV6_OPTION_TYPE {
  static const IP6OPT_PAD1 = 0x00000000;
  static const IP6OPT_PADN = 0x00000001;
  static const IP6OPT_TUNNEL_LIMIT = 0x00000004;
  static const IP6OPT_ROUTER_ALERT = 0x00000005;
  static const IP6OPT_JUMBO = 0x000000c2;
  static const IP6OPT_NSAP_ADDR = 0x000000c3;
}

/// {@category Enum}
class IP_OPTION_TIMESTAMP_FLAGS {
  static const IP_OPTION_TIMESTAMP_ONLY = 0x00000000;
  static const IP_OPTION_TIMESTAMP_ADDRESS = 0x00000001;
  static const IP_OPTION_TIMESTAMP_SPECIFIC_ADDRESS = 0x00000003;
}

/// {@category Enum}
class MLD_MAX_RESP_CODE_TYPE {
  static const MLD_MAX_RESP_CODE_TYPE_NORMAL = 0x00000000;
  static const MLD_MAX_RESP_CODE_TYPE_FLOAT = 0x00000001;
}

/// {@category Enum}
class ND_OPTION_TYPE {
  static const ND_OPT_SOURCE_LINKADDR = 0x00000001;
  static const ND_OPT_TARGET_LINKADDR = 0x00000002;
  static const ND_OPT_PREFIX_INFORMATION = 0x00000003;
  static const ND_OPT_REDIRECTED_HEADER = 0x00000004;
  static const ND_OPT_MTU = 0x00000005;
  static const ND_OPT_NBMA_SHORTCUT_LIMIT = 0x00000006;
  static const ND_OPT_ADVERTISEMENT_INTERVAL = 0x00000007;
  static const ND_OPT_HOME_AGENT_INFORMATION = 0x00000008;
  static const ND_OPT_SOURCE_ADDR_LIST = 0x00000009;
  static const ND_OPT_TARGET_ADDR_LIST = 0x0000000a;
  static const ND_OPT_ROUTE_INFO = 0x00000018;
  static const ND_OPT_RDNSS = 0x00000019;
  static const ND_OPT_DNSSL = 0x0000001f;
}

/// {@category Enum}
class NPI_MODULEID_TYPE {
  static const MIT_GUID = 0x00000001;
  static const MIT_IF_LUID = 0x00000002;
}

/// {@category Enum}
class TUNNEL_SUB_TYPE {
  static const TUNNEL_SUB_TYPE_NONE = 0x00000000;
  static const TUNNEL_SUB_TYPE_CP = 0x00000001;
  static const TUNNEL_SUB_TYPE_IPTLS = 0x00000002;
  static const TUNNEL_SUB_TYPE_HA = 0x00000003;
}

