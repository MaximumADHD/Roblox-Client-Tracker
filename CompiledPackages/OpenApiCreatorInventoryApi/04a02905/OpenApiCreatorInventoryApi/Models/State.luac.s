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
        3 LOADK                            R2 K2 ["OpenApiCreatorInventoryApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 4 0
       16 LOADK                            R4 K8 ["Invalid"]
       17 SETTABLEKS                       R4 R3 K9 ["STATE_INVALID"]
       19 LOADK                            R4 K10 ["Active"]
       20 SETTABLEKS                       R4 R3 K11 ["STATE_ACTIVE"]
       22 LOADK                            R4 K12 ["Archived"]
       23 SETTABLEKS                       R4 R3 K13 ["STATE_ARCHIVED"]
       25 NEWTABLE                         R4 4 0
       27 LOADK                            R5 K9 ["STATE_INVALID"]
       28 SETTABLEKS                       R5 R4 K8 ["Invalid"]
       30 LOADK                            R5 K11 ["STATE_ACTIVE"]
       31 SETTABLEKS                       R5 R4 K10 ["Active"]
       33 LOADK                            R5 K13 ["STATE_ARCHIVED"]
       34 SETTABLEKS                       R5 R4 K12 ["Archived"]
       36 DUPCLOSURE                       R5 K14 [PROTO_0]
       37 CAPTURE                          VAL R3
       38 DUPCLOSURE                       R6 K15 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 GETIMPORT                        R7 K18 [table.freeze]
       42 DUPTABLE                         R8 K21 [{"fromResponse", "toRequest"}]
       43 SETTABLEKS                       R5 R8 K19 ["fromResponse"]
       45 SETTABLEKS                       R6 R8 K20 ["toRequest"]
       47 CALL                             R7 1 1
       48 RETURN                           R7 1
