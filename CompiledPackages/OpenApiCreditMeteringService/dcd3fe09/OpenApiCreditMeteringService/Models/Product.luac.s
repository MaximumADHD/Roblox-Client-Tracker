PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+18]
        7 LOADK                            R5 K3 ["%*Expected underlying value to be a number, got %*"]
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
       24 GETUPVAL                         R4 0
       25 GETTABLE                         R3 R4 R0
       26 JUMPIFNOTEQKNIL                  R3 ; [+14]
       28 LOADK                            R6 K8 ["%*Underlying value %* does not map to an enum value name"]
       29 MOVE                             R8 R2
       30 MOVE                             R9 R0
       31 NAMECALL                         R6 R6 K4 ["format"]
       33 CALL                             R6 3 1
       34 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
       36 MOVE                             R5 R1
       37 GETIMPORT                        R4 K7 [table.insert]
       39 CALL                             R4 2 0
       40 RETURN                           R0 1
       41 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreditMeteringService"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 4 0
       16 LOADN                            R4 0
       17 LOADK                            R5 K8 ["0"]
       18 SETTABLE                         R5 R3 R4
       19 LOADK                            R4 K9 ["1"]
       20 SETTABLEN                        R4 R3 1
       21 LOADK                            R4 K10 ["2"]
       22 SETTABLEN                        R4 R3 2
       23 NEWTABLE                         R4 4 0
       25 LOADN                            R5 0
       26 SETTABLEKS                       R5 R4 K8 ["0"]
       28 LOADN                            R5 1
       29 SETTABLEKS                       R5 R4 K9 ["1"]
       31 LOADN                            R5 2
       32 SETTABLEKS                       R5 R4 K10 ["2"]
       34 DUPCLOSURE                       R5 K11 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 DUPCLOSURE                       R6 K12 [PROTO_1]
       37 CAPTURE                          VAL R4
       38 GETIMPORT                        R7 K15 [table.freeze]
       40 DUPTABLE                         R8 K18 [{"fromResponse", "toRequest"}]
       41 SETTABLEKS                       R5 R8 K16 ["fromResponse"]
       43 SETTABLEKS                       R6 R8 K17 ["toRequest"]
       45 CALL                             R7 1 1
       46 RETURN                           R7 1
