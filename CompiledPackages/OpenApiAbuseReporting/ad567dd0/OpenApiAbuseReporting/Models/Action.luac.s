PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+18]
        7 LOADK                            R5 K3 ["%*Expected underlying value to be a string, got %*"]
        8 MOVE                             R7 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R9 R0
       11 GETIMPORT                        R8 K1 [typeof]
       13 CALL                             R8 1 1
       14 NAMECALL                         R5 R5 K4 ["format"]
       16 CALL                             R5 3 1
       17 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K7 [table.insert]
       22 CALL                             R3 2 0
       23 RETURN                           R0 1
       24 GETIMPORT                        R3 K9 [table.find]
       26 GETUPVAL                         R4 0
       27 MOVE                             R5 R0
       28 CALL                             R3 2 1
       29 JUMPIFNOTEQKNIL                  R3 ; [+18]
       31 LOADK                            R5 K10 ["%*Expected one of: %*, got %*"]
       32 MOVE                             R7 R2
       33 GETIMPORT                        R8 K12 [table.concat]
       35 GETUPVAL                         R9 0
       36 LOADK                            R10 K13 [", "]
       37 CALL                             R8 2 1
       38 MOVE                             R9 R0
       39 NAMECALL                         R5 R5 K4 ["format"]
       41 CALL                             R5 4 1
       42 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       44 MOVE                             R4 R1
       45 GETIMPORT                        R3 K7 [table.insert]
       47 CALL                             R3 2 0
       48 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiAbuseReporting"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 0 1
       16 LOADK                            R4 K8 ["SCRUB_COMMENT_PII"]
       17 SETLIST                          R3 R4 1 [1]
       19 DUPCLOSURE                       R4 K9 [PROTO_0]
       20 CAPTURE                          VAL R3
       21 DUPCLOSURE                       R5 K10 [PROTO_1]
       22 GETIMPORT                        R6 K13 [table.freeze]
       24 DUPTABLE                         R7 K16 [{"fromResponse", "toRequest"}]
       25 SETTABLEKS                       R4 R7 K14 ["fromResponse"]
       27 SETTABLEKS                       R5 R7 K15 ["toRequest"]
       29 CALL                             R6 1 1
       30 RETURN                           R6 1
