PROTO_0:
        0 MOVE                             R5 R4
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K0 ["Top"]
        4 JUMPIFEQ                         R0 R6 ; [+6]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K1 ["Bottom"]
        9 JUMPIFNOTEQ                      R0 R6 ; [+8]
       11 GETIMPORT                        R6 K4 [Vector2.new]
       13 MOVE                             R7 R2
       14 ADD                              R8 R1 R3
       15 CALL                             R6 2 1
       16 ADD                              R5 R5 R6
       17 RETURN                           R5 1
       18 GETIMPORT                        R6 K4 [Vector2.new]
       20 ADD                              R7 R1 R3
       21 MOVE                             R8 R2
       22 CALL                             R6 2 1
       23 ADD                              R5 R5 R6
       24 RETURN                           R5 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Min"]
        2 GETTABLEKS                       R2 R2 K1 ["X"]
        4 GETTABLEKS                       R3 R1 K2 ["Max"]
        6 GETTABLEKS                       R3 R3 K1 ["X"]
        8 JUMPIFLT                         R3 R2 ; [+31]
       10 GETTABLEKS                       R2 R0 K2 ["Max"]
       12 GETTABLEKS                       R2 R2 K1 ["X"]
       14 GETTABLEKS                       R3 R1 K0 ["Min"]
       16 GETTABLEKS                       R3 R3 K1 ["X"]
       18 JUMPIFLT                         R2 R3 ; [+21]
       20 GETTABLEKS                       R2 R0 K0 ["Min"]
       22 GETTABLEKS                       R2 R2 K3 ["Y"]
       24 GETTABLEKS                       R3 R1 K2 ["Max"]
       26 GETTABLEKS                       R3 R3 K3 ["Y"]
       28 JUMPIFLT                         R3 R2 ; [+11]
       30 GETTABLEKS                       R2 R0 K2 ["Max"]
       32 GETTABLEKS                       R2 R2 K3 ["Y"]
       34 GETTABLEKS                       R3 R1 K0 ["Min"]
       36 GETTABLEKS                       R3 R3 K3 ["Y"]
       38 JUMPIFNOTLT                      R2 R3 ; [+3]
       40 LOADB                            R2 0
       41 RETURN                           R2 1
       42 LOADB                            R2 1
       43 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Top"]
        3 JUMPIFNOTEQ                      R0 R4 ; [+32]
        5 GETTABLEKS                       R5 R1 K1 ["Min"]
        7 GETTABLEKS                       R5 R5 K2 ["Y"]
        9 GETTABLEKS                       R6 R3 K2 ["Y"]
       11 SUB                              R4 R5 R6
       12 GETTABLEKS                       R5 R2 K1 ["Min"]
       14 GETTABLEKS                       R5 R5 K2 ["Y"]
       16 JUMPIFNOTLT                      R4 R5 ; [+126]
       18 GETTABLEKS                       R5 R1 K3 ["Max"]
       20 GETTABLEKS                       R5 R5 K2 ["Y"]
       22 GETTABLEKS                       R6 R3 K2 ["Y"]
       24 ADD                              R4 R5 R6
       25 GETTABLEKS                       R5 R2 K3 ["Max"]
       27 GETTABLEKS                       R5 R5 K2 ["Y"]
       29 JUMPIFNOTLT                      R4 R5 ; [+113]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K4 ["Bottom"]
       34 RETURN                           R4 1
       35 RETURN                           R0 1
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K4 ["Bottom"]
       39 JUMPIFNOTEQ                      R0 R4 ; [+32]
       41 GETTABLEKS                       R5 R1 K3 ["Max"]
       43 GETTABLEKS                       R5 R5 K2 ["Y"]
       45 GETTABLEKS                       R6 R3 K2 ["Y"]
       47 ADD                              R4 R5 R6
       48 GETTABLEKS                       R5 R2 K3 ["Max"]
       50 GETTABLEKS                       R5 R5 K2 ["Y"]
       52 JUMPIFNOTLT                      R5 R4 ; [+90]
       54 GETTABLEKS                       R5 R1 K1 ["Min"]
       56 GETTABLEKS                       R5 R5 K2 ["Y"]
       58 GETTABLEKS                       R6 R3 K2 ["Y"]
       60 SUB                              R4 R5 R6
       61 GETTABLEKS                       R5 R2 K1 ["Min"]
       63 GETTABLEKS                       R5 R5 K2 ["Y"]
       65 JUMPIFNOTLT                      R5 R4 ; [+77]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R4 R4 K0 ["Top"]
       70 RETURN                           R4 1
       71 RETURN                           R0 1
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R4 R4 K5 ["Left"]
       75 JUMPIFNOTEQ                      R0 R4 ; [+32]
       77 GETTABLEKS                       R5 R1 K1 ["Min"]
       79 GETTABLEKS                       R5 R5 K6 ["X"]
       81 GETTABLEKS                       R6 R3 K6 ["X"]
       83 SUB                              R4 R5 R6
       84 GETTABLEKS                       R5 R2 K1 ["Min"]
       86 GETTABLEKS                       R5 R5 K6 ["X"]
       88 JUMPIFNOTLT                      R4 R5 ; [+54]
       90 GETTABLEKS                       R5 R1 K3 ["Max"]
       92 GETTABLEKS                       R5 R5 K6 ["X"]
       94 GETTABLEKS                       R6 R3 K6 ["X"]
       96 ADD                              R4 R5 R6
       97 GETTABLEKS                       R5 R2 K3 ["Max"]
       99 GETTABLEKS                       R5 R5 K6 ["X"]
      101 JUMPIFNOTLT                      R4 R5 ; [+41]
      103 GETUPVAL                         R4 0
      104 GETTABLEKS                       R4 R4 K7 ["Right"]
      106 RETURN                           R4 1
      107 RETURN                           R0 1
      108 GETUPVAL                         R4 0
      109 GETTABLEKS                       R4 R4 K7 ["Right"]
      111 JUMPIFNOTEQ                      R0 R4 ; [+31]
      113 GETTABLEKS                       R5 R1 K3 ["Max"]
      115 GETTABLEKS                       R5 R5 K6 ["X"]
      117 GETTABLEKS                       R6 R3 K6 ["X"]
      119 ADD                              R4 R5 R6
      120 GETTABLEKS                       R5 R2 K3 ["Max"]
      122 GETTABLEKS                       R5 R5 K6 ["X"]
      124 JUMPIFNOTLT                      R5 R4 ; [+18]
      126 GETTABLEKS                       R5 R1 K1 ["Min"]
      128 GETTABLEKS                       R5 R5 K6 ["X"]
      130 GETTABLEKS                       R6 R3 K6 ["X"]
      132 SUB                              R4 R5 R6
      133 GETTABLEKS                       R5 R2 K1 ["Min"]
      135 GETTABLEKS                       R5 R5 K6 ["X"]
      137 JUMPIFNOTLT                      R5 R4 ; [+5]
      139 GETUPVAL                         R4 0
      140 GETTABLEKS                       R4 R4 K5 ["Left"]
      142 RETURN                           R4 1
      143 RETURN                           R0 1

PROTO_3:
        0 LOADB                            R5 1
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K0 ["Top"]
        4 JUMPIFEQ                         R0 R6 ; [+8]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K1 ["Bottom"]
        9 JUMPIFEQ                         R0 R6 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 JUMPIFNOT                        R5 ; [+46]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K2 ["Start"]
       17 JUMPIFNOTEQ                      R1 R6 ; [+19]
       19 GETTABLEKS                       R7 R2 K3 ["Min"]
       21 GETTABLEKS                       R7 R7 K4 ["X"]
       23 GETTABLEKS                       R8 R4 K4 ["X"]
       25 ADD                              R6 R7 R8
       26 GETTABLEKS                       R7 R3 K5 ["Max"]
       28 GETTABLEKS                       R7 R7 K4 ["X"]
       30 JUMPIFNOTLT                      R7 R6 ; [+74]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K6 ["End"]
       35 RETURN                           R6 1
       36 RETURN                           R1 1
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K6 ["End"]
       40 JUMPIFNOTEQ                      R1 R6 ; [+64]
       42 GETTABLEKS                       R7 R2 K5 ["Max"]
       44 GETTABLEKS                       R7 R7 K4 ["X"]
       46 GETTABLEKS                       R8 R4 K4 ["X"]
       48 SUB                              R6 R7 R8
       49 GETTABLEKS                       R7 R3 K3 ["Min"]
       51 GETTABLEKS                       R7 R7 K4 ["X"]
       53 JUMPIFNOTLT                      R6 R7 ; [+51]
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K2 ["Start"]
       58 RETURN                           R6 1
       59 RETURN                           R1 1
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R6 R6 K2 ["Start"]
       63 JUMPIFNOTEQ                      R1 R6 ; [+19]
       65 GETTABLEKS                       R7 R2 K3 ["Min"]
       67 GETTABLEKS                       R7 R7 K7 ["Y"]
       69 GETTABLEKS                       R8 R4 K7 ["Y"]
       71 ADD                              R6 R7 R8
       72 GETTABLEKS                       R7 R3 K5 ["Max"]
       74 GETTABLEKS                       R7 R7 K7 ["Y"]
       76 JUMPIFNOTLT                      R7 R6 ; [+28]
       78 GETUPVAL                         R6 1
       79 GETTABLEKS                       R6 R6 K6 ["End"]
       81 RETURN                           R6 1
       82 RETURN                           R1 1
       83 GETUPVAL                         R6 1
       84 GETTABLEKS                       R6 R6 K6 ["End"]
       86 JUMPIFNOTEQ                      R1 R6 ; [+18]
       88 GETTABLEKS                       R7 R2 K5 ["Max"]
       90 GETTABLEKS                       R7 R7 K7 ["Y"]
       92 GETTABLEKS                       R8 R4 K7 ["Y"]
       94 SUB                              R6 R7 R8
       95 GETTABLEKS                       R7 R3 K3 ["Min"]
       97 GETTABLEKS                       R7 R7 K7 ["Y"]
       99 JUMPIFNOTLT                      R6 R7 ; [+5]
      101 GETUPVAL                         R6 1
      102 GETTABLEKS                       R6 R6 K2 ["Start"]
      104 RETURN                           R6 1
      105 RETURN                           R1 1

PROTO_4:
        0 SUB                              R3 R1 R2
        1 GETTABLEKS                       R5 R0 K0 ["Max"]
        3 GETTABLEKS                       R5 R5 K1 ["Y"]
        5 GETTABLEKS                       R6 R3 K1 ["Y"]
        7 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
        9 GETIMPORT                        R4 K4 [math.min]
       11 CALL                             R4 2 1
       12 GETIMPORT                        R5 K7 [Rect.new]
       14 GETTABLEKS                       R6 R0 K8 ["Min"]
       16 GETIMPORT                        R7 K10 [Vector2.new]
       18 GETTABLEKS                       R8 R0 K0 ["Max"]
       20 GETTABLEKS                       R8 R8 K11 ["X"]
       22 MOVE                             R9 R4
       23 CALL                             R7 2 -1
       24 CALL                             R5 -1 -1
       25 RETURN                           R5 -1

PROTO_5:
        0 DUPTABLE                         R8 K2 [{"X", "Y"}]
        1 LOADN                            R9 0
        2 SETTABLEKS                       R9 R8 K0 ["X"]
        4 LOADN                            R9 0
        5 SETTABLEKS                       R9 R8 K1 ["Y"]
        7 DUPTABLE                         R9 K2 [{"X", "Y"}]
        8 LOADN                            R10 0
        9 SETTABLEKS                       R10 R9 K0 ["X"]
       11 LOADN                            R10 0
       12 SETTABLEKS                       R10 R9 K1 ["Y"]
       14 DUPTABLE                         R10 K2 [{"X", "Y"}]
       15 LOADN                            R11 0
       16 SETTABLEKS                       R11 R10 K0 ["X"]
       18 LOADN                            R11 0
       19 SETTABLEKS                       R11 R10 K1 ["Y"]
       21 LOADB                            R11 1
       22 GETUPVAL                         R12 0
       23 GETTABLEKS                       R12 R12 K3 ["Top"]
       25 JUMPIFEQ                         R0 R12 ; [+8]
       27 GETUPVAL                         R12 0
       28 GETTABLEKS                       R12 R12 K4 ["Bottom"]
       30 JUMPIFEQ                         R0 R12 ; [+2]
       32 LOADB                            R11 0 +1
       33 LOADB                            R11 1
       34 LOADB                            R12 1
       35 GETUPVAL                         R13 0
       36 GETTABLEKS                       R13 R13 K3 ["Top"]
       38 JUMPIFEQ                         R0 R13 ; [+8]
       40 GETUPVAL                         R13 0
       41 GETTABLEKS                       R13 R13 K5 ["Left"]
       43 JUMPIFEQ                         R0 R13 ; [+2]
       45 LOADB                            R12 0 +1
       46 LOADB                            R12 1
       47 LOADK                            R13 K0 ["X"]
       48 LOADK                            R14 K1 ["Y"]
       49 GETTABLEKS                       R15 R4 K6 ["Height"]
       51 GETTABLEKS                       R16 R4 K7 ["Min"]
       53 GETTABLEKS                       R16 R16 K0 ["X"]
       55 GETTABLEKS                       R17 R4 K7 ["Min"]
       57 GETTABLEKS                       R17 R17 K1 ["Y"]
       59 GETTABLEKS                       R18 R7 K1 ["Y"]
       61 GETTABLEKS                       R19 R7 K0 ["X"]
       63 GETTABLEKS                       R20 R4 K8 ["Max"]
       65 GETTABLEKS                       R20 R20 K0 ["X"]
       67 GETTABLEKS                       R21 R4 K8 ["Max"]
       69 GETTABLEKS                       R21 R21 K1 ["Y"]
       71 GETTABLEKS                       R22 R5 K7 ["Min"]
       73 GETTABLEKS                       R22 R22 K1 ["Y"]
       75 GETTABLEKS                       R23 R5 K8 ["Max"]
       77 GETTABLEKS                       R23 R23 K1 ["Y"]
       79 GETTABLEKS                       R24 R5 K7 ["Min"]
       81 GETTABLEKS                       R24 R24 K0 ["X"]
       83 GETTABLEKS                       R25 R5 K8 ["Max"]
       85 GETTABLEKS                       R25 R25 K0 ["X"]
       87 JUMPIFNOT                        R11 ; [+40]
       88 LOADK                            R13 K1 ["Y"]
       89 LOADK                            R14 K0 ["X"]
       90 GETTABLEKS                       R15 R4 K9 ["Width"]
       92 GETTABLEKS                       R26 R4 K7 ["Min"]
       94 GETTABLEKS                       R16 R26 K1 ["Y"]
       96 GETTABLEKS                       R26 R4 K7 ["Min"]
       98 GETTABLEKS                       R17 R26 K0 ["X"]
      100 GETTABLEKS                       R18 R7 K0 ["X"]
      102 GETTABLEKS                       R19 R7 K1 ["Y"]
      104 GETTABLEKS                       R26 R4 K8 ["Max"]
      106 GETTABLEKS                       R20 R26 K1 ["Y"]
      108 GETTABLEKS                       R26 R4 K8 ["Max"]
      110 GETTABLEKS                       R21 R26 K0 ["X"]
      112 GETTABLEKS                       R26 R5 K7 ["Min"]
      114 GETTABLEKS                       R22 R26 K0 ["X"]
      116 GETTABLEKS                       R26 R5 K8 ["Max"]
      118 GETTABLEKS                       R23 R26 K0 ["X"]
      120 GETTABLEKS                       R26 R5 K7 ["Min"]
      122 GETTABLEKS                       R24 R26 K1 ["Y"]
      124 GETTABLEKS                       R26 R5 K8 ["Max"]
      126 GETTABLEKS                       R25 R26 K1 ["Y"]
      128 ADD                              R26 R1 R6
      129 JUMPIFNOT                        R12 ; [+5]
      130 SUB                              R28 R16 R26
      131 SUB                              R27 R28 R19
      132 SETTABLE                         R27 R8 R13
      133 SETTABLE                         R19 R9 R13
      134 JUMP                             ; [+4]
      135 ADD                              R27 R20 R26
      136 SETTABLE                         R27 R8 R13
      137 LOADN                            R27 0
      138 SETTABLE                         R27 R9 R13
      139 GETUPVAL                         R27 1
      140 GETTABLEKS                       R27 R27 K10 ["Start"]
      142 JUMPIFNOTEQ                      R2 R27 ; [+4]
      144 ADD                              R27 R17 R3
      145 SETTABLE                         R27 R8 R14
      146 JUMP                             ; [+17]
      147 GETUPVAL                         R27 1
      148 GETTABLEKS                       R27 R27 K11 ["Center"]
      150 JUMPIFNOTEQ                      R2 R27 ; [+8]
      152 DIVK                             R30 R15 K12 [2]
      153 ADD                              R29 R17 R30
      154 DIVK                             R30 R18 K12 [2]
      155 SUB                              R28 R29 R30
      156 ADD                              R27 R28 R3
      157 SETTABLE                         R27 R8 R14
      158 JUMP                             ; [+5]
      159 MINUS                            R28 R3
      160 ADD                              R27 R21 R28
      161 SETTABLE                         R27 R8 R14
      162 LOADN                            R27 1
      163 SETTABLE                         R27 R10 R14
      164 GETTABLE                         R28 R8 R14
      165 GETTABLE                         R30 R10 R14
      166 MUL                              R29 R30 R18
      167 SUB                              R27 R28 R29
      168 ADD                              R28 R27 R18
      169 JUMPIFNOTLT                      R27 R22 ; [+5]
      171 LOADN                            R29 0
      172 SETTABLE                         R29 R10 R14
      173 SETTABLE                         R22 R8 R14
      174 JUMP                             ; [+5]
      175 JUMPIFNOTLT                      R23 R28 ; [+4]
      177 LOADN                            R29 1
      178 SETTABLE                         R29 R10 R14
      179 SETTABLE                         R23 R8 R14
      180 GETTABLE                         R29 R8 R14
      181 GETTABLE                         R31 R10 R14
      182 MUL                              R30 R31 R18
      183 SUB                              R27 R29 R30
      184 ADD                              R28 R27 R18
      185 FASTCALL2                        MATH_MAX R17 R27 ; [+5]
      187 MOVE                             R30 R17
      188 MOVE                             R31 R27
      189 GETIMPORT                        R29 K15 [math.max]
      191 CALL                             R29 2 1
      192 FASTCALL2                        MATH_MIN R21 R28 ; [+5]
      194 MOVE                             R31 R21
      195 MOVE                             R32 R28
      196 GETIMPORT                        R30 K17 [math.min]
      198 CALL                             R30 2 1
      199 LOADNIL                          R31
      200 JUMPIFNOTLE                      R29 R30 ; [+4]
      202 ADD                              R32 R29 R30
      203 DIVK                             R31 R32 K12 [2]
      204 JUMP                             ; [+5]
      205 JUMPIFNOTLT                      R28 R17 ; [+3]
      207 SUB                              R31 R28 R6
      208 JUMP                             ; [+1]
      209 ADD                              R31 R27 R6
      210 GETTABLE                         R33 R8 R14
      211 SUB                              R32 R31 R33
      212 SETTABLE                         R32 R9 R14
      213 GETTABLE                         R33 R8 R13
      214 SUB                              R37 R25 R19
      215 SUB                              R36 R37 R26
      216 FASTCALL2K                       MATH_MAX R36 K18 ; [+4]
      218 LOADK                            R37 K18 [0]
      219 GETIMPORT                        R35 K15 [math.max]
      221 CALL                             R35 2 1
      222 FASTCALL3                        MATH_CLAMP R33 R24 R35
      224 MOVE                             R34 R24
      225 GETIMPORT                        R32 K20 [math.clamp]
      227 CALL                             R32 3 1
      228 SETTABLE                         R32 R8 R13
      229 GETTABLEKS                       R32 R8 K0 ["X"]
      231 GETTABLEKS                       R33 R5 K7 ["Min"]
      233 GETTABLEKS                       R33 R33 K0 ["X"]
      235 SUB                              R32 R32 R33
      236 SETTABLEKS                       R32 R8 K0 ["X"]
      238 GETTABLEKS                       R32 R8 K1 ["Y"]
      240 GETTABLEKS                       R33 R5 K7 ["Min"]
      242 GETTABLEKS                       R33 R33 K1 ["Y"]
      244 SUB                              R32 R32 R33
      245 SETTABLEKS                       R32 R8 K1 ["Y"]
      247 GETIMPORT                        R32 K23 [Vector2.new]
      249 GETTABLEKS                       R33 R8 K0 ["X"]
      251 GETTABLEKS                       R34 R8 K1 ["Y"]
      253 CALL                             R32 2 1
      254 GETIMPORT                        R33 K23 [Vector2.new]
      256 GETTABLEKS                       R34 R9 K0 ["X"]
      258 GETTABLEKS                       R35 R9 K1 ["Y"]
      260 CALL                             R33 2 1
      261 GETIMPORT                        R34 K23 [Vector2.new]
      263 GETTABLEKS                       R35 R10 K0 ["X"]
      265 GETTABLEKS                       R36 R10 K1 ["Y"]
      267 CALL                             R34 2 -1
      268 RETURN                           R32 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["PopoverAlign"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R3 K8 ["PopoverSide"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 DUPCLOSURE                       R4 K10 [PROTO_1]
       24 DUPCLOSURE                       R5 K11 [PROTO_2]
       25 CAPTURE                          VAL R2
       26 DUPCLOSURE                       R6 K12 [PROTO_3]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 DUPCLOSURE                       R7 K13 [PROTO_4]
       30 DUPCLOSURE                       R8 K14 [PROTO_5]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 DUPTABLE                         R9 K21 [{"adjustForOnScreenKeyboard", "isOnScreen", "calculateSide", "calculatePositions", "calculatePopoverBounds", "calculateAlign"}]
       34 SETTABLEKS                       R7 R9 K15 ["adjustForOnScreenKeyboard"]
       36 SETTABLEKS                       R4 R9 K16 ["isOnScreen"]
       38 SETTABLEKS                       R5 R9 K17 ["calculateSide"]
       40 SETTABLEKS                       R8 R9 K18 ["calculatePositions"]
       42 SETTABLEKS                       R3 R9 K19 ["calculatePopoverBounds"]
       44 SETTABLEKS                       R6 R9 K20 ["calculateAlign"]
       46 RETURN                           R9 1
