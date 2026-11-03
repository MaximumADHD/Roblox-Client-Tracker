PROTO_0:
        0 GETUPVAL                         R6 0
        1 GETTABLE                         R5 R6 R1
        2 JUMPIFEQKNIL                     R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 GETIMPORT                        R5 K2 [string.format]
        8 LOADK                            R6 K3 ["Cannot reassign %s in context"]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R8 R1
       11 GETIMPORT                        R7 K5 [tostring]
       13 CALL                             R7 1 1
       14 CALL                             R5 2 -1
       15 FASTCALL                         ASSERT ; [+2]
       16 GETIMPORT                        R3 K7 [assert]
       18 CALL                             R3 -1 0
       19 GETUPVAL                         R3 0
       20 SETTABLE                         R2 R3 R1
       21 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 2 0
        2 NEWTABLE                         R2 0 0
        4 SETTABLEKS                       R2 R1 K0 ["__index"]
        6 JUMPIFNOT                        R0 ; [+15]
        7 GETIMPORT                        R3 K2 [pairs]
        9 FASTCALL1                        GETMETATABLE R0 ; [+3]
       10 MOVE                             R7 R0
       11 GETIMPORT                        R6 K4 [getmetatable]
       13 CALL                             R6 1 1
       14 MOVE                             R4 R6
       15 GETTABLEKS                       R4 R4 K0 ["__index"]
       17 CALL                             R3 1 3
       18 FORGPREP_NEXT                    R3
       19 SETTABLE                         R7 R2 R6
       20 FORGLOOP                         R3 2 ; [-2]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R3 R1 K5 ["__newindex"]
       26 NEWTABLE                         R4 0 0
       28 FASTCALL2                        SETMETATABLE R4 R1 ; [+4]
       30 MOVE                             R5 R1
       31 GETIMPORT                        R3 K7 [setmetatable]
       33 CALL                             R3 2 1
       34 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_1]
        4 SETTABLEKS                       R1 R0 K1 ["new"]
        6 RETURN                           R0 1
