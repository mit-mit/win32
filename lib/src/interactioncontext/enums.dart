/// {@category Enum}
class CROSS_SLIDE_FLAGS {
  static const CROSS_SLIDE_FLAGS_NONE = 0x00000000;
  static const CROSS_SLIDE_FLAGS_SELECT = 0x00000001;
  static const CROSS_SLIDE_FLAGS_SPEED_BUMP = 0x00000002;
  static const CROSS_SLIDE_FLAGS_REARRANGE = 0x00000004;
  static const CROSS_SLIDE_FLAGS_MAX = 0xffffffff;
}

/// {@category Enum}
class CROSS_SLIDE_THRESHOLD {
  static const CROSS_SLIDE_THRESHOLD_SELECT_START = 0x00000000;
  static const CROSS_SLIDE_THRESHOLD_SPEED_BUMP_START = 0x00000001;
  static const CROSS_SLIDE_THRESHOLD_SPEED_BUMP_END = 0x00000002;
  static const CROSS_SLIDE_THRESHOLD_REARRANGE_START = 0x00000003;
  static const CROSS_SLIDE_THRESHOLD_COUNT = 0x00000004;
  static const CROSS_SLIDE_THRESHOLD_MAX = 0xffffffff;
}

/// {@category Enum}
class HOLD_PARAMETER {
  static const HOLD_PARAMETER_MIN_CONTACT_COUNT = 0x00000000;
  static const HOLD_PARAMETER_MAX_CONTACT_COUNT = 0x00000001;
  static const HOLD_PARAMETER_THRESHOLD_RADIUS = 0x00000002;
  static const HOLD_PARAMETER_THRESHOLD_START_DELAY = 0x00000003;
  static const HOLD_PARAMETER_MAX = 0xffffffff;
}

/// {@category Enum}
class INERTIA_PARAMETER {
  static const INERTIA_PARAMETER_TRANSLATION_DECELERATION = 0x00000001;
  static const INERTIA_PARAMETER_TRANSLATION_DISPLACEMENT = 0x00000002;
  static const INERTIA_PARAMETER_ROTATION_DECELERATION = 0x00000003;
  static const INERTIA_PARAMETER_ROTATION_ANGLE = 0x00000004;
  static const INERTIA_PARAMETER_EXPANSION_DECELERATION = 0x00000005;
  static const INERTIA_PARAMETER_EXPANSION_EXPANSION = 0x00000006;
  static const INERTIA_PARAMETER_MAX = 0xffffffff;
}

/// {@category Enum}
class INTERACTION_CONFIGURATION_FLAGS {
  static const INTERACTION_CONFIGURATION_FLAG_NONE = 0x00000000;
  static const INTERACTION_CONFIGURATION_FLAG_MANIPULATION = 0x00000001;
  static const INTERACTION_CONFIGURATION_FLAG_MANIPULATION_TRANSLATION_X = 0x00000002;
  static const INTERACTION_CONFIGURATION_FLAG_MANIPULATION_TRANSLATION_Y = 0x00000004;
  static const INTERACTION_CONFIGURATION_FLAG_MANIPULATION_ROTATION = 0x00000008;
  static const INTERACTION_CONFIGURATION_FLAG_MANIPULATION_SCALING = 0x00000010;
  static const INTERACTION_CONFIGURATION_FLAG_MANIPULATION_TRANSLATION_INERTIA = 0x00000020;
  static const INTERACTION_CONFIGURATION_FLAG_MANIPULATION_ROTATION_INERTIA = 0x00000040;
  static const INTERACTION_CONFIGURATION_FLAG_MANIPULATION_SCALING_INERTIA = 0x00000080;
  static const INTERACTION_CONFIGURATION_FLAG_MANIPULATION_RAILS_X = 0x00000100;
  static const INTERACTION_CONFIGURATION_FLAG_MANIPULATION_RAILS_Y = 0x00000200;
  static const INTERACTION_CONFIGURATION_FLAG_MANIPULATION_EXACT = 0x00000400;
  static const INTERACTION_CONFIGURATION_FLAG_MANIPULATION_MULTIPLE_FINGER_PANNING = 0x00000800;
  static const INTERACTION_CONFIGURATION_FLAG_CROSS_SLIDE = 0x00000001;
  static const INTERACTION_CONFIGURATION_FLAG_CROSS_SLIDE_HORIZONTAL = 0x00000002;
  static const INTERACTION_CONFIGURATION_FLAG_CROSS_SLIDE_SELECT = 0x00000004;
  static const INTERACTION_CONFIGURATION_FLAG_CROSS_SLIDE_SPEED_BUMP = 0x00000008;
  static const INTERACTION_CONFIGURATION_FLAG_CROSS_SLIDE_REARRANGE = 0x00000010;
  static const INTERACTION_CONFIGURATION_FLAG_CROSS_SLIDE_EXACT = 0x00000020;
  static const INTERACTION_CONFIGURATION_FLAG_TAP = 0x00000001;
  static const INTERACTION_CONFIGURATION_FLAG_TAP_DOUBLE = 0x00000002;
  static const INTERACTION_CONFIGURATION_FLAG_TAP_MULTIPLE_FINGER = 0x00000004;
  static const INTERACTION_CONFIGURATION_FLAG_SECONDARY_TAP = 0x00000001;
  static const INTERACTION_CONFIGURATION_FLAG_HOLD = 0x00000001;
  static const INTERACTION_CONFIGURATION_FLAG_HOLD_MOUSE = 0x00000002;
  static const INTERACTION_CONFIGURATION_FLAG_HOLD_MULTIPLE_FINGER = 0x00000004;
  static const INTERACTION_CONFIGURATION_FLAG_DRAG = 0x00000001;
  static const INTERACTION_CONFIGURATION_FLAG_MAX = 0xffffffff;
}

/// {@category Enum}
class INTERACTION_CONTEXT_PROPERTY {
  static const INTERACTION_CONTEXT_PROPERTY_MEASUREMENT_UNITS = 0x00000001;
  static const INTERACTION_CONTEXT_PROPERTY_INTERACTION_UI_FEEDBACK = 0x00000002;
  static const INTERACTION_CONTEXT_PROPERTY_FILTER_POINTERS = 0x00000003;
  static const INTERACTION_CONTEXT_PROPERTY_MAX = 0xffffffff;
}

/// {@category Enum}
class INTERACTION_FLAGS {
  static const INTERACTION_FLAG_NONE = 0x00000000;
  static const INTERACTION_FLAG_BEGIN = 0x00000001;
  static const INTERACTION_FLAG_END = 0x00000002;
  static const INTERACTION_FLAG_CANCEL = 0x00000004;
  static const INTERACTION_FLAG_INERTIA = 0x00000008;
  static const INTERACTION_FLAG_MAX = 0xffffffff;
}

/// {@category Enum}
class INTERACTION_ID {
  static const INTERACTION_ID_NONE = 0x00000000;
  static const INTERACTION_ID_MANIPULATION = 0x00000001;
  static const INTERACTION_ID_TAP = 0x00000002;
  static const INTERACTION_ID_SECONDARY_TAP = 0x00000003;
  static const INTERACTION_ID_HOLD = 0x00000004;
  static const INTERACTION_ID_DRAG = 0x00000005;
  static const INTERACTION_ID_CROSS_SLIDE = 0x00000006;
  static const INTERACTION_ID_MAX = 0xffffffff;
}

/// {@category Enum}
class INTERACTION_STATE {
  static const INTERACTION_STATE_IDLE = 0x00000000;
  static const INTERACTION_STATE_IN_INTERACTION = 0x00000001;
  static const INTERACTION_STATE_POSSIBLE_DOUBLE_TAP = 0x00000002;
  static const INTERACTION_STATE_MAX = 0xffffffff;
}

/// {@category Enum}
class MANIPULATION_RAILS_STATE {
  static const MANIPULATION_RAILS_STATE_UNDECIDED = 0x00000000;
  static const MANIPULATION_RAILS_STATE_FREE = 0x00000001;
  static const MANIPULATION_RAILS_STATE_RAILED = 0x00000002;
  static const MANIPULATION_RAILS_STATE_MAX = 0xffffffff;
}

/// {@category Enum}
class MOUSE_WHEEL_PARAMETER {
  static const MOUSE_WHEEL_PARAMETER_CHAR_TRANSLATION_X = 0x00000001;
  static const MOUSE_WHEEL_PARAMETER_CHAR_TRANSLATION_Y = 0x00000002;
  static const MOUSE_WHEEL_PARAMETER_DELTA_SCALE = 0x00000003;
  static const MOUSE_WHEEL_PARAMETER_DELTA_ROTATION = 0x00000004;
  static const MOUSE_WHEEL_PARAMETER_PAGE_TRANSLATION_X = 0x00000005;
  static const MOUSE_WHEEL_PARAMETER_PAGE_TRANSLATION_Y = 0x00000006;
  static const MOUSE_WHEEL_PARAMETER_MAX = 0xffffffff;
}

/// {@category Enum}
class TAP_PARAMETER {
  static const TAP_PARAMETER_MIN_CONTACT_COUNT = 0x00000000;
  static const TAP_PARAMETER_MAX_CONTACT_COUNT = 0x00000001;
  static const TAP_PARAMETER_MAX = 0xffffffff;
}

/// {@category Enum}
class TRANSLATION_PARAMETER {
  static const TRANSLATION_PARAMETER_MIN_CONTACT_COUNT = 0x00000000;
  static const TRANSLATION_PARAMETER_MAX_CONTACT_COUNT = 0x00000001;
  static const TRANSLATION_PARAMETER_MAX = 0xffffffff;
}

