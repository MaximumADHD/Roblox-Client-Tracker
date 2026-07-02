PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 GETUPVAL                         R4 1
        3 GETTABLE                         R3 R4 R1
        4 SETTABLE                         R2 R0 R3
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 SETTABLE                         R1 R0 R2
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKB                    R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["KEY_NAMES_DEFINITIONS"]
        3 GETTABLE                         R2 R3 R1
        4 GETTABLEKS                       R4 R2 K1 ["keyCode"]
        6 GETTABLE                         R3 R0 R4
        7 JUMPIFNOTEQKNIL                  R3 ; [+6]
        9 GETTABLEKS                       R3 R2 K1 ["keyCode"]
       11 NEWTABLE                         R4 0 0
       13 SETTABLE                         R4 R0 R3
       14 GETTABLEKS                       R4 R2 K1 ["keyCode"]
       16 GETTABLE                         R3 R0 R4
       17 GETTABLEKS                       R4 R2 K2 ["direction"]
       19 SETTABLE                         R1 R3 R4
       20 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["KeyNamesConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Dash"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 8 0
       25 GETIMPORT                        R4 K14 [Enum.GamepadType.Unknown]
       27 SETTABLEKS                       R4 R3 K15 ["Generic"]
       29 GETIMPORT                        R4 K17 [Enum.GamepadType.PS4]
       31 SETTABLEKS                       R4 R3 K16 ["PS4"]
       33 GETIMPORT                        R4 K19 [Enum.GamepadType.PS5]
       35 SETTABLEKS                       R4 R3 K18 ["PS5"]
       37 GETIMPORT                        R4 K21 [Enum.GamepadType.XboxOne]
       39 SETTABLEKS                       R4 R3 K20 ["XboxOne"]
       41 GETIMPORT                        R4 K14 [Enum.GamepadType.Unknown]
       43 SETTABLEKS                       R4 R3 K22 ["Quest2"]
       45 GETIMPORT                        R4 K14 [Enum.GamepadType.Unknown]
       47 SETTABLEKS                       R4 R3 K23 ["Quest3"]
       49 GETIMPORT                        R4 K14 [Enum.GamepadType.Unknown]
       51 SETTABLEKS                       R4 R3 K24 ["GenericHandheld"]
       53 NEWTABLE                         R4 8 0
       55 LOADN                            R5 101
       56 SETTABLEKS                       R5 R4 K15 ["Generic"]
       58 LOADN                            R5 102
       59 SETTABLEKS                       R5 R4 K16 ["PS4"]
       61 LOADN                            R5 103
       62 SETTABLEKS                       R5 R4 K18 ["PS5"]
       64 LOADN                            R5 104
       65 SETTABLEKS                       R5 R4 K20 ["XboxOne"]
       67 LOADN                            R5 105
       68 SETTABLEKS                       R5 R4 K22 ["Quest2"]
       70 LOADN                            R5 106
       71 SETTABLEKS                       R5 R4 K23 ["Quest3"]
       73 LOADN                            R5 107
       74 SETTABLEKS                       R5 R4 K24 ["GenericHandheld"]
       76 NEWTABLE                         R5 2 0
       78 GETIMPORT                        R6 K27 [Enum.KeyCode.Thumbstick1]
       80 GETIMPORT                        R7 K29 [Enum.KeyCode.ButtonL3]
       82 SETTABLE                         R7 R5 R6
       83 GETIMPORT                        R6 K31 [Enum.KeyCode.Thumbstick2]
       85 GETIMPORT                        R7 K33 [Enum.KeyCode.ButtonR3]
       87 SETTABLE                         R7 R5 R6
       88 NEWTABLE                         R6 2 0
       90 GETTABLEKS                       R7 R4 K22 ["Quest2"]
       92 LOADB                            R8 1
       93 SETTABLE                         R8 R6 R7
       94 GETTABLEKS                       R7 R4 K23 ["Quest3"]
       96 LOADB                            R8 1
       97 SETTABLE                         R8 R6 R7
       98 GETTABLEKS                       R7 R2 K34 ["reduce"]
      100 GETTABLEKS                       R8 R2 K35 ["keys"]
      102 MOVE                             R9 R4
      103 CALL                             R8 1 1
      104 DUPCLOSURE                       R9 K36 [PROTO_0]
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R4
      107 NEWTABLE                         R10 0 0
      109 CALL                             R7 3 1
      110 GETTABLEKS                       R8 R2 K34 ["reduce"]
      112 GETTABLEKS                       R9 R2 K35 ["keys"]
      114 MOVE                             R10 R4
      115 CALL                             R9 1 1
      116 DUPCLOSURE                       R10 K37 [PROTO_1]
      117 CAPTURE                          VAL R4
      118 NEWTABLE                         R11 0 0
      120 CALL                             R8 3 1
      121 GETTABLEKS                       R9 R2 K38 ["values"]
      123 MOVE                             R10 R4
      124 CALL                             R9 1 1
      125 GETTABLEKS                       R10 R2 K39 ["filter"]
      127 MOVE                             R11 R9
      128 DUPCLOSURE                       R12 K40 [PROTO_2]
      129 CAPTURE                          VAL R6
      130 CALL                             R10 2 1
      131 GETTABLEKS                       R11 R2 K34 ["reduce"]
      133 GETTABLEKS                       R12 R2 K35 ["keys"]
      135 GETTABLEKS                       R13 R1 K41 ["KEY_NAMES_DEFINITIONS"]
      137 CALL                             R12 1 1
      138 DUPCLOSURE                       R13 K42 [PROTO_3]
      139 CAPTURE                          VAL R1
      140 NEWTABLE                         R14 0 0
      142 CALL                             R11 3 1
      143 DUPTABLE                         R12 K91 [{["NO_CONNECTED_GAMEPAD_ID"] = , ["DEFAULT_THUMBSTICK_SIZE_RELATIVE"] = 0.3, ["DEFAULT_THUMBSTICK_SOCKET_SIZE_RELATIVE"] = 0.15, ["KEY_TO_KEY_NAME"], ["VECTOR_PRESSED"] = {0, 0, 1}, ["VECTOR_RELEASED"] = {0, 0, 0}, ["DEFAULT_ROOT_CONTAINER_INPUT_CONTEXT_STATE"], ["DEFAULT_MAPPINGS_STATE"], ["GAMEPAD_TYPE_TO_ID"], ["HAND_TRACKED_DEVICES"], ["GAMEPAD_ID_TO_ENUM"], ["GAMEPAD_ID_TO_TYPE"], ["LISTED_DEVICE_IDS"], ["MAPPING_LABELS_OFFSET_FROM_CENTER"] = 0.075, ["MAPPING_LABELS_TEXT_GAP_X"] = 0.04, ["MAPPING_LABELS_TEXT_GAP_Y"] = 0.01, ["MAPPING_LABELS_TEXT_SCALE"] = 1.8, ["THUMBSTICK_KEYCODE_TO_THUMBSTICK_CLICK"], ["NUMBER_OF_HORIZONTAL_BARS_TRIGGER"] = 10, ["MAPPINGS_KEYS_BLACKLIST"], ["DEFAULT_EMULATED_DEVICE_ID"] = "default", ["PS4_EMULATED_DEVICE_ID"] = "ps4", ["QUEST2_EMULATED_DEVICE_ID"] = "meta_quest_2", ["QUEST3_EMULATED_DEVICE_ID"] = "meta_quest_3", ["META_QUEST_3_NAME"] = "Meta Quest 3", ["GENERIC_HANDHELD_720_EMULATED_DEVICE_ID"] = "generic_handheld_720", ["GENERIC_HANDHELD_1080_EMULATED_DEVICE_ID"] = "generic_handheld_1080", ["TOOLTIP_SHOWN_COUNT_SETTING"] = "TooltipShownCount999", ["MAX_NUM_TOOLTIP_SHOWN"] = 3}]
      144 SETTABLEKS                       R11 R12 K49 ["KEY_TO_KEY_NAME"]
      146 DUPTABLE                         R13 K95 [{["InputChanged"] = , ["InputEnded"] = , ["InputBegan"] = }]
      147 SETTABLEKS                       R13 R12 K54 ["DEFAULT_ROOT_CONTAINER_INPUT_CONTEXT_STATE"]
      149 DUPTABLE                         R13 K109 [{["mappings"], ["mappingsOverrides"], ["gamepadId"] = , ["isUpdatingMappingForGamepadId"] = , ["isUpdatingMappingForKey"] = , ["isMappingsDialogOpen"] = False, ["latestErrorMessage"] = , ["isVRConnected"] = False, ["emulatedDeviceId"] = , ["availableDeviceIds"], ["activeVRUserCFrames"], ["shouldVRControlsRespond"] = False}]
      150 NEWTABLE                         R14 0 0
      152 SETTABLEKS                       R14 R13 K96 ["mappings"]
      154 NEWTABLE                         R14 0 0
      156 SETTABLEKS                       R14 R13 K97 ["mappingsOverrides"]
      158 SETTABLEKS                       R10 R13 K106 ["availableDeviceIds"]
      160 NEWTABLE                         R14 4 0
      162 GETIMPORT                        R15 K112 [Enum.UserCFrame.Head]
      164 LOADB                            R16 1
      165 SETTABLE                         R16 R14 R15
      166 GETIMPORT                        R15 K114 [Enum.UserCFrame.LeftHand]
      168 LOADB                            R16 1
      169 SETTABLE                         R16 R14 R15
      170 GETIMPORT                        R15 K116 [Enum.UserCFrame.RightHand]
      172 LOADB                            R16 1
      173 SETTABLE                         R16 R14 R15
      174 SETTABLEKS                       R14 R13 K107 ["activeVRUserCFrames"]
      176 SETTABLEKS                       R13 R12 K55 ["DEFAULT_MAPPINGS_STATE"]
      178 SETTABLEKS                       R4 R12 K56 ["GAMEPAD_TYPE_TO_ID"]
      180 SETTABLEKS                       R6 R12 K57 ["HAND_TRACKED_DEVICES"]
      182 SETTABLEKS                       R7 R12 K58 ["GAMEPAD_ID_TO_ENUM"]
      184 SETTABLEKS                       R8 R12 K59 ["GAMEPAD_ID_TO_TYPE"]
      186 SETTABLEKS                       R9 R12 K60 ["LISTED_DEVICE_IDS"]
      188 SETTABLEKS                       R5 R12 K69 ["THUMBSTICK_KEYCODE_TO_THUMBSTICK_CLICK"]
      190 NEWTABLE                         R13 0 2
      192 GETIMPORT                        R14 K118 [Enum.KeyCode.Backspace]
      194 GETIMPORT                        R15 K120 [Enum.KeyCode.Delete]
      196 SETLIST                          R13 R14 2 [1]
      198 SETTABLEKS                       R13 R12 K72 ["MAPPINGS_KEYS_BLACKLIST"]
      200 RETURN                           R12 1
