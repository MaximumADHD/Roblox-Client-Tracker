PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["logAnalytics"]
        3 LOADK                            R5 K1 ["sendEventImmediately"]
        4 MOVE                             R6 R0
        5 MOVE                             R7 R1
        6 MOVE                             R8 R2
        7 MOVE                             R9 R3
        8 CALL                             R4 5 0
        9 GETUPVAL                         R4 1
       10 JUMPIFNOT                        R4 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 2
       13 MOVE                             R6 R0
       14 MOVE                             R7 R1
       15 MOVE                             R8 R2
       16 MOVE                             R9 R3
       17 NAMECALL                         R4 R4 K2 ["SendEventImmediately"]
       19 CALL                             R4 5 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["logAnalytics"]
        3 LOADK                            R5 K1 ["sendEventDeferred"]
        4 MOVE                             R6 R0
        5 MOVE                             R7 R1
        6 MOVE                             R8 R2
        7 MOVE                             R9 R3
        8 CALL                             R4 5 0
        9 GETUPVAL                         R4 1
       10 JUMPIFNOT                        R4 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 2
       13 MOVE                             R6 R0
       14 MOVE                             R7 R1
       15 MOVE                             R8 R2
       16 MOVE                             R9 R3
       17 NAMECALL                         R4 R4 K2 ["SendEventDeferred"]
       19 CALL                             R4 5 0
       20 RETURN                           R0 0

PROTO_2:
        0 ORK                              R1 R1 K0 [1]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["logCounterEvent"]
        4 LOADK                            R3 K2 ["reportCounter"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R2 3 0
        8 GETUPVAL                         R2 1
        9 JUMPIFNOT                        R2 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 NAMECALL                         R2 R2 K3 ["ReportCounter"]
       16 CALL                             R2 3 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["WebView"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Logs"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["isCli"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K1 [script]
       23 LOADK                            R5 K9 ["Packages"]
       24 NAMECALL                         R3 R3 K3 ["FindFirstAncestor"]
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R3 K10 ["Framework"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R4 R4 K6 ["Util"]
       34 GETTABLEKS                       R4 R4 K11 ["sendResultToKibana"]
       36 GETIMPORT                        R5 K13 [game]
       38 LOADK                            R7 K14 ["RbxAnalyticsService"]
       39 NAMECALL                         R5 R5 K15 ["GetService"]
       41 CALL                             R5 2 1
       42 GETIMPORT                        R6 K13 [game]
       44 LOADK                            R8 K16 ["NewPackageAnalyticsWithRefactor2"]
       45 NAMECALL                         R6 R6 K17 ["GetFastFlag"]
       47 CALL                             R6 2 1
       48 GETIMPORT                        R7 K13 [game]
       50 LOADK                            R9 K18 ["DisableWebViewAnalyticsForLocalDev"]
       51 LOADB                            R10 0
       52 NAMECALL                         R7 R7 K19 ["DefineFastFlag"]
       54 CALL                             R7 3 1
       55 MOVE                             R9 R2
       56 CALL                             R9 0 1
       57 OR                               R8 R9 R7
       58 NEWTABLE                         R9 4 0
       60 DUPCLOSURE                       R10 K20 [PROTO_0]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R10 R9 K21 ["sendEventImmediately"]
       66 DUPCLOSURE                       R10 K22 [PROTO_1]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R5
       70 SETTABLEKS                       R10 R9 K23 ["sendEventDeferred"]
       72 DUPCLOSURE                       R10 K24 [PROTO_2]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R10 R9 K25 ["reportCounter"]
       78 DUPCLOSURE                       R10 K26 [PROTO_3]
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R4
       82 SETTABLEKS                       R10 R9 K11 ["sendResultToKibana"]
       84 RETURN                           R9 1
