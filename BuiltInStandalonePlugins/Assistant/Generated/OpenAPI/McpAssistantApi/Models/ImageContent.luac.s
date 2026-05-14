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
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       47 GETTABLEKS                       R4 R0 K10 ["mimeType"]
       49 MOVE                             R5 R1
       50 LOADK                            R7 K11 ["%*\"mimeType\" > "]
       51 MOVE                             R9 R2
       52 NAMECALL                         R7 R7 K4 ["format"]
       54 CALL                             R7 2 1
       55 MOVE                             R6 R7
       56 CALL                             R3 3 1
       57 SETTABLEKS                       R3 R0 K10 ["mimeType"]
       59 GETTABLEKS                       R4 R0 K12 ["data"]
       61 FASTCALL1                        TYPEOF R4 ; [+2]
       62 GETIMPORT                        R3 K1 [typeof]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K13 ["string"] ; [+19]
       67 LOADK                            R6 K14 ["%*\"data\" > Expected string, got %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R10 R0 K12 ["data"]
       71 FASTCALL1                        TYPEOF R10 ; [+2]
       72 GETIMPORT                        R9 K1 [typeof]
       74 CALL                             R9 1 1
       75 NAMECALL                         R6 R6 K4 ["format"]
       77 CALL                             R6 3 1
       78 MOVE                             R5 R6
       79 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       81 MOVE                             R4 R1
       82 GETIMPORT                        R3 K6 [table.insert]
       84 CALL                             R3 2 0
       85 RETURN                           R0 1

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
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       19 GETTABLEKS                       R3 R1 K5 ["mimeType"]
       21 CALL                             R2 1 1
       22 SETTABLEKS                       R2 R1 K5 ["mimeType"]
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["McpAssistantApi"]
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
       20 GETTABLEKS                       R5 R0 K9 ["Models"]
       22 GETTABLEKS                       R5 R5 K10 ["MimeType"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R0 K9 ["Models"]
       29 GETTABLEKS                       R6 R6 K11 ["Type"]
       31 CALL                             R5 1 1
       32 DUPCLOSURE                       R6 K12 [PROTO_0]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R4
       35 DUPCLOSURE                       R7 K13 [PROTO_1]
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R4
       38 GETIMPORT                        R8 K16 [table.freeze]
       40 DUPTABLE                         R9 K19 [{"fromResponse", "toRequest"}]
       41 SETTABLEKS                       R6 R9 K17 ["fromResponse"]
       43 SETTABLEKS                       R7 R9 K18 ["toRequest"]
       45 CALL                             R8 1 1
       46 RETURN                           R8 1
