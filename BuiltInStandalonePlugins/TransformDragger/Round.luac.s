PROTO_0:
        0 ADDK                             R2 R0 K0 [0.5]
        1 FASTCALL1                        MATH_FLOOR R2 ; [+2]
        2 GETIMPORT                        R1 K3 [math.floor]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+2]
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 1
        4 DIVK                             R3 R1 K1 [2]
        5 ADD                              R2 R0 R3
        6 MOD                              R4 R2 R1
        7 SUB                              R3 R2 R4
        8 RETURN                           R3 1

PROTO_2:
        0 GETGLOBAL                        R2 K0 ["round"]
        2 GETTABLEKS                       R3 R0 K1 ["X"]
        4 CALL                             R2 1 1
        5 GETGLOBAL                        R3 K0 ["round"]
        7 GETTABLEKS                       R4 R0 K2 ["Y"]
        9 CALL                             R3 1 1
       10 GETGLOBAL                        R4 K0 ["round"]
       12 GETTABLEKS                       R5 R0 K3 ["Z"]
       14 CALL                             R4 1 -1
       15 FASTCALL                         VECTOR ; [+2]
       16 GETIMPORT                        R1 K6 [Vector3.new]
       18 CALL                             R1 -1 1
       19 RETURN                           R1 1

PROTO_3:
        0 GETGLOBAL                        R3 K0 ["roundToNearest"]
        2 GETTABLEKS                       R4 R0 K1 ["X"]
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 GETGLOBAL                        R4 K0 ["roundToNearest"]
        8 GETTABLEKS                       R5 R0 K2 ["Y"]
       10 MOVE                             R6 R1
       11 CALL                             R4 2 1
       12 GETGLOBAL                        R5 K0 ["roundToNearest"]
       14 GETTABLEKS                       R6 R0 K3 ["Z"]
       16 MOVE                             R7 R1
       17 CALL                             R5 2 -1
       18 FASTCALL                         VECTOR ; [+2]
       19 GETIMPORT                        R2 K6 [Vector3.new]
       21 CALL                             R2 -1 1
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 SETGLOBAL                        R0 K1 ["round"]
        4 DUPCLOSURE                       R0 K2 [PROTO_1]
        5 SETGLOBAL                        R0 K3 ["roundToNearest"]
        7 DUPCLOSURE                       R0 K4 [PROTO_2]
        8 SETGLOBAL                        R0 K5 ["roundVector3"]
       10 DUPCLOSURE                       R0 K6 [PROTO_3]
       11 SETGLOBAL                        R0 K7 ["roundVector3ToNearest"]
       13 NEWTABLE                         R0 2 0
       15 GETGLOBAL                        R1 K3 ["roundToNearest"]
       17 SETTABLEKS                       R1 R0 K3 ["roundToNearest"]
       19 GETGLOBAL                        R1 K7 ["roundVector3ToNearest"]
       21 SETTABLEKS                       R1 R0 K7 ["roundVector3ToNearest"]
       23 RETURN                           R0 1
