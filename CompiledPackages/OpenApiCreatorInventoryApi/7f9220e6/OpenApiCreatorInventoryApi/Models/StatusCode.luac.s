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
        3 LOADK                            R2 K2 ["OpenApiCreatorInventoryApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 8 0
       16 LOADK                            R4 K8 ["Unknown"]
       17 SETTABLEN                        R4 R3 2
       18 LOADK                            R4 K9 ["InvalidArgument"]
       19 SETTABLEN                        R4 R3 3
       20 LOADK                            R4 K10 ["NotFound"]
       21 SETTABLEN                        R4 R3 5
       22 LOADK                            R4 K11 ["PermissionDenied"]
       23 SETTABLEN                        R4 R3 7
       24 LOADK                            R4 K12 ["Unauthenticated"]
       25 SETTABLEN                        R4 R3 16
       26 NEWTABLE                         R4 8 0
       28 LOADN                            R5 2
       29 SETTABLEKS                       R5 R4 K8 ["Unknown"]
       31 LOADN                            R5 3
       32 SETTABLEKS                       R5 R4 K9 ["InvalidArgument"]
       34 LOADN                            R5 5
       35 SETTABLEKS                       R5 R4 K10 ["NotFound"]
       37 LOADN                            R5 7
       38 SETTABLEKS                       R5 R4 K11 ["PermissionDenied"]
       40 LOADN                            R5 16
       41 SETTABLEKS                       R5 R4 K12 ["Unauthenticated"]
       43 DUPCLOSURE                       R5 K13 [PROTO_0]
       44 CAPTURE                          VAL R3
       45 DUPCLOSURE                       R6 K14 [PROTO_1]
       46 CAPTURE                          VAL R4
       47 GETIMPORT                        R7 K17 [table.freeze]
       49 DUPTABLE                         R8 K20 [{"fromResponse", "toRequest"}]
       50 SETTABLEKS                       R5 R8 K18 ["fromResponse"]
       52 SETTABLEKS                       R6 R8 K19 ["toRequest"]
       54 CALL                             R7 1 1
       55 RETURN                           R7 1
