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
       25 GETTABLEKS                       R4 R0 K7 ["name"]
       27 FASTCALL1                        TYPEOF R4 ; [+2]
       28 GETIMPORT                        R3 K1 [typeof]
       30 CALL                             R3 1 1
       31 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       33 LOADK                            R6 K9 ["%*\"name\" > Expected string, got %*"]
       34 MOVE                             R8 R2
       35 GETTABLEKS                       R10 R0 K7 ["name"]
       37 FASTCALL1                        TYPEOF R10 ; [+2]
       38 GETIMPORT                        R9 K1 [typeof]
       40 CALL                             R9 1 1
       41 NAMECALL                         R6 R6 K4 ["format"]
       43 CALL                             R6 3 1
       44 MOVE                             R5 R6
       45 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       47 MOVE                             R4 R1
       48 GETIMPORT                        R3 K6 [table.insert]
       50 CALL                             R3 2 0
       51 GETTABLEKS                       R4 R0 K10 ["description"]
       53 FASTCALL1                        TYPEOF R4 ; [+2]
       54 GETIMPORT                        R3 K1 [typeof]
       56 CALL                             R3 1 1
       57 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       59 LOADK                            R6 K11 ["%*\"description\" > Expected string, got %*"]
       60 MOVE                             R8 R2
       61 GETTABLEKS                       R10 R0 K10 ["description"]
       63 FASTCALL1                        TYPEOF R10 ; [+2]
       64 GETIMPORT                        R9 K1 [typeof]
       66 CALL                             R9 1 1
       67 NAMECALL                         R6 R6 K4 ["format"]
       69 CALL                             R6 3 1
       70 MOVE                             R5 R6
       71 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       73 MOVE                             R4 R1
       74 GETIMPORT                        R3 K6 [table.insert]
       76 CALL                             R3 2 0
       77 GETUPVAL                         R3 0
       78 GETTABLEKS                       R3 R3 K12 ["fromResponse"]
       80 GETTABLEKS                       R4 R0 K13 ["inputSchema"]
       82 MOVE                             R5 R1
       83 LOADK                            R7 K14 ["%*\"inputSchema\" > "]
       84 MOVE                             R9 R2
       85 NAMECALL                         R7 R7 K4 ["format"]
       87 CALL                             R7 2 1
       88 MOVE                             R6 R7
       89 CALL                             R3 3 1
       90 SETTABLEKS                       R3 R0 K13 ["inputSchema"]
       92 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["toRequest"]
        7 GETTABLEKS                       R3 R1 K4 ["inputSchema"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K4 ["inputSchema"]
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
       18 GETTABLEKS                       R4 R4 K9 ["ToolInputSchema"]
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
