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
       24 GETTABLEKS                       R4 R0 K7 ["groups"]
       26 FASTCALL1                        TYPEOF R4 ; [+2]
       27 GETIMPORT                        R3 K1 [typeof]
       29 CALL                             R3 1 1
       30 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       32 LOADK                            R5 K8 ["%*\"groups\" > Expected table, got %*"]
       33 MOVE                             R7 R2
       34 GETTABLEKS                       R9 R0 K7 ["groups"]
       36 FASTCALL1                        TYPEOF R9 ; [+2]
       37 GETIMPORT                        R8 K1 [typeof]
       39 CALL                             R8 1 1
       40 NAMECALL                         R5 R5 K4 ["format"]
       42 CALL                             R5 3 1
       43 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       45 MOVE                             R4 R1
       46 GETIMPORT                        R3 K6 [table.insert]
       48 CALL                             R3 2 0
       49 RETURN                           R0 1
       50 GETTABLEKS                       R3 R0 K7 ["groups"]
       52 LOADNIL                          R4
       53 LOADNIL                          R5
       54 FORGPREP                         R3
       55 FASTCALL1                        TYPEOF R6 ; [+3]
       56 MOVE                             R9 R6
       57 GETIMPORT                        R8 K1 [typeof]
       59 CALL                             R8 1 1
       60 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
       62 LOADK                            R10 K10 ["%*\"groups\" > Expected index of type number, got %* as %*"]
       63 MOVE                             R12 R2
       64 MOVE                             R13 R6
       65 FASTCALL1                        TYPEOF R6 ; [+3]
       66 MOVE                             R15 R6
       67 GETIMPORT                        R14 K1 [typeof]
       69 CALL                             R14 1 1
       70 NAMECALL                         R10 R10 K4 ["format"]
       72 CALL                             R10 4 1
       73 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       75 MOVE                             R9 R1
       76 GETIMPORT                        R8 K6 [table.insert]
       78 CALL                             R8 2 0
       79 JUMP                             ; [+15]
       80 GETTABLEKS                       R8 R0 K7 ["groups"]
       82 GETUPVAL                         R9 0
       83 GETTABLEKS                       R9 R9 K11 ["fromResponse"]
       85 MOVE                             R10 R7
       86 MOVE                             R11 R1
       87 LOADK                            R12 K12 ["%*\"groups\" > [%*] > "]
       88 MOVE                             R14 R2
       89 MOVE                             R15 R6
       90 NAMECALL                         R12 R12 K4 ["format"]
       92 CALL                             R12 3 1
       93 CALL                             R9 3 1
       94 SETTABLE                         R9 R8 R6
       95 FORGLOOP                         R3 2 ; [-41]
       97 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [table.clone]
        6 GETTABLEKS                       R3 R1 K3 ["groups"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K3 ["groups"]
       11 GETTABLEKS                       R2 R1 K3 ["groups"]
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETTABLEKS                       R7 R1 K3 ["groups"]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       21 MOVE                             R9 R6
       22 CALL                             R8 1 1
       23 SETTABLE                         R8 R7 R5
       24 FORGLOOP                         R2 2 ; [-9]
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreatorHomeApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["Group"]
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
