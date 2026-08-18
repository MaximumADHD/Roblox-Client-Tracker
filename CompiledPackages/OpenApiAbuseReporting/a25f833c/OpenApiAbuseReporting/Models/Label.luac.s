PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
        7 LOADK                            R6 K3 ["%*Expected table, got %*"]
        8 MOVE                             R8 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R10 R0
       11 GETIMPORT                        R9 K1 [typeof]
       13 CALL                             R9 1 1
       14 NAMECALL                         R6 R6 K4 ["format"]
       16 CALL                             R6 3 1
       17 MOVE                             R5 R6
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K6 [table.insert]
       23 CALL                             R3 2 0
       24 RETURN                           R0 1
       25 GETTABLEKS                       R4 R0 K7 ["evidenceTagKey"]
       27 FASTCALL1                        TYPEOF R4 ; [+2]
       28 GETIMPORT                        R3 K1 [typeof]
       30 CALL                             R3 1 1
       31 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       33 LOADK                            R6 K9 ["%*\"evidenceTagKey\" > Expected string, got %*"]
       34 MOVE                             R8 R2
       35 GETTABLEKS                       R10 R0 K7 ["evidenceTagKey"]
       37 FASTCALL1                        TYPEOF R10 ; [+2]
       38 GETIMPORT                        R9 K1 [typeof]
       40 CALL                             R9 1 1
       41 NAMECALL                         R6 R6 K4 ["format"]
       43 CALL                             R6 3 1
       44 MOVE                             R5 R6
       45 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       47 MOVE                             R4 R1
       48 GETIMPORT                        R3 K6 [table.insert]
       50 CALL                             R3 2 0
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R3 R3 K10 ["fromResponse"]
       54 GETTABLEKS                       R4 R0 K11 ["evidenceTagValues"]
       56 MOVE                             R5 R1
       57 LOADK                            R7 K12 ["%*\"evidenceTagValues\" > "]
       58 MOVE                             R9 R2
       59 NAMECALL                         R7 R7 K4 ["format"]
       61 CALL                             R7 2 1
       62 MOVE                             R6 R7
       63 CALL                             R3 3 1
       64 SETTABLEKS                       R3 R0 K11 ["evidenceTagValues"]
       66 GETUPVAL                         R3 1
       67 GETTABLEKS                       R3 R3 K10 ["fromResponse"]
       69 GETTABLEKS                       R4 R0 K13 ["oneOfLabel"]
       71 MOVE                             R5 R1
       72 LOADK                            R7 K14 ["%*\"oneOfLabel\" > "]
       73 MOVE                             R9 R2
       74 NAMECALL                         R7 R7 K4 ["format"]
       76 CALL                             R7 2 1
       77 MOVE                             R6 R7
       78 CALL                             R3 3 1
       79 SETTABLEKS                       R3 R0 K13 ["oneOfLabel"]
       81 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["toRequest"]
        7 GETTABLEKS                       R3 R1 K4 ["evidenceTagValues"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K4 ["evidenceTagValues"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["toRequest"]
       15 GETTABLEKS                       R3 R1 K5 ["oneOfLabel"]
       17 CALL                             R2 1 1
       18 SETTABLEKS                       R2 R1 K5 ["oneOfLabel"]
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiAbuseReporting"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["OneOfLabel"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["TagValueList"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K11 [PROTO_0]
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R3
       31 DUPCLOSURE                       R6 K12 [PROTO_1]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 GETIMPORT                        R7 K15 [table.freeze]
       36 DUPTABLE                         R8 K18 [{"fromResponse", "toRequest"}]
       37 SETTABLEKS                       R5 R8 K16 ["fromResponse"]
       39 SETTABLEKS                       R6 R8 K17 ["toRequest"]
       41 CALL                             R7 1 1
       42 RETURN                           R7 1
