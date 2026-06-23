PROTO_0:
        0 GETTABLEKS                       R5 R1 K0 ["Min"]
        2 GETTABLEKS                       R6 R1 K1 ["Max"]
        4 GETTABLEKS                       R7 R2 K0 ["Min"]
        6 GETTABLEKS                       R8 R2 K1 ["Max"]
        8 JUMPIFEQ                         R3 R5 ; [+2]
       10 LOADB                            R9 0 +1
       11 LOADB                            R9 1
       12 JUMPIFNOTEQ                      R7 R5 ; [+2]
       14 MOVE                             R7 R0
       15 MOVE                             R5 R0
       16 FASTCALL2                        MATH_MAX R7 R5 ; [+5]
       18 MOVE                             R11 R7
       19 MOVE                             R12 R5
       20 GETIMPORT                        R10 K4 [math.max]
       22 CALL                             R10 2 1
       23 MOVE                             R7 R10
       24 GETUPVAL                         R13 0
       25 GETTABLEKS                       R13 R13 K5 ["MIN_REGION_SPAN"]
       27 ADD                              R12 R5 R13
       28 FASTCALL2                        MATH_MAX R8 R12 ; [+4]
       30 MOVE                             R11 R8
       31 GETIMPORT                        R10 K4 [math.max]
       33 CALL                             R10 2 1
       34 MOVE                             R8 R10
       35 GETUPVAL                         R13 0
       36 GETTABLEKS                       R13 R13 K5 ["MIN_REGION_SPAN"]
       38 ADD                              R12 R5 R13
       39 FASTCALL2                        MATH_MAX R6 R12 ; [+4]
       41 MOVE                             R11 R6
       42 GETIMPORT                        R10 K4 [math.max]
       44 CALL                             R10 2 1
       45 MOVE                             R6 R10
       46 JUMPIFNOTLT                      R4 R6 ; [+35]
       48 JUMPIFNOTEQ                      R8 R6 ; [+2]
       50 MOVE                             R8 R4
       51 MOVE                             R6 R4
       52 FASTCALL2                        MATH_MIN R8 R6 ; [+5]
       54 MOVE                             R11 R8
       55 MOVE                             R12 R6
       56 GETIMPORT                        R10 K7 [math.min]
       58 CALL                             R10 2 1
       59 MOVE                             R8 R10
       60 GETUPVAL                         R13 0
       61 GETTABLEKS                       R13 R13 K5 ["MIN_REGION_SPAN"]
       63 SUB                              R12 R6 R13
       64 FASTCALL2                        MATH_MIN R7 R12 ; [+4]
       66 MOVE                             R11 R7
       67 GETIMPORT                        R10 K7 [math.min]
       69 CALL                             R10 2 1
       70 MOVE                             R7 R10
       71 GETUPVAL                         R13 0
       72 GETTABLEKS                       R13 R13 K5 ["MIN_REGION_SPAN"]
       74 SUB                              R12 R6 R13
       75 FASTCALL2                        MATH_MIN R5 R12 ; [+4]
       77 MOVE                             R11 R5
       78 GETIMPORT                        R10 K7 [math.min]
       80 CALL                             R10 2 1
       81 MOVE                             R5 R10
       82 JUMPIFNOT                        R9 ; [+2]
       83 MOVE                             R3 R5
       84 JUMP                             ; [+9]
       85 FASTCALL3                        MATH_CLAMP R3 R5 R6
       87 MOVE                             R11 R3
       88 MOVE                             R12 R5
       89 MOVE                             R13 R6
       90 GETIMPORT                        R10 K9 [math.clamp]
       92 CALL                             R10 3 1
       93 MOVE                             R3 R10
       94 GETIMPORT                        R10 K12 [NumberRange.new]
       96 MOVE                             R11 R5
       97 MOVE                             R12 R6
       98 CALL                             R10 2 1
       99 GETIMPORT                        R11 K12 [NumberRange.new]
      101 MOVE                             R12 R7
      102 MOVE                             R13 R8
      103 CALL                             R11 2 1
      104 MOVE                             R12 R3
      105 RETURN                           R10 3

PROTO_1:
        0 GETTABLEKS                       R4 R1 K0 ["Min"]
        2 GETTABLEKS                       R5 R1 K1 ["Max"]
        4 GETTABLEKS                       R6 R2 K0 ["Min"]
        6 GETTABLEKS                       R7 R2 K1 ["Max"]
        8 JUMPIFEQ                         R3 R4 ; [+2]
       10 LOADB                            R8 0 +1
       11 LOADB                            R8 1
       12 JUMPIFNOTEQ                      R7 R5 ; [+2]
       14 MOVE                             R7 R0
       15 MOVE                             R5 R0
       16 FASTCALL2                        MATH_MIN R7 R5 ; [+5]
       18 MOVE                             R10 R7
       19 MOVE                             R11 R5
       20 GETIMPORT                        R9 K4 [math.min]
       22 CALL                             R9 2 1
       23 MOVE                             R7 R9
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R12 R12 K5 ["MIN_REGION_SPAN"]
       27 SUB                              R11 R5 R12
       28 FASTCALL2                        MATH_MIN R6 R11 ; [+4]
       30 MOVE                             R10 R6
       31 GETIMPORT                        R9 K4 [math.min]
       33 CALL                             R9 2 1
       34 MOVE                             R6 R9
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R12 R12 K5 ["MIN_REGION_SPAN"]
       38 SUB                              R11 R5 R12
       39 FASTCALL2                        MATH_MIN R4 R11 ; [+4]
       41 MOVE                             R10 R4
       42 GETIMPORT                        R9 K4 [math.min]
       44 CALL                             R9 2 1
       45 MOVE                             R4 R9
       46 LOADN                            R9 0
       47 JUMPIFNOTLT                      R4 R9 ; [+35]
       49 JUMPIFNOTEQ                      R6 R4 ; [+2]
       51 LOADN                            R6 0
       52 LOADN                            R4 0
       53 FASTCALL2                        MATH_MAX R6 R4 ; [+5]
       55 MOVE                             R10 R6
       56 MOVE                             R11 R4
       57 GETIMPORT                        R9 K7 [math.max]
       59 CALL                             R9 2 1
       60 MOVE                             R6 R9
       61 GETUPVAL                         R12 0
       62 GETTABLEKS                       R12 R12 K5 ["MIN_REGION_SPAN"]
       64 ADD                              R11 R4 R12
       65 FASTCALL2                        MATH_MAX R7 R11 ; [+4]
       67 MOVE                             R10 R7
       68 GETIMPORT                        R9 K7 [math.max]
       70 CALL                             R9 2 1
       71 MOVE                             R7 R9
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R12 R12 K5 ["MIN_REGION_SPAN"]
       75 ADD                              R11 R4 R12
       76 FASTCALL2                        MATH_MAX R5 R11 ; [+4]
       78 MOVE                             R10 R5
       79 GETIMPORT                        R9 K7 [math.max]
       81 CALL                             R9 2 1
       82 MOVE                             R5 R9
       83 JUMPIFNOT                        R8 ; [+2]
       84 MOVE                             R3 R4
       85 JUMP                             ; [+9]
       86 FASTCALL3                        MATH_CLAMP R3 R4 R5
       88 MOVE                             R10 R3
       89 MOVE                             R11 R4
       90 MOVE                             R12 R5
       91 GETIMPORT                        R9 K9 [math.clamp]
       93 CALL                             R9 3 1
       94 MOVE                             R3 R9
       95 GETIMPORT                        R9 K12 [NumberRange.new]
       97 MOVE                             R10 R4
       98 MOVE                             R11 R5
       99 CALL                             R9 2 1
      100 GETIMPORT                        R10 K12 [NumberRange.new]
      102 MOVE                             R11 R6
      103 MOVE                             R12 R7
      104 CALL                             R10 2 1
      105 MOVE                             R11 R3
      106 RETURN                           R9 3

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
