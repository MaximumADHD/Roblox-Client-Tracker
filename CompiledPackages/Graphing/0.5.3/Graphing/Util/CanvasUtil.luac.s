PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Type"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["SCALING_LINEAR"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+2]
        7 RETURN                           R0 1
        8 GETTABLEKS                       R2 R1 K0 ["Type"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K2 ["SCALING_POWER"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+10]
       15 GETTABLEKS                       R2 R1 K3 ["Power"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K4 ["signedPow"]
       20 MOVE                             R4 R0
       21 MOVE                             R5 R2
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1
       24 GETTABLEKS                       R2 R1 K0 ["Type"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K5 ["SCALING_LOGARITHMIC"]
       29 JUMPIFNOTEQ                      R2 R3 ; [+10]
       31 GETTABLEKS                       R2 R1 K6 ["Base"]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R3 R4 K7 ["log"]
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
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["SCALING_LINEAR"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+2]
        7 RETURN                           R0 1
        8 GETTABLEKS                       R2 R1 K0 ["Type"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K2 ["SCALING_POWER"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+10]
       15 GETTABLEKS                       R2 R1 K3 ["Power"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K4 ["signedPow"]
       20 MOVE                             R4 R0
       21 DIVRK                            R5 R5 K2 ["SCALING_POWER"]
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1
       24 GETTABLEKS                       R2 R1 K0 ["Type"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K6 ["SCALING_LOGARITHMIC"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["inverseLerp"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Min"]
        6 GETTABLEKS                       R2 R3 K2 ["X"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K3 ["Max"]
       11 GETTABLEKS                       R3 R4 K2 ["X"]
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R0
       15 GETUPVAL                         R6 3
       16 CALL                             R4 2 -1
       17 CALL                             R1 -1 -1
       18 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K1 ["inverseLerp"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K2 ["Min"]
        6 GETTABLEKS                       R3 R4 K3 ["Y"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K4 ["Max"]
       11 GETTABLEKS                       R4 R5 K3 ["Y"]
       13 GETUPVAL                         R5 2
       14 MOVE                             R6 R0
       15 GETUPVAL                         R7 3
       16 CALL                             R5 2 -1
       17 CALL                             R2 -1 1
       18 SUBRK                            R1 R0 K2 ["Min"]
       19 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["X"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K4 ["inverseLerp"]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K5 ["Min"]
       10 GETTABLEKS                       R5 R6 K3 ["X"]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R7 R8 K6 ["Max"]
       15 GETTABLEKS                       R6 R7 K3 ["X"]
       17 GETUPVAL                         R7 2
       18 MOVE                             R8 R3
       19 GETUPVAL                         R9 3
       20 CALL                             R7 2 -1
       21 CALL                             R4 -1 1
       22 MOVE                             R2 R4
       23 GETTABLEKS                       R4 R0 K7 ["Y"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K4 ["inverseLerp"]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R7 R8 K5 ["Min"]
       31 GETTABLEKS                       R6 R7 K7 ["Y"]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R8 R9 K6 ["Max"]
       36 GETTABLEKS                       R7 R8 K7 ["Y"]
       38 GETUPVAL                         R8 2
       39 MOVE                             R9 R4
       40 GETUPVAL                         R10 4
       41 CALL                             R8 2 -1
       42 CALL                             R5 -1 1
       43 SUBRK                            R3 R8 K5 ["Min"]
       44 CALL                             R1 2 -1
       45 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["lerp"]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K1 ["Min"]
        7 GETTABLEKS                       R3 R4 K2 ["X"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K3 ["Max"]
       12 GETTABLEKS                       R4 R5 K2 ["X"]
       14 MOVE                             R5 R0
       15 CALL                             R2 3 1
       16 GETUPVAL                         R3 3
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["lerp"]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K1 ["Min"]
        7 GETTABLEKS                       R3 R4 K2 ["Y"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K3 ["Max"]
       12 GETTABLEKS                       R4 R5 K2 ["Y"]
       14 SUBRK                            R5 R4 K0 ["lerp"]
       15 CALL                             R2 3 1
       16 GETUPVAL                         R3 3
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

PROTO_10:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["X"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K4 ["lerp"]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K5 ["Min"]
       10 GETTABLEKS                       R5 R6 K3 ["X"]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R7 R8 K6 ["Max"]
       15 GETTABLEKS                       R6 R7 K3 ["X"]
       17 MOVE                             R7 R3
       18 CALL                             R4 3 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R6 R5 K7 ["Type"]
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R7 R8 K8 ["SCALING_LINEAR"]
       25 JUMPIFNOTEQ                      R6 R7 ; [+3]
       27 MOVE                             R2 R4
       28 JUMP                             ; [+48]
       29 GETTABLEKS                       R6 R5 K7 ["Type"]
       31 GETUPVAL                         R8 3
       32 GETTABLEKS                       R7 R8 K9 ["SCALING_POWER"]
       34 JUMPIFNOTEQ                      R6 R7 ; [+11]
       36 GETTABLEKS                       R6 R5 K10 ["Power"]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R7 R8 K11 ["signedPow"]
       41 MOVE                             R8 R4
       42 DIVRK                            R9 R12 K6 ["Max"]
       43 CALL                             R7 2 1
       44 MOVE                             R2 R7
       45 JUMP                             ; [+31]
       46 GETTABLEKS                       R6 R5 K7 ["Type"]
       48 GETUPVAL                         R8 3
       49 GETTABLEKS                       R7 R8 K13 ["SCALING_LOGARITHMIC"]
       51 JUMPIFNOTEQ                      R6 R7 ; [+12]
       53 GETTABLEKS                       R6 R5 K14 ["Base"]
       55 FASTCALL2                        MATH_POW R6 R4 ; [+5]
       57 MOVE                             R8 R6
       58 MOVE                             R9 R4
       59 GETIMPORT                        R7 K17 [math.pow]
       61 CALL                             R7 2 1
       62 MOVE                             R2 R7
       63 JUMP                             ; [+13]
       64 LOADB                            R7 0
       65 LOADK                            R9 K18 ["Scaling type %* not supported"]
       66 MOVE                             R11 R5
       67 NAMECALL                         R9 R9 K19 ["format"]
       69 CALL                             R9 2 1
       70 MOVE                             R8 R9
       71 FASTCALL2                        ASSERT R7 R8 ; [+3]
       73 GETIMPORT                        R6 K21 [assert]
       75 CALL                             R6 2 0
       76 MOVE                             R2 R4
       77 GETUPVAL                         R3 4
       78 GETTABLEKS                       R4 R0 K22 ["Y"]
       80 CALL                             R3 1 -1
       81 CALL                             R1 -1 -1
       82 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["inverseLerp"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Min"]
        6 GETTABLEKS                       R2 R3 K2 ["X"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K3 ["Max"]
       11 GETTABLEKS                       R3 R4 K2 ["X"]
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R0
       15 GETUPVAL                         R6 3
       16 CALL                             R4 2 -1
       17 CALL                             R1 -1 -1
       18 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K1 ["inverseLerp"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K2 ["Min"]
        6 GETTABLEKS                       R3 R4 K3 ["Y"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K4 ["Max"]
       11 GETTABLEKS                       R4 R5 K3 ["Y"]
       13 GETUPVAL                         R5 2
       14 MOVE                             R6 R0
       15 GETUPVAL                         R7 3
       16 CALL                             R5 2 -1
       17 CALL                             R2 -1 1
       18 SUBRK                            R1 R0 K2 ["Min"]
       19 RETURN                           R1 1

PROTO_13:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["X"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K4 ["inverseLerp"]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K5 ["Min"]
       10 GETTABLEKS                       R5 R6 K3 ["X"]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R7 R8 K6 ["Max"]
       15 GETTABLEKS                       R6 R7 K3 ["X"]
       17 GETUPVAL                         R7 2
       18 MOVE                             R8 R3
       19 GETUPVAL                         R9 3
       20 CALL                             R7 2 -1
       21 CALL                             R4 -1 1
       22 MOVE                             R2 R4
       23 GETTABLEKS                       R4 R0 K7 ["Y"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K4 ["inverseLerp"]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R7 R8 K5 ["Min"]
       31 GETTABLEKS                       R6 R7 K7 ["Y"]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R8 R9 K6 ["Max"]
       36 GETTABLEKS                       R7 R8 K7 ["Y"]
       38 GETUPVAL                         R8 2
       39 MOVE                             R9 R4
       40 GETUPVAL                         R10 4
       41 CALL                             R8 2 -1
       42 CALL                             R5 -1 1
       43 SUBRK                            R3 R8 K5 ["Min"]
       44 CALL                             R1 2 -1
       45 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["lerp"]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K1 ["Min"]
        7 GETTABLEKS                       R3 R4 K2 ["X"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K3 ["Max"]
       12 GETTABLEKS                       R4 R5 K2 ["X"]
       14 MOVE                             R5 R0
       15 CALL                             R2 3 1
       16 GETUPVAL                         R3 3
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["lerp"]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K1 ["Min"]
        7 GETTABLEKS                       R3 R4 K2 ["Y"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K3 ["Max"]
       12 GETTABLEKS                       R4 R5 K2 ["Y"]
       14 SUBRK                            R5 R4 K0 ["lerp"]
       15 CALL                             R2 3 1
       16 GETUPVAL                         R3 3
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

PROTO_16:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["X"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K4 ["lerp"]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K5 ["Min"]
       10 GETTABLEKS                       R5 R6 K3 ["X"]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R7 R8 K6 ["Max"]
       15 GETTABLEKS                       R6 R7 K3 ["X"]
       17 MOVE                             R7 R3
       18 CALL                             R4 3 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R6 R5 K7 ["Type"]
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R7 R8 K8 ["SCALING_LINEAR"]
       25 JUMPIFNOTEQ                      R6 R7 ; [+3]
       27 MOVE                             R2 R4
       28 JUMP                             ; [+48]
       29 GETTABLEKS                       R6 R5 K7 ["Type"]
       31 GETUPVAL                         R8 3
       32 GETTABLEKS                       R7 R8 K9 ["SCALING_POWER"]
       34 JUMPIFNOTEQ                      R6 R7 ; [+11]
       36 GETTABLEKS                       R6 R5 K10 ["Power"]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R7 R8 K11 ["signedPow"]
       41 MOVE                             R8 R4
       42 DIVRK                            R9 R12 K6 ["Max"]
       43 CALL                             R7 2 1
       44 MOVE                             R2 R7
       45 JUMP                             ; [+31]
       46 GETTABLEKS                       R6 R5 K7 ["Type"]
       48 GETUPVAL                         R8 3
       49 GETTABLEKS                       R7 R8 K13 ["SCALING_LOGARITHMIC"]
       51 JUMPIFNOTEQ                      R6 R7 ; [+12]
       53 GETTABLEKS                       R6 R5 K14 ["Base"]
       55 FASTCALL2                        MATH_POW R6 R4 ; [+5]
       57 MOVE                             R8 R6
       58 MOVE                             R9 R4
       59 GETIMPORT                        R7 K17 [math.pow]
       61 CALL                             R7 2 1
       62 MOVE                             R2 R7
       63 JUMP                             ; [+13]
       64 LOADB                            R7 0
       65 LOADK                            R9 K18 ["Scaling type %* not supported"]
       66 MOVE                             R11 R5
       67 NAMECALL                         R9 R9 K19 ["format"]
       69 CALL                             R9 2 1
       70 MOVE                             R8 R9
       71 FASTCALL2                        ASSERT R7 R8 ; [+3]
       73 GETIMPORT                        R6 K21 [assert]
       75 CALL                             R6 2 0
       76 MOVE                             R2 R4
       77 GETUPVAL                         R3 4
       78 GETTABLEKS                       R4 R0 K22 ["Y"]
       80 CALL                             R3 1 -1
       81 CALL                             R1 -1 -1
       82 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["Min"]
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R1 K2 ["AbsolutePosition"]
       10 GETTABLEKS                       R3 R1 K3 ["AbsoluteSize"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K4 ["inverseLerp"]
       15 GETTABLEKS                       R5 R2 K5 ["X"]
       17 GETTABLEKS                       R7 R2 K5 ["X"]
       19 GETTABLEKS                       R8 R3 K5 ["X"]
       21 ADD                              R6 R7 R8
       22 GETTABLEKS                       R7 R0 K5 ["X"]
       24 CALL                             R4 3 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K4 ["inverseLerp"]
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

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["Min"]
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R1 K2 ["AbsolutePosition"]
       10 GETTABLEKS                       R3 R1 K3 ["AbsoluteSize"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K4 ["lerp"]
       15 GETTABLEKS                       R5 R2 K5 ["X"]
       17 GETTABLEKS                       R7 R2 K5 ["X"]
       19 GETTABLEKS                       R8 R3 K5 ["X"]
       21 ADD                              R6 R7 R8
       22 GETTABLEKS                       R7 R0 K5 ["X"]
       24 CALL                             R4 3 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K4 ["lerp"]
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

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [Vector2.new]
        3 GETTABLEKS                       R3 R0 K3 ["X"]
        5 GETTABLEKS                       R4 R0 K4 ["Y"]
        7 CALL                             R2 2 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_23:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 LOADB                            R3 0
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R6 R7 K0 ["Min"]
        7 GETTABLEKS                       R5 R6 K1 ["X"]
        9 SUB                              R4 R5 R2
       10 JUMPIFNOTLE                      R4 R0 ; [+11]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K2 ["Max"]
       15 GETTABLEKS                       R5 R6 K1 ["X"]
       17 ADD                              R4 R5 R2
       18 JUMPIFLE                         R0 R4 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 RETURN                           R3 1

PROTO_24:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 LOADB                            R3 0
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R6 R7 K0 ["Min"]
        7 GETTABLEKS                       R5 R6 K1 ["Y"]
        9 SUB                              R4 R5 R2
       10 JUMPIFNOTLE                      R4 R0 ; [+11]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K2 ["Max"]
       15 GETTABLEKS                       R5 R6 K1 ["Y"]
       17 ADD                              R4 R5 R2
       18 JUMPIFLE                         R0 R4 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 RETURN                           R3 1

PROTO_25:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 MOVE                             R4 R1
        3 JUMPIF                           R4 ; [+1]
        4 GETUPVAL                         R4 0
        5 LOADB                            R2 0
        6 GETUPVAL                         R8 1
        7 GETTABLEKS                       R7 R8 K1 ["Min"]
        9 GETTABLEKS                       R6 R7 K0 ["X"]
       11 SUB                              R5 R6 R4
       12 JUMPIFNOTLE                      R5 R3 ; [+11]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R7 R8 K2 ["Max"]
       17 GETTABLEKS                       R6 R7 K0 ["X"]
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
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R7 R8 K1 ["Min"]
       34 GETTABLEKS                       R6 R7 K3 ["Y"]
       36 SUB                              R5 R6 R4
       37 JUMPIFNOTLE                      R5 R3 ; [+11]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R7 R8 K2 ["Max"]
       42 GETTABLEKS                       R6 R7 K3 ["Y"]
       44 ADD                              R5 R6 R4
       45 JUMPIFLE                         R3 R5 ; [+2]
       47 LOADB                            R2 0 +1
       48 LOADB                            R2 1
       49 RETURN                           R2 1

PROTO_26:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 LOADB                            R3 0
        4 GETTABLEKS                       R5 R0 K0 ["Min"]
        6 GETTABLEKS                       R4 R5 K1 ["X"]
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R7 R8 K2 ["Max"]
       11 GETTABLEKS                       R6 R7 K1 ["X"]
       13 ADD                              R5 R6 R2
       14 JUMPIFNOTLE                      R4 R5 ; [+41]
       16 LOADB                            R3 0
       17 GETTABLEKS                       R5 R0 K2 ["Max"]
       19 GETTABLEKS                       R4 R5 K1 ["X"]
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R7 R8 K0 ["Min"]
       24 GETTABLEKS                       R6 R7 K1 ["X"]
       26 SUB                              R5 R6 R2
       27 JUMPIFNOTLE                      R5 R4 ; [+28]
       29 LOADB                            R3 0
       30 GETTABLEKS                       R5 R0 K0 ["Min"]
       32 GETTABLEKS                       R4 R5 K3 ["Y"]
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K2 ["Max"]
       37 GETTABLEKS                       R6 R7 K3 ["Y"]
       39 ADD                              R5 R6 R2
       40 JUMPIFNOTLE                      R4 R5 ; [+15]
       42 GETTABLEKS                       R5 R0 K2 ["Max"]
       44 GETTABLEKS                       R4 R5 K3 ["Y"]
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R7 R8 K0 ["Min"]
       49 GETTABLEKS                       R6 R7 K3 ["Y"]
       51 SUB                              R5 R6 R2
       52 JUMPIFLE                         R5 R4 ; [+2]
       54 LOADB                            R3 0 +1
       55 LOADB                            R3 1
       56 RETURN                           R3 1

PROTO_27:
        0 ORK                              R5 R5 K0 [0.0001]
        1 FASTCALL2K                       ASSERT R5 K1 ; [+5]
        3 MOVE                             R7 R5
        4 LOADK                            R8 K1 ["defaultEpsilon was nil"]
        5 GETIMPORT                        R6 K3 [assert]
        7 CALL                             R6 2 0
        8 DUPCLOSURE                       R6 K4 [PROTO_0]
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 DUPCLOSURE                       R7 K5 [PROTO_1]
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 GETIMPORT                        R8 K8 [Rect.new]
       16 MOVE                             R9 R6
       17 GETTABLEKS                       R11 R0 K9 ["Min"]
       19 GETTABLEKS                       R10 R11 K10 ["X"]
       21 MOVE                             R11 R2
       22 CALL                             R9 2 1
       23 MOVE                             R10 R6
       24 GETTABLEKS                       R12 R0 K9 ["Min"]
       26 GETTABLEKS                       R11 R12 K11 ["Y"]
       28 MOVE                             R12 R3
       29 CALL                             R10 2 1
       30 MOVE                             R11 R6
       31 GETTABLEKS                       R13 R0 K12 ["Max"]
       33 GETTABLEKS                       R12 R13 K10 ["X"]
       35 MOVE                             R13 R2
       36 CALL                             R11 2 1
       37 MOVE                             R12 R6
       38 GETTABLEKS                       R14 R0 K12 ["Max"]
       40 GETTABLEKS                       R13 R14 K11 ["Y"]
       42 MOVE                             R14 R3
       43 CALL                             R12 2 -1
       44 CALL                             R8 -1 1
       45 GETIMPORT                        R9 K8 [Rect.new]
       47 MOVE                             R10 R6
       48 GETTABLEKS                       R12 R1 K9 ["Min"]
       50 GETTABLEKS                       R11 R12 K10 ["X"]
       52 MOVE                             R12 R2
       53 CALL                             R10 2 1
       54 MOVE                             R11 R6
       55 GETTABLEKS                       R13 R1 K9 ["Min"]
       57 GETTABLEKS                       R12 R13 K11 ["Y"]
       59 MOVE                             R13 R3
       60 CALL                             R11 2 1
       61 MOVE                             R12 R6
       62 GETTABLEKS                       R14 R1 K12 ["Max"]
       64 GETTABLEKS                       R13 R14 K10 ["X"]
       66 MOVE                             R14 R2
       67 CALL                             R12 2 1
       68 MOVE                             R13 R6
       69 GETTABLEKS                       R15 R1 K12 ["Max"]
       71 GETTABLEKS                       R14 R15 K11 ["Y"]
       73 MOVE                             R15 R3
       74 CALL                             R13 2 -1
       75 CALL                             R9 -1 1
       76 NEWCLOSURE                       R10 P2
       77 CAPTURE                          VAL R4
       78 NEWCLOSURE                       R11 P3
       79 CAPTURE                          VAL R0
       80 NEWCLOSURE                       R12 P4
       81 CAPTURE                          VAL R1
       82 NEWCLOSURE                       R13 P5
       83 CAPTURE                          UPVAL U1
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R2
       87 NEWCLOSURE                       R14 P6
       88 CAPTURE                          UPVAL U1
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R3
       92 NEWCLOSURE                       R15 P7
       93 CAPTURE                          UPVAL U1
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R3
       98 NEWCLOSURE                       R16 P8
       99 CAPTURE                          VAL R7
      100 CAPTURE                          UPVAL U1
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R2
      103 NEWCLOSURE                       R17 P9
      104 CAPTURE                          VAL R7
      105 CAPTURE                          UPVAL U1
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R3
      108 NEWCLOSURE                       R18 P10
      109 CAPTURE                          UPVAL U1
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R2
      112 CAPTURE                          UPVAL U0
      113 CAPTURE                          VAL R17
      114 NEWCLOSURE                       R19 P11
      115 CAPTURE                          UPVAL U1
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R2
      119 NEWCLOSURE                       R20 P12
      120 CAPTURE                          UPVAL U1
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R3
      124 NEWCLOSURE                       R21 P13
      125 CAPTURE                          UPVAL U1
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R3
      130 NEWCLOSURE                       R22 P14
      131 CAPTURE                          VAL R7
      132 CAPTURE                          UPVAL U1
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R2
      135 NEWCLOSURE                       R23 P15
      136 CAPTURE                          VAL R7
      137 CAPTURE                          UPVAL U1
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R3
      140 NEWCLOSURE                       R24 P16
      141 CAPTURE                          UPVAL U1
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R2
      144 CAPTURE                          UPVAL U0
      145 CAPTURE                          VAL R23
      146 NEWCLOSURE                       R25 P17
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R1
      149 CAPTURE                          UPVAL U1
      150 NEWCLOSURE                       R26 P18
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R1
      153 CAPTURE                          UPVAL U1
      154 NEWCLOSURE                       R27 P19
      155 CAPTURE                          VAL R24
      156 CAPTURE                          VAL R25
      157 NEWCLOSURE                       R28 P20
      158 CAPTURE                          VAL R26
      159 CAPTURE                          VAL R21
      160 NEWCLOSURE                       R29 P21
      161 CAPTURE                          VAL R25
      162 NEWCLOSURE                       R30 P22
      163 CAPTURE                          VAL R24
      164 CAPTURE                          VAL R29
      165 NEWCLOSURE                       R31 P23
      166 CAPTURE                          REF R5
      167 CAPTURE                          VAL R1
      168 NEWCLOSURE                       R32 P24
      169 CAPTURE                          REF R5
      170 CAPTURE                          VAL R1
      171 NEWCLOSURE                       R33 P25
      172 CAPTURE                          REF R5
      173 CAPTURE                          VAL R1
      174 NEWCLOSURE                       R34 P26
      175 CAPTURE                          REF R5
      176 CAPTURE                          VAL R1
      177 DUPTABLE                         R35 K38 [{"getViewport", "getGraphRect", "getViewportRect", "plotToGraph", "plotToGraphX", "plotToGraphY", "graphToPlot", "graphToPlotX", "graphToPlotY", "plotToView", "plotToViewX", "plotToViewY", "viewToPlot", "viewToPlotX", "viewToPlotY", "absToView", "viewToAbs", "absToPlot", "plotToAbs", "mouseToView", "mouseToPlot", "isPointInViewport", "isPointInViewportX", "isPointInViewportY", "isRectInViewport"}]
      178 SETTABLEKS                       R10 R35 K13 ["getViewport"]
      180 SETTABLEKS                       R11 R35 K14 ["getGraphRect"]
      182 SETTABLEKS                       R12 R35 K15 ["getViewportRect"]
      184 SETTABLEKS                       R15 R35 K16 ["plotToGraph"]
      186 SETTABLEKS                       R13 R35 K17 ["plotToGraphX"]
      188 SETTABLEKS                       R14 R35 K18 ["plotToGraphY"]
      190 SETTABLEKS                       R18 R35 K19 ["graphToPlot"]
      192 SETTABLEKS                       R16 R35 K20 ["graphToPlotX"]
      194 SETTABLEKS                       R17 R35 K21 ["graphToPlotY"]
      196 SETTABLEKS                       R21 R35 K22 ["plotToView"]
      198 SETTABLEKS                       R19 R35 K23 ["plotToViewX"]
      200 SETTABLEKS                       R20 R35 K24 ["plotToViewY"]
      202 SETTABLEKS                       R24 R35 K25 ["viewToPlot"]
      204 SETTABLEKS                       R22 R35 K26 ["viewToPlotX"]
      206 SETTABLEKS                       R23 R35 K27 ["viewToPlotY"]
      208 SETTABLEKS                       R25 R35 K28 ["absToView"]
      210 SETTABLEKS                       R26 R35 K29 ["viewToAbs"]
      212 SETTABLEKS                       R27 R35 K30 ["absToPlot"]
      214 SETTABLEKS                       R28 R35 K31 ["plotToAbs"]
      216 SETTABLEKS                       R29 R35 K32 ["mouseToView"]
      218 SETTABLEKS                       R30 R35 K33 ["mouseToPlot"]
      220 SETTABLEKS                       R33 R35 K34 ["isPointInViewport"]
      222 SETTABLEKS                       R31 R35 K35 ["isPointInViewportX"]
      224 SETTABLEKS                       R32 R35 K36 ["isPointInViewportY"]
      226 SETTABLEKS                       R34 R35 K37 ["isRectInViewport"]
      228 CLOSEUPVALS                      R5
      229 RETURN                           R35 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createFunctions"]
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
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K4 ["LINEAR_SCALING"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K4 ["LINEAR_SCALING"]
       23 GETUPVAL                         R5 1
       24 CALL                             R0 5 -1
       25 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["MathUtil"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 4 0
       21 DUPTABLE                         R4 K10 [{"current"}]
       22 LOADNIL                          R5
       23 SETTABLEKS                       R5 R4 K9 ["current"]
       25 DUPTABLE                         R5 K12 [{"Type"}]
       26 LOADK                            R6 K13 ["Linear"]
       27 SETTABLEKS                       R6 R5 K11 ["Type"]
       29 SETTABLEKS                       R5 R3 K14 ["LINEAR_SCALING"]
       31 DUPCLOSURE                       R5 K15 [PROTO_27]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R5 R3 K16 ["createFunctions"]
       36 DUPCLOSURE                       R5 K17 [PROTO_28]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R5 R3 K18 ["createDefaultFunctions"]
       41 RETURN                           R3 1
