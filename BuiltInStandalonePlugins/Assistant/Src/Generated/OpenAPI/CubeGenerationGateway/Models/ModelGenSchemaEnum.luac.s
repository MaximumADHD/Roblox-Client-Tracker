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
        3 LOADK                            R2 K2 ["CubeGenerationGateway"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Assistant"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K5 ["Packages"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["HttpWrapper"]
       17 CALL                             R3 1 1
       18 NEWTABLE                         R4 4 0
       20 LOADN                            R5 0
       21 LOADK                            R6 K9 ["0"]
       22 SETTABLE                         R6 R4 R5
       23 LOADK                            R5 K10 ["1"]
       24 SETTABLEN                        R5 R4 1
       25 LOADK                            R5 K11 ["2"]
       26 SETTABLEN                        R5 R4 2
       27 NEWTABLE                         R5 4 0
       29 LOADN                            R6 0
       30 SETTABLEKS                       R6 R5 K9 ["0"]
       32 LOADN                            R6 1
       33 SETTABLEKS                       R6 R5 K10 ["1"]
       35 LOADN                            R6 2
       36 SETTABLEKS                       R6 R5 K11 ["2"]
       38 DUPCLOSURE                       R6 K12 [PROTO_0]
       39 CAPTURE                          VAL R4
       40 DUPCLOSURE                       R7 K13 [PROTO_1]
       41 CAPTURE                          VAL R5
       42 GETIMPORT                        R8 K16 [table.freeze]
       44 DUPTABLE                         R9 K19 [{"fromResponse", "toRequest"}]
       45 SETTABLEKS                       R6 R9 K17 ["fromResponse"]
       47 SETTABLEKS                       R7 R9 K18 ["toRequest"]
       49 CALL                             R8 1 1
       50 RETURN                           R8 1
