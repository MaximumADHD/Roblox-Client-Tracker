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
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       19 GETTABLEKS                       R2 R2 K8 ["Logs"]
       21 CALL                             R1 1 1
       22 GETIMPORT                        R2 K4 [require]
       24 GETTABLEKS                       R3 R0 K5 ["Src"]
       26 GETTABLEKS                       R3 R3 K6 ["Util"]
       28 GETTABLEKS                       R3 R3 K9 ["isCli"]
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R3 R0 K10 ["Packages"]
       33 GETIMPORT                        R4 K4 [require]
       35 GETTABLEKS                       R5 R3 K11 ["Framework"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R4 R4 K6 ["Util"]
       40 GETTABLEKS                       R4 R4 K12 ["sendResultToKibana"]
       42 GETIMPORT                        R5 K14 [game]
       44 LOADK                            R7 K15 ["RbxAnalyticsService"]
       45 NAMECALL                         R5 R5 K16 ["GetService"]
       47 CALL                             R5 2 1
       48 GETIMPORT                        R6 K14 [game]
       50 LOADK                            R8 K17 ["CreatorStoreWVUrl"]
       51 NAMECALL                         R6 R6 K18 ["GetFastString"]
       53 CALL                             R6 2 1
       54 GETIMPORT                        R7 K14 [game]
       56 LOADK                            R9 K19 ["DisableToolboxAnalyticsForLocalDev"]
       57 LOADB                            R10 0
       58 NAMECALL                         R7 R7 K20 ["DefineFastFlag"]
       60 CALL                             R7 3 1
       61 MOVE                             R8 R2
       62 CALL                             R8 0 1
       63 JUMPIF                           R8 ; [+6]
       64 MOVE                             R8 R7
       65 JUMPIFNOT                        R8 ; [+4]
       66 JUMPIFNOTEQKS                    R6 K21 [""] ; [+2]
       68 LOADB                            R8 0 +1
       69 LOADB                            R8 1
       70 NEWTABLE                         R9 4 0
       72 DUPCLOSURE                       R10 K22 [PROTO_0]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R10 R9 K23 ["sendEventImmediately"]
       78 DUPCLOSURE                       R10 K24 [PROTO_1]
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R5
       82 SETTABLEKS                       R10 R9 K25 ["sendEventDeferred"]
       84 DUPCLOSURE                       R10 K26 [PROTO_2]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R5
       88 SETTABLEKS                       R10 R9 K27 ["reportCounter"]
       90 DUPCLOSURE                       R10 K28 [PROTO_3]
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R10 R9 K12 ["sendResultToKibana"]
       95 RETURN                           R9 1
