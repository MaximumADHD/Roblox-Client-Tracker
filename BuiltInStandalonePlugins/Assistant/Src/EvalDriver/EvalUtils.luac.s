PROTO_0:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R4 0 1
        3 MOVE                             R5 R0
        4 SETLIST                          R4 R5 1 [1]
        6 NAMECALL                         R2 R2 K0 ["GetAsync"]
        8 CALL                             R2 2 1
        9 GETTABLEN                        R1 R2 1
       10 GETTABLEKS                       R2 R1 K1 ["Enabled"]
       12 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 NEWTABLE                         R5 0 1
        3 MOVE                             R6 R0
        4 SETLIST                          R5 R6 1 [1]
        6 NAMECALL                         R3 R3 K0 ["GetAsync"]
        8 CALL                             R3 2 1
        9 GETTABLEN                        R2 R3 1
       10 GETTABLEKS                       R1 R2 K1 ["Enabled"]
       12 JUMPIF                           R1 ; [+5]
       13 GETIMPORT                        R1 K4 [task.wait]
       15 LOADK                            R2 K5 [0.1]
       16 CALL                             R1 1 0
       17 JUMPBACK                         ; [-18]
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AssistantApplication"]
        2 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        4 CALL                             R1 2 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["GetUserSettingsAsync"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AssistantApplication"]
        2 NAMECALL                         R2 R2 K1 ["GetPluginComponent"]
        4 CALL                             R2 2 1
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 NAMECALL                         R2 R2 K2 ["SetUserSettingsAsync"]
        9 CALL                             R2 3 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RunBoundCodeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_5:
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

PROTO_6:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["Actions"]
        3 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        5 CALL                             R1 2 1
        6 SETUPVAL                         R1 1
        7 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LaunchTestMode"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K1 ["ActivateAsync"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Stop"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K1 ["ActivateAsync"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CleanupServerAndClients"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K1 ["ActivateAsync"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_12:
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
       54 GETUPVAL                         R3 3
       55 GETTABLEKS                       R3 R3 K15 ["LaunchTestMode"]
       57 GETUPVAL                         R4 4
       58 MOVE                             R5 R3
       59 CALL                             R4 1 0
       60 GETUPVAL                         R4 5
       61 MOVE                             R6 R3
       62 NAMECALL                         R4 R4 K16 ["ActivateAsync"]
       64 CALL                             R4 2 0
       65 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CleanupServerAndClients"]
        3 GETUPVAL                         R3 1
        4 NEWTABLE                         R5 0 1
        6 MOVE                             R6 R0
        7 SETLIST                          R5 R6 1 [1]
        9 NAMECALL                         R3 R3 K1 ["GetAsync"]
       11 CALL                             R3 2 1
       12 GETTABLEN                        R2 R3 1
       13 GETTABLEKS                       R1 R2 K2 ["Enabled"]
       15 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CleanupServerAndClients"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K1 ["BindToChangedAsync"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PlaceManagementSaveToFile"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K1 ["ActivateAsync"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_22:
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
       27 LOADNIL                          R6
       28 DUPTABLE                         R7 K15 [{"Test", "TestHere", "Run", "ServerAndClients"}]
       29 LOADN                            R8 0
       30 SETTABLEKS                       R8 R7 K11 ["Test"]
       32 LOADN                            R8 1
       33 SETTABLEKS                       R8 R7 K12 ["TestHere"]
       35 LOADN                            R8 2
       36 SETTABLEKS                       R8 R7 K13 ["Run"]
       38 LOADN                            R8 4
       39 SETTABLEKS                       R8 R7 K14 ["ServerAndClients"]
       41 DUPTABLE                         R8 K20 [{"CleanupServerAndClients", "Stop", "LaunchTestMode", "PlaceManagementSaveToFile"}]
       42 GETTABLEKS                       R9 R3 K21 ["fromAction"]
       44 LOADK                            R10 K22 ["RunTools"]
       45 LOADK                            R11 K16 ["CleanupServerAndClients"]
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K16 ["CleanupServerAndClients"]
       49 GETTABLEKS                       R9 R3 K21 ["fromAction"]
       51 LOADK                            R10 K22 ["RunTools"]
       52 LOADK                            R11 K17 ["Stop"]
       53 CALL                             R9 2 1
       54 SETTABLEKS                       R9 R8 K17 ["Stop"]
       56 GETTABLEKS                       R9 R3 K21 ["fromAction"]
       58 LOADK                            R10 K22 ["RunTools"]
       59 LOADK                            R11 K18 ["LaunchTestMode"]
       60 CALL                             R9 2 1
       61 SETTABLEKS                       R9 R8 K18 ["LaunchTestMode"]
       63 GETTABLEKS                       R9 R3 K21 ["fromAction"]
       65 LOADK                            R10 K23 ["PlaceManagement"]
       66 LOADK                            R11 K24 ["SaveToFile"]
       67 CALL                             R9 2 1
       68 SETTABLEKS                       R9 R8 K19 ["PlaceManagementSaveToFile"]
       70 NEWCLOSURE                       R9 P0
       71 CAPTURE                          REF R5
       72 NEWCLOSURE                       R10 P1
       73 CAPTURE                          REF R5
       74 NEWCLOSURE                       R11 P2
       75 CAPTURE                          REF R4
       76 NEWCLOSURE                       R12 P3
       77 CAPTURE                          REF R4
       78 NEWCLOSURE                       R13 P4
       79 CAPTURE                          REF R4
       80 NEWCLOSURE                       R14 P5
       81 CAPTURE                          REF R4
       82 CAPTURE                          REF R5
       83 NEWCLOSURE                       R15 P6
       84 CAPTURE                          VAL R3
       85 CAPTURE                          REF R4
       86 NEWCLOSURE                       R16 P7
       87 CAPTURE                          VAL R3
       88 CAPTURE                          REF R4
       89 NEWCLOSURE                       R17 P8
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R10
       92 CAPTURE                          REF R5
       93 NEWCLOSURE                       R18 P9
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R10
       96 CAPTURE                          REF R5
       97 NEWCLOSURE                       R19 P10
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R10
      100 CAPTURE                          REF R5
      101 NEWCLOSURE                       R20 P11
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R3
      104 CAPTURE                          REF R4
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R10
      107 CAPTURE                          REF R5
      108 NEWCLOSURE                       R21 P12
      109 CAPTURE                          VAL R8
      110 CAPTURE                          REF R5
      111 NEWCLOSURE                       R22 P13
      112 CAPTURE                          VAL R8
      113 CAPTURE                          REF R5
      114 DUPCLOSURE                       R23 K25 [PROTO_15]
      115 NEWCLOSURE                       R24 P15
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R10
      118 CAPTURE                          REF R5
      119 DUPCLOSURE                       R25 K26 [PROTO_17]
      120 DUPCLOSURE                       R26 K27 [PROTO_18]
      121 NEWCLOSURE                       R27 P18
      122 CAPTURE                          REF R4
      123 DUPCLOSURE                       R28 K28 [PROTO_20]
      124 NEWCLOSURE                       R29 P20
      125 CAPTURE                          REF R6
      126 NEWCLOSURE                       R30 P21
      127 CAPTURE                          REF R6
      128 DUPTABLE                         R31 K47 [{"RunModeEnum", "init", "getUserSettingsAsync", "setUserSettingsAsync", "loadCode", "runWithMode", "stopPlay", "cleanupServerAndClients", "waitForLocalPlayerReady", "installLoadedCode", "openPlaceFile", "savePlace", "getInstanceByPath", "getAssistantEvalBridge", "setMcpClient", "getMcpClient", "isCleanupServerAndClientsAvailable", "getStopMultiPlayerTestStateChangedSignal"}]
      129 SETTABLEKS                       R7 R31 K29 ["RunModeEnum"]
      131 SETTABLEKS                       R14 R31 K30 ["init"]
      133 SETTABLEKS                       R11 R31 K31 ["getUserSettingsAsync"]
      135 SETTABLEKS                       R12 R31 K32 ["setUserSettingsAsync"]
      137 SETTABLEKS                       R13 R31 K33 ["loadCode"]
      139 SETTABLEKS                       R20 R31 K34 ["runWithMode"]
      141 SETTABLEKS                       R18 R31 K35 ["stopPlay"]
      143 SETTABLEKS                       R19 R31 K36 ["cleanupServerAndClients"]
      145 SETTABLEKS                       R23 R31 K37 ["waitForLocalPlayerReady"]
      147 SETTABLEKS                       R25 R31 K38 ["installLoadedCode"]
      149 SETTABLEKS                       R27 R31 K39 ["openPlaceFile"]
      151 SETTABLEKS                       R24 R31 K40 ["savePlace"]
      153 SETTABLEKS                       R26 R31 K41 ["getInstanceByPath"]
      155 SETTABLEKS                       R28 R31 K42 ["getAssistantEvalBridge"]
      157 SETTABLEKS                       R29 R31 K43 ["setMcpClient"]
      159 SETTABLEKS                       R30 R31 K44 ["getMcpClient"]
      161 SETTABLEKS                       R21 R31 K45 ["isCleanupServerAndClientsAvailable"]
      163 SETTABLEKS                       R22 R31 K46 ["getStopMultiPlayerTestStateChangedSignal"]
      165 CLOSEUPVALS                      R4
      166 RETURN                           R31 1
