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
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

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
       44 LOADK                            R8 K16 ["DisableWebViewAnalyticsForLocalDev"]
       45 LOADB                            R9 0
       46 NAMECALL                         R6 R6 K17 ["DefineFastFlag"]
       48 CALL                             R6 3 1
       49 MOVE                             R8 R2
       50 CALL                             R8 0 1
       51 OR                               R7 R8 R6
       52 NEWTABLE                         R8 4 0
       54 DUPCLOSURE                       R9 K18 [PROTO_0]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R5
       58 SETTABLEKS                       R9 R8 K19 ["sendEventImmediately"]
       60 DUPCLOSURE                       R9 K20 [PROTO_1]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R9 R8 K21 ["sendEventDeferred"]
       66 DUPCLOSURE                       R9 K22 [PROTO_2]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R5
       70 SETTABLEKS                       R9 R8 K23 ["reportCounter"]
       72 DUPCLOSURE                       R9 K24 [PROTO_3]
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R4
       75 SETTABLEKS                       R9 R8 K11 ["sendResultToKibana"]
       77 RETURN                           R8 1
