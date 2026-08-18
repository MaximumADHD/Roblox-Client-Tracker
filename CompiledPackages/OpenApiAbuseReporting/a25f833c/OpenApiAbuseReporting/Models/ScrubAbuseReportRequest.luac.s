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
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K7 ["fromResponse"]
       28 GETTABLEKS                       R4 R0 K8 ["action"]
       30 MOVE                             R5 R1
       31 LOADK                            R7 K9 ["%*\"action\" > "]
       32 MOVE                             R9 R2
       33 NAMECALL                         R7 R7 K4 ["format"]
       35 CALL                             R7 2 1
       36 MOVE                             R6 R7
       37 CALL                             R3 3 1
       38 SETTABLEKS                       R3 R0 K8 ["action"]
       40 GETTABLEKS                       R3 R0 K10 ["data"]
       42 JUMPIFEQKNIL                     R3 ; [+27]
       44 GETTABLEKS                       R4 R0 K10 ["data"]
       46 FASTCALL1                        TYPEOF R4 ; [+2]
       47 GETIMPORT                        R3 K1 [typeof]
       49 CALL                             R3 1 1
       50 JUMPIFEQKS                       R3 K11 ["string"] ; [+19]
       52 LOADK                            R6 K12 ["%*\"data\" > Expected string, got %*"]
       53 MOVE                             R8 R2
       54 GETTABLEKS                       R10 R0 K10 ["data"]
       56 FASTCALL1                        TYPEOF R10 ; [+2]
       57 GETIMPORT                        R9 K1 [typeof]
       59 CALL                             R9 1 1
       60 NAMECALL                         R6 R6 K4 ["format"]
       62 CALL                             R6 3 1
       63 MOVE                             R5 R6
       64 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       66 MOVE                             R4 R1
       67 GETIMPORT                        R3 K6 [table.insert]
       69 CALL                             R3 2 0
       70 GETTABLEKS                       R4 R0 K13 ["reportId"]
       72 FASTCALL1                        TYPEOF R4 ; [+2]
       73 GETIMPORT                        R3 K1 [typeof]
       75 CALL                             R3 1 1
       76 JUMPIFEQKS                       R3 K11 ["string"] ; [+19]
       78 LOADK                            R6 K14 ["%*\"reportId\" > Expected string, got %*"]
       79 MOVE                             R8 R2
       80 GETTABLEKS                       R10 R0 K13 ["reportId"]
       82 FASTCALL1                        TYPEOF R10 ; [+2]
       83 GETIMPORT                        R9 K1 [typeof]
       85 CALL                             R9 1 1
       86 NAMECALL                         R6 R6 K4 ["format"]
       88 CALL                             R6 3 1
       89 MOVE                             R5 R6
       90 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       92 MOVE                             R4 R1
       93 GETIMPORT                        R3 K6 [table.insert]
       95 CALL                             R3 2 0
       96 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["toRequest"]
        7 GETTABLEKS                       R3 R1 K4 ["action"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K4 ["action"]
       12 RETURN                           R1 1

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
       18 GETTABLEKS                       R4 R4 K9 ["Action"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 CAPTURE                          VAL R3
       23 DUPCLOSURE                       R5 K11 [PROTO_1]
       24 CAPTURE                          VAL R3
       25 GETIMPORT                        R6 K14 [table.freeze]
       27 DUPTABLE                         R7 K17 [{"fromResponse", "toRequest"}]
       28 SETTABLEKS                       R4 R7 K15 ["fromResponse"]
       30 SETTABLEKS                       R5 R7 K16 ["toRequest"]
       32 CALL                             R6 1 1
       33 RETURN                           R6 1
