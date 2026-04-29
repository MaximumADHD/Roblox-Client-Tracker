PROTO_0:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        GETMETATABLE R3 ; [+2]
        2 GETIMPORT                        R2 K1 [getmetatable]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R1 R2 K2 ["__tostring"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETUPVAL                         R1 0
        4 MOVE                             R2 R0
        5 GETVARARGS                       R3 -1
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R3 1
        8 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K1 [setmetatable]
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

PROTO_2:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["new"]
        4 GETVARARGS                       R2 -1
        5 CALL                             R1 -1 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+7]
        3 GETUPVAL                         R2 1
        4 FASTCALL1                        TOSTRING R2 ; [+2]
        5 GETIMPORT                        R1 K1 [tostring]
        7 CALL                             R1 1 1
        8 RETURN                           R1 1
        9 GETUPVAL                         R3 2
       10 FASTCALL1                        GETMETATABLE R3 ; [+2]
       11 GETIMPORT                        R2 K3 [getmetatable]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R1 R2 K4 ["__tostring"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_4:
        0 NEWTABLE                         R3 4 0
        2 SETTABLEKS                       R3 R3 K0 ["__index"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R4 R3 K1 ["__tostring"]
        8 NEWTABLE                         R4 4 0
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R3
       13 SETTABLEKS                       R5 R3 K2 ["new"]
       15 FASTCALL1                        GETMETATABLE R0 ; [+3]
       16 MOVE                             R7 R0
       17 GETIMPORT                        R6 K4 [getmetatable]
       19 CALL                             R6 1 1
       20 FASTCALL1                        TYPEOF R6 ; [+2]
       21 GETIMPORT                        R5 K6 [typeof]
       23 CALL                             R5 1 1
       24 JUMPIFNOTEQKS                    R5 K7 ["table"] ; [+13]
       26 FASTCALL1                        GETMETATABLE R0 ; [+3]
       27 MOVE                             R7 R0
       28 GETIMPORT                        R6 K4 [getmetatable]
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R5 R6 K8 ["__call"]
       33 JUMPIFNOT                        R5 ; [+4]
       34 NEWCLOSURE                       R5 P2
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R5 R4 K8 ["__call"]
       38 SETTABLEKS                       R0 R4 K0 ["__index"]
       40 NEWCLOSURE                       R5 P3
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R5 R4 K1 ["__tostring"]
       46 FASTCALL2                        SETMETATABLE R3 R4 ; [+5]
       48 MOVE                             R6 R3
       49 MOVE                             R7 R4
       50 GETIMPORT                        R5 K10 [setmetatable]
       52 CALL                             R5 2 0
       53 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_4]
        2 RETURN                           R0 1
