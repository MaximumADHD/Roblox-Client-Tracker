PROTO_0:
        0 GETIMPORT                        R2 K3 [Enum.Platform.XBoxOne]
        2 JUMPIFNOTEQ                      R0 R2 ; [+3]
        4 LOADK                            R2 K4 ["XboxOne"]
        5 RETURN                           R2 1
        6 GETIMPORT                        R2 K6 [Enum.Platform.XBox360]
        8 JUMPIFNOTEQ                      R0 R2 ; [+3]
       10 LOADK                            R2 K4 ["XboxOne"]
       11 RETURN                           R2 1
       12 GETIMPORT                        R2 K8 [Enum.Platform.PS3]
       14 JUMPIFNOTEQ                      R0 R2 ; [+3]
       16 LOADK                            R2 K9 ["PS4"]
       17 RETURN                           R2 1
       18 GETIMPORT                        R2 K10 [Enum.Platform.PS4]
       20 JUMPIFNOTEQ                      R0 R2 ; [+3]
       22 LOADK                            R2 K9 ["PS4"]
       23 RETURN                           R2 1
       24 GETIMPORT                        R2 K12 [Enum.Platform.PS5]
       26 JUMPIFNOTEQ                      R0 R2 ; [+3]
       28 LOADK                            R2 K11 ["PS5"]
       29 RETURN                           R2 1
       30 GETIMPORT                        R2 K14 [Enum.Platform.MetaOS]
       32 JUMPIFNOTEQ                      R0 R2 ; [+22]
       34 JUMPIFNOT                        R1 ; [+18]
       35 GETIMPORT                        R2 K17 [string.find]
       37 MOVE                             R3 R1
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R4 R5 K18 ["QUEST3_EMULATED_DEVICE_ID"]
       41 CALL                             R2 2 1
       42 JUMPIF                           R2 ; [+8]
       43 GETIMPORT                        R2 K17 [string.find]
       45 MOVE                             R3 R1
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R4 R5 K19 ["META_QUEST_3_NAME"]
       49 CALL                             R2 2 1
       50 JUMPIFNOT                        R2 ; [+2]
       51 LOADK                            R2 K20 ["Quest3"]
       52 RETURN                           R2 1
       53 LOADK                            R2 K21 ["Quest2"]
       54 RETURN                           R2 1
       55 GETIMPORT                        R2 K23 [Enum.Platform.Windows]
       57 JUMPIFNOTEQ                      R0 R2 ; [+20]
       59 JUMPIFNOT                        R1 ; [+18]
       60 GETIMPORT                        R2 K17 [string.find]
       62 MOVE                             R3 R1
       63 GETUPVAL                         R5 0
       64 GETTABLEKS                       R4 R5 K24 ["GENERIC_HANDHELD_720_EMULATED_DEVICE_ID"]
       66 CALL                             R2 2 1
       67 JUMPIF                           R2 ; [+8]
       68 GETIMPORT                        R2 K17 [string.find]
       70 MOVE                             R3 R1
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R4 R5 K25 ["GENERIC_HANDHELD_1080_EMULATED_DEVICE_ID"]
       74 CALL                             R2 2 1
       75 JUMPIFNOT                        R2 ; [+2]
       76 LOADK                            R2 K26 ["GenericHandheld"]
       77 RETURN                           R2 1
       78 LOADNIL                          R2
       79 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
