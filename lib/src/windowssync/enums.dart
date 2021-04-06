/// {@category Enum}
class CONFLICT_RESOLUTION_POLICY {
  static const CRP_NONE = 0x00000000;
  static const CRP_DESTINATION_PROVIDER_WINS = 0x00000001;
  static const CRP_SOURCE_PROVIDER_WINS = 0x00000002;
  static const CRP_LAST = 0x00000003;
}

/// {@category Enum}
class CONSTRAINT_CONFLICT_REASON {
  static const CCR_OTHER = 0x00000000;
  static const CCR_COLLISION = 0x00000001;
  static const CCR_NOPARENT = 0x00000002;
  static const CCR_IDENTITY = 0x00000003;
}

/// {@category Enum}
class FILTERING_TYPE {
  static const FT_CURRENT_ITEMS_ONLY = 0x00000000;
  static const FT_CURRENT_ITEMS_AND_VERSIONS_FOR_MOVED_OUT_ITEMS = 0x00000001;
}

/// {@category Enum}
class FILTER_COMBINATION_TYPE {
  static const FCT_INTERSECTION = 0x00000000;
}

/// {@category Enum}
class KNOWLEDGE_COOKIE_COMPARISON_RESULT {
  static const KCCR_COOKIE_KNOWLEDGE_EQUAL = 0x00000000;
  static const KCCR_COOKIE_KNOWLEDGE_CONTAINED = 0x00000001;
  static const KCCR_COOKIE_KNOWLEDGE_CONTAINS = 0x00000002;
  static const KCCR_COOKIE_KNOWLEDGE_NOT_COMPARABLE = 0x00000003;
}

/// {@category Enum}
class SYNC_CONSTRAINT_RESOLVE_ACTION {
  static const SCRA_DEFER = 0x00000000;
  static const SCRA_ACCEPT_DESTINATION_PROVIDER = 0x00000001;
  static const SCRA_ACCEPT_SOURCE_PROVIDER = 0x00000002;
  static const SCRA_TRANSFER_AND_DEFER = 0x00000003;
  static const SCRA_MERGE = 0x00000004;
  static const SCRA_RENAME_SOURCE = 0x00000005;
  static const SCRA_RENAME_DESTINATION = 0x00000006;
}

/// {@category Enum}
class SYNC_FULL_ENUMERATION_ACTION {
  static const SFEA_FULL_ENUMERATION = 0x00000000;
  static const SFEA_PARTIAL_SYNC = 0x00000001;
  static const SFEA_ABORT = 0x00000002;
}

/// {@category Enum}
class SYNC_PROGRESS_STAGE {
  static const SPS_CHANGE_DETECTION = 0x00000000;
  static const SPS_CHANGE_ENUMERATION = 0x00000001;
  static const SPS_CHANGE_APPLICATION = 0x00000002;
}

/// {@category Enum}
class SYNC_PROVIDER_ROLE {
  static const SPR_SOURCE = 0x00000000;
  static const SPR_DESTINATION = 0x00000001;
}

/// {@category Enum}
class SYNC_REGISTRATION_EVENT {
  static const SRE_PROVIDER_ADDED = 0x00000000;
  static const SRE_PROVIDER_REMOVED = 0x00000001;
  static const SRE_PROVIDER_UPDATED = 0x00000002;
  static const SRE_PROVIDER_STATE_CHANGED = 0x00000003;
  static const SRE_CONFIGUI_ADDED = 0x00000004;
  static const SRE_CONFIGUI_REMOVED = 0x00000005;
  static const SRE_CONFIGUI_UPDATED = 0x00000006;
}

/// {@category Enum}
class SYNC_RESOLVE_ACTION {
  static const SRA_DEFER = 0x00000000;
  static const SRA_ACCEPT_DESTINATION_PROVIDER = 0x00000001;
  static const SRA_ACCEPT_SOURCE_PROVIDER = 0x00000002;
  static const SRA_MERGE = 0x00000003;
  static const SRA_TRANSFER_AND_DEFER = 0x00000004;
  static const SRA_LAST = 0x00000005;
}

/// {@category Enum}
class SYNC_SERIALIZATION_VERSION {
  static const SYNC_SERIALIZATION_VERSION_V1 = 0x00000001;
  static const SYNC_SERIALIZATION_VERSION_V2 = 0x00000004;
  static const SYNC_SERIALIZATION_VERSION_V3 = 0x00000005;
}

/// {@category Enum}
class SYNC_STATISTICS {
  static const SYNC_STATISTICS_RANGE_COUNT = 0x00000000;
}

