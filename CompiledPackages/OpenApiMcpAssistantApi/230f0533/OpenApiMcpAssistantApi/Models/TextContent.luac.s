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
       24 GETTABLEKS                       R3 R0 K7 ["type"]
       26 JUMPIFEQKNIL                     R3 ; [+15]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       31 GETTABLEKS                       R4 R0 K7 ["type"]
       33 MOVE                             R5 R1
       34 LOADK                            R6 K9 ["%*\"type\" > "]
       35 MOVE                             R8 R2
       36 NAMECALL                         R6 R6 K4 ["format"]
       38 CALL                             R6 2 1
       39 CALL                             R3 3 1
       40 SETTABLEKS                       R3 R0 K7 ["type"]
       42 GETTABLEKS                       R4 R0 K10 ["text"]
       44 FASTCALL1                        TYPEOF R4 ; [+2]
       45 GETIMPORT                        R3 K1 [typeof]
       47 CALL                             R3 1 1
       48 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
       50 LOADK                            R5 K12 ["%*\"text\" > Expected string, got %*"]
       51 MOVE                             R7 R2
       52 GETTABLEKS                       R9 R0 K10 ["text"]
       54 FASTCALL1                        TYPEOF R9 ; [+2]
       55 GETIMPORT                        R8 K1 [typeof]
       57 CALL                             R8 1 1
       58 NAMECALL                         R5 R5 K4 ["format"]
       60 CALL                             R5 3 1
       61 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       63 MOVE                             R4 R1
       64 GETIMPORT                        R3 K6 [table.insert]
       66 CALL                             R3 2 0
       67 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["type"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["type"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["type"]
       16 RETURN                           R1 1

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
       18 GETTABLEKS                       R4 R4 K9 ["Type2"]
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
