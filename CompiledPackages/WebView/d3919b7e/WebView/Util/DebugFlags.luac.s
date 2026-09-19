PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["WebViewDebugFlags"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["WebViewDebugFlags"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIF                           R0 ; [+11]
        6 GETIMPORT                        R1 K4 [Instance.new]
        8 LOADK                            R2 K5 ["Folder"]
        9 CALL                             R1 1 1
       10 LOADK                            R2 K0 ["WebViewDebugFlags"]
       11 SETTABLEKS                       R2 R1 K6 ["Name"]
       13 GETUPVAL                         R2 0
       14 SETTABLEKS                       R2 R1 K7 ["Parent"]
       16 RETURN                           R1 1
       17 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["WebViewDebugFlags"]
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
        2 LOADK                            R2 K2 ["DebugWebViewRunTests"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["WebViewDebugFlags"]
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
        2 LOADK                            R2 K2 ["DebugWebViewRunRhodiumTests"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["WebViewDebugFlags"]
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
        2 LOADK                            R2 K2 ["DebugWebViewRunJest3Tests"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["WebViewDebugFlags"]
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
        2 LOADK                            R2 K2 ["DebugWebViewLogTestsQuiet"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["WebViewDebugFlags"]
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
        2 LOADK                            R2 K2 ["DebugWebViewDebugUrls"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["WebViewDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["WebViewDebugUrls"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_8:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugWebViewDebugState"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["WebViewDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["WebViewDebugState"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_9:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugWebViewLogAnalytics"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["WebViewDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["WebViewLogAnalytics"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_10:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugWebViewDebugWarnings"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["WebViewDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["WebViewDebugWarnings"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+24]
        3 GETIMPORT                        R0 K1 [game]
        5 LOADK                            R2 K2 ["DebugWebViewMockUnsupported"]
        6 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        8 CALL                             R0 2 1
        9 JUMPIF                           R0 ; [+17]
       10 GETUPVAL                         R1 1
       11 LOADK                            R3 K4 ["WebViewDebugFlags"]
       12 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       14 CALL                             R1 2 1
       15 JUMPIF                           R1 ; [+2]
       16 LOADNIL                          R0
       17 RETURN                           R0 1
       18 LOADK                            R4 K6 ["MockUnsupported"]
       19 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+3]
       23 GETTABLEKS                       R0 R2 K7 ["Value"]
       25 RETURN                           R0 1
       26 LOADNIL                          R0
       27 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+24]
        3 GETIMPORT                        R0 K1 [game]
        5 LOADK                            R2 K2 ["DebugWebViewMockLoadFailed"]
        6 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        8 CALL                             R0 2 1
        9 JUMPIF                           R0 ; [+17]
       10 GETUPVAL                         R1 1
       11 LOADK                            R3 K4 ["WebViewDebugFlags"]
       12 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       14 CALL                             R1 2 1
       15 JUMPIF                           R1 ; [+2]
       16 LOADNIL                          R0
       17 RETURN                           R0 1
       18 LOADK                            R4 K6 ["MockLoadFailed"]
       19 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+3]
       23 GETTABLEKS                       R0 R2 K7 ["Value"]
       25 RETURN                           R0 1
       26 LOADNIL                          R0
       27 RETURN                           R0 1

PROTO_13:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugWebViewLogSettings"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["WebViewDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["WebViewLogSettings"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_14:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugWebViewUseTestCustomLocale"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["WebViewDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["WebViewUseTestCustomLocale"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_15:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugWebViewUseTestRealLocaleId"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 ["WebViewDebugFlags"]
        9 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 LOADK                            R4 K6 ["WebViewUseTestRealLocaleId"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R0 R2 K7 ["Value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["WebViewDebugFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+12]
        6 GETIMPORT                        R2 K4 [Instance.new]
        8 LOADK                            R3 K5 ["Folder"]
        9 CALL                             R2 1 1
       10 LOADK                            R3 K0 ["WebViewDebugFlags"]
       11 SETTABLEKS                       R3 R2 K6 ["Name"]
       13 GETUPVAL                         R3 0
       14 SETTABLEKS                       R3 R2 K7 ["Parent"]
       16 MOVE                             R0 R2
       17 JUMP                             ; [+1]
       18 MOVE                             R0 R1
       19 LOADK                            R3 K8 ["WebViewCustomLocale"]
       20 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
       22 CALL                             R1 2 1
       23 JUMPIF                           R1 ; [+13]
       24 GETIMPORT                        R2 K4 [Instance.new]
       26 LOADK                            R3 K9 ["StringValue"]
       27 CALL                             R2 1 1
       28 LOADK                            R3 K8 ["WebViewCustomLocale"]
       29 SETTABLEKS                       R3 R2 K6 ["Name"]
       31 LOADK                            R3 K10 ["CustomLocale"]
       32 SETTABLEKS                       R3 R2 K11 ["Value"]
       34 SETTABLEKS                       R0 R2 K7 ["Parent"]
       36 RETURN                           R2 1
       37 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["WebViewDebugFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+12]
        6 GETIMPORT                        R2 K4 [Instance.new]
        8 LOADK                            R3 K5 ["Folder"]
        9 CALL                             R2 1 1
       10 LOADK                            R3 K0 ["WebViewDebugFlags"]
       11 SETTABLEKS                       R3 R2 K6 ["Name"]
       13 GETUPVAL                         R3 0
       14 SETTABLEKS                       R3 R2 K7 ["Parent"]
       16 MOVE                             R0 R2
       17 JUMP                             ; [+1]
       18 MOVE                             R0 R1
       19 LOADK                            R3 K8 ["WebViewRealLocale"]
       20 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
       22 CALL                             R1 2 1
       23 JUMPIF                           R1 ; [+13]
       24 GETIMPORT                        R2 K4 [Instance.new]
       26 LOADK                            R3 K9 ["StringValue"]
       27 CALL                             R2 1 1
       28 LOADK                            R3 K8 ["WebViewRealLocale"]
       29 SETTABLEKS                       R3 R2 K6 ["Name"]
       31 LOADK                            R3 K10 ["en-us"]
       32 SETTABLEKS                       R3 R2 K11 ["Value"]
       34 SETTABLEKS                       R0 R2 K7 ["Parent"]
       36 RETURN                           R2 1
       37 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K9 ["SharedFlags"]
       15 GETTABLEKS                       R2 R2 K10 ["getFFlagWebViewImprovedErrorHandling"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K11 [PROTO_0]
       19 CAPTURE                          VAL R0
       20 DUPCLOSURE                       R3 K12 [PROTO_1]
       21 CAPTURE                          VAL R0
       22 DUPCLOSURE                       R4 K13 [PROTO_2]
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R5 16 0
       26 GETIMPORT                        R6 K1 [game]
       28 LOADK                            R8 K14 ["DebugWebViewRunTests"]
       29 LOADB                            R9 0
       30 NAMECALL                         R6 R6 K15 ["DefineFastFlag"]
       32 CALL                             R6 3 0
       33 DUPCLOSURE                       R6 K16 [PROTO_3]
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R6 R5 K17 ["shouldRunTests"]
       37 GETIMPORT                        R6 K1 [game]
       39 LOADK                            R8 K18 ["DebugWebViewRunRhodiumTests"]
       40 LOADB                            R9 0
       41 NAMECALL                         R6 R6 K15 ["DefineFastFlag"]
       43 CALL                             R6 3 0
       44 DUPCLOSURE                       R6 K19 [PROTO_4]
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R6 R5 K20 ["shouldRunRhodiumTests"]
       48 GETIMPORT                        R6 K1 [game]
       50 LOADK                            R8 K21 ["DebugWebViewRunJest3Tests"]
       51 LOADB                            R9 0
       52 NAMECALL                         R6 R6 K15 ["DefineFastFlag"]
       54 CALL                             R6 3 0
       55 DUPCLOSURE                       R6 K22 [PROTO_5]
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R6 R5 K23 ["shouldRunJest3Tests"]
       59 GETIMPORT                        R6 K1 [game]
       61 LOADK                            R8 K24 ["DebugWebViewLogTestsQuiet"]
       62 LOADB                            R9 0
       63 NAMECALL                         R6 R6 K15 ["DefineFastFlag"]
       65 CALL                             R6 3 0
       66 DUPCLOSURE                       R6 K25 [PROTO_6]
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R6 R5 K26 ["logTestsQuiet"]
       70 GETIMPORT                        R6 K1 [game]
       72 LOADK                            R8 K27 ["DebugWebViewDebugUrls"]
       73 LOADB                            R9 0
       74 NAMECALL                         R6 R6 K15 ["DefineFastFlag"]
       76 CALL                             R6 3 0
       77 DUPCLOSURE                       R6 K28 [PROTO_7]
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R6 R5 K29 ["shouldDebugUrls"]
       81 GETIMPORT                        R6 K1 [game]
       83 LOADK                            R8 K30 ["DebugWebViewDebugState"]
       84 LOADB                            R9 0
       85 NAMECALL                         R6 R6 K15 ["DefineFastFlag"]
       87 CALL                             R6 3 0
       88 DUPCLOSURE                       R6 K31 [PROTO_8]
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R6 R5 K32 ["shouldDebugState"]
       92 GETIMPORT                        R6 K1 [game]
       94 LOADK                            R8 K33 ["DebugWebViewLogAnalytics"]
       95 LOADB                            R9 0
       96 NAMECALL                         R6 R6 K15 ["DefineFastFlag"]
       98 CALL                             R6 3 0
       99 DUPCLOSURE                       R6 K34 [PROTO_9]
      100 CAPTURE                          VAL R0
      101 SETTABLEKS                       R6 R5 K35 ["shouldLogAnalytics"]
      103 GETIMPORT                        R6 K1 [game]
      105 LOADK                            R8 K36 ["DebugWebViewDebugWarnings"]
      106 LOADB                            R9 0
      107 NAMECALL                         R6 R6 K15 ["DefineFastFlag"]
      109 CALL                             R6 3 0
      110 DUPCLOSURE                       R6 K37 [PROTO_10]
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R6 R5 K38 ["shouldDebugWarnings"]
      114 GETIMPORT                        R6 K1 [game]
      116 LOADK                            R8 K39 ["DebugWebViewMockUnsupported"]
      117 LOADB                            R9 0
      118 NAMECALL                         R6 R6 K15 ["DefineFastFlag"]
      120 CALL                             R6 3 0
      121 DUPCLOSURE                       R6 K40 [PROTO_11]
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R0
      124 SETTABLEKS                       R6 R5 K41 ["shouldMockUnsupported"]
      126 GETIMPORT                        R6 K1 [game]
      128 LOADK                            R8 K42 ["DebugWebViewMockLoadFailed"]
      129 LOADB                            R9 0
      130 NAMECALL                         R6 R6 K15 ["DefineFastFlag"]
      132 CALL                             R6 3 0
      133 DUPCLOSURE                       R6 K43 [PROTO_12]
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R0
      136 SETTABLEKS                       R6 R5 K44 ["shouldMockLoadFailed"]
      138 GETIMPORT                        R6 K1 [game]
      140 LOADK                            R8 K45 ["DebugWebViewLogSettings"]
      141 LOADB                            R9 0
      142 NAMECALL                         R6 R6 K15 ["DefineFastFlag"]
      144 CALL                             R6 3 0
      145 DUPCLOSURE                       R6 K46 [PROTO_13]
      146 CAPTURE                          VAL R0
      147 SETTABLEKS                       R6 R5 K47 ["shouldLogSettings"]
      149 GETIMPORT                        R6 K1 [game]
      151 LOADK                            R8 K48 ["DebugWebViewUseTestCustomLocale"]
      152 LOADB                            R9 0
      153 NAMECALL                         R6 R6 K15 ["DefineFastFlag"]
      155 CALL                             R6 3 0
      156 DUPCLOSURE                       R6 K49 [PROTO_14]
      157 CAPTURE                          VAL R0
      158 SETTABLEKS                       R6 R5 K50 ["shouldUseTestCustomLocale"]
      160 GETIMPORT                        R6 K1 [game]
      162 LOADK                            R8 K51 ["DebugWebViewUseTestRealLocaleId"]
      163 LOADB                            R9 0
      164 NAMECALL                         R6 R6 K15 ["DefineFastFlag"]
      166 CALL                             R6 3 0
      167 DUPCLOSURE                       R6 K52 [PROTO_15]
      168 CAPTURE                          VAL R0
      169 SETTABLEKS                       R6 R5 K53 ["shouldUseTestRealLocale"]
      171 DUPCLOSURE                       R6 K54 [PROTO_16]
      172 CAPTURE                          VAL R0
      173 SETTABLEKS                       R6 R5 K55 ["getOrCreateTestCustomLocale"]
      175 DUPCLOSURE                       R6 K56 [PROTO_17]
      176 CAPTURE                          VAL R0
      177 SETTABLEKS                       R6 R5 K57 ["getOrCreateTestRealLocale"]
      179 RETURN                           R5 1
