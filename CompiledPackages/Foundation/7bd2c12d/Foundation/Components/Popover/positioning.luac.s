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
        0 DUPTABLE                         R8 K3 [{[1] = 0, ["Y"] = 0}]
        1 DUPTABLE                         R9 K3 [{[1] = 0, ["Y"] = 0}]
        2 DUPTABLE                         R10 K3 [{[1] = 0, ["Y"] = 0}]
        3 LOADB                            R11 1
        4 GETUPVAL                         R12 0
        5 GETTABLEKS                       R12 R12 K4 ["Top"]
        7 JUMPIFEQ                         R0 R12 ; [+8]
        9 GETUPVAL                         R12 0
       10 GETTABLEKS                       R12 R12 K5 ["Bottom"]
       12 JUMPIFEQ                         R0 R12 ; [+2]
       14 LOADB                            R11 0 +1
       15 LOADB                            R11 1
       16 LOADB                            R12 1
       17 GETUPVAL                         R13 0
       18 GETTABLEKS                       R13 R13 K4 ["Top"]
       20 JUMPIFEQ                         R0 R13 ; [+8]
       22 GETUPVAL                         R13 0
       23 GETTABLEKS                       R13 R13 K6 ["Left"]
       25 JUMPIFEQ                         R0 R13 ; [+2]
       27 LOADB                            R12 0 +1
       28 LOADB                            R12 1
       29 LOADK                            R13 K0 ["X"]
       30 LOADK                            R14 K2 ["Y"]
       31 GETTABLEKS                       R15 R4 K7 ["Height"]
       33 GETTABLEKS                       R16 R4 K8 ["Min"]
       35 GETTABLEKS                       R16 R16 K0 ["X"]
       37 GETTABLEKS                       R17 R4 K8 ["Min"]
       39 GETTABLEKS                       R17 R17 K2 ["Y"]
       41 GETTABLEKS                       R18 R7 K2 ["Y"]
       43 GETTABLEKS                       R19 R7 K0 ["X"]
       45 GETTABLEKS                       R20 R4 K9 ["Max"]
       47 GETTABLEKS                       R20 R20 K0 ["X"]
       49 GETTABLEKS                       R21 R4 K9 ["Max"]
       51 GETTABLEKS                       R21 R21 K2 ["Y"]
       53 GETTABLEKS                       R22 R5 K8 ["Min"]
       55 GETTABLEKS                       R22 R22 K2 ["Y"]
       57 GETTABLEKS                       R23 R5 K9 ["Max"]
       59 GETTABLEKS                       R23 R23 K2 ["Y"]
       61 GETTABLEKS                       R24 R5 K8 ["Min"]
       63 GETTABLEKS                       R24 R24 K0 ["X"]
       65 GETTABLEKS                       R25 R5 K9 ["Max"]
       67 GETTABLEKS                       R25 R25 K0 ["X"]
       69 JUMPIFNOT                        R11 ; [+40]
       70 LOADK                            R13 K2 ["Y"]
       71 LOADK                            R14 K0 ["X"]
       72 GETTABLEKS                       R15 R4 K10 ["Width"]
       74 GETTABLEKS                       R26 R4 K8 ["Min"]
       76 GETTABLEKS                       R16 R26 K2 ["Y"]
       78 GETTABLEKS                       R26 R4 K8 ["Min"]
       80 GETTABLEKS                       R17 R26 K0 ["X"]
       82 GETTABLEKS                       R18 R7 K0 ["X"]
       84 GETTABLEKS                       R19 R7 K2 ["Y"]
       86 GETTABLEKS                       R26 R4 K9 ["Max"]
       88 GETTABLEKS                       R20 R26 K2 ["Y"]
       90 GETTABLEKS                       R26 R4 K9 ["Max"]
       92 GETTABLEKS                       R21 R26 K0 ["X"]
       94 GETTABLEKS                       R26 R5 K8 ["Min"]
       96 GETTABLEKS                       R22 R26 K0 ["X"]
       98 GETTABLEKS                       R26 R5 K9 ["Max"]
      100 GETTABLEKS                       R23 R26 K0 ["X"]
      102 GETTABLEKS                       R26 R5 K8 ["Min"]
      104 GETTABLEKS                       R24 R26 K2 ["Y"]
      106 GETTABLEKS                       R26 R5 K9 ["Max"]
      108 GETTABLEKS                       R25 R26 K2 ["Y"]
      110 ADD                              R26 R1 R6
      111 JUMPIFNOT                        R12 ; [+5]
      112 SUB                              R28 R16 R26
      113 SUB                              R27 R28 R19
      114 SETTABLE                         R27 R8 R13
      115 SETTABLE                         R19 R9 R13
      116 JUMP                             ; [+4]
      117 ADD                              R27 R20 R26
      118 SETTABLE                         R27 R8 R13
      119 LOADN                            R27 0
      120 SETTABLE                         R27 R9 R13
      121 GETUPVAL                         R27 1
      122 GETTABLEKS                       R27 R27 K11 ["Start"]
      124 JUMPIFNOTEQ                      R2 R27 ; [+4]
      126 ADD                              R27 R17 R3
      127 SETTABLE                         R27 R8 R14
      128 JUMP                             ; [+17]
      129 GETUPVAL                         R27 1
      130 GETTABLEKS                       R27 R27 K12 ["Center"]
      132 JUMPIFNOTEQ                      R2 R27 ; [+8]
      134 DIVK                             R30 R15 K13 [2]
      135 ADD                              R29 R17 R30
      136 DIVK                             R30 R18 K13 [2]
      137 SUB                              R28 R29 R30
      138 ADD                              R27 R28 R3
      139 SETTABLE                         R27 R8 R14
      140 JUMP                             ; [+5]
      141 MINUS                            R28 R3
      142 ADD                              R27 R21 R28
      143 SETTABLE                         R27 R8 R14
      144 LOADN                            R27 1
      145 SETTABLE                         R27 R10 R14
      146 GETTABLE                         R28 R8 R14
      147 GETTABLE                         R30 R10 R14
      148 MUL                              R29 R30 R18
      149 SUB                              R27 R28 R29
      150 ADD                              R28 R27 R18
      151 JUMPIFNOTLT                      R27 R22 ; [+5]
      153 LOADN                            R29 0
      154 SETTABLE                         R29 R10 R14
      155 SETTABLE                         R22 R8 R14
      156 JUMP                             ; [+5]
      157 JUMPIFNOTLT                      R23 R28 ; [+4]
      159 LOADN                            R29 1
      160 SETTABLE                         R29 R10 R14
      161 SETTABLE                         R23 R8 R14
      162 GETTABLE                         R29 R8 R14
      163 GETTABLE                         R31 R10 R14
      164 MUL                              R30 R31 R18
      165 SUB                              R27 R29 R30
      166 ADD                              R28 R27 R18
      167 FASTCALL2                        MATH_MAX R17 R27 ; [+5]
      169 MOVE                             R30 R17
      170 MOVE                             R31 R27
      171 GETIMPORT                        R29 K16 [math.max]
      173 CALL                             R29 2 1
      174 FASTCALL2                        MATH_MIN R21 R28 ; [+5]
      176 MOVE                             R31 R21
      177 MOVE                             R32 R28
      178 GETIMPORT                        R30 K18 [math.min]
      180 CALL                             R30 2 1
      181 LOADNIL                          R31
      182 JUMPIFNOTLE                      R29 R30 ; [+4]
      184 ADD                              R32 R29 R30
      185 DIVK                             R31 R32 K13 [2]
      186 JUMP                             ; [+5]
      187 JUMPIFNOTLT                      R28 R17 ; [+3]
      189 SUB                              R31 R28 R6
      190 JUMP                             ; [+1]
      191 ADD                              R31 R27 R6
      192 GETTABLE                         R33 R8 R14
      193 SUB                              R32 R31 R33
      194 SETTABLE                         R32 R9 R14
      195 GETTABLE                         R33 R8 R13
      196 SUB                              R37 R25 R19
      197 SUB                              R36 R37 R26
      198 FASTCALL2K                       MATH_MAX R36 K1 ; [+4]
      200 LOADK                            R37 K1 [0]
      201 GETIMPORT                        R35 K16 [math.max]
      203 CALL                             R35 2 1
      204 FASTCALL3                        MATH_CLAMP R33 R24 R35
      206 MOVE                             R34 R24
      207 GETIMPORT                        R32 K20 [math.clamp]
      209 CALL                             R32 3 1
      210 SETTABLE                         R32 R8 R13
      211 GETTABLEKS                       R32 R8 K0 ["X"]
      213 GETTABLEKS                       R33 R5 K8 ["Min"]
      215 GETTABLEKS                       R33 R33 K0 ["X"]
      217 SUB                              R32 R32 R33
      218 SETTABLEKS                       R32 R8 K0 ["X"]
      220 GETTABLEKS                       R32 R8 K2 ["Y"]
      222 GETTABLEKS                       R33 R5 K8 ["Min"]
      224 GETTABLEKS                       R33 R33 K2 ["Y"]
      226 SUB                              R32 R32 R33
      227 SETTABLEKS                       R32 R8 K2 ["Y"]
      229 GETIMPORT                        R32 K23 [Vector2.new]
      231 GETTABLEKS                       R33 R8 K0 ["X"]
      233 GETTABLEKS                       R34 R8 K2 ["Y"]
      235 CALL                             R32 2 1
      236 GETIMPORT                        R33 K23 [Vector2.new]
      238 GETTABLEKS                       R34 R9 K0 ["X"]
      240 GETTABLEKS                       R35 R9 K2 ["Y"]
      242 CALL                             R33 2 1
      243 GETIMPORT                        R34 K23 [Vector2.new]
      245 GETTABLEKS                       R35 R10 K0 ["X"]
      247 GETTABLEKS                       R36 R10 K2 ["Y"]
      249 CALL                             R34 2 -1
      250 RETURN                           R32 -1

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
       40 JUMPIFNOT                        R10 ; [+4]
       41 DUPCLOSURE                       R9 K17 [PROTO_5]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 JUMP                             ; [+3]
       45 DUPCLOSURE                       R9 K18 [PROTO_6]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 DUPTABLE                         R10 K25 [{"adjustForOnScreenKeyboard", "isOnScreen", "calculateSide", "calculatePositions", "calculatePopoverBounds", "calculateAlign"}]
       49 SETTABLEKS                       R8 R10 K19 ["adjustForOnScreenKeyboard"]
       51 SETTABLEKS                       R5 R10 K20 ["isOnScreen"]
       53 SETTABLEKS                       R6 R10 K21 ["calculateSide"]
       55 SETTABLEKS                       R9 R10 K22 ["calculatePositions"]
       57 SETTABLEKS                       R4 R10 K23 ["calculatePopoverBounds"]
       59 SETTABLEKS                       R7 R10 K24 ["calculateAlign"]
       61 RETURN                           R10 1
