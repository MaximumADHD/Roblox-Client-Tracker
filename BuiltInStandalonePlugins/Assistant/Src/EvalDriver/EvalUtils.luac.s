PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Actions"]
        2 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        4 CALL                             R1 2 1
        5 NEWTABLE                         R5 0 1
        7 MOVE                             R6 R0
        8 SETLIST                          R5 R6 1 [1]
       10 NAMECALL                         R3 R1 K2 ["GetAsync"]
       12 CALL                             R3 2 1
       13 GETTABLEN                        R2 R3 1
       14 GETTABLEKS                       R3 R2 K3 ["Enabled"]
       16 JUMPIF                           R3 ; [+5]
       17 GETIMPORT                        R3 K6 [task.wait]
       19 LOADK                            R4 K7 [0.1]
       20 CALL                             R3 1 0
       21 JUMPBACK                         ; [-17]
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AssistantApplication"]
        2 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        4 CALL                             R1 2 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["GetUserSettingsAsync"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AssistantApplication"]
        2 NAMECALL                         R2 R2 K1 ["GetPluginComponent"]
        4 CALL                             R2 2 1
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 NAMECALL                         R2 R2 K2 ["SetUserSettingsAsync"]
        9 CALL                             R2 3 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RunBoundCodeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AssistantBridge"]
        2 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        4 CALL                             R1 2 1
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R1 K2 ["BindCodeAsync"]
        8 CALL                             R2 2 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 RETURN                           R2 2

PROTO_5:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fromSetting"]
        3 LOADK                            R2 K1 ["RunTools"]
        4 LOADK                            R3 K2 ["PlayersMode"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K3 ["Settings"]
        8 NAMECALL                         R2 R2 K4 ["GetPluginComponent"]
       10 CALL                             R2 2 1
       11 MOVE                             R5 R1
       12 MOVE                             R6 R0
       13 NAMECALL                         R3 R2 K5 ["SetNumberAsync"]
       15 CALL                             R3 3 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fromSetting"]
        3 LOADK                            R2 K1 ["RunTools"]
        4 LOADK                            R3 K2 ["TestMode"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K3 ["Settings"]
        8 NAMECALL                         R2 R2 K4 ["GetPluginComponent"]
       10 CALL                             R2 2 1
       11 MOVE                             R5 R1
       12 MOVE                             R6 R0
       13 NAMECALL                         R3 R2 K5 ["SetNumberAsync"]
       15 CALL                             R3 3 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromAction"]
        3 LOADK                            R1 K1 ["RunTools"]
        4 LOADK                            R2 K2 ["LaunchTestMode"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K3 ["Actions"]
        8 NAMECALL                         R1 R1 K4 ["GetPluginComponent"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R0
       13 CALL                             R2 1 0
       14 MOVE                             R4 R0
       15 NAMECALL                         R2 R1 K5 ["ActivateAsync"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromAction"]
        3 LOADK                            R1 K1 ["RunTools"]
        4 LOADK                            R2 K2 ["Stop"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K3 ["Actions"]
        8 NAMECALL                         R1 R1 K4 ["GetPluginComponent"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R0
       13 CALL                             R2 1 0
       14 MOVE                             R4 R0
       15 NAMECALL                         R2 R1 K5 ["ActivateAsync"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromAction"]
        3 LOADK                            R1 K1 ["RunTools"]
        4 LOADK                            R2 K2 ["CleanupServerAndClients"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K3 ["Actions"]
        8 NAMECALL                         R1 R1 K4 ["GetPluginComponent"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R0
       13 CALL                             R2 1 0
       14 MOVE                             R4 R0
       15 NAMECALL                         R2 R1 K5 ["ActivateAsync"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["fromSetting"]
        5 LOADK                            R4 K1 ["RunTools"]
        6 LOADK                            R5 K2 ["TestMode"]
        7 CALL                             R3 2 1
        8 GETUPVAL                         R4 2
        9 LOADK                            R6 K3 ["Settings"]
       10 NAMECALL                         R4 R4 K4 ["GetPluginComponent"]
       12 CALL                             R4 2 1
       13 MOVE                             R7 R3
       14 MOVE                             R8 R2
       15 NAMECALL                         R5 R4 K5 ["SetNumberAsync"]
       17 CALL                             R5 3 0
       18 GETIMPORT                        R3 K8 [task.wait]
       20 LOADK                            R4 K9 [0.1]
       21 CALL                             R3 1 0
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K10 ["ServerAndClients"]
       25 JUMPIFNOTEQ                      R2 R3 ; [+24]
       27 FASTCALL2K                       ASSERT R1 K11 ; [+5]
       29 MOVE                             R4 R1
       30 LOADK                            R5 K11 ["playerNum is required for server and clients mode"]
       31 GETIMPORT                        R3 K13 [assert]
       33 CALL                             R3 2 0
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K0 ["fromSetting"]
       37 LOADK                            R4 K1 ["RunTools"]
       38 LOADK                            R5 K14 ["PlayersMode"]
       39 CALL                             R3 2 1
       40 GETUPVAL                         R4 2
       41 LOADK                            R6 K3 ["Settings"]
       42 NAMECALL                         R4 R4 K4 ["GetPluginComponent"]
       44 CALL                             R4 2 1
       45 MOVE                             R7 R3
       46 MOVE                             R8 R1
       47 NAMECALL                         R5 R4 K5 ["SetNumberAsync"]
       49 CALL                             R5 3 0
       50 GETIMPORT                        R3 K8 [task.wait]
       52 LOADK                            R4 K9 [0.1]
       53 CALL                             R3 1 0
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R3 R3 K15 ["fromAction"]
       57 LOADK                            R4 K1 ["RunTools"]
       58 LOADK                            R5 K16 ["LaunchTestMode"]
       59 CALL                             R3 2 1
       60 GETUPVAL                         R4 2
       61 LOADK                            R6 K17 ["Actions"]
       62 NAMECALL                         R4 R4 K4 ["GetPluginComponent"]
       64 CALL                             R4 2 1
       65 GETUPVAL                         R5 3
       66 MOVE                             R6 R3
       67 CALL                             R5 1 0
       68 MOVE                             R7 R3
       69 NAMECALL                         R5 R4 K18 ["ActivateAsync"]
       71 CALL                             R5 2 0
       72 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Players"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R1 R0 K4 ["LocalPlayer"]
        8 JUMPIF                           R1 ; [+8]
        9 GETTABLEKS                       R2 R0 K5 ["PlayerAdded"]
       11 NAMECALL                         R2 R2 K6 ["Wait"]
       13 CALL                             R2 1 0
       14 GETTABLEKS                       R1 R0 K4 ["LocalPlayer"]
       16 JUMPBACK                         ; [-9]
       17 FASTCALL2K                       ASSERT R1 K7 ; [+5]
       19 MOVE                             R3 R1
       20 LOADK                            R4 K7 ["Local player not found"]
       21 GETIMPORT                        R2 K9 [assert]
       23 CALL                             R2 2 0
       24 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromAction"]
        3 LOADK                            R1 K1 ["PlaceManagement"]
        4 LOADK                            R2 K2 ["SaveToFile"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K3 ["Actions"]
        8 NAMECALL                         R1 R1 K4 ["GetPluginComponent"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R0
       13 CALL                             R2 1 0
       14 MOVE                             R4 R0
       15 NAMECALL                         R2 R1 K5 ["ActivateAsync"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["LoadedCode"]
        3 NAMECALL                         R0 R0 K3 ["FindFirstChild"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+3]
        7 NAMECALL                         R1 R0 K4 ["Destroy"]
        9 CALL                             R1 1 0
       10 GETIMPORT                        R1 K1 [game]
       12 LOADK                            R3 K5 ["ReplicatedStorage"]
       13 NAMECALL                         R1 R1 K6 ["GetService"]
       15 CALL                             R1 2 1
       16 GETTABLEKS                       R1 R1 K7 ["AssistantEval"]
       18 GETTABLEKS                       R1 R1 K2 ["LoadedCode"]
       20 NAMECALL                         R1 R1 K8 ["Clone"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [game]
       25 SETTABLEKS                       R2 R1 K9 ["Parent"]
       27 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R2 K2 [string.split]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["."]
        4 CALL                             R2 2 1
        5 MOVE                             R3 R1
        6 JUMPIF                           R3 ; [+17]
        7 LENGTH                           R4 R2
        8 LOADN                            R5 0
        9 JUMPIFNOTLT                      R5 R4 ; [+14]
       11 GETTABLEN                        R4 R2 1
       12 JUMPIFNOTEQKS                    R4 K4 ["game"] ; [+9]
       14 GETIMPORT                        R3 K5 [game]
       16 GETIMPORT                        R4 K8 [table.remove]
       18 MOVE                             R5 R2
       19 LOADN                            R6 1
       20 CALL                             R4 2 0
       21 JUMP                             ; [+2]
       22 LOADNIL                          R4
       23 RETURN                           R4 1
       24 MOVE                             R4 R2
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 JUMPIF                           R3 ; [+2]
       29 LOADNIL                          R9
       30 RETURN                           R9 1
       31 MOVE                             R11 R8
       32 NAMECALL                         R9 R3 K9 ["FindFirstChild"]
       34 CALL                             R9 2 1
       35 MOVE                             R3 R9
       36 FORGLOOP                         R4 2 ; [-9]
       38 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["PlaceOpener"]
        2 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        4 CALL                             R1 2 1
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R1 K2 ["OpenFileAsync"]
        8 CALL                             R2 2 0
        9 GETIMPORT                        R2 K5 [task.wait]
       11 LOADN                            R3 1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ReplicatedStorage"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R0 R0 K4 ["AssistantEval"]
        8 LOADK                            R2 K5 ["AssistantEvalBridge"]
        9 NAMECALL                         R0 R0 K6 ["FindFirstChild"]
       11 CALL                             R0 2 1
       12 JUMPIF                           R0 ; [+18]
       13 GETIMPORT                        R1 K9 [Instance.new]
       15 LOADK                            R2 K10 ["BindableFunction"]
       16 CALL                             R1 1 1
       17 MOVE                             R0 R1
       18 LOADK                            R1 K5 ["AssistantEvalBridge"]
       19 SETTABLEKS                       R1 R0 K11 ["Name"]
       21 GETIMPORT                        R1 K1 [game]
       23 LOADK                            R3 K2 ["ReplicatedStorage"]
       24 NAMECALL                         R1 R1 K3 ["GetService"]
       26 CALL                             R1 2 1
       27 GETTABLEKS                       R1 R1 K4 ["AssistantEval"]
       29 SETTABLEKS                       R1 R0 K12 ["Parent"]
       31 RETURN                           R0 1

PROTO_18:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["StudioUri"]
       25 LOADNIL                          R4
       26 LOADNIL                          R5
       27 DUPTABLE                         R6 K15 [{"Test", "TestHere", "Run", "ServerAndClients"}]
       28 LOADN                            R7 0
       29 SETTABLEKS                       R7 R6 K11 ["Test"]
       31 LOADN                            R7 1
       32 SETTABLEKS                       R7 R6 K12 ["TestHere"]
       34 LOADN                            R7 2
       35 SETTABLEKS                       R7 R6 K13 ["Run"]
       37 LOADN                            R7 4
       38 SETTABLEKS                       R7 R6 K14 ["ServerAndClients"]
       40 NEWCLOSURE                       R7 P0
       41 CAPTURE                          REF R4
       42 NEWCLOSURE                       R8 P1
       43 CAPTURE                          REF R4
       44 NEWCLOSURE                       R9 P2
       45 CAPTURE                          REF R4
       46 NEWCLOSURE                       R10 P3
       47 CAPTURE                          REF R4
       48 NEWCLOSURE                       R11 P4
       49 CAPTURE                          REF R4
       50 NEWCLOSURE                       R12 P5
       51 CAPTURE                          VAL R3
       52 CAPTURE                          REF R4
       53 NEWCLOSURE                       R13 P6
       54 CAPTURE                          VAL R3
       55 CAPTURE                          REF R4
       56 NEWCLOSURE                       R14 P7
       57 CAPTURE                          VAL R3
       58 CAPTURE                          REF R4
       59 CAPTURE                          VAL R7
       60 NEWCLOSURE                       R15 P8
       61 CAPTURE                          VAL R3
       62 CAPTURE                          REF R4
       63 CAPTURE                          VAL R7
       64 NEWCLOSURE                       R16 P9
       65 CAPTURE                          VAL R3
       66 CAPTURE                          REF R4
       67 CAPTURE                          VAL R7
       68 NEWCLOSURE                       R17 P10
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R3
       71 CAPTURE                          REF R4
       72 CAPTURE                          VAL R7
       73 DUPCLOSURE                       R18 K16 [PROTO_12]
       74 NEWCLOSURE                       R19 P12
       75 CAPTURE                          VAL R3
       76 CAPTURE                          REF R4
       77 CAPTURE                          VAL R7
       78 DUPCLOSURE                       R20 K17 [PROTO_14]
       79 DUPCLOSURE                       R21 K18 [PROTO_15]
       80 NEWCLOSURE                       R22 P15
       81 CAPTURE                          REF R4
       82 DUPCLOSURE                       R23 K19 [PROTO_17]
       83 NEWCLOSURE                       R24 P17
       84 CAPTURE                          REF R5
       85 NEWCLOSURE                       R25 P18
       86 CAPTURE                          REF R5
       87 DUPTABLE                         R26 K36 [{"RunModeEnum", "init", "getUserSettingsAsync", "setUserSettingsAsync", "loadCode", "runWithMode", "stopPlay", "cleanupServerAndClients", "waitForLocalPlayerReady", "installLoadedCode", "openPlaceFile", "savePlace", "getInstanceByPath", "getAssistantEvalBridge", "setMcpClient", "getMcpClient"}]
       88 SETTABLEKS                       R6 R26 K20 ["RunModeEnum"]
       90 SETTABLEKS                       R11 R26 K21 ["init"]
       92 SETTABLEKS                       R8 R26 K22 ["getUserSettingsAsync"]
       94 SETTABLEKS                       R9 R26 K23 ["setUserSettingsAsync"]
       96 SETTABLEKS                       R10 R26 K24 ["loadCode"]
       98 SETTABLEKS                       R17 R26 K25 ["runWithMode"]
      100 SETTABLEKS                       R15 R26 K26 ["stopPlay"]
      102 SETTABLEKS                       R16 R26 K27 ["cleanupServerAndClients"]
      104 SETTABLEKS                       R18 R26 K28 ["waitForLocalPlayerReady"]
      106 SETTABLEKS                       R20 R26 K29 ["installLoadedCode"]
      108 SETTABLEKS                       R22 R26 K30 ["openPlaceFile"]
      110 SETTABLEKS                       R19 R26 K31 ["savePlace"]
      112 SETTABLEKS                       R21 R26 K32 ["getInstanceByPath"]
      114 SETTABLEKS                       R23 R26 K33 ["getAssistantEvalBridge"]
      116 SETTABLEKS                       R24 R26 K34 ["setMcpClient"]
      118 SETTABLEKS                       R25 R26 K35 ["getMcpClient"]
      120 CLOSEUPVALS                      R4
      121 RETURN                           R26 1
