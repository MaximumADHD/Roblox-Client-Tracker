PROTO_0:
        0 GETTABLEKS                       R4 R1 K0 ["Min"]
        2 GETTABLEKS                       R5 R1 K1 ["Max"]
        4 GETTABLEKS                       R6 R2 K0 ["Min"]
        6 GETTABLEKS                       R7 R2 K1 ["Max"]
        8 JUMPIFNOTEQ                      R6 R4 ; [+2]
       10 MOVE                             R6 R0
       11 MOVE                             R4 R0
       12 FASTCALL2                        MATH_MAX R6 R4 ; [+5]
       14 MOVE                             R9 R6
       15 MOVE                             R10 R4
       16 GETIMPORT                        R8 K4 [math.max]
       18 CALL                             R8 2 1
       19 MOVE                             R6 R8
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R11 R11 K5 ["MIN_REGION_SPAN"]
       23 ADD                              R10 R4 R11
       24 FASTCALL2                        MATH_MAX R7 R10 ; [+4]
       26 MOVE                             R9 R7
       27 GETIMPORT                        R8 K4 [math.max]
       29 CALL                             R8 2 1
       30 MOVE                             R7 R8
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R11 R11 K5 ["MIN_REGION_SPAN"]
       34 ADD                              R10 R4 R11
       35 FASTCALL2                        MATH_MAX R5 R10 ; [+4]
       37 MOVE                             R9 R5
       38 GETIMPORT                        R8 K4 [math.max]
       40 CALL                             R8 2 1
       41 MOVE                             R5 R8
       42 JUMPIFNOTLT                      R3 R5 ; [+35]
       44 JUMPIFNOTEQ                      R7 R5 ; [+2]
       46 MOVE                             R7 R3
       47 MOVE                             R5 R3
       48 FASTCALL2                        MATH_MIN R7 R5 ; [+5]
       50 MOVE                             R9 R7
       51 MOVE                             R10 R5
       52 GETIMPORT                        R8 K7 [math.min]
       54 CALL                             R8 2 1
       55 MOVE                             R7 R8
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R11 R11 K5 ["MIN_REGION_SPAN"]
       59 SUB                              R10 R5 R11
       60 FASTCALL2                        MATH_MIN R6 R10 ; [+4]
       62 MOVE                             R9 R6
       63 GETIMPORT                        R8 K7 [math.min]
       65 CALL                             R8 2 1
       66 MOVE                             R6 R8
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R11 R11 K5 ["MIN_REGION_SPAN"]
       70 SUB                              R10 R5 R11
       71 FASTCALL2                        MATH_MIN R4 R10 ; [+4]
       73 MOVE                             R9 R4
       74 GETIMPORT                        R8 K7 [math.min]
       76 CALL                             R8 2 1
       77 MOVE                             R4 R8
       78 GETIMPORT                        R8 K10 [NumberRange.new]
       80 MOVE                             R9 R4
       81 MOVE                             R10 R5
       82 CALL                             R8 2 1
       83 GETIMPORT                        R9 K10 [NumberRange.new]
       85 MOVE                             R10 R6
       86 MOVE                             R11 R7
       87 CALL                             R9 2 -1
       88 RETURN                           R8 -1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["Min"]
        2 GETTABLEKS                       R4 R1 K1 ["Max"]
        4 GETTABLEKS                       R5 R2 K0 ["Min"]
        6 GETTABLEKS                       R6 R2 K1 ["Max"]
        8 JUMPIFNOTEQ                      R6 R4 ; [+2]
       10 MOVE                             R6 R0
       11 MOVE                             R4 R0
       12 FASTCALL2                        MATH_MIN R6 R4 ; [+5]
       14 MOVE                             R8 R6
       15 MOVE                             R9 R4
       16 GETIMPORT                        R7 K4 [math.min]
       18 CALL                             R7 2 1
       19 MOVE                             R6 R7
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R10 R10 K5 ["MIN_REGION_SPAN"]
       23 SUB                              R9 R4 R10
       24 FASTCALL2                        MATH_MIN R5 R9 ; [+4]
       26 MOVE                             R8 R5
       27 GETIMPORT                        R7 K4 [math.min]
       29 CALL                             R7 2 1
       30 MOVE                             R5 R7
       31 GETUPVAL                         R10 0
       32 GETTABLEKS                       R10 R10 K5 ["MIN_REGION_SPAN"]
       34 SUB                              R9 R4 R10
       35 FASTCALL2                        MATH_MIN R3 R9 ; [+4]
       37 MOVE                             R8 R3
       38 GETIMPORT                        R7 K4 [math.min]
       40 CALL                             R7 2 1
       41 MOVE                             R3 R7
       42 LOADN                            R7 0
       43 JUMPIFNOTLT                      R3 R7 ; [+35]
       45 JUMPIFNOTEQ                      R5 R3 ; [+2]
       47 LOADN                            R5 0
       48 LOADN                            R3 0
       49 FASTCALL2                        MATH_MAX R5 R3 ; [+5]
       51 MOVE                             R8 R5
       52 MOVE                             R9 R3
       53 GETIMPORT                        R7 K7 [math.max]
       55 CALL                             R7 2 1
       56 MOVE                             R5 R7
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K5 ["MIN_REGION_SPAN"]
       60 ADD                              R9 R3 R10
       61 FASTCALL2                        MATH_MAX R6 R9 ; [+4]
       63 MOVE                             R8 R6
       64 GETIMPORT                        R7 K7 [math.max]
       66 CALL                             R7 2 1
       67 MOVE                             R6 R7
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R10 R10 K5 ["MIN_REGION_SPAN"]
       71 ADD                              R9 R3 R10
       72 FASTCALL2                        MATH_MAX R4 R9 ; [+4]
       74 MOVE                             R8 R4
       75 GETIMPORT                        R7 K7 [math.max]
       77 CALL                             R7 2 1
       78 MOVE                             R4 R7
       79 GETIMPORT                        R7 K10 [NumberRange.new]
       81 MOVE                             R8 R3
       82 MOVE                             R9 R4
       83 CALL                             R7 2 1
       84 GETIMPORT                        R8 K10 [NumberRange.new]
       86 MOVE                             R9 R5
       87 MOVE                             R10 R6
       88 CALL                             R8 2 -1
       89 RETURN                           R7 -1

PROTO_2:
        0 GETTABLEKS                       R3 R2 K0 ["Min"]
        2 GETTABLEKS                       R4 R2 K1 ["Max"]
        4 MOVE                             R3 R0
        5 GETTABLEKS                       R7 R1 K0 ["Min"]
        7 FASTCALL2                        MATH_MAX R3 R7 ; [+4]
        9 MOVE                             R6 R3
       10 GETIMPORT                        R5 K4 [math.max]
       12 CALL                             R5 2 1
       13 MOVE                             R3 R5
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K5 ["MIN_REGION_SPAN"]
       17 ADD                              R7 R3 R8
       18 FASTCALL2                        MATH_MAX R4 R7 ; [+4]
       20 MOVE                             R6 R4
       21 GETIMPORT                        R5 K4 [math.max]
       23 CALL                             R5 2 1
       24 MOVE                             R4 R5
       25 GETTABLEKS                       R5 R1 K1 ["Max"]
       27 JUMPIFNOTLT                      R5 R4 ; [+14]
       29 GETTABLEKS                       R4 R1 K1 ["Max"]
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K5 ["MIN_REGION_SPAN"]
       34 SUB                              R7 R4 R8
       35 FASTCALL2                        MATH_MIN R3 R7 ; [+4]
       37 MOVE                             R6 R3
       38 GETIMPORT                        R5 K7 [math.min]
       40 CALL                             R5 2 1
       41 MOVE                             R3 R5
       42 GETIMPORT                        R5 K10 [NumberRange.new]
       44 MOVE                             R6 R3
       45 MOVE                             R7 R4
       46 CALL                             R5 2 -1
       47 RETURN                           R5 -1

PROTO_3:
        0 GETTABLEKS                       R3 R2 K0 ["Min"]
        2 GETTABLEKS                       R4 R2 K1 ["Max"]
        4 MOVE                             R4 R0
        5 GETTABLEKS                       R7 R1 K1 ["Max"]
        7 FASTCALL2                        MATH_MIN R4 R7 ; [+4]
        9 MOVE                             R6 R4
       10 GETIMPORT                        R5 K4 [math.min]
       12 CALL                             R5 2 1
       13 MOVE                             R4 R5
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K5 ["MIN_REGION_SPAN"]
       17 SUB                              R7 R4 R8
       18 FASTCALL2                        MATH_MIN R3 R7 ; [+4]
       20 MOVE                             R6 R3
       21 GETIMPORT                        R5 K4 [math.min]
       23 CALL                             R5 2 1
       24 MOVE                             R3 R5
       25 GETTABLEKS                       R5 R1 K0 ["Min"]
       27 JUMPIFNOTLT                      R3 R5 ; [+14]
       29 GETTABLEKS                       R3 R1 K0 ["Min"]
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K5 ["MIN_REGION_SPAN"]
       34 ADD                              R7 R3 R8
       35 FASTCALL2                        MATH_MAX R4 R7 ; [+4]
       37 MOVE                             R6 R4
       38 GETIMPORT                        R5 K7 [math.max]
       40 CALL                             R5 2 1
       41 MOVE                             R4 R5
       42 GETIMPORT                        R5 K10 [NumberRange.new]
       44 MOVE                             R6 R3
       45 MOVE                             R7 R4
       46 CALL                             R5 2 -1
       47 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 LOADK                            R1 K0 [0.001]
        4 SETTABLEKS                       R1 R0 K1 ["MIN_REGION_SPAN"]
        6 DUPCLOSURE                       R1 K2 [PROTO_0]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["adjustPlaybackRegionMin"]
       10 DUPCLOSURE                       R1 K4 [PROTO_1]
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["adjustPlaybackRegionMax"]
       14 DUPCLOSURE                       R1 K6 [PROTO_2]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K7 ["adjustLoopRegionMin"]
       18 DUPCLOSURE                       R1 K8 [PROTO_3]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K9 ["adjustLoopRegionMax"]
       22 RETURN                           R0 1
