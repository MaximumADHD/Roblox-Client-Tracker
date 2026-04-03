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
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["type"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"type\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["type"]
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
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R3 R4 K10 ["fromResponse"]
       58 GETTABLEKS                       R4 R0 K11 ["mimeType"]
       60 MOVE                             R5 R1
       61 LOADK                            R7 K12 ["%*\"mimeType\" > "]
       62 MOVE                             R9 R2
       63 NAMECALL                         R7 R7 K4 ["format"]
       65 CALL                             R7 2 1
       66 MOVE                             R6 R7
       67 CALL                             R3 3 1
       68 SETTABLEKS                       R3 R0 K11 ["mimeType"]
       70 GETTABLEKS                       R4 R0 K13 ["data"]
       72 FASTCALL1                        TYPEOF R4 ; [+2]
       73 GETIMPORT                        R3 K1 [typeof]
       75 CALL                             R3 1 1
       76 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       78 LOADK                            R6 K14 ["%*\"data\" > Expected string, got %*"]
       79 MOVE                             R8 R2
       80 GETTABLEKS                       R10 R0 K13 ["data"]
       82 FASTCALL1                        TYPEOF R10 ; [+2]
       83 GETIMPORT                        R9 K1 [typeof]
       85 CALL                             R9 1 1
       86 NAMECALL                         R6 R6 K4 ["format"]
       88 CALL                             R6 3 1
       89 MOVE                             R5 R6
       90 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       92 MOVE                             R4 R1
       93 GETIMPORT                        R3 K6 [table.insert]
       95 CALL                             R3 2 0
       96 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K3 ["toRequest"]
        7 GETTABLEKS                       R3 R1 K4 ["mimeType"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K4 ["mimeType"]
       12 RETURN                           R1 1

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
       20 GETTABLEKS                       R6 R0 K9 ["Models"]
       22 GETTABLEKS                       R5 R6 K10 ["MimeType"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 CAPTURE                          VAL R4
       27 DUPCLOSURE                       R6 K12 [PROTO_1]
       28 CAPTURE                          VAL R4
       29 GETIMPORT                        R7 K15 [table.freeze]
       31 DUPTABLE                         R8 K18 [{"fromResponse", "toRequest"}]
       32 SETTABLEKS                       R5 R8 K16 ["fromResponse"]
       34 SETTABLEKS                       R6 R8 K17 ["toRequest"]
       36 CALL                             R7 1 1
       37 RETURN                           R7 1
