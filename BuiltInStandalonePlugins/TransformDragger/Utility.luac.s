PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 LOADNIL                          R1
        7 GETIMPORT                        R2 K1 [ipairs]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 3
       11 FORGPREP_INEXT                   R2
       12 JUMPIF                           R1 ; [+2]
       13 MOVE                             R1 R6
       14 JUMP                             ; [+7]
       15 JUMPIFNOT                        R6 ; [+6]
       16 JUMPIFNOTLT                      R6 R1 ; [+3]
       18 MOVE                             R7 R6
       19 JUMPIF                           R7 ; [+1]
       20 MOVE                             R7 R1
       21 MOVE                             R1 R7
       22 FORGLOOP                         R2 2 [inext] ; [-11]
       24 RETURN                           R1 1

PROTO_1:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 LOADNIL                          R1
        7 GETIMPORT                        R2 K1 [ipairs]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 3
       11 FORGPREP_INEXT                   R2
       12 JUMPIF                           R1 ; [+2]
       13 MOVE                             R1 R6
       14 JUMP                             ; [+7]
       15 JUMPIFNOT                        R6 ; [+6]
       16 JUMPIFNOTLT                      R1 R6 ; [+3]
       18 MOVE                             R7 R6
       19 JUMPIF                           R7 ; [+1]
       20 MOVE                             R7 R1
       21 MOVE                             R1 R7
       22 FORGLOOP                         R2 2 [inext] ; [-11]
       24 RETURN                           R1 1

PROTO_2:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 LOADNIL                          R1
        7 GETIMPORT                        R2 K1 [ipairs]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 3
       11 FORGPREP_INEXT                   R2
       12 JUMPIF                           R1 ; [+2]
       13 MOVE                             R1 R6
       14 JUMP                             ; [+27]
       15 JUMPIFNOT                        R6 ; [+26]
       16 GETGLOBAL                        R8 K2 ["min"]
       18 GETTABLEKS                       R9 R1 K3 ["x"]
       20 GETTABLEKS                       R10 R6 K3 ["x"]
       22 CALL                             R8 2 1
       23 GETGLOBAL                        R9 K2 ["min"]
       25 GETTABLEKS                       R10 R1 K4 ["y"]
       27 GETTABLEKS                       R11 R6 K4 ["y"]
       29 CALL                             R9 2 1
       30 GETGLOBAL                        R10 K2 ["min"]
       32 GETTABLEKS                       R11 R1 K5 ["z"]
       34 GETTABLEKS                       R12 R6 K5 ["z"]
       36 CALL                             R10 2 -1
       37 FASTCALL                         VECTOR ; [+2]
       38 GETIMPORT                        R7 K8 [Vector3.new]
       40 CALL                             R7 -1 1
       41 MOVE                             R1 R7
       42 FORGLOOP                         R2 2 [inext] ; [-31]
       44 RETURN                           R1 1

PROTO_3:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 LOADNIL                          R1
        7 GETIMPORT                        R2 K1 [ipairs]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 3
       11 FORGPREP_INEXT                   R2
       12 JUMPIF                           R1 ; [+2]
       13 MOVE                             R1 R6
       14 JUMP                             ; [+27]
       15 JUMPIFNOT                        R6 ; [+26]
       16 GETGLOBAL                        R8 K2 ["max"]
       18 GETTABLEKS                       R9 R1 K3 ["x"]
       20 GETTABLEKS                       R10 R6 K3 ["x"]
       22 CALL                             R8 2 1
       23 GETGLOBAL                        R9 K2 ["max"]
       25 GETTABLEKS                       R10 R1 K4 ["y"]
       27 GETTABLEKS                       R11 R6 K4 ["y"]
       29 CALL                             R9 2 1
       30 GETGLOBAL                        R10 K2 ["max"]
       32 GETTABLEKS                       R11 R1 K5 ["z"]
       34 GETTABLEKS                       R12 R6 K5 ["z"]
       36 CALL                             R10 2 -1
       37 FASTCALL                         VECTOR ; [+2]
       38 GETIMPORT                        R7 K8 [Vector3.new]
       40 CALL                             R7 -1 1
       41 MOVE                             R1 R7
       42 FORGLOOP                         R2 2 [inext] ; [-31]
       44 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["x"]
        2 FASTCALL1                        MATH_ABS R3 ; [+2]
        3 GETIMPORT                        R2 K3 [math.abs]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R4 R0 K4 ["y"]
        8 FASTCALL1                        MATH_ABS R4 ; [+2]
        9 GETIMPORT                        R3 K3 [math.abs]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R5 R0 K5 ["z"]
       14 FASTCALL1                        MATH_ABS R5 ; [+2]
       15 GETIMPORT                        R4 K3 [math.abs]
       17 CALL                             R4 1 1
       18 FASTCALL                         VECTOR ; [+2]
       19 GETIMPORT                        R1 K8 [Vector3.new]
       21 CALL                             R1 3 1
       22 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R7 R1 K0 ["x"]
        2 GETTABLEKS                       R8 R0 K0 ["x"]
        4 SUB                              R6 R7 R8
        5 FASTCALL2K                       MATH_POW R6 K1 ; [+4]
        7 LOADK                            R7 K1 [2]
        8 GETIMPORT                        R5 K4 [math.pow]
       10 CALL                             R5 2 1
       11 GETTABLEKS                       R8 R1 K5 ["y"]
       13 GETTABLEKS                       R9 R0 K5 ["y"]
       15 SUB                              R7 R8 R9
       16 FASTCALL2K                       MATH_POW R7 K1 ; [+4]
       18 LOADK                            R8 K1 [2]
       19 GETIMPORT                        R6 K4 [math.pow]
       21 CALL                             R6 2 1
       22 ADD                              R4 R5 R6
       23 GETTABLEKS                       R7 R1 K6 ["z"]
       25 GETTABLEKS                       R8 R0 K6 ["z"]
       27 SUB                              R6 R7 R8
       28 FASTCALL2K                       MATH_POW R6 K1 ; [+4]
       30 LOADK                            R7 K1 [2]
       31 GETIMPORT                        R5 K4 [math.pow]
       33 CALL                             R5 2 1
       34 ADD                              R3 R4 R5
       35 FASTCALL1                        MATH_SQRT R3 ; [+2]
       36 GETIMPORT                        R2 K8 [math.sqrt]
       38 CALL                             R2 1 1
       39 RETURN                           R2 1

PROTO_6:
        0 JUMPIF                           R1 ; [+1]
        1 LOADN                            R1 0
        2 GETTABLEKS                       R4 R0 K0 ["X"]
        4 GETTABLEKS                       R5 R0 K0 ["X"]
        6 JUMPIFNOTEQ                      R4 R5 ; [+4]
        8 GETTABLEKS                       R3 R0 K0 ["X"]
       10 JUMPIF                           R3 ; [+1]
       11 MOVE                             R3 R1
       12 GETTABLEKS                       R5 R0 K1 ["Y"]
       14 GETTABLEKS                       R6 R0 K1 ["Y"]
       16 JUMPIFNOTEQ                      R5 R6 ; [+4]
       18 GETTABLEKS                       R4 R0 K1 ["Y"]
       20 JUMPIF                           R4 ; [+1]
       21 MOVE                             R4 R1
       22 GETTABLEKS                       R6 R0 K2 ["Z"]
       24 GETTABLEKS                       R7 R0 K2 ["Z"]
       26 JUMPIFNOTEQ                      R6 R7 ; [+4]
       28 GETTABLEKS                       R5 R0 K2 ["Z"]
       30 JUMPIF                           R5 ; [+1]
       31 MOVE                             R5 R1
       32 FASTCALL                         VECTOR ; [+2]
       33 GETIMPORT                        R2 K5 [Vector3.new]
       35 CALL                             R2 3 1
       36 RETURN                           R2 1

PROTO_7:
        0 FASTCALL2                        MATH_MIN R0 R2 ; [+5]
        2 MOVE                             R5 R0
        3 MOVE                             R6 R2
        4 GETIMPORT                        R4 K2 [math.min]
        6 CALL                             R4 2 1
        7 FASTCALL2                        MATH_MAX R4 R1 ; [+4]
        9 MOVE                             R5 R1
       10 GETIMPORT                        R3 K4 [math.max]
       12 CALL                             R3 2 1
       13 RETURN                           R3 1

PROTO_8:
        0 SUB                              R4 R2 R0
        1 SUB                              R5 R1 R0
        2 DIV                              R3 R4 R5
        3 FASTCALL2K                       MATH_MIN R3 K0 ; [+5]
        5 MOVE                             R6 R3
        6 LOADK                            R7 K0 [1]
        7 GETIMPORT                        R5 K3 [math.min]
        9 CALL                             R5 2 1
       10 FASTCALL2K                       MATH_MAX R5 K4 ; [+4]
       12 LOADK                            R6 K4 [0]
       13 GETIMPORT                        R4 K6 [math.max]
       15 CALL                             R4 2 1
       16 MOVE                             R2 R4
       17 MUL                              R4 R2 R2
       18 LOADN                            R7 2
       19 MUL                              R6 R7 R2
       20 SUBRK                            R5 R7 K6 [math.max]
       21 MUL                              R3 R4 R5
       22 RETURN                           R3 1

PROTO_9:
        0 GETIMPORT                        R2 K2 [Color3.new]
        2 GETTABLEKS                       R4 R0 K3 ["r"]
        4 MUL                              R3 R4 R1
        5 GETTABLEKS                       R5 R0 K4 ["g"]
        7 MUL                              R4 R5 R1
        8 GETTABLEKS                       R6 R0 K5 ["b"]
       10 MUL                              R5 R6 R1
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1

PROTO_10:
        0 GETIMPORT                        R2 K2 [Color3.new]
        2 GETTABLEKS                       R4 R0 K3 ["r"]
        4 GETTABLEKS                       R5 R1 K3 ["r"]
        6 ADD                              R3 R4 R5
        7 GETTABLEKS                       R5 R0 K4 ["g"]
        9 GETTABLEKS                       R6 R1 K4 ["g"]
       11 ADD                              R4 R5 R6
       12 GETTABLEKS                       R6 R0 K5 ["b"]
       14 GETTABLEKS                       R7 R1 K5 ["b"]
       16 ADD                              R5 R6 R7
       17 CALL                             R2 3 -1
       18 RETURN                           R2 -1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 JUMPIFEQKN                       R2 K1 [0] ; [+4]
        4 GETTABLEKS                       R1 R0 K0 ["X"]
        6 JUMPIF                           R1 ; [+15]
        7 GETTABLEKS                       R2 R0 K2 ["Y"]
        9 JUMPIFEQKN                       R2 K1 [0] ; [+4]
       11 GETTABLEKS                       R1 R0 K2 ["Y"]
       13 JUMPIF                           R1 ; [+8]
       14 GETTABLEKS                       R2 R0 K3 ["Z"]
       16 JUMPIFEQKN                       R2 K1 [0] ; [+4]
       18 GETTABLEKS                       R1 R0 K3 ["Z"]
       20 JUMPIF                           R1 ; [+1]
       21 LOADN                            R1 0
       22 FASTCALL3                        VECTOR R1 R1 R1
       24 MOVE                             R3 R1
       25 MOVE                             R4 R1
       26 MOVE                             R5 R1
       27 GETIMPORT                        R2 K6 [Vector3.new]
       29 CALL                             R2 3 1
       30 RETURN                           R2 1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETTABLEKS                       R6 R0 K0 ["X"]
        4 JUMPIFNOTEQKN                    R6 K1 [0] ; [+3]
        6 LOADN                            R5 1
        7 JUMP                             ; [+2]
        8 GETTABLEKS                       R5 R0 K0 ["X"]
       10 FASTCALL1                        MATH_ABS R5 ; [+2]
       11 GETIMPORT                        R4 K4 [math.abs]
       13 CALL                             R4 1 1
       14 DIV                              R2 R3 R4
       15 GETTABLEKS                       R4 R0 K5 ["Y"]
       17 GETTABLEKS                       R7 R0 K5 ["Y"]
       19 JUMPIFNOTEQKN                    R7 K1 [0] ; [+3]
       21 LOADN                            R6 1
       22 JUMP                             ; [+2]
       23 GETTABLEKS                       R6 R0 K5 ["Y"]
       25 FASTCALL1                        MATH_ABS R6 ; [+2]
       26 GETIMPORT                        R5 K4 [math.abs]
       28 CALL                             R5 1 1
       29 DIV                              R3 R4 R5
       30 GETTABLEKS                       R5 R0 K6 ["Z"]
       32 GETTABLEKS                       R8 R0 K6 ["Z"]
       34 JUMPIFNOTEQKN                    R8 K1 [0] ; [+3]
       36 LOADN                            R7 1
       37 JUMP                             ; [+2]
       38 GETTABLEKS                       R7 R0 K6 ["Z"]
       40 FASTCALL1                        MATH_ABS R7 ; [+2]
       41 GETIMPORT                        R6 K4 [math.abs]
       43 CALL                             R6 1 1
       44 DIV                              R4 R5 R6
       45 FASTCALL                         VECTOR ; [+2]
       46 GETIMPORT                        R1 K9 [Vector3.new]
       48 CALL                             R1 3 1
       49 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 SETGLOBAL                        R0 K1 ["min"]
        4 DUPCLOSURE                       R0 K2 [PROTO_1]
        5 SETGLOBAL                        R0 K3 ["max"]
        7 DUPCLOSURE                       R0 K4 [PROTO_2]
        8 SETGLOBAL                        R0 K5 ["minVector3"]
       10 DUPCLOSURE                       R0 K6 [PROTO_3]
       11 SETGLOBAL                        R0 K7 ["maxVector3"]
       13 DUPCLOSURE                       R0 K8 [PROTO_4]
       14 SETGLOBAL                        R0 K9 ["absVector3"]
       16 DUPCLOSURE                       R0 K10 [PROTO_5]
       17 SETGLOBAL                        R0 K11 ["distanceVector3"]
       19 DUPCLOSURE                       R0 K12 [PROTO_6]
       20 SETGLOBAL                        R0 K13 ["cleanVector3"]
       22 DUPCLOSURE                       R0 K14 [PROTO_7]
       23 DUPCLOSURE                       R1 K15 [PROTO_8]
       24 DUPCLOSURE                       R2 K16 [PROTO_9]
       25 DUPCLOSURE                       R3 K17 [PROTO_10]
       26 DUPCLOSURE                       R4 K18 [PROTO_11]
       27 DUPCLOSURE                       R5 K19 [PROTO_12]
       28 NEWTABLE                         R6 16 0
       30 GETGLOBAL                        R7 K1 ["min"]
       32 SETTABLEKS                       R7 R6 K1 ["min"]
       34 GETGLOBAL                        R7 K3 ["max"]
       36 SETTABLEKS                       R7 R6 K3 ["max"]
       38 GETGLOBAL                        R7 K5 ["minVector3"]
       40 SETTABLEKS                       R7 R6 K5 ["minVector3"]
       42 GETGLOBAL                        R7 K7 ["maxVector3"]
       44 SETTABLEKS                       R7 R6 K7 ["maxVector3"]
       46 GETGLOBAL                        R7 K9 ["absVector3"]
       48 SETTABLEKS                       R7 R6 K9 ["absVector3"]
       50 GETGLOBAL                        R7 K11 ["distanceVector3"]
       52 SETTABLEKS                       R7 R6 K11 ["distanceVector3"]
       54 GETGLOBAL                        R7 K13 ["cleanVector3"]
       56 SETTABLEKS                       R7 R6 K13 ["cleanVector3"]
       58 SETTABLEKS                       R5 R6 K20 ["getVector3Sign"]
       60 SETTABLEKS                       R4 R6 K21 ["customToSymmetric"]
       62 SETTABLEKS                       R1 R6 K22 ["smoothstep"]
       64 SETTABLEKS                       R2 R6 K23 ["colorMultiply"]
       66 SETTABLEKS                       R3 R6 K24 ["colorAdd"]
       68 RETURN                           R6 1
