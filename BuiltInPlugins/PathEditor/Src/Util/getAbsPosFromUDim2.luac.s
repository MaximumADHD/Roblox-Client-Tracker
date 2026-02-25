PROTO_0:
        0 ORK                              R4 R3 K0 [0]
        1 GETIMPORT                        R5 K3 [Vector2.new]
        3 GETTABLEKS                       R8 R0 K4 ["X"]
        5 GETTABLEKS                       R7 R8 K5 ["Offset"]
        7 GETTABLEKS                       R10 R0 K4 ["X"]
        9 GETTABLEKS                       R9 R10 K6 ["Scale"]
       11 GETTABLEKS                       R10 R2 K4 ["X"]
       13 MUL                              R8 R9 R10
       14 ADD                              R6 R7 R8
       15 GETTABLEKS                       R9 R0 K7 ["Y"]
       17 GETTABLEKS                       R8 R9 K5 ["Offset"]
       19 GETTABLEKS                       R11 R0 K7 ["Y"]
       21 GETTABLEKS                       R10 R11 K6 ["Scale"]
       23 GETTABLEKS                       R11 R2 K7 ["Y"]
       25 MUL                              R9 R10 R11
       26 ADD                              R7 R8 R9
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 0
       29 MOVE                             R7 R5
       30 MULK                             R8 R2 K8 [0.5]
       31 MOVE                             R9 R4
       32 CALL                             R6 3 1
       33 MOVE                             R5 R6
       34 ADD                              R6 R5 R1
       35 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["rotatePoint"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 SETGLOBAL                        R1 K7 ["getAbsPosFromUDim2"]
       14 GETGLOBAL                        R1 K7 ["getAbsPosFromUDim2"]
       16 RETURN                           R1 1
