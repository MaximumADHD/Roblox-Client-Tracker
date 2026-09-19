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
       42 GETTABLEKS                       R3 R0 K10 ["properties"]
       44 JUMPIFEQKNIL                     R3 ; [+59]
       46 GETTABLEKS                       R4 R0 K10 ["properties"]
       48 FASTCALL1                        TYPEOF R4 ; [+2]
       49 GETIMPORT                        R3 K1 [typeof]
       51 CALL                             R3 1 1
       52 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       54 LOADK                            R5 K11 ["%*\"properties\" > Expected table, got %*"]
       55 MOVE                             R7 R2
       56 GETTABLEKS                       R9 R0 K10 ["properties"]
       58 FASTCALL1                        TYPEOF R9 ; [+2]
       59 GETIMPORT                        R8 K1 [typeof]
       61 CALL                             R8 1 1
       62 NAMECALL                         R5 R5 K4 ["format"]
       64 CALL                             R5 3 1
       65 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       67 MOVE                             R4 R1
       68 GETIMPORT                        R3 K6 [table.insert]
       70 CALL                             R3 2 0
       71 RETURN                           R0 1
       72 GETTABLEKS                       R3 R0 K10 ["properties"]
       74 LOADNIL                          R4
       75 LOADNIL                          R5
       76 FORGPREP                         R3
       77 FASTCALL1                        TYPEOF R6 ; [+3]
       78 MOVE                             R9 R6
       79 GETIMPORT                        R8 K1 [typeof]
       81 CALL                             R8 1 1
       82 JUMPIFEQKS                       R8 K12 ["string"] ; [+19]
       84 LOADK                            R10 K13 ["%*\"properties\" > Expected key of type string, got %* as %*"]
       85 MOVE                             R12 R2
       86 MOVE                             R13 R6
       87 FASTCALL1                        TYPEOF R6 ; [+3]
       88 MOVE                             R15 R6
       89 GETIMPORT                        R14 K1 [typeof]
       91 CALL                             R14 1 1
       92 NAMECALL                         R10 R10 K4 ["format"]
       94 CALL                             R10 4 1
       95 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       97 MOVE                             R9 R1
       98 GETIMPORT                        R8 K6 [table.insert]
      100 CALL                             R8 2 0
      101 JUMP                             ; [0]
      102 FORGLOOP                         R3 2 ; [-26]
      104 RETURN                           R0 1

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
       18 GETTABLEKS                       R4 R4 K9 ["Type4"]
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
