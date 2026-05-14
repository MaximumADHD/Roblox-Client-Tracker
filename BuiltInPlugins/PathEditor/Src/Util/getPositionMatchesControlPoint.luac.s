PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADB                            R4 0
        3 RETURN                           R4 1
        4 MOVE                             R4 R3
        5 JUMPIF                           R4 ; [+1]
        6 GETUPVAL                         R4 0
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R7 R1 K0 ["Position"]
       10 SUB                              R6 R7 R0
       11 MOVE                             R7 R2
       12 CALL                             R5 2 1
       13 GETTABLEKS                       R7 R5 K1 ["Magnitude"]
       15 FASTCALL1                        MATH_ABS R7 ; [+2]
       16 GETIMPORT                        R6 K4 [math.abs]
       18 CALL                             R6 1 1
       19 JUMPIFLT                         R6 R4 ; [+2]
       21 LOADB                            R7 0 +1
       22 LOADB                            R7 1
       23 MOVE                             R8 R6
       24 RETURN                           R7 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Resources"]
       15 GETTABLEKS                       R2 R2 K7 ["Constants"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K8 ["SnapToPointEpsilon"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETIMPORT                        R4 K1 [script]
       24 GETTABLEKS                       R4 R4 K2 ["Parent"]
       26 GETTABLEKS                       R4 R4 K9 ["getVector2FromUDim2Scale"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K10 [PROTO_0]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1
