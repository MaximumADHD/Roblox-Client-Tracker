PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ToolboxDebugFlags"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ToolboxDebugFlags"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIF                           R0 ; [+11]
        6 GETIMPORT                        R1 K4 [Instance.new]
        8 LOADK                            R2 K5 ["Folder"]
        9 CALL                             R1 1 1
       10 MOVE                             R0 R1
       11 LOADK                            R1 K0 ["ToolboxDebugFlags"]
       12 SETTABLEKS                       R1 R0 K6 ["Name"]
       14 GETUPVAL                         R1 0
       15 SETTABLEKS                       R1 R0 K7 ["Parent"]
       17 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ToolboxDebugFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R3 R2 K2 ["Value"]
       15 RETURN                           R3 1
       16 LOADNIL                          R3
       17 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugToolboxRunTests"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["ToolboxDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["RunTests"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugToolboxRunRhodiumTests"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["ToolboxDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["RunRhodiumTests"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugToolboxRunJest3Tests"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["ToolboxDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["RunJest3Tests"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_6:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugToolboxLogTestsQuiet"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["ToolboxDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["LogTestsQuiet"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugToolboxDisableTooltips"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["ToolboxDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["ToolboxDisableTooltips"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_8:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugToolboxDebugUrls"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["ToolboxDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["ToolboxDebugUrls"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_9:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugToolboxDebugState"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["ToolboxDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["ToolboxDebugState"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_10:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugToolboxLogAnalytics"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["ToolboxDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["ToolboxLogAnalytics"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_11:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugToolboxDebugWarnings"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["ToolboxDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["ToolboxDebugWarnings"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugToolboxLogSettings"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["ToolboxDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["ToolboxLogSettings"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_13:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugToolboxUseTestCustomLocale"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["ToolboxDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["ToolboxUseTestCustomLocale"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_14:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugToolboxUseTestRealLocaleId"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["ToolboxDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["ToolboxUseTestRealLocaleId"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_15:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugToolboxDebugOverrideAssetLoading"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["ToolboxDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["ToolboxDebugOverrideAssetLoading"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ToolboxDebugFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+11]
        6 GETIMPORT                        R2 K4 [Instance.new]
        8 LOADK                            R3 K5 ["Folder"]
        9 CALL                             R2 1 1
       10 MOVE                             R1 R2
       11 LOADK                            R2 K0 ["ToolboxDebugFlags"]
       12 SETTABLEKS                       R2 R1 K6 ["Name"]
       14 GETUPVAL                         R2 0
       15 SETTABLEKS                       R2 R1 K7 ["Parent"]
       17 MOVE                             R0 R1
       18 LOADK                            R3 K8 ["ToolboxCustomLocale"]
       19 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
       21 CALL                             R1 2 1
       22 JUMPIF                           R1 ; [+13]
       23 GETIMPORT                        R2 K4 [Instance.new]
       25 LOADK                            R3 K9 ["StringValue"]
       26 CALL                             R2 1 1
       27 MOVE                             R1 R2
       28 LOADK                            R2 K8 ["ToolboxCustomLocale"]
       29 SETTABLEKS                       R2 R1 K6 ["Name"]
       31 LOADK                            R2 K10 ["CustomLocale"]
       32 SETTABLEKS                       R2 R1 K11 ["Value"]
       34 SETTABLEKS                       R0 R1 K7 ["Parent"]
       36 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ToolboxDebugFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+11]
        6 GETIMPORT                        R2 K4 [Instance.new]
        8 LOADK                            R3 K5 ["Folder"]
        9 CALL                             R2 1 1
       10 MOVE                             R1 R2
       11 LOADK                            R2 K0 ["ToolboxDebugFlags"]
       12 SETTABLEKS                       R2 R1 K6 ["Name"]
       14 GETUPVAL                         R2 0
       15 SETTABLEKS                       R2 R1 K7 ["Parent"]
       17 MOVE                             R0 R1
       18 LOADK                            R3 K8 ["ToolboxRealLocale"]
       19 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
       21 CALL                             R1 2 1
       22 JUMPIF                           R1 ; [+13]
       23 GETIMPORT                        R2 K4 [Instance.new]
       25 LOADK                            R3 K9 ["StringValue"]
       26 CALL                             R2 1 1
       27 MOVE                             R1 R2
       28 LOADK                            R2 K8 ["ToolboxRealLocale"]
       29 SETTABLEKS                       R2 R1 K6 ["Name"]
       31 LOADK                            R2 K10 ["en-us"]
       32 SETTABLEKS                       R2 R1 K11 ["Value"]
       34 SETTABLEKS                       R0 R1 K7 ["Parent"]
       36 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 DUPCLOSURE                       R2 K5 [PROTO_1]
       10 CAPTURE                          VAL R0
       11 DUPCLOSURE                       R3 K6 [PROTO_2]
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 16 0
       15 GETIMPORT                        R5 K1 [game]
       17 LOADK                            R7 K7 ["DebugToolboxRunTests"]
       18 LOADB                            R8 0
       19 NAMECALL                         R5 R5 K8 ["DefineFastFlag"]
       21 CALL                             R5 3 0
       22 DUPCLOSURE                       R5 K9 [PROTO_3]
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R5 R4 K10 ["shouldRunTests"]
       26 GETIMPORT                        R5 K1 [game]
       28 LOADK                            R7 K11 ["DebugToolboxRunRhodiumTests"]
       29 LOADB                            R8 0
       30 NAMECALL                         R5 R5 K8 ["DefineFastFlag"]
       32 CALL                             R5 3 0
       33 DUPCLOSURE                       R5 K12 [PROTO_4]
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R5 R4 K13 ["shouldRunRhodiumTests"]
       37 GETIMPORT                        R5 K1 [game]
       39 LOADK                            R7 K14 ["DebugToolboxRunJest3Tests"]
       40 LOADB                            R8 0
       41 NAMECALL                         R5 R5 K8 ["DefineFastFlag"]
       43 CALL                             R5 3 0
       44 DUPCLOSURE                       R5 K15 [PROTO_5]
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R5 R4 K16 ["shouldRunJest3Tests"]
       48 GETIMPORT                        R5 K1 [game]
       50 LOADK                            R7 K17 ["DebugToolboxLogTestsQuiet"]
       51 LOADB                            R8 0
       52 NAMECALL                         R5 R5 K8 ["DefineFastFlag"]
       54 CALL                             R5 3 0
       55 DUPCLOSURE                       R5 K18 [PROTO_6]
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R5 R4 K19 ["logTestsQuiet"]
       59 GETIMPORT                        R5 K1 [game]
       61 LOADK                            R7 K20 ["DebugToolboxDisableTooltips"]
       62 LOADB                            R8 0
       63 NAMECALL                         R5 R5 K8 ["DefineFastFlag"]
       65 CALL                             R5 3 0
       66 DUPCLOSURE                       R5 K21 [PROTO_7]
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R5 R4 K22 ["shouldDisableTooltips"]
       70 GETIMPORT                        R5 K1 [game]
       72 LOADK                            R7 K23 ["DebugToolboxDebugUrls"]
       73 LOADB                            R8 0
       74 NAMECALL                         R5 R5 K8 ["DefineFastFlag"]
       76 CALL                             R5 3 0
       77 DUPCLOSURE                       R5 K24 [PROTO_8]
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R5 R4 K25 ["shouldDebugUrls"]
       81 GETIMPORT                        R5 K1 [game]
       83 LOADK                            R7 K26 ["DebugToolboxDebugState"]
       84 LOADB                            R8 0
       85 NAMECALL                         R5 R5 K8 ["DefineFastFlag"]
       87 CALL                             R5 3 0
       88 DUPCLOSURE                       R5 K27 [PROTO_9]
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R5 R4 K28 ["shouldDebugState"]
       92 GETIMPORT                        R5 K1 [game]
       94 LOADK                            R7 K29 ["DebugToolboxLogAnalytics"]
       95 LOADB                            R8 0
       96 NAMECALL                         R5 R5 K8 ["DefineFastFlag"]
       98 CALL                             R5 3 0
       99 DUPCLOSURE                       R5 K30 [PROTO_10]
      100 CAPTURE                          VAL R0
      101 SETTABLEKS                       R5 R4 K31 ["shouldLogAnalytics"]
      103 GETIMPORT                        R5 K1 [game]
      105 LOADK                            R7 K32 ["DebugToolboxDebugWarnings"]
      106 LOADB                            R8 0
      107 NAMECALL                         R5 R5 K8 ["DefineFastFlag"]
      109 CALL                             R5 3 0
      110 DUPCLOSURE                       R5 K33 [PROTO_11]
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R5 R4 K34 ["shouldDebugWarnings"]
      114 GETIMPORT                        R5 K1 [game]
      116 LOADK                            R7 K35 ["DebugToolboxLogSettings"]
      117 LOADB                            R8 0
      118 NAMECALL                         R5 R5 K8 ["DefineFastFlag"]
      120 CALL                             R5 3 0
      121 DUPCLOSURE                       R5 K36 [PROTO_12]
      122 CAPTURE                          VAL R0
      123 SETTABLEKS                       R5 R4 K37 ["shouldLogSettings"]
      125 GETIMPORT                        R5 K1 [game]
      127 LOADK                            R7 K38 ["DebugToolboxUseTestCustomLocale"]
      128 LOADB                            R8 0
      129 NAMECALL                         R5 R5 K8 ["DefineFastFlag"]
      131 CALL                             R5 3 0
      132 DUPCLOSURE                       R5 K39 [PROTO_13]
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R5 R4 K40 ["shouldUseTestCustomLocale"]
      136 GETIMPORT                        R5 K1 [game]
      138 LOADK                            R7 K41 ["DebugToolboxUseTestRealLocaleId"]
      139 LOADB                            R8 0
      140 NAMECALL                         R5 R5 K8 ["DefineFastFlag"]
      142 CALL                             R5 3 0
      143 DUPCLOSURE                       R5 K42 [PROTO_14]
      144 CAPTURE                          VAL R0
      145 SETTABLEKS                       R5 R4 K43 ["shouldUseTestRealLocale"]
      147 GETIMPORT                        R5 K1 [game]
      149 LOADK                            R7 K44 ["DebugToolboxDebugOverrideAssetLoading"]
      150 LOADB                            R8 0
      151 NAMECALL                         R5 R5 K8 ["DefineFastFlag"]
      153 CALL                             R5 3 0
      154 DUPCLOSURE                       R5 K45 [PROTO_15]
      155 CAPTURE                          VAL R0
      156 SETTABLEKS                       R5 R4 K46 ["shouldDebugOverrideAssetLoading"]
      158 DUPCLOSURE                       R5 K47 [PROTO_16]
      159 CAPTURE                          VAL R0
      160 SETTABLEKS                       R5 R4 K48 ["getOrCreateTestCustomLocale"]
      162 DUPCLOSURE                       R5 K49 [PROTO_17]
      163 CAPTURE                          VAL R0
      164 SETTABLEKS                       R5 R4 K50 ["getOrCreateTestRealLocale"]
      166 RETURN                           R4 1
