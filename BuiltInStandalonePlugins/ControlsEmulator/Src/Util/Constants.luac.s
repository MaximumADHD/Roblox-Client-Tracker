PROTO_0:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  GETUPVAL R4 1
  GETTABLE R3 R4 R1
  SETTABLE R2 R0 R3
  RETURN R0 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  SETTABLE R1 R0 R2
  RETURN R0 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKB R2 TRUE [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["KEY_NAMES_DEFINITIONS"]
  GETTABLE R2 R3 R1
  GETTABLEKS R4 R2 K1 ["keyCode"]
  GETTABLE R3 R0 R4
  JUMPIFNOTEQKNIL R3 [+6]
  GETTABLEKS R3 R2 K1 ["keyCode"]
  NEWTABLE R4 0 0
  SETTABLE R4 R0 R3
  GETTABLEKS R4 R2 K1 ["keyCode"]
  GETTABLE R3 R0 R4
  GETTABLEKS R4 R2 K2 ["direction"]
  SETTABLE R1 R3 R4
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["KeyNamesConstants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K11 ["Bin"]
  GETTABLEKS R5 R6 K12 ["Common"]
  GETTABLEKS R4 R5 K13 ["defineLuaFlags"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K14 ["getFFlagEnableVRControllers"]
  NEWTABLE R5 8 0
  GETIMPORT R6 K18 [Enum.GamepadType.Unknown]
  SETTABLEKS R6 R5 K19 ["Generic"]
  GETIMPORT R6 K21 [Enum.GamepadType.PS4]
  SETTABLEKS R6 R5 K20 ["PS4"]
  GETIMPORT R6 K23 [Enum.GamepadType.PS5]
  SETTABLEKS R6 R5 K22 ["PS5"]
  GETIMPORT R6 K25 [Enum.GamepadType.XboxOne]
  SETTABLEKS R6 R5 K24 ["XboxOne"]
  GETIMPORT R6 K18 [Enum.GamepadType.Unknown]
  SETTABLEKS R6 R5 K26 ["Quest2"]
  GETIMPORT R6 K18 [Enum.GamepadType.Unknown]
  SETTABLEKS R6 R5 K27 ["Quest3"]
  NEWTABLE R6 8 0
  LOADN R7 101
  SETTABLEKS R7 R6 K19 ["Generic"]
  LOADN R7 102
  SETTABLEKS R7 R6 K20 ["PS4"]
  LOADN R7 103
  SETTABLEKS R7 R6 K22 ["PS5"]
  LOADN R7 104
  SETTABLEKS R7 R6 K24 ["XboxOne"]
  LOADN R7 105
  SETTABLEKS R7 R6 K26 ["Quest2"]
  LOADN R7 106
  SETTABLEKS R7 R6 K27 ["Quest3"]
  NEWTABLE R7 2 0
  GETIMPORT R8 K30 [Enum.KeyCode.Thumbstick1]
  GETIMPORT R9 K32 [Enum.KeyCode.ButtonL3]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K34 [Enum.KeyCode.Thumbstick2]
  GETIMPORT R9 K36 [Enum.KeyCode.ButtonR3]
  SETTABLE R9 R7 R8
  NEWTABLE R8 2 0
  GETTABLEKS R9 R6 K26 ["Quest2"]
  LOADB R10 1
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R6 K27 ["Quest3"]
  LOADB R10 1
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R2 K37 ["reduce"]
  GETTABLEKS R10 R2 K38 ["keys"]
  MOVE R11 R6
  CALL R10 1 1
  DUPCLOSURE R11 K39 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R6
  NEWTABLE R12 0 0
  CALL R9 3 1
  GETTABLEKS R10 R2 K37 ["reduce"]
  GETTABLEKS R11 R2 K38 ["keys"]
  MOVE R12 R6
  CALL R11 1 1
  DUPCLOSURE R12 K40 [PROTO_1]
  CAPTURE VAL R6
  NEWTABLE R13 0 0
  CALL R10 3 1
  GETTABLEKS R11 R2 K41 ["values"]
  MOVE R12 R6
  CALL R11 1 1
  MOVE R12 R4
  CALL R12 0 1
  JUMPIF R12 [+7]
  GETTABLEKS R12 R2 K42 ["filter"]
  MOVE R13 R11
  DUPCLOSURE R14 K43 [PROTO_2]
  CAPTURE VAL R8
  CALL R12 2 1
  MOVE R11 R12
  GETTABLEKS R12 R2 K37 ["reduce"]
  GETTABLEKS R13 R2 K38 ["keys"]
  GETTABLEKS R14 R1 K44 ["KEY_NAMES_DEFINITIONS"]
  CALL R13 1 1
  DUPCLOSURE R14 K45 [PROTO_3]
  CAPTURE VAL R1
  NEWTABLE R15 0 0
  CALL R12 3 1
  DUPTABLE R13 K67 [{"NAME", "NO_CONNECTED_GAMEPAD_ID", "DEFAULT_THUMBSTICK_SIZE_RELATIVE", "DEFAULT_THUMBSTICK_SOCKET_SIZE_RELATIVE", "KEY_TO_KEY_NAME", "VECTOR_PRESSED", "VECTOR_RELEASED", "DEFAULT_ROOT_CONTAINER_INPUT_CONTEXT_STATE", "DEFAULT_MAPPINGS_STATE", "GAMEPAD_TYPE_TO_ID", "HAND_TRACKED_DEVICES", "GAMEPAD_ID_TO_ENUM", "GAMEPAD_ID_TO_TYPE", "LISTED_DEVICE_IDS", "MAPPING_LABELS_OFFSET_FROM_CENTER", "MAPPING_LABELS_TEXT_GAP_X", "MAPPING_LABELS_TEXT_GAP_Y", "MAPPING_LABELS_TEXT_SCALE", "THUMBSTICK_KEYCODE_TO_THUMBSTICK_CLICK", "NUMBER_OF_HORIZONTAL_BARS_TRIGGER", "MAPPINGS_KEYS_BLACKLIST"}]
  LOADK R14 K68 ["Controls Emulator"]
  SETTABLEKS R14 R13 K46 ["NAME"]
  LOADNIL R14
  SETTABLEKS R14 R13 K47 ["NO_CONNECTED_GAMEPAD_ID"]
  LOADK R14 K69 [0.3]
  SETTABLEKS R14 R13 K48 ["DEFAULT_THUMBSTICK_SIZE_RELATIVE"]
  LOADK R14 K70 [0.15]
  SETTABLEKS R14 R13 K49 ["DEFAULT_THUMBSTICK_SOCKET_SIZE_RELATIVE"]
  SETTABLEKS R12 R13 K50 ["KEY_TO_KEY_NAME"]
  LOADK R14 K71 [{0, 0, 1}]
  SETTABLEKS R14 R13 K51 ["VECTOR_PRESSED"]
  GETIMPORT R14 K74 [Vector3.zero]
  SETTABLEKS R14 R13 K52 ["VECTOR_RELEASED"]
  DUPTABLE R14 K78 [{"InputChanged", "InputEnded", "InputBegan"}]
  LOADNIL R15
  SETTABLEKS R15 R14 K75 ["InputChanged"]
  LOADNIL R15
  SETTABLEKS R15 R14 K76 ["InputEnded"]
  LOADNIL R15
  SETTABLEKS R15 R14 K77 ["InputBegan"]
  SETTABLEKS R14 R13 K53 ["DEFAULT_ROOT_CONTAINER_INPUT_CONTEXT_STATE"]
  DUPTABLE R14 K88 [{"mappings", "mappingsOverrides", "gamepadId", "isUpdatingMappingForGamepadId", "isUpdatingMappingForKey", "isMappingsDialogOpen", "latestErrorMessage", "isVRConnected", "emulatedDeviceId"}]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K79 ["mappings"]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K80 ["mappingsOverrides"]
  LOADNIL R15
  SETTABLEKS R15 R14 K81 ["gamepadId"]
  LOADNIL R15
  SETTABLEKS R15 R14 K82 ["isUpdatingMappingForGamepadId"]
  LOADNIL R15
  SETTABLEKS R15 R14 K83 ["isUpdatingMappingForKey"]
  LOADB R15 0
  SETTABLEKS R15 R14 K84 ["isMappingsDialogOpen"]
  LOADNIL R15
  SETTABLEKS R15 R14 K85 ["latestErrorMessage"]
  LOADB R15 0
  SETTABLEKS R15 R14 K86 ["isVRConnected"]
  LOADNIL R15
  SETTABLEKS R15 R14 K87 ["emulatedDeviceId"]
  SETTABLEKS R14 R13 K54 ["DEFAULT_MAPPINGS_STATE"]
  SETTABLEKS R6 R13 K55 ["GAMEPAD_TYPE_TO_ID"]
  SETTABLEKS R8 R13 K56 ["HAND_TRACKED_DEVICES"]
  SETTABLEKS R9 R13 K57 ["GAMEPAD_ID_TO_ENUM"]
  SETTABLEKS R10 R13 K58 ["GAMEPAD_ID_TO_TYPE"]
  SETTABLEKS R11 R13 K59 ["LISTED_DEVICE_IDS"]
  LOADK R14 K89 [0.075]
  SETTABLEKS R14 R13 K60 ["MAPPING_LABELS_OFFSET_FROM_CENTER"]
  LOADK R14 K90 [0.04]
  SETTABLEKS R14 R13 K61 ["MAPPING_LABELS_TEXT_GAP_X"]
  LOADK R14 K91 [0.01]
  SETTABLEKS R14 R13 K62 ["MAPPING_LABELS_TEXT_GAP_Y"]
  LOADK R14 K92 [1.8]
  SETTABLEKS R14 R13 K63 ["MAPPING_LABELS_TEXT_SCALE"]
  SETTABLEKS R7 R13 K64 ["THUMBSTICK_KEYCODE_TO_THUMBSTICK_CLICK"]
  LOADN R14 17
  SETTABLEKS R14 R13 K65 ["NUMBER_OF_HORIZONTAL_BARS_TRIGGER"]
  NEWTABLE R14 0 2
  GETIMPORT R15 K94 [Enum.KeyCode.Backspace]
  GETIMPORT R16 K96 [Enum.KeyCode.Delete]
  SETLIST R14 R15 2 [1]
  SETTABLEKS R14 R13 K66 ["MAPPINGS_KEYS_BLACKLIST"]
  RETURN R13 1
