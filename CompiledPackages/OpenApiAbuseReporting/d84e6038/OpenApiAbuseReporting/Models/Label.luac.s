PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+18]
        7 LOADK                            R5 K3 ["%*Expected table, got %*"]
        8 MOVE                             R7 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R9 R0
       11 GETIMPORT                        R8 K1 [typeof]
       13 CALL                             R8 1 1
       14 NAMECALL                         R5 R5 K4 ["format"]
       16 CALL                             R5 3 1
       17 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K6 [table.insert]
       22 CALL                             R3 2 0
       23 RETURN                           R0 1
       24 GETTABLEKS                       R4 R0 K7 ["evidenceTagKey"]
       26 FASTCALL1                        TYPEOF R4 ; [+2]
       27 GETIMPORT                        R3 K1 [typeof]
       29 CALL                             R3 1 1
       30 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       32 LOADK                            R5 K9 ["%*\"evidenceTagKey\" > Expected string, got %*"]
       33 MOVE                             R7 R2
       34 GETTABLEKS                       R9 R0 K7 ["evidenceTagKey"]
       36 FASTCALL1                        TYPEOF R9 ; [+2]
       37 GETIMPORT                        R8 K1 [typeof]
       39 CALL                             R8 1 1
       40 NAMECALL                         R5 R5 K4 ["format"]
       42 CALL                             R5 3 1
       43 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       45 MOVE                             R4 R1
       46 GETIMPORT                        R3 K6 [table.insert]
       48 CALL                             R3 2 0
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R3 R3 K10 ["fromResponse"]
       52 GETTABLEKS                       R4 R0 K11 ["evidenceTagValues"]
       54 MOVE                             R5 R1
       55 LOADK                            R6 K12 ["%*\"evidenceTagValues\" > "]
       56 MOVE                             R8 R2
       57 NAMECALL                         R6 R6 K4 ["format"]
       59 CALL                             R6 2 1
       60 CALL                             R3 3 1
       61 SETTABLEKS                       R3 R0 K11 ["evidenceTagValues"]
       63 GETUPVAL                         R3 1
       64 GETTABLEKS                       R3 R3 K10 ["fromResponse"]
       66 GETTABLEKS                       R4 R0 K13 ["oneOfLabel"]
       68 MOVE                             R5 R1
       69 LOADK                            R6 K14 ["%*\"oneOfLabel\" > "]
       70 MOVE                             R8 R2
       71 NAMECALL                         R6 R6 K4 ["format"]
       73 CALL                             R6 2 1
       74 CALL                             R3 3 1
       75 SETTABLEKS                       R3 R0 K13 ["oneOfLabel"]
       77 RETURN                           R0 1

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
