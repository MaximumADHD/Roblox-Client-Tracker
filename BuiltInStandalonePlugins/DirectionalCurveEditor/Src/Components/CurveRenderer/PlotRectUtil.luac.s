PROTO_0:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 GETTABLEKS                       R5 R0 K3 ["X"]
        4 GETTABLEKS                       R7 R1 K4 ["Min"]
        6 GETTABLEKS                       R6 R7 K3 ["X"]
        8 SUB                              R4 R5 R6
        9 GETTABLEKS                       R5 R1 K5 ["Width"]
       11 DIV                              R3 R4 R5
       12 GETTABLEKS                       R7 R0 K7 ["Y"]
       14 GETTABLEKS                       R9 R1 K4 ["Min"]
       16 GETTABLEKS                       R8 R9 K7 ["Y"]
       18 SUB                              R6 R7 R8
       19 GETTABLEKS                       R7 R1 K8 ["Height"]
       21 DIV                              R5 R6 R7
       22 SUBRK                            R4 R6 K5 ["Width"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 GETTABLEKS                       R5 R1 K3 ["Min"]
        4 GETTABLEKS                       R4 R5 K4 ["X"]
        6 GETTABLEKS                       R6 R1 K5 ["Width"]
        8 GETTABLEKS                       R7 R0 K4 ["X"]
       10 MUL                              R5 R6 R7
       11 ADD                              R3 R4 R5
       12 GETTABLEKS                       R6 R1 K3 ["Min"]
       14 GETTABLEKS                       R5 R6 K6 ["Y"]
       16 GETTABLEKS                       R7 R1 K7 ["Height"]
       18 GETTABLEKS                       R9 R0 K6 ["Y"]
       20 SUBRK                            R8 R8 K9 [NULL]
       21 MUL                              R6 R7 R8
       22 ADD                              R4 R5 R6
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["plotToViewPosition"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R4 2 1
        6 MUL                              R3 R2 R4
        7 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["viewToPlotPosition"]
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
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K3 ["absoluteToPlotPosition"]
       12 MOVE                             R6 R4
       13 MOVE                             R7 R1
       14 MOVE                             R8 R3
       15 CALL                             R5 3 -1
       16 RETURN                           R5 -1

PROTO_5:
        0 ORK                              R2 R2 K0 [0.001]
        1 LOADB                            R3 0
        2 GETTABLEKS                       R4 R0 K1 ["X"]
        4 GETTABLEKS                       R7 R1 K2 ["Min"]
        6 GETTABLEKS                       R6 R7 K1 ["X"]
        8 SUB                              R5 R6 R2
        9 JUMPIFNOTLE                      R5 R4 ; [+32]
       11 LOADB                            R3 0
       12 GETTABLEKS                       R4 R0 K1 ["X"]
       14 GETTABLEKS                       R7 R1 K3 ["Max"]
       16 GETTABLEKS                       R6 R7 K1 ["X"]
       18 ADD                              R5 R6 R2
       19 JUMPIFNOTLE                      R4 R5 ; [+22]
       21 LOADB                            R3 0
       22 GETTABLEKS                       R4 R0 K4 ["Y"]
       24 GETTABLEKS                       R7 R1 K2 ["Min"]
       26 GETTABLEKS                       R6 R7 K4 ["Y"]
       28 SUB                              R5 R6 R2
       29 JUMPIFNOTLE                      R5 R4 ; [+12]
       31 GETTABLEKS                       R4 R0 K4 ["Y"]
       33 GETTABLEKS                       R7 R1 K3 ["Max"]
       35 GETTABLEKS                       R6 R7 K4 ["Y"]
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
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R5 R6 K10 ["rectContains"]
       45 MOVE                             R6 R0
       46 MOVE                             R7 R2
       47 LOADK                            R8 K11 [0.001]
       48 CALL                             R5 3 1
       49 JUMPIFNOT                        R5 ; [+15]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R5 R6 K10 ["rectContains"]
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
       67 GETTABLEKS                       R7 R2 K12 ["Min"]
       69 GETTABLEKS                       R6 R7 K3 ["X"]
       71 JUMPIFLT                         R5 R6 ; [+25]
       73 GETTABLEKS                       R5 R4 K7 ["Y"]
       75 GETTABLEKS                       R7 R2 K12 ["Min"]
       77 GETTABLEKS                       R6 R7 K7 ["Y"]
       79 JUMPIFLT                         R5 R6 ; [+17]
       81 GETTABLEKS                       R5 R3 K3 ["X"]
       83 GETTABLEKS                       R7 R2 K13 ["Max"]
       85 GETTABLEKS                       R6 R7 K3 ["X"]
       87 JUMPIFLT                         R6 R5 ; [+9]
       89 GETTABLEKS                       R5 R3 K7 ["Y"]
       91 GETTABLEKS                       R7 R2 K13 ["Max"]
       93 GETTABLEKS                       R6 R7 K7 ["Y"]
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
      116 GETTABLEKS                       R12 R2 K12 ["Min"]
      118 GETTABLEKS                       R11 R12 K3 ["X"]
      120 GETTABLEKS                       R12 R0 K3 ["X"]
      122 SUB                              R10 R11 R12
      123 GETTABLEKS                       R11 R5 K3 ["X"]
      125 DIV                              R9 R10 R11
      126 GETTABLEKS                       R10 R6 K7 ["Y"]
      128 CALL                             R8 2 1
      129 MOVE                             R6 R8
      130 GETIMPORT                        R8 K2 [Vector2.new]
      132 GETTABLEKS                       R12 R2 K13 ["Max"]
      134 GETTABLEKS                       R11 R12 K3 ["X"]
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
      154 GETTABLEKS                       R13 R2 K12 ["Min"]
      156 GETTABLEKS                       R12 R13 K7 ["Y"]
      158 GETTABLEKS                       R13 R0 K7 ["Y"]
      160 SUB                              R11 R12 R13
      161 GETTABLEKS                       R12 R5 K7 ["Y"]
      163 DIV                              R10 R11 R12
      164 CALL                             R8 2 1
      165 MOVE                             R6 R8
      166 GETIMPORT                        R8 K2 [Vector2.new]
      168 GETTABLEKS                       R9 R7 K3 ["X"]
      170 GETTABLEKS                       R13 R2 K13 ["Max"]
      172 GETTABLEKS                       R12 R13 K7 ["Y"]
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

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["plotToAbsolutePolar"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 GETIMPORT                        R5 K3 [Vector2.one]
        7 CALL                             R2 3 -1
        8 RETURN                           R2 -1

PROTO_8:
        0 DIVK                             R3 R2 K0 [2]
        1 GETTABLEKS                       R6 R2 K1 ["X"]
        3 GETTABLEKS                       R7 R2 K2 ["Y"]
        5 FASTCALL2                        MATH_MIN R6 R7 ; [+3]
        7 GETIMPORT                        R5 K5 [math.min]
        9 CALL                             R5 2 1
       10 DIVK                             R4 R5 K0 [2]
       11 MULK                             R5 R4 K6 [0.15]
       12 GETTABLEKS                       R8 R0 K2 ["Y"]
       14 SUB                              R9 R4 R5
       15 MUL                              R7 R8 R9
       16 ADD                              R6 R7 R5
       17 GETIMPORT                        R7 K9 [Vector2.new]
       19 JUMPIFNOT                        R1 ; [+2]
       20 LOADN                            R9 1
       21 JUMP                             ; [+1]
       22 LOADN                            R9 255
       23 GETTABLEKS                       R13 R0 K1 ["X"]
       25 MULK                             R12 R13 K11 [3.14159265358979]
       26 DIVK                             R11 R12 K10 [180]
       27 FASTCALL1                        MATH_SIN R11 ; [+2]
       28 GETIMPORT                        R10 K13 [math.sin]
       30 CALL                             R10 1 1
       31 MUL                              R8 R9 R10
       32 GETTABLEKS                       R13 R0 K1 ["X"]
       34 MULK                             R12 R13 K11 [3.14159265358979]
       35 DIVK                             R11 R12 K10 [180]
       36 FASTCALL1                        MATH_COS R11 ; [+2]
       37 GETIMPORT                        R10 K15 [math.cos]
       39 CALL                             R10 1 1
       40 MINUS                            R9 R10
       41 CALL                             R7 2 1
       42 MUL                              R9 R7 R6
       43 ADD                              R8 R3 R9
       44 RETURN                           R8 1

PROTO_9:
        0 DIVK                             R2 R1 K0 [2]
        1 GETTABLEKS                       R5 R1 K1 ["X"]
        3 GETTABLEKS                       R6 R1 K2 ["Y"]
        5 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
        7 GETIMPORT                        R4 K5 [math.min]
        9 CALL                             R4 2 1
       10 DIVK                             R3 R4 K0 [2]
       11 MULK                             R4 R3 K6 [0.15]
       12 SUB                              R10 R0 R2
       13 GETTABLEKS                       R9 R10 K2 ["Y"]
       15 MINUS                            R8 R9
       16 SUB                              R10 R0 R2
       17 GETTABLEKS                       R9 R10 K1 ["X"]
       19 FASTCALL2                        MATH_ATAN2 R8 R9 ; [+3]
       21 GETIMPORT                        R7 K10 [math.atan2]
       23 CALL                             R7 2 1
       24 MULK                             R6 R7 K8 [180]
       25 DIVK                             R5 R6 K7 [3.14159265358979]
       26 LOADN                            R6 0
       27 JUMPIFNOTLT                      R6 R5 ; [+8]
       29 SUBK                             R7 R5 K11 [90]
       30 FASTCALL1                        MATH_ABS R7 ; [+2]
       31 GETIMPORT                        R6 K13 [math.abs]
       33 CALL                             R6 1 1
       34 MOVE                             R5 R6
       35 JUMP                             ; [+6]
       36 ADDK                             R7 R5 K11 [90]
       37 FASTCALL1                        MATH_ABS R7 ; [+2]
       38 GETIMPORT                        R6 K13 [math.abs]
       40 CALL                             R6 1 1
       41 SUBRK                            R5 R8 K6 [0.15]
       42 SUB                              R7 R0 R2
       43 GETTABLEKS                       R6 R7 K14 ["Magnitude"]
       45 SUB                              R7 R6 R4
       46 SUB                              R8 R3 R4
       47 DIV                              R6 R7 R8
       48 GETIMPORT                        R7 K17 [Vector2.new]
       50 MOVE                             R8 R5
       51 MOVE                             R9 R6
       52 CALL                             R7 2 -1
       53 RETURN                           R7 -1

PROTO_10:
        0 JUMPIF                           R1 ; [+3]
        1 GETIMPORT                        R2 K2 [Vector2.zero]
        3 RETURN                           R2 1
        4 GETTABLEKS                       R2 R1 K3 ["AbsoluteSize"]
        6 GETTABLEKS                       R4 R1 K4 ["AbsolutePosition"]
        8 SUB                              R3 R0 R4
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K5 ["absoluteToPlotPolar"]
       12 MOVE                             R5 R3
       13 MOVE                             R6 R2
       14 CALL                             R4 2 -1
       15 RETURN                           R4 -1

PROTO_11:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["X"]
        4 GETTABLEKS                       R2 R3 K4 ["Offset"]
        6 GETTABLEKS                       R4 R0 K5 ["Y"]
        8 GETTABLEKS                       R3 R4 K4 ["Offset"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_12:
        0 JUMPIF                           R0 ; [+4]
        1 GETIMPORT                        R3 K2 [Path2DControlPoint.new]
        3 CALL                             R3 0 -1
        4 RETURN                           R3 -1
        5 JUMPIFNOT                        R1 ; [+1]
        6 JUMPIF                           R2 ; [+11]
        7 GETIMPORT                        R3 K2 [Path2DControlPoint.new]
        9 GETIMPORT                        R4 K5 [UDim2.fromOffset]
       11 GETTABLEKS                       R5 R0 K6 ["X"]
       13 GETTABLEKS                       R6 R0 K7 ["Y"]
       15 CALL                             R4 2 -1
       16 CALL                             R3 -1 -1
       17 RETURN                           R3 -1
       18 GETIMPORT                        R3 K2 [Path2DControlPoint.new]
       20 GETIMPORT                        R4 K5 [UDim2.fromOffset]
       22 GETTABLEKS                       R5 R0 K6 ["X"]
       24 GETTABLEKS                       R6 R0 K7 ["Y"]
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K5 [UDim2.fromOffset]
       29 GETTABLEKS                       R6 R1 K6 ["X"]
       31 GETTABLEKS                       R7 R1 K7 ["Y"]
       33 CALL                             R5 2 1
       34 GETIMPORT                        R6 K5 [UDim2.fromOffset]
       36 GETTABLEKS                       R7 R2 K6 ["X"]
       38 GETTABLEKS                       R8 R2 K7 ["Y"]
       40 CALL                             R6 2 -1
       41 CALL                             R3 -1 -1
       42 RETURN                           R3 -1

PROTO_13:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R4 0
        3 LENGTH                           R5 R0
        4 LOADN                            R6 1
        5 GETTABLEN                        R7 R0 1
        6 JUMPIFNOTLE                      R6 R5 ; [+173]
        8 GETTABLE                         R8 R0 R6
        9 GETUPVAL                         R10 0
       10 GETTABLEKS                       R9 R10 K0 ["plotToAbsolutePolar"]
       12 MOVE                             R10 R8
       13 MOVE                             R11 R1
       14 MOVE                             R12 R2
       15 CALL                             R9 3 1
       16 JUMPIFNOTEQKN                    R6 K1 [1] ; [+15]
       18 MOVE                             R11 R3
       19 GETUPVAL                         R13 0
       20 GETTABLEKS                       R12 R13 K2 ["makeControlPoint"]
       22 MOVE                             R13 R9
       23 CALL                             R12 1 -1
       24 FASTCALL                         TABLE_INSERT ; [+2]
       25 GETIMPORT                        R10 K5 [table.insert]
       27 CALL                             R10 -1 0
       28 ADDK                             R4 R4 K1 [1]
       29 ADDK                             R6 R6 K1 [1]
       30 MOVE                             R7 R8
       31 JUMP                             ; [+147]
       32 MOVE                             R10 R7
       33 GETTABLEKS                       R11 R10 K6 ["X"]
       35 GETTABLEKS                       R12 R8 K6 ["X"]
       37 JUMPIFNOTEQ                      R11 R12 ; [+15]
       39 MOVE                             R12 R3
       40 GETUPVAL                         R14 0
       41 GETTABLEKS                       R13 R14 K2 ["makeControlPoint"]
       43 MOVE                             R14 R9
       44 CALL                             R13 1 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R11 K5 [table.insert]
       48 CALL                             R11 -1 0
       49 ADDK                             R4 R4 K1 [1]
       50 ADDK                             R6 R6 K1 [1]
       51 MOVE                             R7 R8
       52 JUMP                             ; [+126]
       53 LOADB                            R11 0
       54 GETTABLEKS                       R12 R8 K6 ["X"]
       56 GETTABLEKS                       R14 R10 K6 ["X"]
       58 ADDK                             R13 R14 K7 [90]
       59 JUMPIFNOTLT                      R13 R12 ; [+13]
       61 LOADB                            R11 1
       62 ADD                              R12 R10 R8
       63 DIVK                             R8 R12 K8 [2]
       64 GETUPVAL                         R13 0
       65 GETTABLEKS                       R12 R13 K0 ["plotToAbsolutePolar"]
       67 MOVE                             R13 R8
       68 MOVE                             R14 R1
       69 MOVE                             R15 R2
       70 CALL                             R12 3 1
       71 MOVE                             R9 R12
       72 JUMPBACK                         ; [-19]
       73 GETUPVAL                         R13 0
       74 GETTABLEKS                       R12 R13 K0 ["plotToAbsolutePolar"]
       76 MOVE                             R13 R10
       77 MOVE                             R14 R1
       78 MOVE                             R15 R2
       79 CALL                             R12 3 1
       80 DIVK                             R13 R2 K8 [2]
       81 SUB                              R14 R12 R13
       82 SUB                              R15 R9 R13
       83 GETUPVAL                         R19 0
       84 GETTABLEKS                       R18 R19 K0 ["plotToAbsolutePolar"]
       86 SUB                              R21 R8 R10
       87 MULK                             R20 R21 K9 [0.001]
       88 ADD                              R19 R10 R20
       89 MOVE                             R20 R1
       90 MOVE                             R21 R2
       91 CALL                             R18 3 1
       92 SUB                              R17 R18 R12
       93 GETTABLEKS                       R16 R17 K10 ["Unit"]
       95 GETUPVAL                         R20 0
       96 GETTABLEKS                       R19 R20 K0 ["plotToAbsolutePolar"]
       98 SUB                              R22 R8 R10
       99 MULK                             R21 R22 K9 [0.001]
      100 ADD                              R20 R8 R21
      101 MOVE                             R21 R1
      102 MOVE                             R22 R2
      103 CALL                             R19 3 1
      104 SUB                              R18 R19 R9
      105 GETTABLEKS                       R17 R18 K10 ["Unit"]
      107 GETTABLEKS                       R21 R14 K12 ["Magnitude"]
      109 MUL                              R20 R16 R21
      110 MULK                             R19 R20 K11 [1.33333333333333]
      111 GETTABLEKS                       R26 R10 K6 ["X"]
      113 GETTABLEKS                       R27 R8 K6 ["X"]
      115 SUB                              R25 R26 R27
      116 FASTCALL1                        MATH_ABS R25 ; [+2]
      117 GETIMPORT                        R24 K17 [math.abs]
      119 CALL                             R24 1 1
      120 DIVRK                            R23 R14 K24 [NULL]
      121 MULK                             R22 R23 K8 [2]
      122 DIVRK                            R21 R13 K22 [NULL]
      123 FASTCALL1                        MATH_TAN R21 ; [+2]
      124 GETIMPORT                        R20 K19 [math.tan]
      126 CALL                             R20 1 1
      127 MUL                              R18 R19 R20
      128 GETTABLEKS                       R22 R15 K12 ["Magnitude"]
      130 MUL                              R21 R17 R22
      131 MULK                             R20 R21 K11 [1.33333333333333]
      132 GETTABLEKS                       R27 R10 K6 ["X"]
      134 GETTABLEKS                       R28 R8 K6 ["X"]
      136 SUB                              R26 R27 R28
      137 FASTCALL1                        MATH_ABS R26 ; [+2]
      138 GETIMPORT                        R25 K17 [math.abs]
      140 CALL                             R25 1 1
      141 DIVRK                            R24 R14 K25 [NULL]
      142 MULK                             R23 R24 K8 [2]
      143 DIVRK                            R22 R13 K23 [NULL]
      144 FASTCALL1                        MATH_TAN R22 ; [+2]
      145 GETIMPORT                        R21 K19 [math.tan]
      147 CALL                             R21 1 1
      148 MUL                              R19 R20 R21
      149 GETUPVAL                         R21 0
      150 GETTABLEKS                       R20 R21 K2 ["makeControlPoint"]
      152 MOVE                             R21 R12
      153 GETUPVAL                         R23 0
      154 GETTABLEKS                       R22 R23 K20 ["toOffset"]
      156 GETTABLE                         R24 R3 R4
      157 GETTABLEKS                       R23 R24 K21 ["LeftTangent"]
      159 CALL                             R22 1 1
      160 MOVE                             R23 R18
      161 CALL                             R20 3 1
      162 SETTABLE                         R20 R3 R4
      163 MOVE                             R21 R3
      164 GETUPVAL                         R23 0
      165 GETTABLEKS                       R22 R23 K2 ["makeControlPoint"]
      167 MOVE                             R23 R9
      168 MINUS                            R24 R19
      169 MOVE                             R25 R19
      170 CALL                             R22 3 -1
      171 FASTCALL                         TABLE_INSERT ; [+2]
      172 GETIMPORT                        R20 K5 [table.insert]
      174 CALL                             R20 -1 0
      175 ADDK                             R4 R4 K1 [1]
      176 JUMPIF                           R11 ; [+1]
      177 ADDK                             R6 R6 K1 [1]
      178 MOVE                             R7 R8
      179 JUMPBACK                         ; [-174]
      180 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["plotToViewPosition"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["viewToPlotPosition"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K5 ["plotToAbsolutePosition"]
       13 DUPCLOSURE                       R1 K6 [PROTO_3]
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K7 ["absoluteToPlotPosition"]
       17 DUPCLOSURE                       R1 K8 [PROTO_4]
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K9 ["mouseCoordsToPlotPosition"]
       21 DUPCLOSURE                       R1 K10 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K11 ["rectContains"]
       24 DUPCLOSURE                       R1 K12 [PROTO_6]
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K13 ["clampLineToRect"]
       28 DUPCLOSURE                       R1 K14 [PROTO_7]
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K15 ["plotToViewPolar"]
       32 DUPCLOSURE                       R1 K16 [PROTO_8]
       33 SETTABLEKS                       R1 R0 K17 ["plotToAbsolutePolar"]
       35 DUPCLOSURE                       R1 K18 [PROTO_9]
       36 SETTABLEKS                       R1 R0 K19 ["absoluteToPlotPolar"]
       38 DUPCLOSURE                       R1 K20 [PROTO_10]
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K21 ["mouseToPlotPolar"]
       42 DUPCLOSURE                       R1 K22 [PROTO_11]
       43 SETTABLEKS                       R1 R0 K23 ["toOffset"]
       45 DUPCLOSURE                       R1 K24 [PROTO_12]
       46 SETTABLEKS                       R1 R0 K25 ["makeControlPoint"]
       48 DUPCLOSURE                       R1 K26 [PROTO_13]
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R1 R0 K27 ["makePolarCurve"]
       52 RETURN                           R0 1
