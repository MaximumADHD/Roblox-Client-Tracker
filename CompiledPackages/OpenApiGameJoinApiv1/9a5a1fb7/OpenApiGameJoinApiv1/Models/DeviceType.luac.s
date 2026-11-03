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
        3 LOADK                            R2 K2 ["OpenApiGameJoinApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 0 6
       16 LOADK                            R4 K8 ["1"]
       17 SETTABLEN                        R4 R3 1
       18 LOADK                            R4 K9 ["2"]
       19 SETTABLEN                        R4 R3 2
       20 LOADK                            R4 K10 ["3"]
       21 SETTABLEN                        R4 R3 3
       22 LOADK                            R4 K11 ["4"]
       23 SETTABLEN                        R4 R3 4
       24 LOADK                            R4 K12 ["5"]
       25 SETTABLEN                        R4 R3 5
       26 LOADK                            R4 K13 ["6"]
       27 SETTABLEN                        R4 R3 6
       28 NEWTABLE                         R4 8 0
       30 LOADN                            R5 1
       31 SETTABLEKS                       R5 R4 K8 ["1"]
       33 LOADN                            R5 2
       34 SETTABLEKS                       R5 R4 K9 ["2"]
       36 LOADN                            R5 3
       37 SETTABLEKS                       R5 R4 K10 ["3"]
       39 LOADN                            R5 4
       40 SETTABLEKS                       R5 R4 K11 ["4"]
       42 LOADN                            R5 5
       43 SETTABLEKS                       R5 R4 K12 ["5"]
       45 LOADN                            R5 6
       46 SETTABLEKS                       R5 R4 K13 ["6"]
       48 DUPCLOSURE                       R5 K14 [PROTO_0]
       49 CAPTURE                          VAL R3
       50 DUPCLOSURE                       R6 K15 [PROTO_1]
       51 CAPTURE                          VAL R4
       52 GETIMPORT                        R7 K18 [table.freeze]
       54 DUPTABLE                         R8 K21 [{"fromResponse", "toRequest"}]
       55 SETTABLEKS                       R5 R8 K19 ["fromResponse"]
       57 SETTABLEKS                       R6 R8 K20 ["toRequest"]
       59 CALL                             R7 1 1
       60 RETURN                           R7 1
