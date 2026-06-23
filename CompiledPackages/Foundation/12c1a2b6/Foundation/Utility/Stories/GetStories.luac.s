PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Name"]
        4 GETTABLE                         R0 R1 R2
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Name"]
        4 LOADK                            R4 K1 ["Provider"]
        5 CONCAT                           R2 R3 R4
        6 GETTABLE                         R0 R1 R2
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Utility"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Name"]
        6 GETTABLE                         R0 R1 R2
        7 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETIMPORT                        R7 K1 [pcall]
        8 NEWCLOSURE                       R8 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R6
       11 CALL                             R7 1 2
       12 JUMPIFNOTEQ                      R7 R0 ; [+8]
       14 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       16 MOVE                             R10 R1
       17 MOVE                             R11 R6
       18 GETIMPORT                        R9 K4 [table.insert]
       20 CALL                             R9 2 0
       21 FORGLOOP                         R2 2 ; [-16]
       23 GETUPVAL                         R2 2
       24 LOADNIL                          R3
       25 LOADNIL                          R4
       26 FORGPREP                         R2
       27 GETIMPORT                        R7 K1 [pcall]
       29 NEWCLOSURE                       R8 P1
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R6
       32 CALL                             R7 1 2
       33 JUMPIFNOTEQ                      R7 R0 ; [+8]
       35 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       37 MOVE                             R10 R1
       38 MOVE                             R11 R6
       39 GETIMPORT                        R9 K4 [table.insert]
       41 CALL                             R9 2 0
       42 FORGLOOP                         R2 2 ; [-16]
       44 GETUPVAL                         R2 3
       45 LOADNIL                          R3
       46 LOADNIL                          R4
       47 FORGPREP                         R2
       48 GETIMPORT                        R7 K1 [pcall]
       50 NEWCLOSURE                       R8 P2
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          VAL R6
       53 CALL                             R7 1 2
       54 JUMPIFNOT                        R0 ; [+9]
       55 JUMPIFNOTEQ                      R7 R0 ; [+8]
       57 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       59 MOVE                             R10 R1
       60 MOVE                             R11 R6
       61 GETIMPORT                        R9 K4 [table.insert]
       63 CALL                             R9 2 0
       64 FORGLOOP                         R2 2 ; [-17]
       66 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R2 R0 K6 ["Components"]
       13 NAMECALL                         R2 R2 K7 ["GetChildren"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R0 K8 ["Providers"]
       18 NAMECALL                         R3 R3 K7 ["GetChildren"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K9 ["Utility"]
       23 NAMECALL                         R4 R4 K7 ["GetChildren"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K10 [PROTO_3]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 RETURN                           R5 1
