PROTO_0:
        0 LOADK                            R2 K0 ["ToolboxAnalytics_"]
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["logAnalytics"]
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

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["logAnalytics"]
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

PROTO_3:
        0 ORK                              R1 R1 K0 [1]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K1 ["logCounterEvent"]
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

PROTO_4:
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
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R5 R0 K5 ["Src"]
       15 GETTABLEKS                       R4 R5 K6 ["Util"]
       17 GETTABLEKS                       R3 R4 K7 ["Analytics"]
       19 GETTABLEKS                       R2 R3 K8 ["Logs"]
       21 CALL                             R1 1 1
       22 GETIMPORT                        R2 K4 [require]
       24 GETTABLEKS                       R5 R0 K5 ["Src"]
       26 GETTABLEKS                       R4 R5 K6 ["Util"]
       28 GETTABLEKS                       R3 R4 K9 ["isCli"]
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R3 R0 K10 ["Packages"]
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R7 R3 K11 ["Framework"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R5 R6 K6 ["Util"]
       40 GETTABLEKS                       R4 R5 K12 ["sendResultToKibana"]
       42 GETIMPORT                        R5 K14 [game]
       44 LOADK                            R7 K15 ["RbxAnalyticsService"]
       45 NAMECALL                         R5 R5 K16 ["GetService"]
       47 CALL                             R5 2 1
       48 GETIMPORT                        R6 K14 [game]
       50 LOADK                            R8 K17 ["NewPackageAnalyticsWithRefactor2"]
       51 NAMECALL                         R6 R6 K18 ["GetFastFlag"]
       53 CALL                             R6 2 1
       54 GETIMPORT                        R7 K14 [game]
       56 LOADK                            R9 K19 ["InfluxReportingPackageAnalyticsHundrethsPercent"]
       57 NAMECALL                         R7 R7 K20 ["GetFastInt"]
       59 CALL                             R7 2 1
       60 GETIMPORT                        R8 K14 [game]
       62 LOADK                            R10 K21 ["CreatorStoreWVUrl"]
       63 NAMECALL                         R8 R8 K22 ["GetFastString"]
       65 CALL                             R8 2 1
       66 GETIMPORT                        R9 K14 [game]
       68 LOADK                            R11 K23 ["DisableToolboxAnalyticsForLocalDev"]
       69 LOADB                            R12 0
       70 NAMECALL                         R9 R9 K24 ["DefineFastFlag"]
       72 CALL                             R9 3 1
       73 DUPCLOSURE                       R10 K25 [PROTO_0]
       74 MOVE                             R11 R2
       75 CALL                             R11 0 1
       76 JUMPIF                           R11 ; [+6]
       77 MOVE                             R11 R9
       78 JUMPIFNOT                        R11 ; [+4]
       79 JUMPIFNOTEQKS                    R8 K26 [""] ; [+2]
       81 LOADB                            R11 0 +1
       82 LOADB                            R11 1
       83 NEWTABLE                         R12 4 0
       85 DUPCLOSURE                       R13 K27 [PROTO_1]
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R5
       89 SETTABLEKS                       R13 R12 K28 ["sendEventImmediately"]
       91 DUPCLOSURE                       R13 K29 [PROTO_2]
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R5
       95 SETTABLEKS                       R13 R12 K30 ["sendEventDeferred"]
       97 DUPCLOSURE                       R13 K31 [PROTO_3]
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R5
      101 SETTABLEKS                       R13 R12 K32 ["reportCounter"]
      103 DUPCLOSURE                       R13 K33 [PROTO_4]
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R4
      107 SETTABLEKS                       R13 R12 K12 ["sendResultToKibana"]
      109 RETURN                           R12 1
