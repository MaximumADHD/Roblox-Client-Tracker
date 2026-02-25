PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["Origin"]
        2 GETTABLEKS                       R5 R2 K1 ["Direction"]
        4 GETTABLEKS                       R4 R5 K2 ["Unit"]
        6 SUB                              R6 R3 R0
        7 GETTABLEKS                       R5 R6 K2 ["Unit"]
        9 MOVE                             R8 R5
       10 NAMECALL                         R6 R1 K3 ["Cross"]
       12 CALL                             R6 2 1
       13 GETTABLEKS                       R7 R6 K4 ["Magnitude"]
       15 LOADK                            R8 K5 [0.0001]
       16 JUMPIFNOTLT                      R7 R8 ; [+3]
       18 LOADB                            R7 0
       19 RETURN                           R7 1
       20 MOVE                             R10 R6
       21 NAMECALL                         R8 R1 K3 ["Cross"]
       23 CALL                             R8 2 1
       24 GETTABLEKS                       R7 R8 K2 ["Unit"]
       26 MOVE                             R10 R7
       27 NAMECALL                         R8 R4 K6 ["Dot"]
       29 CALL                             R8 2 1
       30 LOADK                            R9 K5 [0.0001]
       31 JUMPIFNOTLT                      R8 R9 ; [+3]
       33 LOADB                            R8 0
       34 RETURN                           R8 1
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R8 R9 K7 ["intersectRayPlanePoint"]
       38 MOVE                             R9 R3
       39 MOVE                             R10 R4
       40 MOVE                             R11 R0
       41 MOVE                             R12 R7
       42 CALL                             R8 4 1
       43 SUB                              R9 R8 R0
       44 MOVE                             R11 R1
       45 NAMECALL                         R9 R9 K6 ["Dot"]
       47 CALL                             R9 2 1
       48 LOADB                            R10 1
       49 MOVE                             R11 R9
       50 RETURN                           R10 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Utility"]
       11 GETTABLEKS                       R2 R3 K6 ["Math"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
