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
      146 JUMP                             ; [+23]
      147 GETUPVAL                         R27 1
      148 GETTABLEKS                       R27 R27 K11 ["Center"]
      150 JUMPIFNOTEQ                      R2 R27 ; [+8]
      152 DIVK                             R30 R15 K12 [2]
      153 ADD                              R29 R17 R30
      154 DIVK                             R30 R18 K12 [2]
      155 SUB                              R28 R29 R30
      156 ADD                              R27 R28 R3
      157 SETTABLE                         R27 R8 R14
      158 JUMP                             ; [+11]
      159 GETUPVAL                         R29 2
      160 GETTABLEKS                       R29 R29 K13 ["FoundationPopoverNegateAlignOffsetOnFlip"]
      162 JUMPIFNOT                        R29 ; [+2]
      163 MINUS                            R28 R3
      164 JUMP                             ; [+1]
      165 MOVE                             R28 R3
      166 ADD                              R27 R21 R28
      167 SETTABLE                         R27 R8 R14
      168 LOADN                            R27 1
      169 SETTABLE                         R27 R10 R14
      170 GETTABLE                         R28 R8 R14
      171 GETTABLE                         R30 R10 R14
      172 MUL                              R29 R30 R18
      173 SUB                              R27 R28 R29
      174 ADD                              R28 R27 R18
      175 JUMPIFNOTLT                      R27 R22 ; [+5]
      177 LOADN                            R29 0
      178 SETTABLE                         R29 R10 R14
      179 SETTABLE                         R22 R8 R14
      180 JUMP                             ; [+5]
      181 JUMPIFNOTLT                      R23 R28 ; [+4]
      183 LOADN                            R29 1
      184 SETTABLE                         R29 R10 R14
      185 SETTABLE                         R23 R8 R14
      186 GETTABLE                         R29 R8 R14
      187 GETTABLE                         R31 R10 R14
      188 MUL                              R30 R31 R18
      189 SUB                              R27 R29 R30
      190 ADD                              R28 R27 R18
      191 FASTCALL2                        MATH_MAX R17 R27 ; [+5]
      193 MOVE                             R30 R17
      194 MOVE                             R31 R27
      195 GETIMPORT                        R29 K16 [math.max]
      197 CALL                             R29 2 1
      198 FASTCALL2                        MATH_MIN R21 R28 ; [+5]
      200 MOVE                             R31 R21
      201 MOVE                             R32 R28
      202 GETIMPORT                        R30 K18 [math.min]
      204 CALL                             R30 2 1
      205 LOADNIL                          R31
      206 JUMPIFNOTLE                      R29 R30 ; [+4]
      208 ADD                              R32 R29 R30
      209 DIVK                             R31 R32 K12 [2]
      210 JUMP                             ; [+5]
      211 JUMPIFNOTLT                      R28 R17 ; [+3]
      213 SUB                              R31 R28 R6
      214 JUMP                             ; [+1]
      215 ADD                              R31 R27 R6
      216 GETTABLE                         R33 R8 R14
      217 SUB                              R32 R31 R33
      218 SETTABLE                         R32 R9 R14
      219 GETTABLE                         R33 R8 R13
      220 SUB                              R37 R25 R19
      221 SUB                              R36 R37 R26
      222 FASTCALL2K                       MATH_MAX R36 K19 ; [+4]
      224 LOADK                            R37 K19 [0]
      225 GETIMPORT                        R35 K16 [math.max]
      227 CALL                             R35 2 1
      228 FASTCALL3                        MATH_CLAMP R33 R24 R35
      230 MOVE                             R34 R24
      231 GETIMPORT                        R32 K21 [math.clamp]
      233 CALL                             R32 3 1
      234 SETTABLE                         R32 R8 R13
      235 GETTABLEKS                       R32 R8 K0 ["X"]
      237 GETTABLEKS                       R33 R5 K7 ["Min"]
      239 GETTABLEKS                       R33 R33 K0 ["X"]
      241 SUB                              R32 R32 R33
      242 SETTABLEKS                       R32 R8 K0 ["X"]
      244 GETTABLEKS                       R32 R8 K1 ["Y"]
      246 GETTABLEKS                       R33 R5 K7 ["Min"]
      248 GETTABLEKS                       R33 R33 K1 ["Y"]
      250 SUB                              R32 R32 R33
      251 SETTABLEKS                       R32 R8 K1 ["Y"]
      253 GETIMPORT                        R32 K24 [Vector2.new]
      255 GETTABLEKS                       R33 R8 K0 ["X"]
      257 GETTABLEKS                       R34 R8 K1 ["Y"]
      259 CALL                             R32 2 1
      260 GETIMPORT                        R33 K24 [Vector2.new]
      262 GETTABLEKS                       R34 R9 K0 ["X"]
      264 GETTABLEKS                       R35 R9 K1 ["Y"]
      266 CALL                             R33 2 1
      267 GETIMPORT                        R34 K24 [Vector2.new]
      269 GETTABLEKS                       R35 R10 K0 ["X"]
      271 GETTABLEKS                       R36 R10 K1 ["Y"]
      273 CALL                             R34 2 -1
      274 RETURN                           R32 -1

PROTO_6:
        0 GETTABLEKS                       R9 R4 K0 ["Max"]
        2 GETTABLEKS                       R10 R4 K1 ["Min"]
        4 SUB                              R8 R9 R10
        5 GETTABLEKS                       R10 R5 K0 ["Max"]
        7 GETTABLEKS                       R11 R5 K1 ["Min"]
        9 SUB                              R9 R10 R11
       10 MOVE                             R11 R7
       11 GETUPVAL                         R12 0
       12 GETTABLEKS                       R12 R12 K2 ["Top"]
       14 JUMPIFEQ                         R0 R12 ; [+6]
       16 GETUPVAL                         R12 0
       17 GETTABLEKS                       R12 R12 K3 ["Bottom"]
       19 JUMPIFNOTEQ                      R0 R12 ; [+8]
       21 GETIMPORT                        R12 K6 [Vector2.new]
       23 LOADN                            R13 0
       24 ADD                              R14 R1 R6
       25 CALL                             R12 2 1
       26 ADD                              R11 R11 R12
       27 JUMP                             ; [+6]
       28 GETIMPORT                        R12 K6 [Vector2.new]
       30 ADD                              R13 R1 R6
       31 LOADN                            R14 0
       32 CALL                             R12 2 1
       33 ADD                              R11 R11 R12
       34 MOVE                             R10 R11
       35 LOADN                            R11 0
       36 LOADN                            R12 0
       37 LOADN                            R13 0
       38 LOADN                            R14 0
       39 GETUPVAL                         R15 0
       40 GETTABLEKS                       R15 R15 K2 ["Top"]
       42 JUMPIFNOTEQ                      R0 R15 ; [+11]
       44 GETTABLEKS                       R15 R4 K1 ["Min"]
       46 GETTABLEKS                       R15 R15 K7 ["Y"]
       48 GETTABLEKS                       R16 R10 K7 ["Y"]
       50 SUB                              R12 R15 R16
       51 GETTABLEKS                       R14 R7 K7 ["Y"]
       53 JUMP                             ; [+48]
       54 GETUPVAL                         R15 0
       55 GETTABLEKS                       R15 R15 K3 ["Bottom"]
       57 JUMPIFNOTEQ                      R0 R15 ; [+13]
       59 GETTABLEKS                       R16 R4 K0 ["Max"]
       61 GETTABLEKS                       R16 R16 K7 ["Y"]
       63 GETTABLEKS                       R17 R10 K7 ["Y"]
       65 ADD                              R15 R16 R17
       66 GETTABLEKS                       R16 R7 K7 ["Y"]
       68 SUB                              R12 R15 R16
       69 LOADN                            R14 0
       70 JUMP                             ; [+31]
       71 GETUPVAL                         R15 0
       72 GETTABLEKS                       R15 R15 K8 ["Left"]
       74 JUMPIFNOTEQ                      R0 R15 ; [+11]
       76 GETTABLEKS                       R15 R4 K1 ["Min"]
       78 GETTABLEKS                       R15 R15 K9 ["X"]
       80 GETTABLEKS                       R16 R10 K9 ["X"]
       82 SUB                              R11 R15 R16
       83 GETTABLEKS                       R13 R7 K9 ["X"]
       85 JUMP                             ; [+16]
       86 GETUPVAL                         R15 0
       87 GETTABLEKS                       R15 R15 K10 ["Right"]
       89 JUMPIFNOTEQ                      R0 R15 ; [+12]
       91 GETTABLEKS                       R16 R4 K0 ["Max"]
       93 GETTABLEKS                       R16 R16 K9 ["X"]
       95 GETTABLEKS                       R17 R10 K9 ["X"]
       97 ADD                              R15 R16 R17
       98 GETTABLEKS                       R16 R7 K9 ["X"]
      100 SUB                              R11 R15 R16
      101 LOADN                            R13 0
      102 GETUPVAL                         R15 1
      103 GETTABLEKS                       R15 R15 K11 ["Start"]
      105 JUMPIFNOTEQ                      R2 R15 ; [+43]
      107 GETUPVAL                         R15 0
      108 GETTABLEKS                       R15 R15 K2 ["Top"]
      110 JUMPIFEQ                         R0 R15 ; [+6]
      112 GETUPVAL                         R15 0
      113 GETTABLEKS                       R15 R15 K3 ["Bottom"]
      115 JUMPIFNOTEQ                      R0 R15 ; [+17]
      117 GETTABLEKS                       R15 R4 K1 ["Min"]
      119 GETTABLEKS                       R15 R15 K9 ["X"]
      121 ADD                              R11 R15 R3
      122 GETTABLEKS                       R16 R8 K9 ["X"]
      124 GETTABLEKS                       R17 R10 K9 ["X"]
      126 FASTCALL2                        MATH_MIN R16 R17 ; [+3]
      128 GETIMPORT                        R15 K15 [math.min]
      130 CALL                             R15 2 1
      131 DIVK                             R13 R15 K12 [2]
      132 JUMP                             ; [+137]
      133 GETTABLEKS                       R15 R4 K1 ["Min"]
      135 GETTABLEKS                       R15 R15 K7 ["Y"]
      137 ADD                              R12 R15 R3
      138 GETTABLEKS                       R16 R8 K7 ["Y"]
      140 GETTABLEKS                       R17 R10 K7 ["Y"]
      142 FASTCALL2                        MATH_MIN R16 R17 ; [+3]
      144 GETIMPORT                        R15 K15 [math.min]
      146 CALL                             R15 2 1
      147 DIVK                             R14 R15 K12 [2]
      148 JUMP                             ; [+121]
      149 GETUPVAL                         R15 1
      150 GETTABLEKS                       R15 R15 K16 ["Center"]
      152 JUMPIFNOTEQ                      R2 R15 ; [+43]
      154 GETUPVAL                         R15 0
      155 GETTABLEKS                       R15 R15 K2 ["Top"]
      157 JUMPIFEQ                         R0 R15 ; [+6]
      159 GETUPVAL                         R15 0
      160 GETTABLEKS                       R15 R15 K3 ["Bottom"]
      162 JUMPIFNOTEQ                      R0 R15 ; [+17]
      164 GETTABLEKS                       R16 R4 K1 ["Min"]
      166 GETTABLEKS                       R16 R16 K9 ["X"]
      168 ADD                              R15 R16 R3
      169 GETTABLEKS                       R18 R8 K9 ["X"]
      171 GETTABLEKS                       R19 R10 K9 ["X"]
      173 SUB                              R17 R18 R19
      174 DIVK                             R16 R17 K12 [2]
      175 ADD                              R11 R15 R16
      176 GETTABLEKS                       R15 R10 K9 ["X"]
      178 DIVK                             R13 R15 K12 [2]
      179 JUMP                             ; [+90]
      180 GETTABLEKS                       R16 R4 K1 ["Min"]
      182 GETTABLEKS                       R16 R16 K7 ["Y"]
      184 ADD                              R15 R16 R3
      185 GETTABLEKS                       R18 R8 K7 ["Y"]
      187 GETTABLEKS                       R19 R10 K7 ["Y"]
      189 SUB                              R17 R18 R19
      190 DIVK                             R16 R17 K12 [2]
      191 ADD                              R12 R15 R16
      192 GETTABLEKS                       R15 R10 K7 ["Y"]
      194 DIVK                             R14 R15 K12 [2]
      195 JUMP                             ; [+74]
      196 GETUPVAL                         R15 1
      197 GETTABLEKS                       R15 R15 K17 ["End"]
      199 JUMPIFNOTEQ                      R2 R15 ; [+70]
      201 GETUPVAL                         R15 0
      202 GETTABLEKS                       R15 R15 K2 ["Top"]
      204 JUMPIFEQ                         R0 R15 ; [+6]
      206 GETUPVAL                         R15 0
      207 GETTABLEKS                       R15 R15 K3 ["Bottom"]
      209 JUMPIFNOTEQ                      R0 R15 ; [+31]
      211 GETTABLEKS                       R17 R4 K1 ["Min"]
      213 GETTABLEKS                       R17 R17 K9 ["X"]
      215 ADD                              R16 R17 R3
      216 GETTABLEKS                       R17 R8 K9 ["X"]
      218 ADD                              R15 R16 R17
      219 GETTABLEKS                       R16 R10 K9 ["X"]
      221 SUB                              R11 R15 R16
      222 GETTABLEKS                       R19 R8 K9 ["X"]
      224 DIVK                             R18 R19 K12 [2]
      225 GETTABLEKS                       R19 R10 K9 ["X"]
      227 ADD                              R17 R18 R19
      228 GETTABLEKS                       R18 R8 K9 ["X"]
      230 SUB                              R16 R17 R18
      231 GETTABLEKS                       R18 R10 K9 ["X"]
      233 DIVK                             R17 R18 K12 [2]
      234 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      236 GETIMPORT                        R15 K19 [math.max]
      238 CALL                             R15 2 1
      239 MOVE                             R13 R15
      240 JUMP                             ; [+29]
      241 GETTABLEKS                       R17 R4 K1 ["Min"]
      243 GETTABLEKS                       R17 R17 K7 ["Y"]
      245 ADD                              R16 R17 R3
      246 GETTABLEKS                       R17 R8 K7 ["Y"]
      248 ADD                              R15 R16 R17
      249 GETTABLEKS                       R16 R10 K7 ["Y"]
      251 SUB                              R12 R15 R16
      252 GETTABLEKS                       R19 R8 K7 ["Y"]
      254 DIVK                             R18 R19 K12 [2]
      255 GETTABLEKS                       R19 R10 K7 ["Y"]
      257 ADD                              R17 R18 R19
      258 GETTABLEKS                       R18 R8 K7 ["Y"]
      260 SUB                              R16 R17 R18
      261 GETTABLEKS                       R18 R10 K7 ["Y"]
      263 DIVK                             R17 R18 K12 [2]
      264 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      266 GETIMPORT                        R15 K19 [math.max]
      268 CALL                             R15 2 1
      269 MOVE                             R14 R15
      270 GETTABLEKS                       R15 R5 K1 ["Min"]
      272 GETTABLEKS                       R15 R15 K9 ["X"]
      274 SUB                              R11 R11 R15
      275 GETTABLEKS                       R15 R5 K1 ["Min"]
      277 GETTABLEKS                       R15 R15 K7 ["Y"]
      279 SUB                              R12 R12 R15
      280 LOADN                            R16 0
      281 GETTABLEKS                       R18 R9 K9 ["X"]
      283 GETTABLEKS                       R19 R10 K9 ["X"]
      285 SUB                              R17 R18 R19
      286 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      288 GETIMPORT                        R15 K19 [math.max]
      290 CALL                             R15 2 1
      291 LOADN                            R17 0
      292 GETTABLEKS                       R19 R9 K7 ["Y"]
      294 GETTABLEKS                       R20 R10 K7 ["Y"]
      296 SUB                              R18 R19 R20
      297 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
      299 GETIMPORT                        R16 K19 [math.max]
      301 CALL                             R16 2 1
      302 LOADN                            R19 0
      303 FASTCALL3                        MATH_CLAMP R11 R19 R15
      305 MOVE                             R18 R11
      306 MOVE                             R20 R15
      307 GETIMPORT                        R17 K21 [math.clamp]
      309 CALL                             R17 3 1
      310 MOVE                             R11 R17
      311 LOADN                            R19 0
      312 FASTCALL3                        MATH_CLAMP R12 R19 R16
      314 MOVE                             R18 R12
      315 MOVE                             R20 R16
      316 GETIMPORT                        R17 K21 [math.clamp]
      318 CALL                             R17 3 1
      319 MOVE                             R12 R17
      320 GETIMPORT                        R17 K6 [Vector2.new]
      322 MOVE                             R18 R11
      323 MOVE                             R19 R12
      324 CALL                             R17 2 1
      325 GETIMPORT                        R18 K6 [Vector2.new]
      327 MOVE                             R19 R13
      328 MOVE                             R20 R14
      329 CALL                             R18 2 1
      330 GETIMPORT                        R19 K6 [Vector2.new]
      332 LOADN                            R20 0
      333 LOADN                            R21 0
      334 CALL                             R19 2 -1
      335 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["PopoverAlign"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["PopoverSide"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 DUPCLOSURE                       R5 K12 [PROTO_1]
       31 DUPCLOSURE                       R6 K13 [PROTO_2]
       32 CAPTURE                          VAL R3
       33 DUPCLOSURE                       R7 K14 [PROTO_3]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 DUPCLOSURE                       R8 K15 [PROTO_4]
       37 LOADNIL                          R9
       38 GETTABLEKS                       R10 R1 K16 ["FoundationPopoverOverflow"]
       40 JUMPIFNOT                        R10 ; [+5]
       41 DUPCLOSURE                       R9 K17 [PROTO_5]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R1
       45 JUMP                             ; [+3]
       46 DUPCLOSURE                       R9 K18 [PROTO_6]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R2
       49 DUPTABLE                         R10 K25 [{"adjustForOnScreenKeyboard", "isOnScreen", "calculateSide", "calculatePositions", "calculatePopoverBounds", "calculateAlign"}]
       50 SETTABLEKS                       R8 R10 K19 ["adjustForOnScreenKeyboard"]
       52 SETTABLEKS                       R5 R10 K20 ["isOnScreen"]
       54 SETTABLEKS                       R6 R10 K21 ["calculateSide"]
       56 SETTABLEKS                       R9 R10 K22 ["calculatePositions"]
       58 SETTABLEKS                       R4 R10 K23 ["calculatePopoverBounds"]
       60 SETTABLEKS                       R7 R10 K24 ["calculateAlign"]
       62 RETURN                           R10 1
