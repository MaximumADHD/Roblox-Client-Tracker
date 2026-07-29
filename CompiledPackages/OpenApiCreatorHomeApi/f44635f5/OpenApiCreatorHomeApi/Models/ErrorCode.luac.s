PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+19]
        7 LOADK                            R6 K3 ["%*Expected underlying value to be a number, got %*"]
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
       25 GETUPVAL                         R4 0
       26 GETTABLE                         R3 R4 R0
       27 JUMPIFNOTEQKNIL                  R3 ; [+15]
       29 LOADK                            R7 K8 ["%*Underlying value %* does not map to an enum value name"]
       30 MOVE                             R9 R2
       31 MOVE                             R10 R0
       32 NAMECALL                         R7 R7 K4 ["format"]
       34 CALL                             R7 3 1
       35 MOVE                             R6 R7
       36 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
       38 MOVE                             R5 R1
       39 GETIMPORT                        R4 K7 [table.insert]
       41 CALL                             R4 2 0
       42 RETURN                           R0 1
       43 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreatorHomeApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 8 0
       16 LOADN                            R4 0
       17 LOADK                            R5 K8 ["0"]
       18 SETTABLE                         R5 R3 R4
       19 LOADK                            R4 K9 ["1"]
       20 SETTABLEN                        R4 R3 1
       21 LOADK                            R4 K10 ["2"]
       22 SETTABLEN                        R4 R3 2
       23 LOADK                            R4 K11 ["3"]
       24 SETTABLEN                        R4 R3 3
       25 LOADK                            R4 K12 ["4"]
       26 SETTABLEN                        R4 R3 4
       27 LOADK                            R4 K13 ["5"]
       28 SETTABLEN                        R4 R3 5
       29 LOADK                            R4 K14 ["6"]
       30 SETTABLEN                        R4 R3 6
       31 LOADK                            R4 K15 ["7"]
       32 SETTABLEN                        R4 R3 7
       33 NEWTABLE                         R4 8 0
       35 LOADN                            R5 0
       36 SETTABLEKS                       R5 R4 K8 ["0"]
       38 LOADN                            R5 1
       39 SETTABLEKS                       R5 R4 K9 ["1"]
       41 LOADN                            R5 2
       42 SETTABLEKS                       R5 R4 K10 ["2"]
       44 LOADN                            R5 3
       45 SETTABLEKS                       R5 R4 K11 ["3"]
       47 LOADN                            R5 4
       48 SETTABLEKS                       R5 R4 K12 ["4"]
       50 LOADN                            R5 5
       51 SETTABLEKS                       R5 R4 K13 ["5"]
       53 LOADN                            R5 6
       54 SETTABLEKS                       R5 R4 K14 ["6"]
       56 LOADN                            R5 7
       57 SETTABLEKS                       R5 R4 K15 ["7"]
       59 DUPCLOSURE                       R5 K16 [PROTO_0]
       60 CAPTURE                          VAL R3
       61 DUPCLOSURE                       R6 K17 [PROTO_1]
       62 CAPTURE                          VAL R4
       63 GETIMPORT                        R7 K20 [table.freeze]
       65 DUPTABLE                         R8 K23 [{"fromResponse", "toRequest"}]
       66 SETTABLEKS                       R5 R8 K21 ["fromResponse"]
       68 SETTABLEKS                       R6 R8 K22 ["toRequest"]
       70 CALL                             R7 1 1
       71 RETURN                           R7 1
