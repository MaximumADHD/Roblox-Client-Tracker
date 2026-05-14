PROTO_0:
        0 LOADN                            R0 176
        1 RETURN                           R0 1

PROTO_1:
        0 LOADN                            R0 30
        1 RETURN                           R0 1

PROTO_2:
        0 LOADN                            R0 176
        1 RETURN                           R0 1

PROTO_3:
        0 LOADN                            R0 30
        1 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R3 K2 [Vector2.one]
        2 GETTABLEKS                       R5 R1 K3 ["X"]
        4 GETTABLEKS                       R6 R1 K4 ["Y"]
        6 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
        8 GETIMPORT                        R4 K7 [math.min]
       10 CALL                             R4 2 1
       11 MUL                              R2 R3 R4
       12 DIVK                             R3 R1 K8 [2]
       13 GETIMPORT                        R4 K11 [Rect.new]
       15 DIVK                             R6 R2 K8 [2]
       16 SUB                              R5 R3 R6
       17 DIVK                             R7 R2 K8 [2]
       18 ADD                              R6 R3 R7
       19 CALL                             R4 2 1
       20 GETIMPORT                        R5 K12 [Vector2.new]
       22 GETTABLEKS                       R8 R0 K3 ["X"]
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R9 R9 K13 ["getXMin"]
       27 CALL                             R9 0 1
       28 SUB                              R7 R8 R9
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K14 ["getXMax"]
       32 CALL                             R9 0 1
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K13 ["getXMin"]
       36 CALL                             R10 0 1
       37 SUB                              R8 R9 R10
       38 DIV                              R6 R7 R8
       39 GETTABLEKS                       R10 R0 K4 ["Y"]
       41 GETUPVAL                         R11 0
       42 GETTABLEKS                       R11 R11 K16 ["getYMin"]
       44 CALL                             R11 0 1
       45 SUB                              R9 R10 R11
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R11 R11 K17 ["getYMax"]
       49 CALL                             R11 0 1
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R12 R12 K16 ["getYMin"]
       53 CALL                             R12 0 1
       54 SUB                              R10 R11 R12
       55 DIV                              R8 R9 R10
       56 SUBRK                            R7 R15 K8 [2]
       57 CALL                             R5 2 1
       58 GETIMPORT                        R6 K12 [Vector2.new]
       60 GETTABLEKS                       R8 R4 K18 ["Min"]
       62 GETTABLEKS                       R8 R8 K3 ["X"]
       64 GETTABLEKS                       R10 R5 K3 ["X"]
       66 GETTABLEKS                       R12 R4 K19 ["Max"]
       68 GETTABLEKS                       R12 R12 K3 ["X"]
       70 GETTABLEKS                       R13 R4 K18 ["Min"]
       72 GETTABLEKS                       R13 R13 K3 ["X"]
       74 SUB                              R11 R12 R13
       75 MUL                              R9 R10 R11
       76 ADD                              R7 R8 R9
       77 GETTABLEKS                       R9 R4 K18 ["Min"]
       79 GETTABLEKS                       R9 R9 K4 ["Y"]
       81 GETTABLEKS                       R11 R5 K4 ["Y"]
       83 GETTABLEKS                       R13 R4 K19 ["Max"]
       85 GETTABLEKS                       R13 R13 K4 ["Y"]
       87 GETTABLEKS                       R14 R4 K18 ["Min"]
       89 GETTABLEKS                       R14 R14 K4 ["Y"]
       91 SUB                              R12 R13 R14
       92 MUL                              R10 R11 R12
       93 ADD                              R8 R9 R10
       94 CALL                             R6 2 1
       95 MOVE                             R5 R6
       96 GETIMPORT                        R6 K12 [Vector2.new]
       98 GETTABLEKS                       R8 R5 K3 ["X"]
      100 GETTABLEKS                       R9 R1 K3 ["X"]
      102 DIV                              R7 R8 R9
      103 GETTABLEKS                       R9 R5 K4 ["Y"]
      105 GETTABLEKS                       R10 R1 K4 ["Y"]
      107 DIV                              R8 R9 R10
      108 CALL                             R6 2 1
      109 MOVE                             R5 R6
      110 RETURN                           R5 1

PROTO_5:
        0 GETIMPORT                        R3 K2 [Vector2.one]
        2 GETTABLEKS                       R5 R1 K3 ["X"]
        4 GETTABLEKS                       R6 R1 K4 ["Y"]
        6 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
        8 GETIMPORT                        R4 K7 [math.min]
       10 CALL                             R4 2 1
       11 MUL                              R2 R3 R4
       12 DIVK                             R3 R1 K8 [2]
       13 GETIMPORT                        R4 K11 [Rect.new]
       15 DIVK                             R6 R2 K8 [2]
       16 SUB                              R5 R3 R6
       17 DIVK                             R7 R2 K8 [2]
       18 ADD                              R6 R3 R7
       19 CALL                             R4 2 1
       20 GETIMPORT                        R5 K12 [Vector2.new]
       22 GETTABLEKS                       R7 R0 K3 ["X"]
       24 GETTABLEKS                       R8 R1 K3 ["X"]
       26 MUL                              R6 R7 R8
       27 GETTABLEKS                       R8 R0 K4 ["Y"]
       29 GETTABLEKS                       R9 R1 K4 ["Y"]
       31 MUL                              R7 R8 R9
       32 CALL                             R5 2 1
       33 GETIMPORT                        R6 K12 [Vector2.new]
       35 GETTABLEKS                       R9 R5 K3 ["X"]
       37 GETTABLEKS                       R10 R4 K13 ["Min"]
       39 GETTABLEKS                       R10 R10 K3 ["X"]
       41 SUB                              R8 R9 R10
       42 GETTABLEKS                       R10 R4 K14 ["Max"]
       44 GETTABLEKS                       R10 R10 K3 ["X"]
       46 GETTABLEKS                       R11 R4 K13 ["Min"]
       48 GETTABLEKS                       R11 R11 K3 ["X"]
       50 SUB                              R9 R10 R11
       51 DIV                              R7 R8 R9
       52 GETTABLEKS                       R10 R5 K4 ["Y"]
       54 GETTABLEKS                       R11 R4 K13 ["Min"]
       56 GETTABLEKS                       R11 R11 K4 ["Y"]
       58 SUB                              R9 R10 R11
       59 GETTABLEKS                       R11 R4 K14 ["Max"]
       61 GETTABLEKS                       R11 R11 K4 ["Y"]
       63 GETTABLEKS                       R12 R4 K13 ["Min"]
       65 GETTABLEKS                       R12 R12 K4 ["Y"]
       67 SUB                              R10 R11 R12
       68 DIV                              R8 R9 R10
       69 CALL                             R6 2 1
       70 MOVE                             R5 R6
       71 GETIMPORT                        R6 K12 [Vector2.new]
       73 GETTABLEKS                       R9 R5 K3 ["X"]
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K15 ["getXMax"]
       78 CALL                             R11 0 1
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R12 R12 K16 ["getXMin"]
       82 CALL                             R12 0 1
       83 SUB                              R10 R11 R12
       84 MUL                              R8 R9 R10
       85 GETUPVAL                         R9 0
       86 GETTABLEKS                       R9 R9 K16 ["getXMin"]
       88 CALL                             R9 0 1
       89 ADD                              R7 R8 R9
       90 GETTABLEKS                       R11 R5 K4 ["Y"]
       92 SUBRK                            R10 R17 K11 [Rect.new]
       93 GETUPVAL                         R12 0
       94 GETTABLEKS                       R12 R12 K18 ["getYMax"]
       96 CALL                             R12 0 1
       97 GETUPVAL                         R13 0
       98 GETTABLEKS                       R13 R13 K19 ["getYMin"]
      100 CALL                             R13 0 1
      101 SUB                              R11 R12 R13
      102 MUL                              R9 R10 R11
      103 GETUPVAL                         R10 0
      104 GETTABLEKS                       R10 R10 K19 ["getYMin"]
      106 CALL                             R10 0 1
      107 ADD                              R8 R9 R10
      108 CALL                             R6 2 1
      109 MOVE                             R5 R6
      110 RETURN                           R5 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["plotToView"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 MUL                              R2 R3 R1
        7 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["viewToPlot"]
        3 DIV                              R3 R0 R1
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_8:
        0 MUL                              R2 R0 R1
        1 RETURN                           R2 1

PROTO_9:
        0 DIV                              R2 R0 R1
        1 RETURN                           R2 1

PROTO_10:
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
        1 NEWTABLE                         R0 16 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["getXMin"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["getXMax"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["getYMin"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["getYMax"]
       15 DUPCLOSURE                       R1 K8 [PROTO_4]
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K9 ["plotToView"]
       19 DUPCLOSURE                       R1 K10 [PROTO_5]
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K11 ["viewToPlot"]
       23 DUPCLOSURE                       R1 K12 [PROTO_6]
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K13 ["plotToAbs"]
       27 DUPCLOSURE                       R1 K14 [PROTO_7]
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K15 ["absToPlot"]
       31 DUPCLOSURE                       R1 K16 [PROTO_8]
       32 SETTABLEKS                       R1 R0 K17 ["viewToAbs"]
       34 DUPCLOSURE                       R1 K18 [PROTO_9]
       35 SETTABLEKS                       R1 R0 K19 ["absToView"]
       37 DUPCLOSURE                       R1 K20 [PROTO_10]
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K21 ["mouseToPlot"]
       41 RETURN                           R0 1
