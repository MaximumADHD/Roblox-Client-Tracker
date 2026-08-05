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
       25 GETTABLEKS                       R3 R0 K7 ["createdDetails"]
       27 JUMPIFEQKNIL                     R3 ; [+16]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       32 GETTABLEKS                       R4 R0 K7 ["createdDetails"]
       34 MOVE                             R5 R1
       35 LOADK                            R7 K9 ["%*\"createdDetails\" > "]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K4 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 CALL                             R3 3 1
       42 SETTABLEKS                       R3 R0 K7 ["createdDetails"]
       44 GETTABLEKS                       R3 R0 K10 ["purchasedDetails"]
       46 JUMPIFEQKNIL                     R3 ; [+16]
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       51 GETTABLEKS                       R4 R0 K10 ["purchasedDetails"]
       53 MOVE                             R5 R1
       54 LOADK                            R7 K11 ["%*\"purchasedDetails\" > "]
       55 MOVE                             R9 R2
       56 NAMECALL                         R7 R7 K4 ["format"]
       58 CALL                             R7 2 1
       59 MOVE                             R6 R7
       60 CALL                             R3 3 1
       61 SETTABLEKS                       R3 R0 K10 ["purchasedDetails"]
       63 GETTABLEKS                       R3 R0 K12 ["sharedDetails"]
       65 JUMPIFEQKNIL                     R3 ; [+16]
       67 GETUPVAL                         R3 2
       68 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       70 GETTABLEKS                       R4 R0 K12 ["sharedDetails"]
       72 MOVE                             R5 R1
       73 LOADK                            R7 K13 ["%*\"sharedDetails\" > "]
       74 MOVE                             R9 R2
       75 NAMECALL                         R7 R7 K4 ["format"]
       77 CALL                             R7 2 1
       78 MOVE                             R6 R7
       79 CALL                             R3 3 1
       80 SETTABLEKS                       R3 R0 K12 ["sharedDetails"]
       82 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["createdDetails"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["createdDetails"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["createdDetails"]
       16 GETTABLEKS                       R2 R1 K5 ["purchasedDetails"]
       18 JUMPIFEQKNIL                     R2 ; [+9]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       23 GETTABLEKS                       R3 R1 K5 ["purchasedDetails"]
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K5 ["purchasedDetails"]
       28 GETTABLEKS                       R2 R1 K6 ["sharedDetails"]
       30 JUMPIFEQKNIL                     R2 ; [+9]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       35 GETTABLEKS                       R3 R1 K6 ["sharedDetails"]
       37 CALL                             R2 1 1
       38 SETTABLEKS                       R2 R1 K6 ["sharedDetails"]
       40 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreatorInventoryApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["SourceCreatedDetails"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["SourcePurchasedDetails"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Models"]
       32 GETTABLEKS                       R6 R6 K11 ["SourceSharedDetails"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K12 [PROTO_0]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R5
       39 DUPCLOSURE                       R7 K13 [PROTO_1]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 GETIMPORT                        R8 K16 [table.freeze]
       45 DUPTABLE                         R9 K19 [{"fromResponse", "toRequest"}]
       46 SETTABLEKS                       R6 R9 K17 ["fromResponse"]
       48 SETTABLEKS                       R7 R9 K18 ["toRequest"]
       50 CALL                             R8 1 1
       51 RETURN                           R8 1
