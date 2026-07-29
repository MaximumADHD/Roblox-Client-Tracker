PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+19]
        7 LOADK                            R6 K3 ["%*Expected underlying value to be a string, got %*"]
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
       21 GETIMPORT                        R3 K7 [table.insert]
       23 CALL                             R3 2 0
       24 RETURN                           R0 1
       25 GETIMPORT                        R3 K9 [table.find]
       27 GETUPVAL                         R4 0
       28 MOVE                             R5 R0
       29 CALL                             R3 2 1
       30 JUMPIFNOTEQKNIL                  R3 ; [+19]
       32 LOADK                            R6 K10 ["%*Expected one of: %*, got %*"]
       33 MOVE                             R8 R2
       34 GETIMPORT                        R9 K12 [table.concat]
       36 GETUPVAL                         R10 0
       37 LOADK                            R11 K13 [", "]
       38 CALL                             R9 2 1
       39 MOVE                             R10 R0
       40 NAMECALL                         R6 R6 K4 ["format"]
       42 CALL                             R6 4 1
       43 MOVE                             R5 R6
       44 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       46 MOVE                             R4 R1
       47 GETIMPORT                        R3 K7 [table.insert]
       49 CALL                             R3 2 0
       50 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

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
       14 NEWTABLE                         R3 0 4
       16 LOADK                            R4 K8 ["image/jpeg"]
       17 LOADK                            R5 K9 ["image/png"]
       18 LOADK                            R6 K10 ["image/gif"]
       19 LOADK                            R7 K11 ["image/webp"]
       20 SETLIST                          R3 R4 4 [1]
       22 DUPCLOSURE                       R4 K12 [PROTO_0]
       23 CAPTURE                          VAL R3
       24 DUPCLOSURE                       R5 K13 [PROTO_1]
       25 GETIMPORT                        R6 K16 [table.freeze]
       27 DUPTABLE                         R7 K19 [{"fromResponse", "toRequest"}]
       28 SETTABLEKS                       R4 R7 K17 ["fromResponse"]
       30 SETTABLEKS                       R5 R7 K18 ["toRequest"]
       32 CALL                             R6 1 1
       33 RETURN                           R6 1
