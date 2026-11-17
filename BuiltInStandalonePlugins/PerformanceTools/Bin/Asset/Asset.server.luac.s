PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetTaskTimeAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetMicroprofilerVisibleAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetGraphicsQualityLevelAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+91]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["SceneTriangleCount"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["SceneDrawcallCount"]
        8 LOADN                            R2 0
        9 LOADN                            R3 0
       10 LOADB                            R4 0
       11 LOADN                            R5 0
       12 GETIMPORT                        R6 K3 [plugin]
       14 LOADK                            R8 K4 ["PerformanceToolsBridge"]
       15 NAMECALL                         R6 R6 K5 ["GetPluginComponent"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+24]
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          VAL R6
       21 FASTPCALL                        pcall 1 ; [+2]
       22 GETIMPORT                        R7 K7 [pcall]
       24 CALL                             R7 1 2
       25 JUMPIFNOT                        R7 ; [+1]
       26 MOVE                             R3 R8
       27 NEWCLOSURE                       R10 P1
       28 CAPTURE                          VAL R6
       29 FASTPCALL                        pcall 1 ; [+2]
       30 GETIMPORT                        R9 K7 [pcall]
       32 CALL                             R9 1 2
       33 JUMPIFNOT                        R9 ; [+1]
       34 MOVE                             R4 R10
       35 NEWCLOSURE                       R12 P2
       36 CAPTURE                          VAL R6
       37 FASTPCALL                        pcall 1 ; [+2]
       38 GETIMPORT                        R11 K7 [pcall]
       40 CALL                             R11 1 2
       41 JUMPIFNOT                        R11 ; [+1]
       42 MOVE                             R5 R12
       43 GETUPVAL                         R7 1
       44 LOADK                            R9 K8 ["FrameRateManager"]
       45 NAMECALL                         R7 R7 K9 ["FindFirstChild"]
       47 CALL                             R7 2 1
       48 JUMPIFNOT                        R7 ; [+6]
       49 GETTABLEKS                       R8 R7 K10 ["RenderThreadAverage"]
       51 NAMECALL                         R8 R8 K11 ["GetValue"]
       53 CALL                             R8 1 1
       54 MOVE                             R2 R8
       55 NEWTABLE                         R8 8 0
       57 SETTABLEKS                       R0 R8 K12 ["triangleCount"]
       59 SETTABLEKS                       R1 R8 K13 ["drawCallCount"]
       61 SETTABLEKS                       R2 R8 K14 ["renderThreadAverageMs"]
       63 SETTABLEKS                       R3 R8 K15 ["taskThreadAverageMs"]
       65 GETIMPORT                        R10 K3 [plugin]
       67 GETTABLEKS                       R10 R10 K16 ["HostDataModelType"]
       69 GETIMPORT                        R11 K20 [Enum.StudioDataModelType.Edit]
       71 JUMPIFEQ                         R10 R11 ; [+2]
       73 LOADB                            R9 0 +1
       74 LOADB                            R9 1
       75 SETTABLEKS                       R9 R8 K21 ["isEditDM"]
       77 SETTABLEKS                       R4 R8 K22 ["microprofilerVisible"]
       79 SETTABLEKS                       R5 R8 K23 ["automaticGraphicsQuality"]
       81 GETIMPORT                        R9 K3 [plugin]
       83 LOADK                            R11 K24 ["SetStateAndRefresh"]
       84 MOVE                             R12 R8
       85 NAMECALL                         R9 R9 K25 ["Invoke"]
       87 CALL                             R9 3 0
       88 GETIMPORT                        R9 K27 [wait]
       90 LOADK                            R10 K28 [0.25]
       91 CALL                             R9 1 0
       92 JUMPBACK                         ; [-93]
       93 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ToggleMicroprofilerAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetMicroprofilerVisibleAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["PerformanceToolsBridge"]
        3 NAMECALL                         R0 R0 K3 ["GetPluginComponent"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+25]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 FASTPCALL                        pcall 1 ; [+2]
       10 GETIMPORT                        R1 K5 [pcall]
       12 CALL                             R1 1 2
       13 JUMPIF                           R1 ; [+1]
       14 RETURN                           R0 0
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R0
       17 FASTPCALL                        pcall 1 ; [+2]
       18 GETIMPORT                        R3 K5 [pcall]
       20 CALL                             R3 1 2
       21 JUMPIFNOT                        R3 ; [+10]
       22 GETIMPORT                        R5 K1 [plugin]
       24 LOADK                            R7 K6 ["SetStateAndRefresh"]
       25 NEWTABLE                         R8 1 0
       27 SETTABLEKS                       R4 R8 K7 ["microprofilerVisible"]
       29 NAMECALL                         R5 R5 K8 ["Invoke"]
       31 CALL                             R5 3 0
       32 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K1 [spawn]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K3 [plugin]
       10 LOADK                            R2 K4 ["ToggleMicroprofiler"]
       11 DUPCLOSURE                       R3 K5 [PROTO_6]
       12 NAMECALL                         R0 R0 K6 ["OnInvoke"]
       14 CALL                             R0 3 1
       15 SETUPVAL                         R0 2
       16 GETUPVAL                         R0 2
       17 JUMPIFNOT                        R0 ; [+4]
       18 GETUPVAL                         R0 2
       19 LOADK                            R1 K7 ["toggleMicroprofilerConnection"]
       20 SETTABLEKS                       R1 R0 K8 ["Name"]
       22 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 1
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 1
       10 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R1 0
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 1
       10 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETTABLEKS                       R0 R0 K2 ["HostDataModelTypeIsCurrent"]
        4 JUMPIFNOT                        R0 ; [+2]
        5 GETUPVAL                         R0 0
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_13:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R1 R0 K0 ["CurrentDataModelTypeAboutToChange"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 NAMECALL                         R1 R1 K1 ["Connect"]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K2 ["CurrentDataModelTypeChanged"]
       12 DUPCLOSURE                       R3 K3 [PROTO_12]
       13 CAPTURE                          UPVAL U2
       14 NAMECALL                         R1 R1 K1 ["Connect"]
       16 CALL                             R1 2 0
       17 GETIMPORT                        R1 K5 [plugin]
       19 GETTABLEKS                       R1 R1 K6 ["HostDataModelTypeIsCurrent"]
       21 JUMPIFNOT                        R1 ; [+2]
       22 GETUPVAL                         R1 2
       23 CALL                             R1 0 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["PerformanceTools"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [game]
       13 LOADK                            R3 K8 ["Stats"]
       14 NAMECALL                         R1 R1 K9 ["GetService"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K11 [require]
       19 GETTABLEKS                       R3 R0 K12 ["Packages"]
       21 GETTABLEKS                       R3 R3 K13 ["TestLoader"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K14 ["launch"]
       26 LOADK                            R4 K4 ["PerformanceTools"]
       27 GETTABLEKS                       R5 R0 K15 ["Src"]
       29 CALL                             R3 2 0
       30 GETTABLEKS                       R3 R2 K16 ["isCli"]
       32 CALL                             R3 0 1
       33 JUMPIFNOT                        R3 ; [+1]
       34 RETURN                           R0 0
       35 GETIMPORT                        R3 K11 [require]
       37 GETTABLEKS                       R4 R0 K17 ["Bin"]
       39 GETTABLEKS                       R4 R4 K18 ["Common"]
       41 GETTABLEKS                       R4 R4 K19 ["DefineLuaFlags"]
       43 CALL                             R3 1 1
       44 GETTABLEKS                       R4 R3 K20 ["GetFFlagRIDE11263EnableFeature"]
       46 CALL                             R4 0 1
       47 JUMPIF                           R4 ; [+1]
       48 RETURN                           R0 0
       49 LOADB                            R4 0
       50 LOADNIL                          R5
       51 NEWCLOSURE                       R6 P0
       52 CAPTURE                          REF R4
       53 CAPTURE                          VAL R1
       54 CAPTURE                          REF R5
       55 NEWCLOSURE                       R7 P1
       56 CAPTURE                          REF R4
       57 CAPTURE                          REF R5
       58 DUPCLOSURE                       R8 K21 [PROTO_9]
       59 CAPTURE                          VAL R6
       60 NEWCLOSURE                       R9 P3
       61 CAPTURE                          REF R4
       62 CAPTURE                          REF R5
       63 NEWCLOSURE                       R10 P4
       64 CAPTURE                          REF R4
       65 CAPTURE                          REF R5
       66 CAPTURE                          VAL R6
       67 GETIMPORT                        R11 K1 [plugin]
       69 GETTABLEKS                       R11 R11 K22 ["MultipleDocumentInterfaceInstance"]
       71 MOVE                             R12 R10
       72 GETTABLEKS                       R13 R11 K23 ["FocusedDataModelSession"]
       74 CALL                             R12 1 0
       75 GETIMPORT                        R12 K11 [require]
       77 GETTABLEKS                       R13 R0 K17 ["Bin"]
       79 GETTABLEKS                       R13 R13 K18 ["Common"]
       81 GETTABLEKS                       R13 R13 K24 ["PluginType"]
       83 CALL                             R12 1 1
       84 GETTABLEKS                       R13 R12 K25 ["get"]
       86 CALL                             R13 0 1
       87 GETTABLEKS                       R14 R12 K26 ["Asset"]
       89 JUMPIFEQ                         R13 R14 ; [+3]
       91 CLOSEUPVALS                      R4
       92 RETURN                           R0 0
       93 GETIMPORT                        R13 K11 [require]
       95 GETTABLEKS                       R14 R0 K17 ["Bin"]
       97 GETTABLEKS                       R14 R14 K18 ["Common"]
       99 GETTABLEKS                       R14 R14 K27 ["Setup"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K11 [require]
      104 GETTABLEKS                       R15 R0 K17 ["Bin"]
      106 GETTABLEKS                       R15 R15 K18 ["Common"]
      108 GETTABLEKS                       R15 R15 K28 ["SetupMain"]
      110 CALL                             R14 1 1
      111 MOVE                             R15 R13
      112 GETIMPORT                        R16 K1 [plugin]
      114 MOVE                             R17 R14
      115 CALL                             R15 2 0
      116 CLOSEUPVALS                      R4
      117 RETURN                           R0 0
