PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Magnitude"]
        2 JUMPIFEQKN                       R3 K1 [0] ; [+3]
        4 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
        6 RETURN                           R0 1
        7 FASTCALL1                        MATH_RAD R2 ; [+3]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K4 [math.rad]
       11 CALL                             R3 1 1
       12 FASTCALL1                        MATH_SIN R3 ; [+3]
       13 MOVE                             R5 R3
       14 GETIMPORT                        R4 K6 [math.sin]
       16 CALL                             R4 1 1
       17 FASTCALL1                        MATH_COS R3 ; [+3]
       18 MOVE                             R6 R3
       19 GETIMPORT                        R5 K8 [math.cos]
       21 CALL                             R5 1 1
       22 SUB                              R6 R0 R1
       23 GETIMPORT                        R8 K11 [Vector2.new]
       25 GETTABLEKS                       R11 R6 K12 ["X"]
       27 MUL                              R10 R11 R5
       28 GETTABLEKS                       R12 R6 K13 ["Y"]
       30 MUL                              R11 R12 R4
       31 SUB                              R9 R10 R11
       32 GETTABLEKS                       R12 R6 K13 ["Y"]
       34 MUL                              R11 R12 R5
       35 GETTABLEKS                       R13 R6 K12 ["X"]
       37 MUL                              R12 R13 R4
       38 ADD                              R10 R11 R12
       39 CALL                             R8 2 1
       40 ADD                              R7 R1 R8
       41 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 SETGLOBAL                        R0 K1 ["rotatePoint"]
        4 GETGLOBAL                        R0 K1 ["rotatePoint"]
        6 RETURN                           R0 1
