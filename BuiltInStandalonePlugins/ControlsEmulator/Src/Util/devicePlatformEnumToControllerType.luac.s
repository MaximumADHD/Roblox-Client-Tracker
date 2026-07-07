PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagStudioDeviceSimulatorAndroidTV"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+13]
        5 JUMPIFNOT                        R1 ; [+12]
        6 GETIMPORT                        R2 K3 [string.find]
        8 MOVE                             R3 R1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K4 ["ANDROID_TV_1080_EMULATED_DEVICE_ID"]
       12 LOADN                            R5 1
       13 LOADB                            R6 1
       14 CALL                             R2 4 1
       15 JUMPIFNOT                        R2 ; [+2]
       16 LOADK                            R2 K5 ["TVRemote"]
       17 RETURN                           R2 1
       18 GETIMPORT                        R2 K9 [Enum.Platform.XBoxOne]
       20 JUMPIFNOTEQ                      R0 R2 ; [+3]
       22 LOADK                            R2 K10 ["XboxOne"]
       23 RETURN                           R2 1
       24 GETIMPORT                        R2 K12 [Enum.Platform.XBox360]
       26 JUMPIFNOTEQ                      R0 R2 ; [+3]
       28 LOADK                            R2 K10 ["XboxOne"]
       29 RETURN                           R2 1
       30 GETIMPORT                        R2 K14 [Enum.Platform.PS3]
       32 JUMPIFNOTEQ                      R0 R2 ; [+3]
       34 LOADK                            R2 K15 ["PS4"]
       35 RETURN                           R2 1
       36 GETIMPORT                        R2 K16 [Enum.Platform.PS4]
       38 JUMPIFNOTEQ                      R0 R2 ; [+3]
       40 LOADK                            R2 K15 ["PS4"]
       41 RETURN                           R2 1
       42 GETIMPORT                        R2 K18 [Enum.Platform.PS5]
       44 JUMPIFNOTEQ                      R0 R2 ; [+3]
       46 LOADK                            R2 K17 ["PS5"]
       47 RETURN                           R2 1
       48 GETIMPORT                        R2 K20 [Enum.Platform.MetaOS]
       50 JUMPIFNOTEQ                      R0 R2 ; [+22]
       52 JUMPIFNOT                        R1 ; [+18]
       53 GETIMPORT                        R2 K3 [string.find]
       55 MOVE                             R3 R1
       56 GETUPVAL                         R4 1
       57 GETTABLEKS                       R4 R4 K21 ["QUEST3_EMULATED_DEVICE_ID"]
       59 CALL                             R2 2 1
       60 JUMPIF                           R2 ; [+8]
       61 GETIMPORT                        R2 K3 [string.find]
       63 MOVE                             R3 R1
       64 GETUPVAL                         R4 1
       65 GETTABLEKS                       R4 R4 K22 ["META_QUEST_3_NAME"]
       67 CALL                             R2 2 1
       68 JUMPIFNOT                        R2 ; [+2]
       69 LOADK                            R2 K23 ["Quest3"]
       70 RETURN                           R2 1
       71 LOADK                            R2 K24 ["Quest2"]
       72 RETURN                           R2 1
       73 GETIMPORT                        R2 K26 [Enum.Platform.Windows]
       75 JUMPIFNOTEQ                      R0 R2 ; [+20]
       77 JUMPIFNOT                        R1 ; [+18]
       78 GETIMPORT                        R2 K3 [string.find]
       80 MOVE                             R3 R1
       81 GETUPVAL                         R4 1
       82 GETTABLEKS                       R4 R4 K27 ["GENERIC_HANDHELD_720_EMULATED_DEVICE_ID"]
       84 CALL                             R2 2 1
       85 JUMPIF                           R2 ; [+8]
       86 GETIMPORT                        R2 K3 [string.find]
       88 MOVE                             R3 R1
       89 GETUPVAL                         R4 1
       90 GETTABLEKS                       R4 R4 K28 ["GENERIC_HANDHELD_1080_EMULATED_DEVICE_ID"]
       92 CALL                             R2 2 1
       93 JUMPIFNOT                        R2 ; [+2]
       94 LOADK                            R2 K29 ["GenericHandheld"]
       95 RETURN                           R2 1
       96 LOADNIL                          R2
       97 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Bin"]
       20 GETTABLEKS                       R3 R3 K10 ["Common"]
       22 GETTABLEKS                       R3 R3 K11 ["defineLuaFlags"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K12 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 RETURN                           R3 1
