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
       25 GETTABLEKS                       R3 R0 K7 ["items"]
       27 JUMPIFEQKNIL                     R3 ; [+77]
       29 GETTABLEKS                       R4 R0 K7 ["items"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       37 LOADK                            R6 K8 ["%*\"items\" > Expected table, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["items"]
       41 FASTCALL1                        TYPEOF R10 ; [+2]
       42 GETIMPORT                        R9 K1 [typeof]
       44 CALL                             R9 1 1
       45 NAMECALL                         R6 R6 K4 ["format"]
       47 CALL                             R6 3 1
       48 MOVE                             R5 R6
       49 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       51 MOVE                             R4 R1
       52 GETIMPORT                        R3 K6 [table.insert]
       54 CALL                             R3 2 0
       55 RETURN                           R0 1
       56 GETTABLEKS                       R3 R0 K7 ["items"]
       58 LOADNIL                          R4
       59 LOADNIL                          R5
       60 FORGPREP                         R3
       61 FASTCALL1                        TYPEOF R6 ; [+3]
       62 MOVE                             R9 R6
       63 GETIMPORT                        R8 K1 [typeof]
       65 CALL                             R8 1 1
       66 JUMPIFEQKS                       R8 K9 ["number"] ; [+20]
       68 LOADK                            R11 K10 ["%*\"items\" > Expected index of type number, got %* as %*"]
       69 MOVE                             R13 R2
       70 MOVE                             R14 R6
       71 FASTCALL1                        TYPEOF R6 ; [+3]
       72 MOVE                             R16 R6
       73 GETIMPORT                        R15 K1 [typeof]
       75 CALL                             R15 1 1
       76 NAMECALL                         R11 R11 K4 ["format"]
       78 CALL                             R11 4 1
       79 MOVE                             R10 R11
       80 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       82 MOVE                             R9 R1
       83 GETIMPORT                        R8 K6 [table.insert]
       85 CALL                             R8 2 0
       86 JUMP                             ; [+16]
       87 GETTABLEKS                       R8 R0 K7 ["items"]
       89 GETUPVAL                         R9 0
       90 GETTABLEKS                       R9 R9 K11 ["fromResponse"]
       92 MOVE                             R10 R7
       93 MOVE                             R11 R1
       94 LOADK                            R13 K12 ["%*\"items\" > [%*] > "]
       95 MOVE                             R15 R2
       96 MOVE                             R16 R6
       97 NAMECALL                         R13 R13 K4 ["format"]
       99 CALL                             R13 3 1
      100 MOVE                             R12 R13
      101 CALL                             R9 3 1
      102 SETTABLE                         R9 R8 R6
      103 FORGLOOP                         R3 2 ; [-43]
      105 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["items"]
        6 JUMPIFEQKNIL                     R2 ; [+23]
        8 GETIMPORT                        R2 K2 [table.clone]
       10 GETTABLEKS                       R3 R1 K3 ["items"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["items"]
       15 GETTABLEKS                       R2 R1 K3 ["items"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETTABLEKS                       R7 R1 K3 ["items"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R7 R5
       28 FORGLOOP                         R2 2 ; [-9]
       30 RETURN                           R1 1

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
       18 GETTABLEKS                       R4 R4 K9 ["CreatorInventoryItem"]
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
