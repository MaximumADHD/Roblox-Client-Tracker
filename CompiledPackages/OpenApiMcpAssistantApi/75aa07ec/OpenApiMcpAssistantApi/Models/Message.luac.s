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
       28 GETTABLEKS                       R4 R0 K8 ["role"]
       30 MOVE                             R5 R1
       31 LOADK                            R7 K9 ["%*\"role\" > "]
       32 MOVE                             R9 R2
       33 NAMECALL                         R7 R7 K4 ["format"]
       35 CALL                             R7 2 1
       36 MOVE                             R6 R7
       37 CALL                             R3 3 1
       38 SETTABLEKS                       R3 R0 K8 ["role"]
       40 GETTABLEKS                       R4 R0 K10 ["content"]
       42 FASTCALL1                        TYPEOF R4 ; [+2]
       43 GETIMPORT                        R3 K1 [typeof]
       45 CALL                             R3 1 1
       46 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       48 LOADK                            R6 K11 ["%*\"content\" > Expected table, got %*"]
       49 MOVE                             R8 R2
       50 GETTABLEKS                       R10 R0 K10 ["content"]
       52 FASTCALL1                        TYPEOF R10 ; [+2]
       53 GETIMPORT                        R9 K1 [typeof]
       55 CALL                             R9 1 1
       56 NAMECALL                         R6 R6 K4 ["format"]
       58 CALL                             R6 3 1
       59 MOVE                             R5 R6
       60 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       62 MOVE                             R4 R1
       63 GETIMPORT                        R3 K6 [table.insert]
       65 CALL                             R3 2 0
       66 RETURN                           R0 1
       67 GETTABLEKS                       R3 R0 K10 ["content"]
       69 LOADNIL                          R4
       70 LOADNIL                          R5
       71 FORGPREP                         R3
       72 FASTCALL1                        TYPEOF R6 ; [+3]
       73 MOVE                             R9 R6
       74 GETIMPORT                        R8 K1 [typeof]
       76 CALL                             R8 1 1
       77 JUMPIFEQKS                       R8 K12 ["number"] ; [+20]
       79 LOADK                            R11 K13 ["%*\"content\" > Expected index of type number, got %* as %*"]
       80 MOVE                             R13 R2
       81 MOVE                             R14 R6
       82 FASTCALL1                        TYPEOF R6 ; [+3]
       83 MOVE                             R16 R6
       84 GETIMPORT                        R15 K1 [typeof]
       86 CALL                             R15 1 1
       87 NAMECALL                         R11 R11 K4 ["format"]
       89 CALL                             R11 4 1
       90 MOVE                             R10 R11
       91 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       93 MOVE                             R9 R1
       94 GETIMPORT                        R8 K6 [table.insert]
       96 CALL                             R8 2 0
       97 JUMP                             ; [0]
       98 FORGLOOP                         R3 2 ; [-27]
      100 RETURN                           R0 1

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
