PROTO_0:
        0 GETTABLEKS                       R5 R0 K0 ["X"]
        2 GETTABLEKS                       R6 R1 K0 ["X"]
        4 SUB                              R4 R5 R6
        5 LOADN                            R5 0
        6 GETTABLEKS                       R6 R2 K0 ["X"]
        8 FASTCALL                         MATH_CLAMP ; [+2]
        9 GETIMPORT                        R3 K3 [math.clamp]
       11 CALL                             R3 3 1
       12 GETTABLEKS                       R6 R0 K4 ["Y"]
       14 GETTABLEKS                       R7 R1 K4 ["Y"]
       16 SUB                              R5 R6 R7
       17 LOADN                            R6 0
       18 GETTABLEKS                       R7 R2 K4 ["Y"]
       20 FASTCALL                         MATH_CLAMP ; [+2]
       21 GETIMPORT                        R4 K3 [math.clamp]
       23 CALL                             R4 3 1
       24 GETTABLEKS                       R6 R2 K0 ["X"]
       26 DIV                              R5 R3 R6
       27 GETTABLEKS                       R8 R2 K4 ["Y"]
       29 DIV                              R7 R4 R8
       30 SUBRK                            R6 K5 [1] R7
       31 RETURN                           R5 2

PROTO_1:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 1
        2 SETTABLEKS                       R4 R3 K0 ["current"]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R0
        6 CALL                             R3 1 0
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R1
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 3
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 GETIMPORT                        R3 K3 [Color3.fromHSV]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R1
       17 MOVE                             R6 R2
       18 CALL                             R3 3 1
       19 GETUPVAL                         R4 4
       20 MOVE                             R5 R3
       21 CALL                             R4 1 0
       22 GETUPVAL                         R4 0
       23 LOADB                            R5 0
       24 SETTABLEKS                       R5 R4 K0 ["current"]
       26 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R4
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 JUMPIF                           R1 ; [+12]
        7 NAMECALL                         R1 R0 K1 ["ToHSV"]
        9 CALL                             R1 1 3
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R1
       12 CALL                             R4 1 0
       13 GETUPVAL                         R4 3
       14 MOVE                             R5 R2
       15 CALL                             R4 1 0
       16 GETUPVAL                         R4 4
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R3
        5 CAPTURE                          VAL R4
        6 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 DUPCLOSURE                       R2 K2 [PROTO_4]
        4 DUPTABLE                         R3 K6 [{"calculateSVFromPosition", "createHSVUpdateHandler", "createColorInputChangeHandler"}]
        5 SETTABLEKS                       R0 R3 K3 ["calculateSVFromPosition"]
        7 SETTABLEKS                       R1 R3 K4 ["createHSVUpdateHandler"]
        9 SETTABLEKS                       R2 R3 K5 ["createColorInputChangeHandler"]
       11 RETURN                           R3 1
