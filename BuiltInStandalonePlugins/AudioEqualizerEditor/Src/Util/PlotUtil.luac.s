PROTO_0:
        0 FASTCALL1                        MATH_LOG R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K3 [math.log]
        4 CALL                             R2 1 1
        5 MULK                             R1 R2 K0 [1.44269504089]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EQUALIZER"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+12]
        5 LOADN                            R1 200
        6 SETUPVAL                         R1 1
        7 LOADN                            R1 32
        8 SETUPVAL                         R1 2
        9 LOADN                            R1 176
       10 SETUPVAL                         R1 3
       11 LOADN                            R1 10
       12 SETUPVAL                         R1 4
       13 LOADN                            R1 3
       14 SETUPVAL                         R1 5
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K1 ["FILTER"]
       19 JUMPIFNOTEQ                      R0 R1 ; [+12]
       21 LOADN                            R1 20
       22 SETUPVAL                         R1 1
       23 LOADN                            R1 240
       24 SETUPVAL                         R1 2
       25 LOADN                            R1 226
       26 SETUPVAL                         R1 3
       27 LOADN                            R1 30
       28 SETUPVAL                         R1 4
       29 LOADN                            R1 1
       30 SETUPVAL                         R1 5
       31 RETURN                           R0 0
       32 LOADB                            R2 0
       33 FASTCALL1                        ASSERT R2 ; [+2]
       34 GETIMPORT                        R1 K3 [assert]
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["log2"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["getXMin"]
        6 CALL                             R2 0 -1
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["log2"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["getXMax"]
       14 CALL                             R3 0 -1
       15 CALL                             R2 -1 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["log2"]
       19 GETTABLEKS                       R4 R0 K3 ["X"]
       21 CALL                             R3 1 1
       22 SUB                              R5 R3 R1
       23 SUB                              R6 R2 R1
       24 DIV                              R4 R5 R6
       25 GETTABLEKS                       R6 R0 K4 ["Y"]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K5 ["getYMin"]
       30 CALL                             R7 0 1
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K6 ["getYMax"]
       34 CALL                             R8 0 -1
       35 FASTCALL                         MATH_CLAMP ; [+2]
       36 GETIMPORT                        R5 K9 [math.clamp]
       38 CALL                             R5 -1 1
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K5 ["getYMin"]
       42 CALL                             R10 0 1
       43 SUB                              R9 R5 R10
       44 GETUPVAL                         R11 0
       45 GETTABLEKS                       R11 R11 K6 ["getYMax"]
       47 CALL                             R11 0 1
       48 GETUPVAL                         R12 0
       49 GETTABLEKS                       R12 R12 K5 ["getYMin"]
       51 CALL                             R12 0 1
       52 SUB                              R10 R11 R12
       53 DIV                              R8 R9 R10
       54 GETUPVAL                         R9 1
       55 POW                              R7 R8 R9
       56 SUBRK                            R6 R10 K7 ["math"]
       57 GETIMPORT                        R7 K13 [Vector2.new]
       59 MOVE                             R8 R4
       60 MOVE                             R9 R6
       61 CALL                             R7 2 -1
       62 RETURN                           R7 -1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["log2"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["getXMax"]
        8 CALL                             R5 0 -1
        9 CALL                             R4 -1 1
       10 MUL                              R2 R3 R4
       11 GETTABLEKS                       R5 R0 K0 ["X"]
       13 SUBRK                            R4 R3 K5 ["Y"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K1 ["log2"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K4 ["getXMin"]
       20 CALL                             R6 0 -1
       21 CALL                             R5 -1 1
       22 MUL                              R3 R4 R5
       23 ADD                              R1 R2 R3
       24 LOADN                            R3 2
       25 POW                              R2 R3 R1
       26 GETTABLEKS                       R5 R0 K5 ["Y"]
       28 SUBRK                            R4 R3 K5 ["Y"]
       29 LOADN                            R5 0
       30 LOADN                            R6 1
       31 FASTCALL                         MATH_CLAMP ; [+2]
       32 GETIMPORT                        R3 K8 [math.clamp]
       34 CALL                             R3 3 1
       35 GETUPVAL                         R8 1
       36 DIVRK                            R7 R3 K8 [math.clamp]
       37 POW                              R6 R3 R7
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K9 ["getYMax"]
       41 CALL                             R8 0 1
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R9 R9 K10 ["getYMin"]
       45 CALL                             R9 0 1
       46 SUB                              R7 R8 R9
       47 MUL                              R5 R6 R7
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K10 ["getYMin"]
       51 CALL                             R6 0 1
       52 ADD                              R4 R5 R6
       53 GETIMPORT                        R5 K13 [Vector2.new]
       55 MOVE                             R6 R2
       56 MOVE                             R7 R4
       57 CALL                             R5 2 -1
       58 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["plotToView"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 MUL                              R2 R3 R1
        6 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["viewToPlot"]
        3 DIV                              R3 R0 R1
        4 CALL                             R2 1 -1
        5 RETURN                           R2 -1

PROTO_10:
        0 MUL                              R2 R0 R1
        1 RETURN                           R2 1

PROTO_11:
        0 DIV                              R2 R0 R1
        1 RETURN                           R2 1

PROTO_12:
        0 JUMPIF                           R1 ; [+12]
        1 GETIMPORT                        R2 K2 [Vector2.new]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["getXMin"]
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K4 ["getYMin"]
       10 CALL                             R4 0 -1
       11 CALL                             R2 -1 -1
       12 RETURN                           R2 -1
       13 GETTABLEKS                       R2 R1 K5 ["AbsoluteSize"]
       15 GETTABLEKS                       R4 R1 K6 ["AbsolutePosition"]
       17 SUB                              R3 R0 R4
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K7 ["absToPlot"]
       21 MOVE                             R5 R3
       22 MOVE                             R6 R2
       23 CALL                             R4 2 -1
       24 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioEqualizerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 16 0
       16 LOADN                            R3 200
       17 LOADN                            R4 32
       18 LOADN                            R5 176
       19 LOADN                            R6 10
       20 LOADN                            R7 3
       21 DUPCLOSURE                       R8 K8 [PROTO_0]
       22 SETTABLEKS                       R8 R2 K9 ["log2"]
       24 NEWCLOSURE                       R8 P1
       25 CAPTURE                          VAL R1
       26 CAPTURE                          REF R3
       27 CAPTURE                          REF R4
       28 CAPTURE                          REF R5
       29 CAPTURE                          REF R6
       30 CAPTURE                          REF R7
       31 SETTABLEKS                       R8 R2 K10 ["setInstanceType"]
       33 NEWCLOSURE                       R8 P2
       34 CAPTURE                          REF R3
       35 SETTABLEKS                       R8 R2 K11 ["getXMin"]
       37 NEWCLOSURE                       R8 P3
       38 CAPTURE                          REF R4
       39 SETTABLEKS                       R8 R2 K12 ["getXMax"]
       41 NEWCLOSURE                       R8 P4
       42 CAPTURE                          REF R5
       43 SETTABLEKS                       R8 R2 K13 ["getYMin"]
       45 NEWCLOSURE                       R8 P5
       46 CAPTURE                          REF R6
       47 SETTABLEKS                       R8 R2 K14 ["getYMax"]
       49 NEWCLOSURE                       R8 P6
       50 CAPTURE                          VAL R2
       51 CAPTURE                          REF R7
       52 SETTABLEKS                       R8 R2 K15 ["plotToView"]
       54 NEWCLOSURE                       R8 P7
       55 CAPTURE                          VAL R2
       56 CAPTURE                          REF R7
       57 SETTABLEKS                       R8 R2 K16 ["viewToPlot"]
       59 DUPCLOSURE                       R8 K17 [PROTO_8]
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R8 R2 K18 ["plotToAbs"]
       63 DUPCLOSURE                       R8 K19 [PROTO_9]
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R8 R2 K20 ["absToPlot"]
       67 DUPCLOSURE                       R8 K21 [PROTO_10]
       68 SETTABLEKS                       R8 R2 K22 ["viewToAbs"]
       70 DUPCLOSURE                       R8 K23 [PROTO_11]
       71 SETTABLEKS                       R8 R2 K24 ["absToView"]
       73 DUPCLOSURE                       R8 K25 [PROTO_12]
       74 CAPTURE                          VAL R2
       75 SETTABLEKS                       R8 R2 K26 ["mouseToPlot"]
       77 CLOSEUPVALS                      R3
       78 RETURN                           R2 1
