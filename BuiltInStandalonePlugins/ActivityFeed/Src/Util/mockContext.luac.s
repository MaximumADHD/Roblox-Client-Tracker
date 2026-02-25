PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected story to be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 DUPTABLE                         R1 K8 [{"activityHistoryClient", "contextType"}]
       16 GETUPVAL                         R2 0
       17 SETTABLEKS                       R2 R1 K6 ["activityHistoryClient"]
       19 LOADK                            R2 K9 ["mock context"]
       20 SETTABLEKS                       R2 R1 K7 ["contextType"]
       22 DUPTABLE                         R2 K11 [{"ActivityHistoryProvider"}]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K12 ["createElement"]
       26 GETUPVAL                         R4 2
       27 MOVE                             R5 R1
       28 MOVE                             R6 R0
       29 CALL                             R3 3 1
       30 SETTABLEKS                       R3 R2 K10 ["ActivityHistoryProvider"]
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R3 R4 K13 ["provideMockContext"]
       35 GETUPVAL                         R4 4
       36 MOVE                             R5 R2
       37 CALL                             R3 2 -1
       38 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Resources"]
       29 GETTABLEKS                       R4 R5 K10 ["MakeTheme"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K11 ["Clients"]
       38 GETTABLEKS                       R5 R6 K12 ["MockActivityHistoryClient"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K13 ["Contexts"]
       47 GETTABLEKS                       R6 R7 K14 ["ActivityHistoryProvider"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R2 K15 ["TestHelpers"]
       52 GETTABLEKS                       R7 R2 K16 ["ContextServices"]
       54 NEWTABLE                         R8 0 3
       56 GETTABLEKS                       R10 R7 K17 ["Analytics"]
       58 GETTABLEKS                       R9 R10 K18 ["mock"]
       60 CALL                             R9 0 1
       61 GETTABLEKS                       R11 R7 K19 ["Localization"]
       63 GETTABLEKS                       R10 R11 K18 ["mock"]
       65 CALL                             R10 0 1
       66 MOVE                             R11 R3
       67 LOADB                            R12 1
       68 CALL                             R11 1 -1
       69 SETLIST                          R8 R9 -1 [1]
       71 DUPCLOSURE                       R9 K20 [PROTO_0]
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R8
       77 RETURN                           R9 1
