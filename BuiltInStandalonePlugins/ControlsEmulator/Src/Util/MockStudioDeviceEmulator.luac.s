PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K10 [{"SendGamepadEventAsync", "SendKeyboardEventAsync", "GetKeyboardShortcutAsync", "ConnectGamepadAsync", "UpdateKeyMappingAsync", "GetCurrentlyEmulatedDeviceAsync", "IsVREmulatorConnected", "SetActiveVRController", "SetVRUserCFrameActiveAsync", "ResetVRUserCFramesAsync"}]
        1 DUPCLOSURE                       R2 K11 [PROTO_0]
        2 SETTABLEKS                       R2 R1 K0 ["SendGamepadEventAsync"]
        4 DUPCLOSURE                       R2 K12 [PROTO_1]
        5 SETTABLEKS                       R2 R1 K1 ["SendKeyboardEventAsync"]
        7 DUPCLOSURE                       R2 K13 [PROTO_2]
        8 SETTABLEKS                       R2 R1 K2 ["GetKeyboardShortcutAsync"]
       10 DUPCLOSURE                       R2 K14 [PROTO_3]
       11 SETTABLEKS                       R2 R1 K3 ["ConnectGamepadAsync"]
       13 DUPCLOSURE                       R2 K15 [PROTO_4]
       14 SETTABLEKS                       R2 R1 K4 ["UpdateKeyMappingAsync"]
       16 DUPCLOSURE                       R2 K16 [PROTO_5]
       17 SETTABLEKS                       R2 R1 K5 ["GetCurrentlyEmulatedDeviceAsync"]
       19 DUPCLOSURE                       R2 K17 [PROTO_6]
       20 SETTABLEKS                       R2 R1 K6 ["IsVREmulatorConnected"]
       22 DUPCLOSURE                       R2 K18 [PROTO_7]
       23 SETTABLEKS                       R2 R1 K7 ["SetActiveVRController"]
       25 DUPCLOSURE                       R2 K19 [PROTO_8]
       26 SETTABLEKS                       R2 R1 K8 ["SetVRUserCFrameActiveAsync"]
       28 DUPCLOSURE                       R2 K20 [PROTO_9]
       29 SETTABLEKS                       R2 R1 K9 ["ResetVRUserCFramesAsync"]
       31 DUPTABLE                         R4 K22 [{"__index"}]
       32 GETUPVAL                         R5 0
       33 SETTABLEKS                       R5 R4 K21 ["__index"]
       35 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       37 MOVE                             R3 R1
       38 GETIMPORT                        R2 K24 [setmetatable]
       40 CALL                             R2 2 0
       41 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_10]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 RETURN                           R0 1
