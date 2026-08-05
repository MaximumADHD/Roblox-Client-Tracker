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
       25 GETTABLEKS                       R3 R0 K7 ["type"]
       27 JUMPIFEQKNIL                     R3 ; [+16]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       32 GETTABLEKS                       R4 R0 K7 ["type"]
       34 MOVE                             R5 R1
       35 LOADK                            R7 K9 ["%*\"type\" > "]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K4 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 CALL                             R3 3 1
       42 SETTABLEKS                       R3 R0 K7 ["type"]
       44 GETTABLEKS                       R3 R0 K10 ["properties"]
       46 JUMPIFEQKNIL                     R3 ; [+61]
       48 GETTABLEKS                       R4 R0 K10 ["properties"]
       50 FASTCALL1                        TYPEOF R4 ; [+2]
       51 GETIMPORT                        R3 K1 [typeof]
       53 CALL                             R3 1 1
       54 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       56 LOADK                            R6 K11 ["%*\"properties\" > Expected table, got %*"]
       57 MOVE                             R8 R2
       58 GETTABLEKS                       R10 R0 K10 ["properties"]
       60 FASTCALL1                        TYPEOF R10 ; [+2]
       61 GETIMPORT                        R9 K1 [typeof]
       63 CALL                             R9 1 1
       64 NAMECALL                         R6 R6 K4 ["format"]
       66 CALL                             R6 3 1
       67 MOVE                             R5 R6
       68 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       70 MOVE                             R4 R1
       71 GETIMPORT                        R3 K6 [table.insert]
       73 CALL                             R3 2 0
       74 RETURN                           R0 1
       75 GETTABLEKS                       R3 R0 K10 ["properties"]
       77 LOADNIL                          R4
       78 LOADNIL                          R5
       79 FORGPREP                         R3
       80 FASTCALL1                        TYPEOF R6 ; [+3]
       81 MOVE                             R9 R6
       82 GETIMPORT                        R8 K1 [typeof]
       84 CALL                             R8 1 1
       85 JUMPIFEQKS                       R8 K12 ["string"] ; [+20]
       87 LOADK                            R11 K13 ["%*\"properties\" > Expected key of type string, got %* as %*"]
       88 MOVE                             R13 R2
       89 MOVE                             R14 R6
       90 FASTCALL1                        TYPEOF R6 ; [+3]
       91 MOVE                             R16 R6
       92 GETIMPORT                        R15 K1 [typeof]
       94 CALL                             R15 1 1
       95 NAMECALL                         R11 R11 K4 ["format"]
       97 CALL                             R11 4 1
       98 MOVE                             R10 R11
       99 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      101 MOVE                             R9 R1
      102 GETIMPORT                        R8 K6 [table.insert]
      104 CALL                             R8 2 0
      105 JUMP                             ; [0]
      106 FORGLOOP                         R3 2 ; [-27]
      108 RETURN                           R0 1

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
