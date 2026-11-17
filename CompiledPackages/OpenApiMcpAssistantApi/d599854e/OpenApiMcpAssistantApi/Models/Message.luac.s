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
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K7 ["fromResponse"]
       27 GETTABLEKS                       R4 R0 K8 ["role"]
       29 MOVE                             R5 R1
       30 LOADK                            R6 K9 ["%*\"role\" > "]
       31 MOVE                             R8 R2
       32 NAMECALL                         R6 R6 K4 ["format"]
       34 CALL                             R6 2 1
       35 CALL                             R3 3 1
       36 SETTABLEKS                       R3 R0 K8 ["role"]
       38 GETTABLEKS                       R4 R0 K10 ["content"]
       40 FASTCALL1                        TYPEOF R4 ; [+2]
       41 GETIMPORT                        R3 K1 [typeof]
       43 CALL                             R3 1 1
       44 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       46 LOADK                            R5 K11 ["%*\"content\" > Expected table, got %*"]
       47 MOVE                             R7 R2
       48 GETTABLEKS                       R9 R0 K10 ["content"]
       50 FASTCALL1                        TYPEOF R9 ; [+2]
       51 GETIMPORT                        R8 K1 [typeof]
       53 CALL                             R8 1 1
       54 NAMECALL                         R5 R5 K4 ["format"]
       56 CALL                             R5 3 1
       57 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       59 MOVE                             R4 R1
       60 GETIMPORT                        R3 K6 [table.insert]
       62 CALL                             R3 2 0
       63 RETURN                           R0 1
       64 GETTABLEKS                       R3 R0 K10 ["content"]
       66 LOADNIL                          R4
       67 LOADNIL                          R5
       68 FORGPREP                         R3
       69 FASTCALL1                        TYPEOF R6 ; [+3]
       70 MOVE                             R9 R6
       71 GETIMPORT                        R8 K1 [typeof]
       73 CALL                             R8 1 1
       74 JUMPIFEQKS                       R8 K12 ["number"] ; [+19]
       76 LOADK                            R10 K13 ["%*\"content\" > Expected index of type number, got %* as %*"]
       77 MOVE                             R12 R2
       78 MOVE                             R13 R6
       79 FASTCALL1                        TYPEOF R6 ; [+3]
       80 MOVE                             R15 R6
       81 GETIMPORT                        R14 K1 [typeof]
       83 CALL                             R14 1 1
       84 NAMECALL                         R10 R10 K4 ["format"]
       86 CALL                             R10 4 1
       87 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       89 MOVE                             R9 R1
       90 GETIMPORT                        R8 K6 [table.insert]
       92 CALL                             R8 2 0
       93 JUMP                             ; [0]
       94 FORGLOOP                         R3 2 ; [-26]
       96 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["toRequest"]
        7 GETTABLEKS                       R3 R1 K4 ["role"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K4 ["role"]
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiMcpAssistantApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["Role"]
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
