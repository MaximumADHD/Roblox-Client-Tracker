PROTO_0:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 GETTABLEKS                       R5 R0 K3 ["X"]
        4 GETTABLEKS                       R6 R1 K4 ["Min"]
        6 GETTABLEKS                       R6 R6 K3 ["X"]
        8 SUB                              R4 R5 R6
        9 GETTABLEKS                       R5 R1 K5 ["Width"]
       11 DIV                              R3 R4 R5
       12 GETTABLEKS                       R7 R0 K7 ["Y"]
       14 GETTABLEKS                       R8 R1 K4 ["Min"]
       16 GETTABLEKS                       R8 R8 K7 ["Y"]
       18 SUB                              R6 R7 R8
       19 GETTABLEKS                       R7 R1 K8 ["Height"]
       21 DIV                              R5 R6 R7
       22 SUBRK                            R4 K6 [1] R5
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 GETTABLEKS                       R4 R1 K3 ["Min"]
        4 GETTABLEKS                       R4 R4 K4 ["X"]
        6 GETTABLEKS                       R6 R1 K5 ["Width"]
        8 GETTABLEKS                       R7 R0 K4 ["X"]
       10 MUL                              R5 R6 R7
       11 ADD                              R3 R4 R5
       12 GETTABLEKS                       R5 R1 K3 ["Min"]
       14 GETTABLEKS                       R5 R5 K6 ["Y"]
       16 GETTABLEKS                       R7 R1 K7 ["Height"]
       18 GETTABLEKS                       R9 R0 K6 ["Y"]
       20 SUBRK                            R8 K8 [1] R9
       21 MUL                              R6 R7 R8
       22 ADD                              R4 R5 R6
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["plotToViewPosition"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R4 2 1
        6 MUL                              R3 R2 R4
        7 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["viewToPlotPosition"]
        3 DIV                              R4 R0 R2
        4 MOVE                             R5 R1
        5 CALL                             R3 2 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 JUMPIF                           R2 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["Min"]
        3 RETURN                           R3 1
        4 GETTABLEKS                       R3 R2 K1 ["AbsoluteSize"]
        6 GETTABLEKS                       R5 R2 K2 ["AbsolutePosition"]
        8 SUB                              R4 R0 R5
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K3 ["absoluteToPlotPosition"]
       12 MOVE                             R6 R4
       13 MOVE                             R7 R1
       14 MOVE                             R8 R3
       15 CALL                             R5 3 -1
       16 RETURN                           R5 -1

PROTO_5:
        0 ORK                              R2 R2 K0 [0.001]
        1 LOADB                            R3 0
        2 GETTABLEKS                       R4 R0 K1 ["X"]
        4 GETTABLEKS                       R6 R1 K2 ["Min"]
        6 GETTABLEKS                       R6 R6 K1 ["X"]
        8 SUB                              R5 R6 R2
        9 JUMPIFNOTLE                      R5 R4 ; [+32]
       11 LOADB                            R3 0
       12 GETTABLEKS                       R4 R0 K1 ["X"]
       14 GETTABLEKS                       R6 R1 K3 ["Max"]
       16 GETTABLEKS                       R6 R6 K1 ["X"]
       18 ADD                              R5 R6 R2
       19 JUMPIFNOTLE                      R4 R5 ; [+22]
       21 LOADB                            R3 0
       22 GETTABLEKS                       R4 R0 K4 ["Y"]
       24 GETTABLEKS                       R6 R1 K2 ["Min"]
       26 GETTABLEKS                       R6 R6 K4 ["Y"]
       28 SUB                              R5 R6 R2
       29 JUMPIFNOTLE                      R5 R4 ; [+12]
       31 GETTABLEKS                       R4 R0 K4 ["Y"]
       33 GETTABLEKS                       R6 R1 K3 ["Max"]
       35 GETTABLEKS                       R6 R6 K4 ["Y"]
       37 ADD                              R5 R6 R2
       38 JUMPIFLE                         R4 R5 ; [+2]
       40 LOADB                            R3 0 +1
       41 LOADB                            R3 1
       42 RETURN                           R3 1

PROTO_6:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 GETTABLEKS                       R5 R0 K3 ["X"]
        4 GETTABLEKS                       R6 R1 K3 ["X"]
        6 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
        8 GETIMPORT                        R4 K6 [math.min]
       10 CALL                             R4 2 1
       11 GETTABLEKS                       R6 R0 K7 ["Y"]
       13 GETTABLEKS                       R7 R1 K7 ["Y"]
       15 FASTCALL2                        MATH_MIN R6 R7 ; [+3]
       17 GETIMPORT                        R5 K6 [math.min]
       19 CALL                             R5 2 1
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K2 [Vector2.new]
       23 GETTABLEKS                       R6 R0 K3 ["X"]
       25 GETTABLEKS                       R7 R1 K3 ["X"]
       27 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       29 GETIMPORT                        R5 K9 [math.max]
       31 CALL                             R5 2 1
       32 GETTABLEKS                       R7 R0 K7 ["Y"]
       34 GETTABLEKS                       R8 R1 K7 ["Y"]
       36 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       38 GETIMPORT                        R6 K9 [math.max]
       40 CALL                             R6 2 1
       41 CALL                             R4 2 1
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K10 ["rectContains"]
       45 MOVE                             R6 R0
       46 MOVE                             R7 R2
       47 LOADK                            R8 K11 [0.001]
       48 CALL                             R5 3 1
       49 JUMPIFNOT                        R5 ; [+15]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K10 ["rectContains"]
       53 MOVE                             R6 R1
       54 MOVE                             R7 R2
       55 LOADK                            R8 K11 [0.001]
       56 CALL                             R5 3 1
       57 JUMPIFNOT                        R5 ; [+7]
       58 NEWTABLE                         R5 0 2
       60 MOVE                             R6 R0
       61 MOVE                             R7 R1
       62 SETLIST                          R5 R6 2 [1]
       64 RETURN                           R5 1
       65 GETTABLEKS                       R5 R4 K3 ["X"]
       67 GETTABLEKS                       R6 R2 K12 ["Min"]
       69 GETTABLEKS                       R6 R6 K3 ["X"]
       71 JUMPIFLT                         R5 R6 ; [+25]
       73 GETTABLEKS                       R5 R4 K7 ["Y"]
       75 GETTABLEKS                       R6 R2 K12 ["Min"]
       77 GETTABLEKS                       R6 R6 K7 ["Y"]
       79 JUMPIFLT                         R5 R6 ; [+17]
       81 GETTABLEKS                       R5 R3 K3 ["X"]
       83 GETTABLEKS                       R6 R2 K13 ["Max"]
       85 GETTABLEKS                       R6 R6 K3 ["X"]
       87 JUMPIFLT                         R6 R5 ; [+9]
       89 GETTABLEKS                       R5 R3 K7 ["Y"]
       91 GETTABLEKS                       R6 R2 K13 ["Max"]
       93 GETTABLEKS                       R6 R6 K7 ["Y"]
       95 JUMPIFNOTLT                      R6 R5 ; [+3]
       97 LOADNIL                          R5
       98 RETURN                           R5 1
       99 SUB                              R5 R1 R0
      100 GETIMPORT                        R6 K2 [Vector2.new]
      102 LOADN                            R7 0
      103 LOADN                            R8 0
      104 CALL                             R6 2 1
      105 GETIMPORT                        R7 K2 [Vector2.new]
      107 LOADN                            R8 1
      108 LOADN                            R9 1
      109 CALL                             R7 2 1
      110 GETTABLEKS                       R8 R5 K3 ["X"]
      112 JUMPIFEQKN                       R8 K14 [0] ; [+33]
      114 GETIMPORT                        R8 K2 [Vector2.new]
      116 GETTABLEKS                       R11 R2 K12 ["Min"]
      118 GETTABLEKS                       R11 R11 K3 ["X"]
      120 GETTABLEKS                       R12 R0 K3 ["X"]
      122 SUB                              R10 R11 R12
      123 GETTABLEKS                       R11 R5 K3 ["X"]
      125 DIV                              R9 R10 R11
      126 GETTABLEKS                       R10 R6 K7 ["Y"]
      128 CALL                             R8 2 1
      129 MOVE                             R6 R8
      130 GETIMPORT                        R8 K2 [Vector2.new]
      132 GETTABLEKS                       R11 R2 K13 ["Max"]
      134 GETTABLEKS                       R11 R11 K3 ["X"]
      136 GETTABLEKS                       R12 R0 K3 ["X"]
      138 SUB                              R10 R11 R12
      139 GETTABLEKS                       R11 R5 K3 ["X"]
      141 DIV                              R9 R10 R11
      142 GETTABLEKS                       R10 R7 K7 ["Y"]
      144 CALL                             R8 2 1
      145 MOVE                             R7 R8
      146 GETTABLEKS                       R8 R5 K7 ["Y"]
      148 JUMPIFEQKN                       R8 K14 [0] ; [+33]
      150 GETIMPORT                        R8 K2 [Vector2.new]
      152 GETTABLEKS                       R9 R6 K3 ["X"]
      154 GETTABLEKS                       R12 R2 K12 ["Min"]
      156 GETTABLEKS                       R12 R12 K7 ["Y"]
      158 GETTABLEKS                       R13 R0 K7 ["Y"]
      160 SUB                              R11 R12 R13
      161 GETTABLEKS                       R12 R5 K7 ["Y"]
      163 DIV                              R10 R11 R12
      164 CALL                             R8 2 1
      165 MOVE                             R6 R8
      166 GETIMPORT                        R8 K2 [Vector2.new]
      168 GETTABLEKS                       R9 R7 K3 ["X"]
      170 GETTABLEKS                       R12 R2 K13 ["Max"]
      172 GETTABLEKS                       R12 R12 K7 ["Y"]
      174 GETTABLEKS                       R13 R0 K7 ["Y"]
      176 SUB                              R11 R12 R13
      177 GETTABLEKS                       R12 R5 K7 ["Y"]
      179 DIV                              R10 R11 R12
      180 CALL                             R8 2 1
      181 MOVE                             R7 R8
      182 LOADN                            R9 0
      183 GETTABLEKS                       R11 R6 K3 ["X"]
      185 GETTABLEKS                       R12 R7 K3 ["X"]
      187 FASTCALL2                        MATH_MIN R11 R12 ; [+3]
      189 GETIMPORT                        R10 K6 [math.min]
      191 CALL                             R10 2 1
      192 GETTABLEKS                       R12 R6 K7 ["Y"]
      194 GETTABLEKS                       R13 R7 K7 ["Y"]
      196 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
      198 GETIMPORT                        R11 K6 [math.min]
      200 CALL                             R11 2 1
      201 FASTCALL                         MATH_MAX ; [+2]
      202 GETIMPORT                        R8 K9 [math.max]
      204 CALL                             R8 3 1
      205 LOADN                            R10 1
      206 GETTABLEKS                       R12 R6 K3 ["X"]
      208 GETTABLEKS                       R13 R7 K3 ["X"]
      210 FASTCALL2                        MATH_MAX R12 R13 ; [+3]
      212 GETIMPORT                        R11 K9 [math.max]
      214 CALL                             R11 2 1
      215 GETTABLEKS                       R13 R6 K7 ["Y"]
      217 GETTABLEKS                       R14 R7 K7 ["Y"]
      219 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
      221 GETIMPORT                        R12 K9 [math.max]
      223 CALL                             R12 2 1
      224 FASTCALL                         MATH_MIN ; [+2]
      225 GETIMPORT                        R9 K6 [math.min]
      227 CALL                             R9 3 1
      228 JUMPIFNOTLE                      R9 R8 ; [+3]
      230 LOADNIL                          R10
      231 RETURN                           R10 1
      232 NEWTABLE                         R10 0 2
      234 MOVE                             R13 R1
      235 MOVE                             R14 R8
      236 NAMECALL                         R11 R0 K15 ["Lerp"]
      238 CALL                             R11 3 1
      239 MOVE                             R14 R1
      240 MOVE                             R15 R9
      241 NAMECALL                         R12 R0 K15 ["Lerp"]
      243 CALL                             R12 3 -1
      244 SETLIST                          R10 R11 -1 [1]
      246 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 LOADN                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["MIN_ZOOM"]
        6 LOADK                            R1 K1 [10000000]
        7 SETTABLEKS                       R1 R0 K2 ["MAX_ZOOM"]
        9 DUPCLOSURE                       R1 K3 [PROTO_0]
       10 SETTABLEKS                       R1 R0 K4 ["plotToViewPosition"]
       12 DUPCLOSURE                       R1 K5 [PROTO_1]
       13 SETTABLEKS                       R1 R0 K6 ["viewToPlotPosition"]
       15 DUPCLOSURE                       R1 K7 [PROTO_2]
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K8 ["plotToAbsolutePosition"]
       19 DUPCLOSURE                       R1 K9 [PROTO_3]
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K10 ["absoluteToPlotPosition"]
       23 DUPCLOSURE                       R1 K11 [PROTO_4]
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K12 ["mouseCoordsToPlotPosition"]
       27 DUPCLOSURE                       R1 K13 [PROTO_5]
       28 SETTABLEKS                       R1 R0 K14 ["rectContains"]
       30 DUPCLOSURE                       R1 K15 [PROTO_6]
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K16 ["clampLineToRect"]
       34 RETURN                           R0 1
