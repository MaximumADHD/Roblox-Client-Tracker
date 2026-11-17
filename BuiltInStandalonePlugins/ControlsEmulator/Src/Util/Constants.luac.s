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
       53 GETIMPORT                        R4 K14 [Enum.GamepadType.Unknown]
       55 SETTABLEKS                       R4 R3 K25 ["TVRemote"]
       57 NEWTABLE                         R4 8 0
       59 LOADN                            R5 101
       60 SETTABLEKS                       R5 R4 K15 ["Generic"]
       62 LOADN                            R5 102
       63 SETTABLEKS                       R5 R4 K16 ["PS4"]
       65 LOADN                            R5 103
       66 SETTABLEKS                       R5 R4 K18 ["PS5"]
       68 LOADN                            R5 104
       69 SETTABLEKS                       R5 R4 K20 ["XboxOne"]
       71 LOADN                            R5 105
       72 SETTABLEKS                       R5 R4 K22 ["Quest2"]
       74 LOADN                            R5 106
       75 SETTABLEKS                       R5 R4 K23 ["Quest3"]
       77 LOADN                            R5 107
       78 SETTABLEKS                       R5 R4 K24 ["GenericHandheld"]
       80 LOADN                            R5 108
       81 SETTABLEKS                       R5 R4 K25 ["TVRemote"]
       83 NEWTABLE                         R5 2 0
       85 GETIMPORT                        R6 K28 [Enum.KeyCode.Thumbstick1]
       87 GETIMPORT                        R7 K30 [Enum.KeyCode.ButtonL3]
       89 SETTABLE                         R7 R5 R6
       90 GETIMPORT                        R6 K32 [Enum.KeyCode.Thumbstick2]
       92 GETIMPORT                        R7 K34 [Enum.KeyCode.ButtonR3]
       94 SETTABLE                         R7 R5 R6
       95 NEWTABLE                         R6 2 0
       97 GETTABLEKS                       R7 R4 K22 ["Quest2"]
       99 LOADB                            R8 1
      100 SETTABLE                         R8 R6 R7
      101 GETTABLEKS                       R7 R4 K23 ["Quest3"]
      103 LOADB                            R8 1
      104 SETTABLE                         R8 R6 R7
      105 GETTABLEKS                       R7 R2 K35 ["reduce"]
      107 GETTABLEKS                       R8 R2 K36 ["keys"]
      109 MOVE                             R9 R4
      110 CALL                             R8 1 1
      111 DUPCLOSURE                       R9 K37 [PROTO_0]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R4
      114 NEWTABLE                         R10 0 0
      116 CALL                             R7 3 1
      117 GETTABLEKS                       R8 R2 K35 ["reduce"]
      119 GETTABLEKS                       R9 R2 K36 ["keys"]
      121 MOVE                             R10 R4
      122 CALL                             R9 1 1
      123 DUPCLOSURE                       R10 K38 [PROTO_1]
      124 CAPTURE                          VAL R4
      125 NEWTABLE                         R11 0 0
      127 CALL                             R8 3 1
      128 GETTABLEKS                       R9 R2 K39 ["values"]
      130 MOVE                             R10 R4
      131 CALL                             R9 1 1
      132 GETTABLEKS                       R10 R2 K40 ["filter"]
      134 MOVE                             R11 R9
      135 DUPCLOSURE                       R12 K41 [PROTO_2]
      136 CAPTURE                          VAL R6
      137 CALL                             R10 2 1
      138 GETTABLEKS                       R11 R2 K35 ["reduce"]
      140 GETTABLEKS                       R12 R2 K36 ["keys"]
      142 GETTABLEKS                       R13 R1 K42 ["KEY_NAMES_DEFINITIONS"]
      144 CALL                             R12 1 1
      145 DUPCLOSURE                       R13 K43 [PROTO_3]
      146 CAPTURE                          VAL R1
      147 NEWTABLE                         R14 0 0
      149 CALL                             R11 3 1
      150 DUPTABLE                         R12 K94 [{["NO_CONNECTED_GAMEPAD_ID"] = , ["DEFAULT_THUMBSTICK_SIZE_RELATIVE"] = 0.3, ["DEFAULT_THUMBSTICK_SOCKET_SIZE_RELATIVE"] = 0.15, ["KEY_TO_KEY_NAME"], ["VECTOR_PRESSED"] = {0, 0, 1}, ["VECTOR_RELEASED"] = {0, 0, 0}, ["DEFAULT_ROOT_CONTAINER_INPUT_CONTEXT_STATE"], ["DEFAULT_MAPPINGS_STATE"], ["GAMEPAD_TYPE_TO_ID"], ["HAND_TRACKED_DEVICES"], ["GAMEPAD_ID_TO_ENUM"], ["GAMEPAD_ID_TO_TYPE"], ["LISTED_DEVICE_IDS"], ["MAPPING_LABELS_OFFSET_FROM_CENTER"] = 0.075, ["MAPPING_LABELS_TEXT_GAP_X"] = 0.04, ["MAPPING_LABELS_TEXT_GAP_Y"] = 0.01, ["MAPPING_LABELS_TEXT_SCALE"] = 1.8, ["THUMBSTICK_KEYCODE_TO_THUMBSTICK_CLICK"], ["NUMBER_OF_HORIZONTAL_BARS_TRIGGER"] = 10, ["MAPPINGS_KEYS_BLACKLIST"], ["DEFAULT_EMULATED_DEVICE_ID"] = "default", ["PS4_EMULATED_DEVICE_ID"] = "ps4", ["QUEST2_EMULATED_DEVICE_ID"] = "meta_quest_2", ["QUEST3_EMULATED_DEVICE_ID"] = "meta_quest_3", ["META_QUEST_3_NAME"] = "Meta Quest 3", ["GENERIC_HANDHELD_720_EMULATED_DEVICE_ID"] = "generic_handheld_720", ["GENERIC_HANDHELD_1080_EMULATED_DEVICE_ID"] = "generic_handheld_1080", ["ANDROID_TV_1080_EMULATED_DEVICE_ID"] = "android_tv_1080", ["TOOLTIP_SHOWN_COUNT_SETTING"] = "TooltipShownCount999", ["MAX_NUM_TOOLTIP_SHOWN"] = 3}]
      151 SETTABLEKS                       R11 R12 K50 ["KEY_TO_KEY_NAME"]
      153 DUPTABLE                         R13 K98 [{["InputChanged"] = , ["InputEnded"] = , ["InputBegan"] = }]
      154 SETTABLEKS                       R13 R12 K55 ["DEFAULT_ROOT_CONTAINER_INPUT_CONTEXT_STATE"]
      156 DUPTABLE                         R13 K112 [{["mappings"], ["mappingsOverrides"], ["gamepadId"] = , ["isUpdatingMappingForGamepadId"] = , ["isUpdatingMappingForKey"] = , ["isMappingsDialogOpen"] = False, ["latestErrorMessage"] = , ["isVRConnected"] = False, ["emulatedDeviceId"] = , ["availableDeviceIds"], ["activeVRUserCFrames"], ["shouldVRControlsRespond"] = False}]
      157 NEWTABLE                         R14 0 0
      159 SETTABLEKS                       R14 R13 K99 ["mappings"]
      161 NEWTABLE                         R14 0 0
      163 SETTABLEKS                       R14 R13 K100 ["mappingsOverrides"]
      165 SETTABLEKS                       R10 R13 K109 ["availableDeviceIds"]
      167 NEWTABLE                         R14 4 0
      169 GETIMPORT                        R15 K115 [Enum.UserCFrame.Head]
      171 LOADB                            R16 1
      172 SETTABLE                         R16 R14 R15
      173 GETIMPORT                        R15 K117 [Enum.UserCFrame.LeftHand]
      175 LOADB                            R16 1
      176 SETTABLE                         R16 R14 R15
      177 GETIMPORT                        R15 K119 [Enum.UserCFrame.RightHand]
      179 LOADB                            R16 1
      180 SETTABLE                         R16 R14 R15
      181 SETTABLEKS                       R14 R13 K110 ["activeVRUserCFrames"]
      183 SETTABLEKS                       R13 R12 K56 ["DEFAULT_MAPPINGS_STATE"]
      185 SETTABLEKS                       R4 R12 K57 ["GAMEPAD_TYPE_TO_ID"]
      187 SETTABLEKS                       R6 R12 K58 ["HAND_TRACKED_DEVICES"]
      189 SETTABLEKS                       R7 R12 K59 ["GAMEPAD_ID_TO_ENUM"]
      191 SETTABLEKS                       R8 R12 K60 ["GAMEPAD_ID_TO_TYPE"]
      193 SETTABLEKS                       R9 R12 K61 ["LISTED_DEVICE_IDS"]
      195 SETTABLEKS                       R5 R12 K70 ["THUMBSTICK_KEYCODE_TO_THUMBSTICK_CLICK"]
      197 NEWTABLE                         R13 0 2
      199 GETIMPORT                        R14 K121 [Enum.KeyCode.Backspace]
      201 GETIMPORT                        R15 K123 [Enum.KeyCode.Delete]
      203 SETLIST                          R13 R14 2 [1]
      205 SETTABLEKS                       R13 R12 K73 ["MAPPINGS_KEYS_BLACKLIST"]
      207 RETURN                           R12 1
