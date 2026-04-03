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
       25 GETTABLEKS                       R3 R0 K7 ["metalnessMap"]
       27 JUMPIFEQKNIL                     R3 ; [+16]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K8 ["fromResponse"]
       32 GETTABLEKS                       R4 R0 K7 ["metalnessMap"]
       34 MOVE                             R5 R1
       35 LOADK                            R7 K9 ["%*\"metalnessMap\" > "]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K4 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 CALL                             R3 3 1
       42 SETTABLEKS                       R3 R0 K7 ["metalnessMap"]
       44 GETTABLEKS                       R3 R0 K10 ["normalMap"]
       46 JUMPIFEQKNIL                     R3 ; [+16]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R3 R4 K8 ["fromResponse"]
       51 GETTABLEKS                       R4 R0 K10 ["normalMap"]
       53 MOVE                             R5 R1
       54 LOADK                            R7 K11 ["%*\"normalMap\" > "]
       55 MOVE                             R9 R2
       56 NAMECALL                         R7 R7 K4 ["format"]
       58 CALL                             R7 2 1
       59 MOVE                             R6 R7
       60 CALL                             R3 3 1
       61 SETTABLEKS                       R3 R0 K10 ["normalMap"]
       63 GETTABLEKS                       R3 R0 K12 ["roughnessMap"]
       65 JUMPIFEQKNIL                     R3 ; [+16]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R3 R4 K8 ["fromResponse"]
       70 GETTABLEKS                       R4 R0 K12 ["roughnessMap"]
       72 MOVE                             R5 R1
       73 LOADK                            R7 K13 ["%*\"roughnessMap\" > "]
       74 MOVE                             R9 R2
       75 NAMECALL                         R7 R7 K4 ["format"]
       77 CALL                             R7 2 1
       78 MOVE                             R6 R7
       79 CALL                             R3 3 1
       80 SETTABLEKS                       R3 R0 K12 ["roughnessMap"]
       82 GETTABLEKS                       R3 R0 K14 ["error"]
       84 JUMPIFEQKNIL                     R3 ; [+16]
       86 GETUPVAL                         R4 1
       87 GETTABLEKS                       R3 R4 K8 ["fromResponse"]
       89 GETTABLEKS                       R4 R0 K14 ["error"]
       91 MOVE                             R5 R1
       92 LOADK                            R7 K15 ["%*\"error\" > "]
       93 MOVE                             R9 R2
       94 NAMECALL                         R7 R7 K4 ["format"]
       96 CALL                             R7 2 1
       97 MOVE                             R6 R7
       98 CALL                             R3 3 1
       99 SETTABLEKS                       R3 R0 K14 ["error"]
      101 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["metalnessMap"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["metalnessMap"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["metalnessMap"]
       16 GETTABLEKS                       R2 R1 K5 ["normalMap"]
       18 JUMPIFEQKNIL                     R2 ; [+9]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K4 ["toRequest"]
       23 GETTABLEKS                       R3 R1 K5 ["normalMap"]
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K5 ["normalMap"]
       28 GETTABLEKS                       R2 R1 K6 ["roughnessMap"]
       30 JUMPIFEQKNIL                     R2 ; [+9]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R2 R3 K4 ["toRequest"]
       35 GETTABLEKS                       R3 R1 K6 ["roughnessMap"]
       37 CALL                             R2 1 1
       38 SETTABLEKS                       R2 R1 K6 ["roughnessMap"]
       40 GETTABLEKS                       R2 R1 K7 ["error"]
       42 JUMPIFEQKNIL                     R2 ; [+9]
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R2 R3 K4 ["toRequest"]
       47 GETTABLEKS                       R3 R1 K7 ["error"]
       49 CALL                             R2 1 1
       50 SETTABLEKS                       R2 R1 K7 ["error"]
       52 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerationService"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Assistant"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K5 ["Packages"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["HttpWrapper"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K7 [require]
       20 GETTABLEKS                       R6 R0 K9 ["Models"]
       22 GETTABLEKS                       R5 R6 K10 ["ImageToMaterialMapArtifact"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R7 R0 K9 ["Models"]
       29 GETTABLEKS                       R6 R7 K11 ["ImageToMaterialPublicError"]
       31 CALL                             R5 1 1
       32 DUPCLOSURE                       R6 K12 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R5
       35 DUPCLOSURE                       R7 K13 [PROTO_1]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 GETIMPORT                        R8 K16 [table.freeze]
       40 DUPTABLE                         R9 K19 [{"fromResponse", "toRequest"}]
       41 SETTABLEKS                       R6 R9 K17 ["fromResponse"]
       43 SETTABLEKS                       R7 R9 K18 ["toRequest"]
       45 CALL                             R8 1 1
       46 RETURN                           R8 1
