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
       24 GETTABLEKS                       R3 R0 K7 ["input"]
       26 JUMPIFEQKNIL                     R3 ; [+15]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       31 GETTABLEKS                       R4 R0 K7 ["input"]
       33 MOVE                             R5 R1
       34 LOADK                            R6 K9 ["%*\"input\" > "]
       35 MOVE                             R8 R2
       36 NAMECALL                         R6 R6 K4 ["format"]
       38 CALL                             R6 2 1
       39 CALL                             R3 3 1
       40 SETTABLEKS                       R3 R0 K7 ["input"]
       42 GETTABLEKS                       R3 R0 K10 ["options"]
       44 JUMPIFEQKNIL                     R3 ; [+15]
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       49 GETTABLEKS                       R4 R0 K10 ["options"]
       51 MOVE                             R5 R1
       52 LOADK                            R6 K11 ["%*\"options\" > "]
       53 MOVE                             R8 R2
       54 NAMECALL                         R6 R6 K4 ["format"]
       56 CALL                             R6 2 1
       57 CALL                             R3 3 1
       58 SETTABLEKS                       R3 R0 K10 ["options"]
       60 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["input"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["input"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["input"]
       16 GETTABLEKS                       R2 R1 K5 ["options"]
       18 JUMPIFEQKNIL                     R2 ; [+9]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       23 GETTABLEKS                       R3 R1 K5 ["options"]
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K5 ["options"]
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCubeGenerationGateway"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["ModelGenInputOptions"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["ModelGenInputRequest"]
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
