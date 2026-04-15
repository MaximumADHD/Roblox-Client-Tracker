PROTO_0:
        0 SUB                              R5 R2 R0
        1 MOVE                             R7 R3
        2 NAMECALL                         R5 R5 K0 ["Dot"]
        4 CALL                             R5 2 1
        5 MOVE                             R8 R3
        6 NAMECALL                         R6 R1 K0 ["Dot"]
        8 CALL                             R6 2 1
        9 DIV                              R4 R5 R6
       10 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["intersectRayPlane"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 MOVE                             R8 R3
        7 CALL                             R4 4 1
        8 MUL                              R6 R4 R1
        9 ADD                              R5 R0 R6
       10 RETURN                           R5 1

PROTO_2:
        0 SUB                              R6 R2 R0
        1 MOVE                             R8 R1
        2 NAMECALL                         R6 R6 K0 ["Dot"]
        4 CALL                             R6 2 1
        5 MOVE                             R9 R3
        6 NAMECALL                         R7 R3 K0 ["Dot"]
        8 CALL                             R7 2 1
        9 MUL                              R5 R6 R7
       10 SUB                              R7 R0 R2
       11 MOVE                             R9 R3
       12 NAMECALL                         R7 R7 K0 ["Dot"]
       14 CALL                             R7 2 1
       15 MOVE                             R10 R3
       16 NAMECALL                         R8 R1 K0 ["Dot"]
       18 CALL                             R8 2 1
       19 MUL                              R6 R7 R8
       20 ADD                              R4 R5 R6
       21 MOVE                             R9 R1
       22 NAMECALL                         R7 R1 K0 ["Dot"]
       24 CALL                             R7 2 1
       25 MOVE                             R10 R3
       26 NAMECALL                         R8 R3 K0 ["Dot"]
       28 CALL                             R8 2 1
       29 MUL                              R6 R7 R8
       30 MOVE                             R10 R3
       31 NAMECALL                         R8 R1 K0 ["Dot"]
       33 CALL                             R8 2 1
       34 MOVE                             R11 R3
       35 NAMECALL                         R9 R1 K0 ["Dot"]
       37 CALL                             R9 2 1
       38 MUL                              R7 R8 R9
       39 SUB                              R5 R6 R7
       40 JUMPIFNOTEQKN                    R5 K1 [0] ; [+3]
       42 LOADB                            R6 0
       43 RETURN                           R6 1
       44 LOADB                            R6 1
       45 DIV                              R7 R4 R5
       46 RETURN                           R6 2

PROTO_3:
        0 GETTABLEKS                       R4 R1 K0 ["Unit"]
        2 GETTABLEKS                       R5 R3 K0 ["Unit"]
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K1 ["intersectRayRay"]
        7 MOVE                             R7 R0
        8 MOVE                             R8 R4
        9 MOVE                             R9 R2
       10 MOVE                             R10 R5
       11 CALL                             R6 4 2
       12 MUL                              R9 R7 R4
       13 ADD                              R8 R0 R9
       14 RETURN                           R8 1

PROTO_4:
        0 GETTABLEKS                       R6 R1 K0 ["Y"]
        2 GETTABLEKS                       R7 R1 K0 ["Y"]
        4 MUL                              R5 R6 R7
        5 GETTABLEKS                       R7 R1 K1 ["Z"]
        7 GETTABLEKS                       R8 R1 K1 ["Z"]
        9 MUL                              R6 R7 R8
       10 ADD                              R4 R5 R6
       11 GETTABLEKS                       R7 R1 K0 ["Y"]
       13 GETTABLEKS                       R8 R0 K0 ["Y"]
       15 MUL                              R6 R7 R8
       16 GETTABLEKS                       R8 R1 K1 ["Z"]
       18 GETTABLEKS                       R9 R0 K1 ["Z"]
       20 MUL                              R7 R8 R9
       21 ADD                              R5 R6 R7
       22 GETTABLEKS                       R9 R0 K0 ["Y"]
       24 GETTABLEKS                       R10 R0 K0 ["Y"]
       26 MUL                              R8 R9 R10
       27 GETTABLEKS                       R10 R0 K1 ["Z"]
       29 GETTABLEKS                       R11 R0 K1 ["Z"]
       31 MUL                              R9 R10 R11
       32 ADD                              R7 R8 R9
       33 MUL                              R8 R2 R2
       34 SUB                              R6 R7 R8
       35 MUL                              R8 R5 R5
       36 MUL                              R9 R4 R6
       37 SUB                              R7 R8 R9
       38 LOADN                            R8 0
       39 JUMPIFNOTLT                      R7 R8 ; [+3]
       41 LOADB                            R8 0
       42 RETURN                           R8 1
       43 MINUS                            R10 R5
       44 FASTCALL1                        MATH_SQRT R7 ; [+3]
       45 MOVE                             R12 R7
       46 GETIMPORT                        R11 K4 [math.sqrt]
       48 CALL                             R11 1 1
       49 SUB                              R9 R10 R11
       50 DIV                              R8 R9 R4
       51 GETTABLEKS                       R10 R0 K5 ["X"]
       53 GETTABLEKS                       R12 R1 K5 ["X"]
       55 MUL                              R11 R8 R12
       56 ADD                              R9 R10 R11
       57 FASTCALL1                        MATH_ABS R9 ; [+3]
       58 MOVE                             R11 R9
       59 GETIMPORT                        R10 K7 [math.abs]
       61 CALL                             R10 1 1
       62 LOADK                            R12 K8 [0.5]
       63 MUL                              R11 R12 R3
       64 JUMPIFNOTLE                      R10 R11 ; [+4]
       66 LOADB                            R10 1
       67 MOVE                             R11 R8
       68 RETURN                           R10 2
       69 MINUS                            R12 R5
       70 FASTCALL1                        MATH_SQRT R7 ; [+3]
       71 MOVE                             R14 R7
       72 GETIMPORT                        R13 K4 [math.sqrt]
       74 CALL                             R13 1 1
       75 ADD                              R11 R12 R13
       76 DIV                              R10 R11 R4
       77 GETTABLEKS                       R12 R0 K5 ["X"]
       79 GETTABLEKS                       R14 R1 K5 ["X"]
       81 MUL                              R13 R10 R14
       82 ADD                              R11 R12 R13
       83 FASTCALL1                        MATH_ABS R11 ; [+3]
       84 MOVE                             R13 R11
       85 GETIMPORT                        R12 K7 [math.abs]
       87 CALL                             R12 1 1
       88 LOADK                            R14 K8 [0.5]
       89 MUL                              R13 R14 R3
       90 JUMPIFNOTLE                      R12 R13 ; [+4]
       92 LOADB                            R12 1
       93 MOVE                             R13 R10
       94 RETURN                           R12 2
       95 LOADB                            R12 0
       96 RETURN                           R12 1

PROTO_5:
        0 SUB                              R4 R0 R2
        1 MOVE                             R7 R1
        2 NAMECALL                         R5 R1 K0 ["Dot"]
        4 CALL                             R5 2 1
        5 LOADN                            R7 2
        6 MOVE                             R10 R1
        7 NAMECALL                         R8 R4 K0 ["Dot"]
        9 CALL                             R8 2 1
       10 MUL                              R6 R7 R8
       11 MOVE                             R10 R4
       12 NAMECALL                         R8 R4 K0 ["Dot"]
       14 CALL                             R8 2 1
       15 MUL                              R9 R3 R3
       16 SUB                              R7 R8 R9
       17 MUL                              R9 R6 R6
       18 LOADN                            R12 4
       19 MUL                              R11 R12 R5
       20 MUL                              R10 R11 R7
       21 SUB                              R8 R9 R10
       22 LOADN                            R9 0
       23 JUMPIFNOTLE                      R9 R8 ; [+15]
       25 MINUS                            R10 R6
       26 FASTCALL1                        MATH_SQRT R8 ; [+3]
       27 MOVE                             R12 R8
       28 GETIMPORT                        R11 K3 [math.sqrt]
       30 CALL                             R11 1 1
       31 SUB                              R9 R10 R11
       32 LOADN                            R10 0
       33 JUMPIFNOTLT                      R10 R9 ; [+5]
       35 LOADB                            R10 1
       36 DIVK                             R12 R9 K4 [2]
       37 MUL                              R11 R12 R5
       38 RETURN                           R10 2
       39 LOADB                            R9 0
       40 RETURN                           R9 1

PROTO_6:
        0 LOADK                            R1 K0 [∞]
        1 LOADK                            R2 K0 [∞]
        2 LOADK                            R3 K0 [∞]
        3 LOADK                            R4 K1 [-∞]
        4 LOADK                            R5 K1 [-∞]
        5 LOADK                            R6 K1 [-∞]
        6 GETIMPORT                        R7 K3 [ipairs]
        8 MOVE                             R8 R0
        9 CALL                             R7 1 3
       10 FORGPREP_INEXT                   R7
       11 LOADNIL                          R12
       12 LOADNIL                          R13
       13 LOADK                            R16 K4 ["BasePart"]
       14 NAMECALL                         R14 R11 K5 ["IsA"]
       16 CALL                             R14 2 1
       17 JUMPIFNOT                        R14 ; [+15]
       18 GETTABLEKS                       R15 R11 K6 ["CFrame"]
       20 GETTABLEKS                       R14 R15 K7 ["Position"]
       22 GETTABLEKS                       R15 R11 K8 ["Size"]
       24 SUB                              R12 R14 R15
       25 GETTABLEKS                       R15 R11 K6 ["CFrame"]
       27 GETTABLEKS                       R14 R15 K7 ["Position"]
       29 GETTABLEKS                       R15 R11 K8 ["Size"]
       31 ADD                              R13 R14 R15
       32 JUMP                             ; [+10]
       33 LOADK                            R16 K9 ["Model"]
       34 NAMECALL                         R14 R11 K5 ["IsA"]
       36 CALL                             R14 2 1
       37 JUMPIFNOT                        R14 ; [+5]
       38 NAMECALL                         R14 R11 K10 ["GetBoundingBox"]
       40 CALL                             R14 1 2
       41 SUB                              R12 R14 R15
       42 ADD                              R13 R14 R15
       43 JUMPIFEQKNIL                     R12 ; [+57]
       45 JUMPIFEQKNIL                     R13 ; [+55]
       47 GETTABLEKS                       R16 R12 K11 ["X"]
       49 FASTCALL2                        MATH_MIN R1 R16 ; [+4]
       51 MOVE                             R15 R1
       52 GETIMPORT                        R14 K14 [math.min]
       54 CALL                             R14 2 1
       55 MOVE                             R1 R14
       56 GETTABLEKS                       R16 R12 K15 ["Y"]
       58 FASTCALL2                        MATH_MIN R2 R16 ; [+4]
       60 MOVE                             R15 R2
       61 GETIMPORT                        R14 K14 [math.min]
       63 CALL                             R14 2 1
       64 MOVE                             R2 R14
       65 GETTABLEKS                       R16 R12 K16 ["Z"]
       67 FASTCALL2                        MATH_MIN R3 R16 ; [+4]
       69 MOVE                             R15 R3
       70 GETIMPORT                        R14 K14 [math.min]
       72 CALL                             R14 2 1
       73 MOVE                             R3 R14
       74 GETTABLEKS                       R16 R13 K11 ["X"]
       76 FASTCALL2                        MATH_MAX R4 R16 ; [+4]
       78 MOVE                             R15 R4
       79 GETIMPORT                        R14 K18 [math.max]
       81 CALL                             R14 2 1
       82 MOVE                             R4 R14
       83 GETTABLEKS                       R16 R13 K15 ["Y"]
       85 FASTCALL2                        MATH_MAX R5 R16 ; [+4]
       87 MOVE                             R15 R5
       88 GETIMPORT                        R14 K18 [math.max]
       90 CALL                             R14 2 1
       91 MOVE                             R5 R14
       92 GETTABLEKS                       R16 R13 K16 ["Z"]
       94 FASTCALL2                        MATH_MAX R6 R16 ; [+4]
       96 MOVE                             R15 R6
       97 GETIMPORT                        R14 K18 [math.max]
       99 CALL                             R14 2 1
      100 MOVE                             R6 R14
      101 FORGLOOP                         R7 2 [inext] ; [-91]
      103 GETIMPORT                        R7 K21 [Region3.new]
      105 FASTCALL3                        VECTOR R1 R2 R3
      107 MOVE                             R9 R1
      108 MOVE                             R10 R2
      109 MOVE                             R11 R3
      110 GETIMPORT                        R8 K23 [Vector3.new]
      112 CALL                             R8 3 1
      113 FASTCALL3                        VECTOR R4 R5 R6
      115 MOVE                             R10 R4
      116 MOVE                             R11 R5
      117 MOVE                             R12 R6
      118 GETIMPORT                        R9 K23 [Vector3.new]
      120 CALL                             R9 3 1
      121 CALL                             R7 2 -1
      122 RETURN                           R7 -1

PROTO_7:
        0 JUMPIFNOT                        R0 ; [+23]
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 JUMPIF                           R3 ; [+2]
        4 LOADN                            R2 0
        5 JUMP                             ; [+1]
        6 LOADN                            R2 1
        7 GETTABLEKS                       R4 R0 K1 ["Y"]
        9 JUMPIF                           R4 ; [+2]
       10 LOADN                            R3 0
       11 JUMP                             ; [+1]
       12 LOADN                            R3 1
       13 GETTABLEKS                       R5 R0 K2 ["Z"]
       15 JUMPIF                           R5 ; [+2]
       16 LOADN                            R4 0
       17 JUMP                             ; [+1]
       18 LOADN                            R4 1
       19 FASTCALL                         VECTOR ; [+2]
       20 GETIMPORT                        R1 K5 [Vector3.new]
       22 CALL                             R1 3 1
       23 JUMPIF                           R1 ; [+1]
       24 LOADK                            R1 K6 [{0, 0, 0}]
       25 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R1 0 3
        2 GETTABLEKS                       R2 R0 K0 ["X"]
        4 GETTABLEKS                       R3 R0 K1 ["Y"]
        6 GETTABLEKS                       R4 R0 K2 ["Z"]
        8 SETLIST                          R1 R2 3 [1]
       10 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 GETTABLEKS                       R3 R0 K1 ["Y"]
        4 GETTABLEKS                       R4 R0 K2 ["Z"]
        6 FASTCALL                         MATH_MAX ; [+2]
        7 GETIMPORT                        R1 K5 [math.max]
        9 CALL                             R1 3 1
       10 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 GETTABLEKS                       R3 R0 K1 ["Y"]
        4 GETTABLEKS                       R4 R0 K2 ["Z"]
        6 FASTCALL                         MATH_MIN ; [+2]
        7 GETIMPORT                        R1 K5 [math.min]
        9 CALL                             R1 3 1
       10 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["X"]
        2 GETTABLEKS                       R2 R0 K1 ["Y"]
        4 GETTABLEKS                       R3 R0 K2 ["Z"]
        6 FASTCALL1                        MATH_ABS R1 ; [+3]
        7 MOVE                             R5 R1
        8 GETIMPORT                        R4 K6 [math.abs]
       10 CALL                             R4 1 1
       11 SUBRK                            R1 R3 K4 ["math"]
       12 FASTCALL1                        MATH_ABS R2 ; [+3]
       13 MOVE                             R5 R2
       14 GETIMPORT                        R4 K6 [math.abs]
       16 CALL                             R4 1 1
       17 SUBRK                            R2 R3 K4 ["math"]
       18 FASTCALL1                        MATH_ABS R3 ; [+3]
       19 MOVE                             R5 R3
       20 GETIMPORT                        R4 K6 [math.abs]
       22 CALL                             R4 1 1
       23 SUBRK                            R3 R3 K4 ["math"]
       24 FASTCALL3                        VECTOR R1 R2 R3
       26 MOVE                             R5 R1
       27 MOVE                             R6 R2
       28 MOVE                             R7 R3
       29 GETIMPORT                        R4 K9 [Vector3.new]
       31 CALL                             R4 3 1
       32 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 NEWTABLE                         R1 16 0
        9 DUPCLOSURE                       R2 K3 [PROTO_0]
       10 SETTABLEKS                       R2 R1 K4 ["intersectRayPlane"]
       12 DUPCLOSURE                       R2 K5 [PROTO_1]
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R2 R1 K6 ["intersectRayPlanePoint"]
       16 DUPCLOSURE                       R2 K7 [PROTO_2]
       17 SETTABLEKS                       R2 R1 K8 ["intersectRayRay"]
       19 DUPCLOSURE                       R2 K9 [PROTO_3]
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R2 R1 K10 ["intersectRayRayPoint"]
       23 DUPCLOSURE                       R2 K11 [PROTO_4]
       24 SETTABLEKS                       R2 R1 K12 ["intersectRayCylinder"]
       26 DUPCLOSURE                       R2 K13 [PROTO_5]
       27 SETTABLEKS                       R2 R1 K14 ["intersectRaySphere"]
       29 DUPCLOSURE                       R2 K15 [PROTO_6]
       30 SETTABLEKS                       R2 R1 K16 ["regionFromParts"]
       32 DUPCLOSURE                       R2 K17 [PROTO_7]
       33 SETTABLEKS                       R2 R1 K18 ["setToVector3"]
       35 DUPCLOSURE                       R2 K19 [PROTO_8]
       36 SETTABLEKS                       R2 R1 K20 ["vectorToArray"]
       38 DUPCLOSURE                       R2 K21 [PROTO_9]
       39 SETTABLEKS                       R2 R1 K22 ["maxComponent"]
       41 DUPCLOSURE                       R2 K23 [PROTO_10]
       42 SETTABLEKS                       R2 R1 K24 ["minComponent"]
       44 DUPCLOSURE                       R2 K25 [PROTO_11]
       45 SETTABLEKS                       R2 R1 K26 ["complimentDirection"]
       47 RETURN                           R1 1
