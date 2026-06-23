PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Type"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["SCALING_LINEAR"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+2]
        7 RETURN                           R0 1
        8 GETTABLEKS                       R2 R1 K0 ["Type"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["SCALING_POWER"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+10]
       15 GETTABLEKS                       R2 R1 K3 ["Power"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["signedPow"]
       20 MOVE                             R4 R0
       21 MOVE                             R5 R2
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1
       24 GETTABLEKS                       R2 R1 K0 ["Type"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K5 ["SCALING_LOGARITHMIC"]
       29 JUMPIFNOTEQ                      R2 R3 ; [+10]
       31 GETTABLEKS                       R2 R1 K6 ["Base"]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K7 ["log"]
       36 MOVE                             R4 R2
       37 MOVE                             R5 R0
       38 CALL                             R3 2 -1
       39 RETURN                           R3 -1
       40 LOADB                            R3 0
       41 LOADK                            R5 K8 ["Scaling type %* not supported"]
       42 MOVE                             R7 R1
       43 NAMECALL                         R5 R5 K9 ["format"]
       45 CALL                             R5 2 1
       46 MOVE                             R4 R5
       47 FASTCALL2                        ASSERT R3 R4 ; [+3]
       49 GETIMPORT                        R2 K11 [assert]
       51 CALL                             R2 2 0
       52 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["Type"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["SCALING_LINEAR"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+2]
        7 RETURN                           R0 1
        8 GETTABLEKS                       R2 R1 K0 ["Type"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["SCALING_POWER"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+10]
       15 GETTABLEKS                       R2 R1 K3 ["Power"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["signedPow"]
       20 MOVE                             R4 R0
       21 DIVRK                            R5 R5 K2 ["SCALING_POWER"]
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1
       24 GETTABLEKS                       R2 R1 K0 ["Type"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K6 ["SCALING_LOGARITHMIC"]
       29 JUMPIFNOTEQ                      R2 R3 ; [+11]
       31 GETTABLEKS                       R2 R1 K7 ["Base"]
       33 FASTCALL2                        MATH_POW R2 R0 ; [+5]
       35 MOVE                             R4 R2
       36 MOVE                             R5 R0
       37 GETIMPORT                        R3 K10 [math.pow]
       39 CALL                             R3 2 1
       40 RETURN                           R3 1
       41 LOADB                            R3 0
       42 LOADK                            R5 K11 ["Scaling type %* not supported"]
       43 MOVE                             R7 R1
       44 NAMECALL                         R5 R5 K12 ["format"]
       46 CALL                             R5 2 1
       47 MOVE                             R4 R5
       48 FASTCALL2                        ASSERT R3 R4 ; [+3]
       50 GETIMPORT                        R2 K14 [assert]
       52 CALL                             R2 2 0
       53 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inverseLerp"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Min"]
        6 GETTABLEKS                       R2 R2 K2 ["X"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["Max"]
       11 GETTABLEKS                       R3 R3 K2 ["X"]
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R0
       15 GETUPVAL                         R6 3
       16 CALL                             R4 2 -1
       17 CALL                             R1 -1 1
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K4 ["Direction"]
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R3 R3 K5 ["DIRECTION_REVERSED"]
       24 JUMPIFNOTEQ                      R2 R3 ; [+2]
       26 SUBRK                            R1 R6 K1 ["Min"]
       27 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inverseLerp"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Min"]
        6 GETTABLEKS                       R2 R2 K2 ["Y"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["Max"]
       11 GETTABLEKS                       R3 R3 K2 ["Y"]
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R0
       15 GETUPVAL                         R6 3
       16 CALL                             R4 2 -1
       17 CALL                             R1 -1 1
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K4 ["Direction"]
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R3 R3 K5 ["DIRECTION_FORWARD"]
       24 JUMPIFEQ                         R2 R3 ; [+2]
       26 SUBRK                            R1 R6 K1 ["Min"]
       27 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["X"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K4 ["inverseLerp"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K5 ["Min"]
       10 GETTABLEKS                       R5 R5 K3 ["X"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K6 ["Max"]
       15 GETTABLEKS                       R6 R6 K3 ["X"]
       17 GETUPVAL                         R7 2
       18 MOVE                             R8 R3
       19 GETUPVAL                         R9 3
       20 CALL                             R7 2 -1
       21 CALL                             R4 -1 1
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K7 ["Direction"]
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K8 ["DIRECTION_REVERSED"]
       28 JUMPIFNOTEQ                      R5 R6 ; [+2]
       30 SUBRK                            R4 R9 K4 ["inverseLerp"]
       31 MOVE                             R2 R4
       32 GETTABLEKS                       R4 R0 K10 ["Y"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K4 ["inverseLerp"]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K5 ["Min"]
       40 GETTABLEKS                       R6 R6 K10 ["Y"]
       42 GETUPVAL                         R7 1
       43 GETTABLEKS                       R7 R7 K6 ["Max"]
       45 GETTABLEKS                       R7 R7 K10 ["Y"]
       47 GETUPVAL                         R8 2
       48 MOVE                             R9 R4
       49 GETUPVAL                         R10 5
       50 CALL                             R8 2 -1
       51 CALL                             R5 -1 1
       52 GETUPVAL                         R6 5
       53 GETTABLEKS                       R6 R6 K7 ["Direction"]
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R7 R7 K11 ["DIRECTION_FORWARD"]
       58 JUMPIFEQ                         R6 R7 ; [+2]
       60 SUBRK                            R5 R9 K5 ["Min"]
       61 MOVE                             R3 R5
       62 CALL                             R1 2 -1
       63 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Direction"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["DIRECTION_REVERSED"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+2]
        8 SUBRK                            R0 R2 K0 ["Direction"]
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K3 ["lerp"]
       13 GETUPVAL                         R3 4
       14 GETTABLEKS                       R3 R3 K4 ["Min"]
       16 GETTABLEKS                       R3 R3 K5 ["X"]
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K6 ["Max"]
       21 GETTABLEKS                       R4 R4 K5 ["X"]
       23 MOVE                             R5 R0
       24 CALL                             R2 3 1
       25 GETUPVAL                         R3 0
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Direction"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["DIRECTION_FORWARD"]
        6 JUMPIFEQ                         R1 R2 ; [+2]
        8 SUBRK                            R0 R2 K0 ["Direction"]
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K3 ["lerp"]
       13 GETUPVAL                         R3 4
       14 GETTABLEKS                       R3 R3 K4 ["Min"]
       16 GETTABLEKS                       R3 R3 K5 ["Y"]
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K6 ["Max"]
       21 GETTABLEKS                       R4 R4 K5 ["Y"]
       23 MOVE                             R5 R0
       24 CALL                             R2 3 1
       25 GETUPVAL                         R3 0
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_12:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["X"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K4 ["Direction"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K5 ["DIRECTION_REVERSED"]
       10 JUMPIFNOTEQ                      R4 R5 ; [+2]
       12 SUBRK                            R3 R6 K3 ["X"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K7 ["lerp"]
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K8 ["Min"]
       19 GETTABLEKS                       R5 R5 K3 ["X"]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K9 ["Max"]
       24 GETTABLEKS                       R6 R6 K3 ["X"]
       26 MOVE                             R7 R3
       27 CALL                             R4 3 1
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R6 R5 K10 ["Type"]
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R7 R7 K11 ["SCALING_LINEAR"]
       34 JUMPIFNOTEQ                      R6 R7 ; [+3]
       36 MOVE                             R2 R4
       37 JUMP                             ; [+48]
       38 GETTABLEKS                       R6 R5 K10 ["Type"]
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K12 ["SCALING_POWER"]
       43 JUMPIFNOTEQ                      R6 R7 ; [+11]
       45 GETTABLEKS                       R6 R5 K13 ["Power"]
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R7 R7 K14 ["signedPow"]
       50 MOVE                             R8 R4
       51 DIVRK                            R9 R6 K6 [1]
       52 CALL                             R7 2 1
       53 MOVE                             R2 R7
       54 JUMP                             ; [+31]
       55 GETTABLEKS                       R6 R5 K10 ["Type"]
       57 GETUPVAL                         R7 1
       58 GETTABLEKS                       R7 R7 K15 ["SCALING_LOGARITHMIC"]
       60 JUMPIFNOTEQ                      R6 R7 ; [+12]
       62 GETTABLEKS                       R6 R5 K16 ["Base"]
       64 FASTCALL2                        MATH_POW R6 R4 ; [+5]
       66 MOVE                             R8 R6
       67 MOVE                             R9 R4
       68 GETIMPORT                        R7 K19 [math.pow]
       70 CALL                             R7 2 1
       71 MOVE                             R2 R7
       72 JUMP                             ; [+13]
       73 LOADB                            R7 0
       74 LOADK                            R9 K20 ["Scaling type %* not supported"]
       75 MOVE                             R11 R5
       76 NAMECALL                         R9 R9 K21 ["format"]
       78 CALL                             R9 2 1
       79 MOVE                             R8 R9
       80 FASTCALL2                        ASSERT R7 R8 ; [+3]
       82 GETIMPORT                        R6 K23 [assert]
       84 CALL                             R6 2 0
       85 MOVE                             R2 R4
       86 GETUPVAL                         R3 4
       87 GETTABLEKS                       R4 R0 K24 ["Y"]
       89 CALL                             R3 1 -1
       90 CALL                             R1 -1 -1
       91 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inverseLerp"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Min"]
        6 GETTABLEKS                       R2 R2 K2 ["X"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["Max"]
       11 GETTABLEKS                       R3 R3 K2 ["X"]
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R0
       15 GETUPVAL                         R6 3
       16 CALL                             R4 2 -1
       17 CALL                             R1 -1 1
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K4 ["Direction"]
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R3 R3 K5 ["DIRECTION_REVERSED"]
       24 JUMPIFNOTEQ                      R2 R3 ; [+2]
       26 SUBRK                            R1 R6 K1 ["Min"]
       27 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inverseLerp"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Min"]
        6 GETTABLEKS                       R2 R2 K2 ["Y"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["Max"]
       11 GETTABLEKS                       R3 R3 K2 ["Y"]
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R0
       15 GETUPVAL                         R6 3
       16 CALL                             R4 2 -1
       17 CALL                             R1 -1 1
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K4 ["Direction"]
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R3 R3 K5 ["DIRECTION_FORWARD"]
       24 JUMPIFEQ                         R2 R3 ; [+2]
       26 SUBRK                            R1 R6 K1 ["Min"]
       27 RETURN                           R1 1

PROTO_15:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["X"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K4 ["inverseLerp"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K5 ["Min"]
       10 GETTABLEKS                       R5 R5 K3 ["X"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K6 ["Max"]
       15 GETTABLEKS                       R6 R6 K3 ["X"]
       17 GETUPVAL                         R7 2
       18 MOVE                             R8 R3
       19 GETUPVAL                         R9 3
       20 CALL                             R7 2 -1
       21 CALL                             R4 -1 1
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K7 ["Direction"]
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K8 ["DIRECTION_REVERSED"]
       28 JUMPIFNOTEQ                      R5 R6 ; [+2]
       30 SUBRK                            R4 R9 K4 ["inverseLerp"]
       31 MOVE                             R2 R4
       32 GETTABLEKS                       R4 R0 K10 ["Y"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K4 ["inverseLerp"]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K5 ["Min"]
       40 GETTABLEKS                       R6 R6 K10 ["Y"]
       42 GETUPVAL                         R7 1
       43 GETTABLEKS                       R7 R7 K6 ["Max"]
       45 GETTABLEKS                       R7 R7 K10 ["Y"]
       47 GETUPVAL                         R8 2
       48 MOVE                             R9 R4
       49 GETUPVAL                         R10 5
       50 CALL                             R8 2 -1
       51 CALL                             R5 -1 1
       52 GETUPVAL                         R6 5
       53 GETTABLEKS                       R6 R6 K7 ["Direction"]
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R7 R7 K11 ["DIRECTION_FORWARD"]
       58 JUMPIFEQ                         R6 R7 ; [+2]
       60 SUBRK                            R5 R9 K5 ["Min"]
       61 MOVE                             R3 R5
       62 CALL                             R1 2 -1
       63 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Direction"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["DIRECTION_REVERSED"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+2]
        8 SUBRK                            R0 R2 K0 ["Direction"]
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K3 ["lerp"]
       13 GETUPVAL                         R3 4
       14 GETTABLEKS                       R3 R3 K4 ["Min"]
       16 GETTABLEKS                       R3 R3 K5 ["X"]
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K6 ["Max"]
       21 GETTABLEKS                       R4 R4 K5 ["X"]
       23 MOVE                             R5 R0
       24 CALL                             R2 3 1
       25 GETUPVAL                         R3 0
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Direction"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["DIRECTION_FORWARD"]
        6 JUMPIFEQ                         R1 R2 ; [+2]
        8 SUBRK                            R0 R2 K0 ["Direction"]
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K3 ["lerp"]
       13 GETUPVAL                         R3 4
       14 GETTABLEKS                       R3 R3 K4 ["Min"]
       16 GETTABLEKS                       R3 R3 K5 ["Y"]
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K6 ["Max"]
       21 GETTABLEKS                       R4 R4 K5 ["Y"]
       23 MOVE                             R5 R0
       24 CALL                             R2 3 1
       25 GETUPVAL                         R3 0
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_18:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["X"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K4 ["Direction"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K5 ["DIRECTION_REVERSED"]
       10 JUMPIFNOTEQ                      R4 R5 ; [+2]
       12 SUBRK                            R3 R6 K3 ["X"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K7 ["lerp"]
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K8 ["Min"]
       19 GETTABLEKS                       R5 R5 K3 ["X"]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K9 ["Max"]
       24 GETTABLEKS                       R6 R6 K3 ["X"]
       26 MOVE                             R7 R3
       27 CALL                             R4 3 1
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R6 R5 K10 ["Type"]
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R7 R7 K11 ["SCALING_LINEAR"]
       34 JUMPIFNOTEQ                      R6 R7 ; [+3]
       36 MOVE                             R2 R4
       37 JUMP                             ; [+48]
       38 GETTABLEKS                       R6 R5 K10 ["Type"]
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K12 ["SCALING_POWER"]
       43 JUMPIFNOTEQ                      R6 R7 ; [+11]
       45 GETTABLEKS                       R6 R5 K13 ["Power"]
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R7 R7 K14 ["signedPow"]
       50 MOVE                             R8 R4
       51 DIVRK                            R9 R6 K6 [1]
       52 CALL                             R7 2 1
       53 MOVE                             R2 R7
       54 JUMP                             ; [+31]
       55 GETTABLEKS                       R6 R5 K10 ["Type"]
       57 GETUPVAL                         R7 1
       58 GETTABLEKS                       R7 R7 K15 ["SCALING_LOGARITHMIC"]
       60 JUMPIFNOTEQ                      R6 R7 ; [+12]
       62 GETTABLEKS                       R6 R5 K16 ["Base"]
       64 FASTCALL2                        MATH_POW R6 R4 ; [+5]
       66 MOVE                             R8 R6
       67 MOVE                             R9 R4
       68 GETIMPORT                        R7 K19 [math.pow]
       70 CALL                             R7 2 1
       71 MOVE                             R2 R7
       72 JUMP                             ; [+13]
       73 LOADB                            R7 0
       74 LOADK                            R9 K20 ["Scaling type %* not supported"]
       75 MOVE                             R11 R5
       76 NAMECALL                         R9 R9 K21 ["format"]
       78 CALL                             R9 2 1
       79 MOVE                             R8 R9
       80 FASTCALL2                        ASSERT R7 R8 ; [+3]
       82 GETIMPORT                        R6 K23 [assert]
       84 CALL                             R6 2 0
       85 MOVE                             R2 R4
       86 GETUPVAL                         R3 4
       87 GETTABLEKS                       R4 R0 K24 ["Y"]
       89 CALL                             R3 1 -1
       90 CALL                             R1 -1 -1
       91 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Min"]
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R1 K2 ["AbsolutePosition"]
       10 GETTABLEKS                       R3 R1 K3 ["AbsoluteSize"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K4 ["inverseLerp"]
       15 GETTABLEKS                       R5 R2 K5 ["X"]
       17 GETTABLEKS                       R7 R2 K5 ["X"]
       19 GETTABLEKS                       R8 R3 K5 ["X"]
       21 ADD                              R6 R7 R8
       22 GETTABLEKS                       R7 R0 K5 ["X"]
       24 CALL                             R4 3 1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K4 ["inverseLerp"]
       28 GETTABLEKS                       R6 R2 K6 ["Y"]
       30 GETTABLEKS                       R8 R2 K6 ["Y"]
       32 GETTABLEKS                       R9 R3 K6 ["Y"]
       34 ADD                              R7 R8 R9
       35 GETTABLEKS                       R8 R0 K6 ["Y"]
       37 CALL                             R5 3 1
       38 GETIMPORT                        R6 K9 [Vector2.new]
       40 MOVE                             R7 R4
       41 MOVE                             R8 R5
       42 CALL                             R6 2 -1
       43 RETURN                           R6 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Min"]
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R1 K2 ["AbsolutePosition"]
       10 GETTABLEKS                       R3 R1 K3 ["AbsoluteSize"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K4 ["lerp"]
       15 GETTABLEKS                       R5 R2 K5 ["X"]
       17 GETTABLEKS                       R7 R2 K5 ["X"]
       19 GETTABLEKS                       R8 R3 K5 ["X"]
       21 ADD                              R6 R7 R8
       22 GETTABLEKS                       R7 R0 K5 ["X"]
       24 CALL                             R4 3 1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K4 ["lerp"]
       28 GETTABLEKS                       R6 R2 K5 ["X"]
       30 GETTABLEKS                       R8 R2 K5 ["X"]
       32 GETTABLEKS                       R9 R3 K5 ["X"]
       34 ADD                              R7 R8 R9
       35 GETTABLEKS                       R8 R0 K6 ["Y"]
       37 CALL                             R5 3 1
       38 GETIMPORT                        R6 K9 [Vector2.new]
       40 MOVE                             R7 R4
       41 MOVE                             R8 R5
       42 CALL                             R6 2 -1
       43 RETURN                           R6 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [Vector2.new]
        3 GETTABLEKS                       R3 R0 K3 ["X"]
        5 GETTABLEKS                       R4 R0 K4 ["Y"]
        7 CALL                             R2 2 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_25:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 LOADB                            R3 0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["Min"]
        7 GETTABLEKS                       R5 R5 K1 ["X"]
        9 SUB                              R4 R5 R2
       10 JUMPIFNOTLE                      R4 R0 ; [+11]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K2 ["Max"]
       15 GETTABLEKS                       R5 R5 K1 ["X"]
       17 ADD                              R4 R5 R2
       18 JUMPIFLE                         R0 R4 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 RETURN                           R3 1

PROTO_26:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 LOADB                            R3 0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["Min"]
        7 GETTABLEKS                       R5 R5 K1 ["Y"]
        9 SUB                              R4 R5 R2
       10 JUMPIFNOTLE                      R4 R0 ; [+11]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K2 ["Max"]
       15 GETTABLEKS                       R5 R5 K1 ["Y"]
       17 ADD                              R4 R5 R2
       18 JUMPIFLE                         R0 R4 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 RETURN                           R3 1

PROTO_27:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 MOVE                             R4 R1
        3 JUMPIF                           R4 ; [+1]
        4 GETUPVAL                         R4 0
        5 LOADB                            R2 0
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K1 ["Min"]
        9 GETTABLEKS                       R6 R6 K0 ["X"]
       11 SUB                              R5 R6 R4
       12 JUMPIFNOTLE                      R5 R3 ; [+11]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K2 ["Max"]
       17 GETTABLEKS                       R6 R6 K0 ["X"]
       19 ADD                              R5 R6 R4
       20 JUMPIFLE                         R3 R5 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 JUMPIFNOT                        R2 ; [+24]
       25 GETTABLEKS                       R3 R0 K3 ["Y"]
       27 MOVE                             R4 R1
       28 JUMPIF                           R4 ; [+1]
       29 GETUPVAL                         R4 0
       30 LOADB                            R2 0
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K1 ["Min"]
       34 GETTABLEKS                       R6 R6 K3 ["Y"]
       36 SUB                              R5 R6 R4
       37 JUMPIFNOTLE                      R5 R3 ; [+11]
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K2 ["Max"]
       42 GETTABLEKS                       R6 R6 K3 ["Y"]
       44 ADD                              R5 R6 R4
       45 JUMPIFLE                         R3 R5 ; [+2]
       47 LOADB                            R2 0 +1
       48 LOADB                            R2 1
       49 RETURN                           R2 1

PROTO_28:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 LOADB                            R3 0
        4 GETTABLEKS                       R4 R0 K0 ["Min"]
        6 GETTABLEKS                       R4 R4 K1 ["X"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K2 ["Max"]
       11 GETTABLEKS                       R6 R6 K1 ["X"]
       13 ADD                              R5 R6 R2
       14 JUMPIFNOTLE                      R4 R5 ; [+41]
       16 LOADB                            R3 0
       17 GETTABLEKS                       R4 R0 K2 ["Max"]
       19 GETTABLEKS                       R4 R4 K1 ["X"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K0 ["Min"]
       24 GETTABLEKS                       R6 R6 K1 ["X"]
       26 SUB                              R5 R6 R2
       27 JUMPIFNOTLE                      R5 R4 ; [+28]
       29 LOADB                            R3 0
       30 GETTABLEKS                       R4 R0 K0 ["Min"]
       32 GETTABLEKS                       R4 R4 K3 ["Y"]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K2 ["Max"]
       37 GETTABLEKS                       R6 R6 K3 ["Y"]
       39 ADD                              R5 R6 R2
       40 JUMPIFNOTLE                      R4 R5 ; [+15]
       42 GETTABLEKS                       R4 R0 K2 ["Max"]
       44 GETTABLEKS                       R4 R4 K3 ["Y"]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K0 ["Min"]
       49 GETTABLEKS                       R6 R6 K3 ["Y"]
       51 SUB                              R5 R6 R2
       52 JUMPIFLE                         R5 R4 ; [+2]
       54 LOADB                            R3 0 +1
       55 LOADB                            R3 1
       56 RETURN                           R3 1

PROTO_29:
        0 MOVE                             R6 R3
        1 JUMPIF                           R6 ; [+3]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K0 ["DEFAULT_XSCALING"]
        5 MOVE                             R3 R6
        6 MOVE                             R6 R4
        7 JUMPIF                           R6 ; [+3]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K1 ["DEFAULT_YSCALING"]
       11 MOVE                             R4 R6
       12 FASTCALL2K                       ASSERT R3 K2 ; [+5]
       14 MOVE                             R7 R3
       15 LOADK                            R8 K2 ["xAxisScaling was nil"]
       16 GETIMPORT                        R6 K4 [assert]
       18 CALL                             R6 2 0
       19 FASTCALL2K                       ASSERT R4 K5 ; [+5]
       21 MOVE                             R7 R4
       22 LOADK                            R8 K5 ["yAxisScaling was nil"]
       23 GETIMPORT                        R6 K4 [assert]
       25 CALL                             R6 2 0
       26 ORK                              R5 R5 K6 [0.0001]
       27 FASTCALL2K                       ASSERT R5 K7 ; [+5]
       29 MOVE                             R7 R5
       30 LOADK                            R8 K7 ["defaultEpsilon was nil"]
       31 GETIMPORT                        R6 K4 [assert]
       33 CALL                             R6 2 0
       34 DUPCLOSURE                       R6 K8 [PROTO_0]
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U2
       37 DUPCLOSURE                       R7 K9 [PROTO_1]
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U2
       40 GETIMPORT                        R8 K12 [Rect.new]
       42 MOVE                             R9 R6
       43 GETTABLEKS                       R10 R0 K13 ["Min"]
       45 GETTABLEKS                       R10 R10 K14 ["X"]
       47 MOVE                             R11 R3
       48 CALL                             R9 2 1
       49 MOVE                             R10 R6
       50 GETTABLEKS                       R11 R0 K13 ["Min"]
       52 GETTABLEKS                       R11 R11 K15 ["Y"]
       54 MOVE                             R12 R4
       55 CALL                             R10 2 1
       56 MOVE                             R11 R6
       57 GETTABLEKS                       R12 R0 K16 ["Max"]
       59 GETTABLEKS                       R12 R12 K14 ["X"]
       61 MOVE                             R13 R3
       62 CALL                             R11 2 1
       63 MOVE                             R12 R6
       64 GETTABLEKS                       R13 R0 K16 ["Max"]
       66 GETTABLEKS                       R13 R13 K15 ["Y"]
       68 MOVE                             R14 R4
       69 CALL                             R12 2 -1
       70 CALL                             R8 -1 1
       71 GETIMPORT                        R9 K12 [Rect.new]
       73 MOVE                             R10 R6
       74 GETTABLEKS                       R11 R1 K13 ["Min"]
       76 GETTABLEKS                       R11 R11 K14 ["X"]
       78 MOVE                             R12 R3
       79 CALL                             R10 2 1
       80 MOVE                             R11 R6
       81 GETTABLEKS                       R12 R1 K13 ["Min"]
       83 GETTABLEKS                       R12 R12 K15 ["Y"]
       85 MOVE                             R13 R4
       86 CALL                             R11 2 1
       87 MOVE                             R12 R6
       88 GETTABLEKS                       R13 R1 K16 ["Max"]
       90 GETTABLEKS                       R13 R13 K14 ["X"]
       92 MOVE                             R14 R3
       93 CALL                             R12 2 1
       94 MOVE                             R13 R6
       95 GETTABLEKS                       R14 R1 K16 ["Max"]
       97 GETTABLEKS                       R14 R14 K15 ["Y"]
       99 MOVE                             R15 R4
      100 CALL                             R13 2 -1
      101 CALL                             R9 -1 1
      102 NEWCLOSURE                       R10 P2
      103 CAPTURE                          VAL R2
      104 NEWCLOSURE                       R11 P3
      105 CAPTURE                          VAL R0
      106 NEWCLOSURE                       R12 P4
      107 CAPTURE                          VAL R1
      108 NEWCLOSURE                       R13 P5
      109 CAPTURE                          REF R3
      110 NEWCLOSURE                       R14 P6
      111 CAPTURE                          REF R4
      112 NEWCLOSURE                       R15 P7
      113 CAPTURE                          UPVAL U2
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R6
      116 CAPTURE                          REF R3
      117 CAPTURE                          UPVAL U1
      118 NEWCLOSURE                       R16 P8
      119 CAPTURE                          UPVAL U2
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R6
      122 CAPTURE                          REF R4
      123 CAPTURE                          UPVAL U1
      124 NEWCLOSURE                       R17 P9
      125 CAPTURE                          UPVAL U2
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R6
      128 CAPTURE                          REF R3
      129 CAPTURE                          UPVAL U1
      130 CAPTURE                          REF R4
      131 NEWCLOSURE                       R18 P10
      132 CAPTURE                          REF R3
      133 CAPTURE                          UPVAL U1
      134 CAPTURE                          VAL R7
      135 CAPTURE                          UPVAL U2
      136 CAPTURE                          VAL R8
      137 NEWCLOSURE                       R19 P11
      138 CAPTURE                          REF R4
      139 CAPTURE                          UPVAL U1
      140 CAPTURE                          VAL R7
      141 CAPTURE                          UPVAL U2
      142 CAPTURE                          VAL R8
      143 NEWCLOSURE                       R20 P12
      144 CAPTURE                          REF R3
      145 CAPTURE                          UPVAL U1
      146 CAPTURE                          UPVAL U2
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R19
      149 NEWCLOSURE                       R21 P13
      150 CAPTURE                          UPVAL U2
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R6
      153 CAPTURE                          REF R3
      154 CAPTURE                          UPVAL U1
      155 NEWCLOSURE                       R22 P14
      156 CAPTURE                          UPVAL U2
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R6
      159 CAPTURE                          REF R4
      160 CAPTURE                          UPVAL U1
      161 NEWCLOSURE                       R23 P15
      162 CAPTURE                          UPVAL U2
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R6
      165 CAPTURE                          REF R3
      166 CAPTURE                          UPVAL U1
      167 CAPTURE                          REF R4
      168 NEWCLOSURE                       R24 P16
      169 CAPTURE                          REF R3
      170 CAPTURE                          UPVAL U1
      171 CAPTURE                          VAL R7
      172 CAPTURE                          UPVAL U2
      173 CAPTURE                          VAL R9
      174 NEWCLOSURE                       R25 P17
      175 CAPTURE                          REF R4
      176 CAPTURE                          UPVAL U1
      177 CAPTURE                          VAL R7
      178 CAPTURE                          UPVAL U2
      179 CAPTURE                          VAL R9
      180 NEWCLOSURE                       R26 P18
      181 CAPTURE                          REF R3
      182 CAPTURE                          UPVAL U1
      183 CAPTURE                          UPVAL U2
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R25
      186 NEWCLOSURE                       R27 P19
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R1
      189 CAPTURE                          UPVAL U2
      190 NEWCLOSURE                       R28 P20
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R1
      193 CAPTURE                          UPVAL U2
      194 NEWCLOSURE                       R29 P21
      195 CAPTURE                          VAL R26
      196 CAPTURE                          VAL R27
      197 NEWCLOSURE                       R30 P22
      198 CAPTURE                          VAL R28
      199 CAPTURE                          VAL R23
      200 NEWCLOSURE                       R31 P23
      201 CAPTURE                          VAL R27
      202 NEWCLOSURE                       R32 P24
      203 CAPTURE                          VAL R26
      204 CAPTURE                          VAL R31
      205 NEWCLOSURE                       R33 P25
      206 CAPTURE                          REF R5
      207 CAPTURE                          VAL R1
      208 NEWCLOSURE                       R34 P26
      209 CAPTURE                          REF R5
      210 CAPTURE                          VAL R1
      211 NEWCLOSURE                       R35 P27
      212 CAPTURE                          REF R5
      213 CAPTURE                          VAL R1
      214 NEWCLOSURE                       R36 P28
      215 CAPTURE                          REF R5
      216 CAPTURE                          VAL R1
      217 DUPTABLE                         R37 K45 [{"getViewport", "getGraphRect", "getViewportRect", "getXAxisScaling", "getYAxisScaling", "plotToGraph", "plotToGraphX", "plotToGraphY", "graphToPlot", "graphToPlotX", "graphToPlotY", "plotToView", "plotToViewX", "plotToViewY", "viewToPlot", "viewToPlotX", "viewToPlotY", "absToView", "viewToAbs", "absToPlot", "plotToAbs", "mouseToView", "mouseToPlot", "isPointInViewport", "isPointInViewportX", "isPointInViewportY", "isRectInViewport", "viewportRectGetter"}]
      218 SETTABLEKS                       R10 R37 K17 ["getViewport"]
      220 SETTABLEKS                       R11 R37 K18 ["getGraphRect"]
      222 SETTABLEKS                       R12 R37 K19 ["getViewportRect"]
      224 SETTABLEKS                       R13 R37 K20 ["getXAxisScaling"]
      226 SETTABLEKS                       R14 R37 K21 ["getYAxisScaling"]
      228 SETTABLEKS                       R17 R37 K22 ["plotToGraph"]
      230 SETTABLEKS                       R15 R37 K23 ["plotToGraphX"]
      232 SETTABLEKS                       R16 R37 K24 ["plotToGraphY"]
      234 SETTABLEKS                       R20 R37 K25 ["graphToPlot"]
      236 SETTABLEKS                       R18 R37 K26 ["graphToPlotX"]
      238 SETTABLEKS                       R19 R37 K27 ["graphToPlotY"]
      240 SETTABLEKS                       R23 R37 K28 ["plotToView"]
      242 SETTABLEKS                       R21 R37 K29 ["plotToViewX"]
      244 SETTABLEKS                       R22 R37 K30 ["plotToViewY"]
      246 SETTABLEKS                       R26 R37 K31 ["viewToPlot"]
      248 SETTABLEKS                       R24 R37 K32 ["viewToPlotX"]
      250 SETTABLEKS                       R25 R37 K33 ["viewToPlotY"]
      252 SETTABLEKS                       R27 R37 K34 ["absToView"]
      254 SETTABLEKS                       R28 R37 K35 ["viewToAbs"]
      256 SETTABLEKS                       R29 R37 K36 ["absToPlot"]
      258 SETTABLEKS                       R30 R37 K37 ["plotToAbs"]
      260 SETTABLEKS                       R31 R37 K38 ["mouseToView"]
      262 SETTABLEKS                       R32 R37 K39 ["mouseToPlot"]
      264 SETTABLEKS                       R35 R37 K40 ["isPointInViewport"]
      266 SETTABLEKS                       R33 R37 K41 ["isPointInViewportX"]
      268 SETTABLEKS                       R34 R37 K42 ["isPointInViewportY"]
      270 SETTABLEKS                       R36 R37 K43 ["isRectInViewport"]
      272 GETUPVAL                         R38 3
      273 SETTABLEKS                       R38 R37 K44 ["viewportRectGetter"]
      275 CLOSEUPVALS                      R3
      276 RETURN                           R37 1

PROTO_30:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["createFunctions"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 GETUPVAL                         R8 1
        6 MOVE                             R9 R2
        7 MOVE                             R10 R3
        8 MOVE                             R11 R4
        9 CALL                             R5 6 1
       10 MOVE                             R6 R5
       11 LOADNIL                          R7
       12 LOADNIL                          R8
       13 FORGPREP                         R6
       14 JUMPIFEQKS                       R9 K1 ["viewportRectGetter"] ; [+3]
       16 GETUPVAL                         R11 2
       17 SETTABLE                         R10 R11 R9
       18 FORGLOOP                         R6 2 ; [-5]
       20 GETUPVAL                         R6 3
       21 MOVE                             R7 R1
       22 CALL                             R6 1 0
       23 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createSignal"]
        3 GETIMPORT                        R2 K3 [Rect.new]
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 LOADN                            R5 1
        8 LOADN                            R6 1
        9 CALL                             R2 4 -1
       10 CALL                             R1 -1 2
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["createFunctions"]
       14 GETIMPORT                        R4 K3 [Rect.new]
       16 LOADN                            R5 0
       17 LOADN                            R6 0
       18 LOADN                            R7 1
       19 LOADN                            R8 1
       20 CALL                             R4 4 1
       21 GETIMPORT                        R5 K3 [Rect.new]
       23 LOADN                            R6 0
       24 LOADN                            R7 0
       25 LOADN                            R8 1
       26 LOADN                            R9 1
       27 CALL                             R5 4 1
       28 MOVE                             R6 R0
       29 CALL                             R3 3 1
       30 SETTABLEKS                       R1 R3 K5 ["viewportRectGetter"]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 RETURN                           R3 2

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createFunctions"]
        3 GETIMPORT                        R1 K3 [Rect.new]
        5 LOADN                            R2 0
        6 LOADN                            R3 0
        7 LOADN                            R4 1
        8 LOADN                            R5 1
        9 CALL                             R1 4 1
       10 GETIMPORT                        R2 K3 [Rect.new]
       12 LOADN                            R3 0
       13 LOADN                            R4 0
       14 LOADN                            R5 1
       15 LOADN                            R6 1
       16 CALL                             R2 4 1
       17 GETUPVAL                         R3 1
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Signals"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["MathUtil"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Types"]
       25 CALL                             R4 1 1
       26 NEWTABLE                         R5 8 0
       28 GETTABLEKS                       R6 R2 K11 ["createSignal"]
       30 GETIMPORT                        R7 K14 [Rect.new]
       32 LOADN                            R8 0
       33 LOADN                            R9 0
       34 LOADN                            R10 1
       35 LOADN                            R11 1
       36 CALL                             R7 4 -1
       37 CALL                             R6 -1 1
       38 DUPTABLE                         R7 K16 [{"current"}]
       39 LOADNIL                          R8
       40 SETTABLEKS                       R8 R7 K15 ["current"]
       42 DUPTABLE                         R8 K19 [{"Type", "Direction"}]
       43 GETTABLEKS                       R9 R4 K20 ["SCALING_LINEAR"]
       45 SETTABLEKS                       R9 R8 K17 ["Type"]
       47 GETTABLEKS                       R9 R4 K21 ["DIRECTION_FORWARD"]
       49 SETTABLEKS                       R9 R8 K18 ["Direction"]
       51 SETTABLEKS                       R8 R5 K22 ["DEFAULT_XSCALING"]
       53 DUPTABLE                         R8 K19 [{"Type", "Direction"}]
       54 GETTABLEKS                       R9 R4 K20 ["SCALING_LINEAR"]
       56 SETTABLEKS                       R9 R8 K17 ["Type"]
       58 GETTABLEKS                       R9 R4 K23 ["DIRECTION_REVERSED"]
       60 SETTABLEKS                       R9 R8 K18 ["Direction"]
       62 SETTABLEKS                       R8 R5 K24 ["DEFAULT_YSCALING"]
       64 DUPCLOSURE                       R8 K25 [PROTO_29]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R6
       69 SETTABLEKS                       R8 R5 K26 ["createFunctions"]
       71 DUPCLOSURE                       R8 K27 [PROTO_31]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R5
       74 SETTABLEKS                       R8 R5 K28 ["createStableContext"]
       76 DUPCLOSURE                       R8 K29 [PROTO_32]
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R7
       79 SETTABLEKS                       R8 R5 K30 ["createDefaultFunctions"]
       81 RETURN                           R5 1
