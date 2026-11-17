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
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K0 ["RunCodeAsync"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R1 R1 K1 ["RunBoundCodeAsync"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AssistantBridge"]
        2 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        4 CALL                             R1 2 1
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R1 K2 ["BindCodeAsync"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["EngineFeatureAssistantExecuteLuauArguments"]
       12 JUMPIFEQKB                       R4 TRUE ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 MOVE                             R5 R2
       21 MOVE                             R6 R4
       22 RETURN                           R5 2

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
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["ReplicatedStorage"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 LOADK                            R3 K4 ["AssistantEval"]
        7 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
        9 CALL                             R1 2 1
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 RETURN                           R0 1

PROTO_21:
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

PROTO_22:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["Util"]
       30 GETTABLEKS                       R4 R4 K12 ["StudioUri"]
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 LOADNIL                          R7
       35 DUPTABLE                         R8 K21 [{["Test"] = 0, ["TestHere"] = 1, ["Run"] = 2, ["ServerAndClients"] = 4}]
       36 DUPTABLE                         R9 K26 [{"CleanupServerAndClients", "Stop", "LaunchTestMode", "PlaceManagementSaveToFile"}]
       37 GETTABLEKS                       R10 R4 K27 ["fromAction"]
       39 LOADK                            R11 K28 ["RunTools"]
       40 LOADK                            R12 K22 ["CleanupServerAndClients"]
       41 CALL                             R10 2 1
       42 SETTABLEKS                       R10 R9 K22 ["CleanupServerAndClients"]
       44 GETTABLEKS                       R10 R4 K27 ["fromAction"]
       46 LOADK                            R11 K28 ["RunTools"]
       47 LOADK                            R12 K23 ["Stop"]
       48 CALL                             R10 2 1
       49 SETTABLEKS                       R10 R9 K23 ["Stop"]
       51 GETTABLEKS                       R10 R4 K27 ["fromAction"]
       53 LOADK                            R11 K28 ["RunTools"]
       54 LOADK                            R12 K24 ["LaunchTestMode"]
       55 CALL                             R10 2 1
       56 SETTABLEKS                       R10 R9 K24 ["LaunchTestMode"]
       58 GETTABLEKS                       R10 R4 K27 ["fromAction"]
       60 LOADK                            R11 K29 ["PlaceManagement"]
       61 LOADK                            R12 K30 ["SaveToFile"]
       62 CALL                             R10 2 1
       63 SETTABLEKS                       R10 R9 K25 ["PlaceManagementSaveToFile"]
       65 NEWCLOSURE                       R10 P0
       66 CAPTURE                          REF R6
       67 NEWCLOSURE                       R11 P1
       68 CAPTURE                          REF R6
       69 NEWCLOSURE                       R12 P2
       70 CAPTURE                          REF R5
       71 NEWCLOSURE                       R13 P3
       72 CAPTURE                          REF R5
       73 NEWCLOSURE                       R14 P4
       74 CAPTURE                          REF R5
       75 CAPTURE                          VAL R1
       76 NEWCLOSURE                       R15 P5
       77 CAPTURE                          REF R5
       78 CAPTURE                          REF R6
       79 NEWCLOSURE                       R16 P6
       80 CAPTURE                          VAL R4
       81 CAPTURE                          REF R5
       82 NEWCLOSURE                       R17 P7
       83 CAPTURE                          VAL R4
       84 CAPTURE                          REF R5
       85 NEWCLOSURE                       R18 P8
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R11
       88 CAPTURE                          REF R6
       89 NEWCLOSURE                       R19 P9
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R11
       92 CAPTURE                          REF R6
       93 NEWCLOSURE                       R20 P10
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R11
       96 CAPTURE                          REF R6
       97 NEWCLOSURE                       R21 P11
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R4
      100 CAPTURE                          REF R5
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R11
      103 CAPTURE                          REF R6
      104 NEWCLOSURE                       R22 P12
      105 CAPTURE                          VAL R9
      106 CAPTURE                          REF R6
      107 NEWCLOSURE                       R23 P13
      108 CAPTURE                          VAL R9
      109 CAPTURE                          REF R6
      110 DUPCLOSURE                       R24 K31 [PROTO_15]
      111 NEWCLOSURE                       R25 P15
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R11
      114 CAPTURE                          REF R6
      115 DUPCLOSURE                       R26 K32 [PROTO_17]
      116 DUPCLOSURE                       R27 K33 [PROTO_18]
      117 NEWCLOSURE                       R28 P18
      118 CAPTURE                          REF R5
      119 DUPCLOSURE                       R29 K34 [PROTO_20]
      120 DUPCLOSURE                       R30 K35 [PROTO_21]
      121 NEWCLOSURE                       R31 P21
      122 CAPTURE                          REF R7
      123 NEWCLOSURE                       R32 P22
      124 CAPTURE                          REF R7
      125 DUPTABLE                         R33 K55 [{"RunModeEnum", "init", "getUserSettingsAsync", "setUserSettingsAsync", "loadCode", "runWithMode", "stopPlay", "cleanupServerAndClients", "waitForLocalPlayerReady", "installLoadedCode", "openPlaceFile", "savePlace", "getInstanceByPath", "getAssistantEvalBridge", "hasAssistantEvalFolder", "setMcpClient", "getMcpClient", "isCleanupServerAndClientsAvailable", "getStopMultiPlayerTestStateChangedSignal"}]
      126 SETTABLEKS                       R8 R33 K36 ["RunModeEnum"]
      128 SETTABLEKS                       R15 R33 K37 ["init"]
      130 SETTABLEKS                       R12 R33 K38 ["getUserSettingsAsync"]
      132 SETTABLEKS                       R13 R33 K39 ["setUserSettingsAsync"]
      134 SETTABLEKS                       R14 R33 K40 ["loadCode"]
      136 SETTABLEKS                       R21 R33 K41 ["runWithMode"]
      138 SETTABLEKS                       R19 R33 K42 ["stopPlay"]
      140 SETTABLEKS                       R20 R33 K43 ["cleanupServerAndClients"]
      142 SETTABLEKS                       R24 R33 K44 ["waitForLocalPlayerReady"]
      144 SETTABLEKS                       R26 R33 K45 ["installLoadedCode"]
      146 SETTABLEKS                       R28 R33 K46 ["openPlaceFile"]
      148 SETTABLEKS                       R25 R33 K47 ["savePlace"]
      150 SETTABLEKS                       R27 R33 K48 ["getInstanceByPath"]
      152 SETTABLEKS                       R30 R33 K49 ["getAssistantEvalBridge"]
      154 SETTABLEKS                       R29 R33 K50 ["hasAssistantEvalFolder"]
      156 SETTABLEKS                       R31 R33 K51 ["setMcpClient"]
      158 SETTABLEKS                       R32 R33 K52 ["getMcpClient"]
      160 SETTABLEKS                       R22 R33 K53 ["isCleanupServerAndClientsAvailable"]
      162 SETTABLEKS                       R23 R33 K54 ["getStopMultiPlayerTestStateChangedSignal"]
      164 CLOSEUPVALS                      R5
      165 RETURN                           R33 1
