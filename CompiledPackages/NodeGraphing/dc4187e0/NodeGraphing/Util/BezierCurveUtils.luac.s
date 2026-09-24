PROTO_0:
        0 SUBRK                            R5 K0 [1] R4
        1 MUL                              R11 R5 R5
        2 MUL                              R10 R11 R5
        3 MUL                              R9 R0 R10
        4 MULK                             R13 R5 K1 [3]
        5 MUL                              R12 R13 R5
        6 MUL                              R11 R12 R4
        7 MUL                              R10 R1 R11
        8 ADD                              R8 R9 R10
        9 MULK                             R12 R5 K1 [3]
       10 MUL                              R11 R12 R4
       11 MUL                              R10 R11 R4
       12 MUL                              R9 R2 R10
       13 ADD                              R7 R8 R9
       14 MUL                              R10 R4 R4
       15 MUL                              R9 R10 R4
       16 MUL                              R8 R3 R9
       17 ADD                              R6 R7 R8
       18 RETURN                           R6 1

PROTO_1:
        0 SUBRK                            R5 K0 [1] R4
        1 SUB                              R9 R1 R0
        2 MULK                             R11 R5 K1 [3]
        3 MUL                              R10 R11 R5
        4 MUL                              R8 R9 R10
        5 SUB                              R10 R2 R1
        6 MULK                             R12 R5 K2 [6]
        7 MUL                              R11 R12 R4
        8 MUL                              R9 R10 R11
        9 ADD                              R7 R8 R9
       10 SUB                              R9 R3 R2
       11 MULK                             R11 R4 K1 [3]
       12 MUL                              R10 R11 R4
       13 MUL                              R8 R9 R10
       14 ADD                              R6 R7 R8
       15 RETURN                           R6 1

PROTO_2:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["evaluateBezier"]
        3 MOVE                             R8 R0
        4 MOVE                             R9 R1
        5 MOVE                             R10 R2
        6 MOVE                             R11 R3
        7 MOVE                             R12 R5
        8 CALL                             R7 5 1
        9 SUB                              R6 R7 R4
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K1 ["evaluateBezierDerivative"]
       13 MOVE                             R8 R0
       14 MOVE                             R9 R1
       15 MOVE                             R10 R2
       16 MOVE                             R11 R3
       17 MOVE                             R12 R5
       18 CALL                             R7 5 1
       19 GETTABLEKS                       R10 R6 K2 ["X"]
       21 GETTABLEKS                       R11 R7 K2 ["X"]
       23 MUL                              R9 R10 R11
       24 GETTABLEKS                       R11 R6 K3 ["Y"]
       26 GETTABLEKS                       R12 R7 K3 ["Y"]
       28 MUL                              R10 R11 R12
       29 ADD                              R8 R9 R10
       30 RETURN                           R8 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 JUMPIFNOTLE                      R1 R2 ; [+3]
        4 LOADN                            R1 0
        5 RETURN                           R1 1
        6 MULK                             R1 R0 K0 [30]
        7 FASTCALL1                        MATH_FLOOR R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K3 [math.floor]
       11 CALL                             R2 1 1
       12 LOADN                            R3 30
       13 JUMPIFNOTLE                      R3 R2 ; [+3]
       15 LOADN                            R3 1
       16 RETURN                           R3 1
       17 JUMPIFNOTEQKN                    R2 K4 [0] ; [+3]
       19 LOADN                            R3 0
       20 JUMP                             ; [+2]
       21 GETUPVAL                         R4 1
       22 GETTABLE                         R3 R4 R2
       23 GETUPVAL                         R9 1
       24 ADDK                             R10 R2 K5 [1]
       25 GETTABLE                         R8 R9 R10
       26 SUB                              R7 R8 R3
       27 SUB                              R8 R1 R2
       28 MUL                              R6 R7 R8
       29 ADD                              R5 R3 R6
       30 GETUPVAL                         R6 0
       31 DIV                              R4 R5 R6
       32 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADN                            R3 0
        2 JUMPIFNOTLE                      R2 R3 ; [+3]
        4 LOADN                            R1 0
        5 JUMP                             ; [+26]
        6 MULK                             R2 R0 K0 [30]
        7 FASTCALL1                        MATH_FLOOR R2 ; [+3]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K3 [math.floor]
       11 CALL                             R3 1 1
       12 LOADN                            R4 30
       13 JUMPIFNOTLE                      R4 R3 ; [+3]
       15 LOADN                            R1 1
       16 JUMP                             ; [+15]
       17 JUMPIFNOTEQKN                    R3 K4 [0] ; [+3]
       19 LOADN                            R4 0
       20 JUMP                             ; [+2]
       21 GETUPVAL                         R5 1
       22 GETTABLE                         R4 R5 R3
       23 GETUPVAL                         R9 1
       24 ADDK                             R10 R3 K5 [1]
       25 GETTABLE                         R8 R9 R10
       26 SUB                              R7 R8 R4
       27 SUB                              R8 R2 R3
       28 MUL                              R6 R7 R8
       29 ADD                              R5 R4 R6
       30 GETUPVAL                         R6 0
       31 DIV                              R1 R5 R6
       32 LOADB                            R2 0
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K6 ["OUTPUT_ZONE_MAX"]
       36 JUMPIFNOTLT                      R3 R1 ; [+8]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K7 ["INPUT_ZONE_MIN"]
       41 JUMPIFLT                         R1 R3 ; [+2]
       43 LOADB                            R2 0 +1
       44 LOADB                            R2 1
       45 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["evaluateBezier"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETUPVAL                         R5 3
        6 GETUPVAL                         R6 4
        7 MOVE                             R7 R0
        8 CALL                             R2 5 1
        9 GETUPVAL                         R3 5
       10 SUB                              R1 R2 R3
       11 GETTABLEKS                       R4 R1 K1 ["X"]
       13 GETTABLEKS                       R5 R1 K1 ["X"]
       15 MUL                              R3 R4 R5
       16 GETTABLEKS                       R5 R1 K2 ["Y"]
       18 GETTABLEKS                       R6 R1 K2 ["Y"]
       20 MUL                              R4 R5 R6
       21 ADD                              R2 R3 R4
       22 RETURN                           R2 1

PROTO_6:
        0 GETIMPORT                        R5 K2 [table.create]
        2 LOADN                            R6 30
        3 LOADN                            R7 0
        4 CALL                             R5 2 1
        5 LOADN                            R6 0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K3 ["evaluateBezier"]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R2
       11 MOVE                             R10 R3
       12 MOVE                             R11 R4
       13 LOADN                            R12 0
       14 CALL                             R7 5 1
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K4 ["dotDerivativeAtT"]
       18 MOVE                             R9 R1
       19 MOVE                             R10 R2
       20 MOVE                             R11 R3
       21 MOVE                             R12 R4
       22 MOVE                             R13 R0
       23 LOADN                            R14 0
       24 CALL                             R8 6 1
       25 NEWCLOSURE                       R9 P0
       26 CAPTURE                          REF R6
       27 CAPTURE                          VAL R5
       28 NEWCLOSURE                       R10 P1
       29 CAPTURE                          REF R6
       30 CAPTURE                          VAL R5
       31 CAPTURE                          UPVAL U0
       32 NEWCLOSURE                       R11 P2
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R0
       39 LOADN                            R12 0
       40 GETUPVAL                         R15 0
       41 GETTABLEKS                       R15 R15 K3 ["evaluateBezier"]
       43 MOVE                             R16 R1
       44 MOVE                             R17 R2
       45 MOVE                             R18 R3
       46 MOVE                             R19 R4
       47 LOADN                            R20 0
       48 CALL                             R15 5 1
       49 SUB                              R14 R15 R0
       50 GETTABLEKS                       R16 R14 K5 ["X"]
       52 GETTABLEKS                       R17 R14 K5 ["X"]
       54 MUL                              R15 R16 R17
       55 GETTABLEKS                       R17 R14 K6 ["Y"]
       57 GETTABLEKS                       R18 R14 K6 ["Y"]
       59 MUL                              R16 R17 R18
       60 ADD                              R13 R15 R16
       61 GETUPVAL                         R16 0
       62 GETTABLEKS                       R16 R16 K3 ["evaluateBezier"]
       64 MOVE                             R17 R1
       65 MOVE                             R18 R2
       66 MOVE                             R19 R3
       67 MOVE                             R20 R4
       68 LOADN                            R21 1
       69 CALL                             R16 5 1
       70 SUB                              R15 R16 R0
       71 GETTABLEKS                       R17 R15 K5 ["X"]
       73 GETTABLEKS                       R18 R15 K5 ["X"]
       75 MUL                              R16 R17 R18
       76 GETTABLEKS                       R18 R15 K6 ["Y"]
       78 GETTABLEKS                       R19 R15 K6 ["Y"]
       80 MUL                              R17 R18 R19
       81 ADD                              R14 R16 R17
       82 JUMPIFNOTLT                      R14 R13 ; [+3]
       84 MOVE                             R13 R14
       85 LOADN                            R12 1
       86 LOADN                            R17 1
       87 LOADN                            R15 30
       88 LOADN                            R16 1
       89 FORNPREP                         R15
       90 DIVK                             R18 R17 K7 [30]
       91 GETUPVAL                         R19 0
       92 GETTABLEKS                       R19 R19 K3 ["evaluateBezier"]
       94 MOVE                             R20 R1
       95 MOVE                             R21 R2
       96 MOVE                             R22 R3
       97 MOVE                             R23 R4
       98 MOVE                             R24 R18
       99 CALL                             R19 5 1
      100 SUB                              R20 R19 R7
      101 GETTABLEKS                       R20 R20 K8 ["Magnitude"]
      103 ADD                              R6 R6 R20
      104 SETTABLE                         R6 R5 R17
      105 GETUPVAL                         R20 0
      106 GETTABLEKS                       R20 R20 K9 ["evaluateBezierDerivative"]
      108 MOVE                             R21 R1
      109 MOVE                             R22 R2
      110 MOVE                             R23 R3
      111 MOVE                             R24 R4
      112 MOVE                             R25 R18
      113 CALL                             R20 5 1
      114 SUB                              R21 R19 R0
      115 GETTABLEKS                       R24 R21 K5 ["X"]
      117 GETTABLEKS                       R25 R20 K5 ["X"]
      119 MUL                              R23 R24 R25
      120 GETTABLEKS                       R25 R21 K6 ["Y"]
      122 GETTABLEKS                       R26 R20 K6 ["Y"]
      124 MUL                              R24 R25 R26
      125 ADD                              R22 R23 R24
      126 MUL                              R23 R8 R22
      127 LOADN                            R24 0
      128 JUMPIFNOTLE                      R23 R24 ; [+143]
      130 SUBK                             R24 R17 K10 [1]
      131 DIVK                             R23 R24 K7 [30]
      132 MOVE                             R24 R18
      133 ADD                              R27 R23 R24
      134 MULK                             R26 R27 K11 [0.5]
      135 LOADN                            R28 0
      136 JUMPIFNOTLE                      R6 R28 ; [+3]
      138 LOADN                            R27 0
      139 JUMP                             ; [+23]
      140 MULK                             R28 R26 K7 [30]
      141 FASTCALL1                        MATH_FLOOR R28 ; [+3]
      142 MOVE                             R30 R28
      143 GETIMPORT                        R29 K14 [math.floor]
      145 CALL                             R29 1 1
      146 LOADN                            R30 30
      147 JUMPIFNOTLE                      R30 R29 ; [+3]
      149 LOADN                            R27 1
      150 JUMP                             ; [+12]
      151 JUMPIFNOTEQKN                    R29 K15 [0] ; [+3]
      153 LOADN                            R30 0
      154 JUMP                             ; [+1]
      155 GETTABLE                         R30 R5 R29
      156 ADDK                             R35 R29 K10 [1]
      157 GETTABLE                         R34 R5 R35
      158 SUB                              R33 R34 R30
      159 SUB                              R34 R28 R29
      160 MUL                              R32 R33 R34
      161 ADD                              R31 R30 R32
      162 DIV                              R27 R31 R6
      163 LOADB                            R25 0
      164 GETUPVAL                         R28 0
      165 GETTABLEKS                       R28 R28 K16 ["OUTPUT_ZONE_MAX"]
      167 JUMPIFNOTLT                      R28 R27 ; [+8]
      169 GETUPVAL                         R28 0
      170 GETTABLEKS                       R28 R28 K17 ["INPUT_ZONE_MIN"]
      172 JUMPIFLT                         R27 R28 ; [+2]
      174 LOADB                            R25 0 +1
      175 LOADB                            R25 1
      176 JUMPIF                           R25 ; [+95]
      177 MOVE                             R25 R8
      178 LOADN                            R28 1
      179 LOADN                            R26 15
      180 LOADN                            R27 1
      181 FORNPREP                         R26
      182 ADD                              R30 R23 R24
      183 MULK                             R29 R30 K11 [0.5]
      184 GETUPVAL                         R30 0
      185 GETTABLEKS                       R30 R30 K4 ["dotDerivativeAtT"]
      187 MOVE                             R31 R1
      188 MOVE                             R32 R2
      189 MOVE                             R33 R3
      190 MOVE                             R34 R4
      191 MOVE                             R35 R0
      192 MOVE                             R36 R29
      193 CALL                             R30 6 1
      194 MUL                              R31 R25 R30
      195 LOADN                            R32 0
      196 JUMPIFNOTLE                      R31 R32 ; [+3]
      198 MOVE                             R24 R29
      199 JUMP                             ; [+2]
      200 MOVE                             R23 R29
      201 MOVE                             R25 R30
      202 FORNLOOP                         R26
      203 ADD                              R27 R23 R24
      204 MULK                             R26 R27 K11 [0.5]
      205 LOADN                            R29 0
      206 JUMPIFNOTLE                      R6 R29 ; [+3]
      208 LOADN                            R28 0
      209 JUMP                             ; [+23]
      210 MULK                             R29 R26 K7 [30]
      211 FASTCALL1                        MATH_FLOOR R29 ; [+3]
      212 MOVE                             R31 R29
      213 GETIMPORT                        R30 K14 [math.floor]
      215 CALL                             R30 1 1
      216 LOADN                            R31 30
      217 JUMPIFNOTLE                      R31 R30 ; [+3]
      219 LOADN                            R28 1
      220 JUMP                             ; [+12]
      221 JUMPIFNOTEQKN                    R30 K15 [0] ; [+3]
      223 LOADN                            R31 0
      224 JUMP                             ; [+1]
      225 GETTABLE                         R31 R5 R30
      226 ADDK                             R36 R30 K10 [1]
      227 GETTABLE                         R35 R5 R36
      228 SUB                              R34 R35 R31
      229 SUB                              R35 R29 R30
      230 MUL                              R33 R34 R35
      231 ADD                              R32 R31 R33
      232 DIV                              R28 R32 R6
      233 LOADB                            R27 0
      234 GETUPVAL                         R29 0
      235 GETTABLEKS                       R29 R29 K16 ["OUTPUT_ZONE_MAX"]
      237 JUMPIFNOTLT                      R29 R28 ; [+8]
      239 GETUPVAL                         R29 0
      240 GETTABLEKS                       R29 R29 K17 ["INPUT_ZONE_MIN"]
      242 JUMPIFLT                         R28 R29 ; [+2]
      244 LOADB                            R27 0 +1
      245 LOADB                            R27 1
      246 JUMPIF                           R27 ; [+25]
      247 GETUPVAL                         R29 0
      248 GETTABLEKS                       R29 R29 K3 ["evaluateBezier"]
      250 MOVE                             R30 R1
      251 MOVE                             R31 R2
      252 MOVE                             R32 R3
      253 MOVE                             R33 R4
      254 MOVE                             R34 R26
      255 CALL                             R29 5 1
      256 SUB                              R28 R29 R0
      257 GETTABLEKS                       R30 R28 K5 ["X"]
      259 GETTABLEKS                       R31 R28 K5 ["X"]
      261 MUL                              R29 R30 R31
      262 GETTABLEKS                       R31 R28 K6 ["Y"]
      264 GETTABLEKS                       R32 R28 K6 ["Y"]
      266 MUL                              R30 R31 R32
      267 ADD                              R27 R29 R30
      268 JUMPIFNOTLT                      R27 R13 ; [+3]
      270 MOVE                             R13 R27
      271 MOVE                             R12 R26
      272 MOVE                             R7 R19
      273 MOVE                             R8 R22
      274 FORNLOOP                         R15
      275 DUPTABLE                         R15 K21 [{"t", "distance", "fraction"}]
      276 SETTABLEKS                       R12 R15 K18 ["t"]
      278 FASTCALL1                        MATH_SQRT R13 ; [+3]
      279 MOVE                             R17 R13
      280 GETIMPORT                        R16 K23 [math.sqrt]
      282 CALL                             R16 1 1
      283 SETTABLEKS                       R16 R15 K19 ["distance"]
      285 MOVE                             R17 R12
      286 LOADN                            R18 0
      287 JUMPIFNOTLE                      R6 R18 ; [+3]
      289 LOADN                            R16 0
      290 JUMP                             ; [+23]
      291 MULK                             R18 R17 K7 [30]
      292 FASTCALL1                        MATH_FLOOR R18 ; [+3]
      293 MOVE                             R20 R18
      294 GETIMPORT                        R19 K14 [math.floor]
      296 CALL                             R19 1 1
      297 LOADN                            R20 30
      298 JUMPIFNOTLE                      R20 R19 ; [+3]
      300 LOADN                            R16 1
      301 JUMP                             ; [+12]
      302 JUMPIFNOTEQKN                    R19 K15 [0] ; [+3]
      304 LOADN                            R20 0
      305 JUMP                             ; [+1]
      306 GETTABLE                         R20 R5 R19
      307 ADDK                             R25 R19 K10 [1]
      308 GETTABLE                         R24 R5 R25
      309 SUB                              R23 R24 R20
      310 SUB                              R24 R18 R19
      311 MUL                              R22 R23 R24
      312 ADD                              R21 R20 R22
      313 DIV                              R16 R21 R6
      314 SETTABLEKS                       R16 R15 K20 ["fraction"]
      316 CLOSEUPVALS                      R6
      317 RETURN                           R15 1

PROTO_7:
        0 GETTABLEKS                       R8 R1 K1 ["X"]
        2 GETTABLEKS                       R9 R4 K1 ["X"]
        4 ADD                              R7 R8 R9
        5 MULK                             R6 R7 K0 [0.5]
        6 GETTABLEKS                       R9 R1 K2 ["Y"]
        8 GETTABLEKS                       R10 R4 K2 ["Y"]
       10 ADD                              R8 R9 R10
       11 MULK                             R7 R8 K0 [0.5]
       12 GETTABLEKS                       R8 R0 K1 ["X"]
       14 GETTABLEKS                       R9 R0 K2 ["Y"]
       16 GETTABLEKS                       R11 R1 K1 ["X"]
       18 GETTABLEKS                       R12 R2 K1 ["X"]
       20 FASTCALL3                        MATH_MIN R11 R12 R6
       22 MOVE                             R13 R6
       23 GETIMPORT                        R10 K5 [math.min]
       25 CALL                             R10 3 1
       26 GETTABLEKS                       R12 R1 K1 ["X"]
       28 GETTABLEKS                       R13 R2 K1 ["X"]
       30 FASTCALL3                        MATH_MAX R12 R13 R6
       32 MOVE                             R14 R6
       33 GETIMPORT                        R11 K7 [math.max]
       35 CALL                             R11 3 1
       36 GETTABLEKS                       R13 R1 K2 ["Y"]
       38 FASTCALL2                        MATH_MIN R13 R7 ; [+4]
       40 MOVE                             R14 R7
       41 GETIMPORT                        R12 K5 [math.min]
       43 CALL                             R12 2 1
       44 GETTABLEKS                       R14 R1 K2 ["Y"]
       46 FASTCALL2                        MATH_MAX R14 R7 ; [+4]
       48 MOVE                             R15 R7
       49 GETIMPORT                        R13 K7 [math.max]
       51 CALL                             R13 2 1
       52 SUB                              R14 R10 R5
       53 JUMPIFNOTLE                      R14 R8 ; [+12]
       55 ADD                              R14 R11 R5
       56 JUMPIFNOTLE                      R8 R14 ; [+9]
       58 SUB                              R14 R12 R5
       59 JUMPIFNOTLE                      R14 R9 ; [+6]
       61 ADD                              R14 R13 R5
       62 JUMPIFNOTLE                      R9 R14 ; [+3]
       64 LOADB                            R14 1
       65 RETURN                           R14 1
       66 GETTABLEKS                       R16 R3 K1 ["X"]
       68 GETTABLEKS                       R17 R4 K1 ["X"]
       70 FASTCALL3                        MATH_MIN R6 R16 R17
       72 MOVE                             R15 R6
       73 GETIMPORT                        R14 K5 [math.min]
       75 CALL                             R14 3 1
       76 GETTABLEKS                       R17 R3 K1 ["X"]
       78 GETTABLEKS                       R18 R4 K1 ["X"]
       80 FASTCALL3                        MATH_MAX R6 R17 R18
       82 MOVE                             R16 R6
       83 GETIMPORT                        R15 K7 [math.max]
       85 CALL                             R15 3 1
       86 GETTABLEKS                       R18 R4 K2 ["Y"]
       88 FASTCALL2                        MATH_MIN R7 R18 ; [+4]
       90 MOVE                             R17 R7
       91 GETIMPORT                        R16 K5 [math.min]
       93 CALL                             R16 2 1
       94 GETTABLEKS                       R19 R4 K2 ["Y"]
       96 FASTCALL2                        MATH_MAX R7 R19 ; [+4]
       98 MOVE                             R18 R7
       99 GETIMPORT                        R17 K7 [math.max]
      101 CALL                             R17 2 1
      102 LOADB                            R18 0
      103 SUB                              R19 R14 R5
      104 JUMPIFNOTLE                      R19 R8 ; [+14]
      106 LOADB                            R18 0
      107 ADD                              R19 R15 R5
      108 JUMPIFNOTLE                      R8 R19 ; [+10]
      110 LOADB                            R18 0
      111 SUB                              R19 R16 R5
      112 JUMPIFNOTLE                      R19 R9 ; [+6]
      114 ADD                              R19 R17 R5
      115 JUMPIFLE                         R9 R19 ; [+2]
      117 LOADB                            R18 0 +1
      118 LOADB                            R18 1
      119 RETURN                           R18 1

PROTO_8:
        0 GETTABLEKS                       R5 R0 K1 ["X"]
        2 GETTABLEKS                       R6 R1 K1 ["X"]
        4 SUB                              R4 R5 R6
        5 FASTCALL1                        MATH_ABS R4 ; [+2]
        6 GETIMPORT                        R3 K4 [math.abs]
        8 CALL                             R3 1 1
        9 MULK                             R2 R3 K0 [0.5]
       10 GETIMPORT                        R3 K7 [table.freeze]
       12 DUPTABLE                         R4 K10 [{"start", "finish"}]
       13 DUPTABLE                         R5 K15 [{["Position"], ["LeftTangent"] = , ["RightTangent"]}]
       14 SETTABLEKS                       R0 R5 K11 ["Position"]
       16 GETIMPORT                        R6 K18 [Vector2.new]
       18 MOVE                             R7 R2
       19 LOADN                            R8 0
       20 CALL                             R6 2 1
       21 SETTABLEKS                       R6 R5 K14 ["RightTangent"]
       23 SETTABLEKS                       R5 R4 K8 ["start"]
       25 DUPTABLE                         R5 K19 [{["Position"], ["LeftTangent"], ["RightTangent"] = }]
       26 SETTABLEKS                       R1 R5 K11 ["Position"]
       28 GETIMPORT                        R6 K18 [Vector2.new]
       30 MINUS                            R7 R2
       31 LOADN                            R8 0
       32 CALL                             R6 2 1
       33 SETTABLEKS                       R6 R5 K12 ["LeftTangent"]
       35 SETTABLEKS                       R5 R4 K9 ["finish"]
       37 CALL                             R3 1 -1
       38 RETURN                           R3 -1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["Position"]
        2 GETTABLEKS                       R4 R0 K1 ["RightTangent"]
        4 ADD                              R3 R2 R4
        5 GETTABLEKS                       R5 R1 K0 ["Position"]
        7 GETTABLEKS                       R6 R1 K2 ["LeftTangent"]
        9 ADD                              R4 R5 R6
       10 GETTABLEKS                       R5 R1 K0 ["Position"]
       12 DUPTABLE                         R6 K7 [{"p0", "p1", "p2", "p3"}]
       13 SETTABLEKS                       R2 R6 K3 ["p0"]
       15 SETTABLEKS                       R3 R6 K4 ["p1"]
       17 SETTABLEKS                       R4 R6 K5 ["p2"]
       19 SETTABLEKS                       R5 R6 K6 ["p3"]
       21 RETURN                           R6 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getCurvePoints"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["getCandidateControlPoints"]
        9 GETTABLEKS                       R4 R2 K2 ["start"]
       11 GETTABLEKS                       R5 R2 K3 ["finish"]
       13 CALL                             R3 2 -1
       14 RETURN                           R3 -1

PROTO_11:
        0 JUMPIFNOT                        R1 ; [+1]
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["getCurvePoints"]
        6 MOVE                             R5 R1
        7 MOVE                             R6 R2
        8 CALL                             R4 2 1
        9 DUPTABLE                         R5 K4 [{"binding", "start", "finish"}]
       10 SETTABLEKS                       R3 R5 K1 ["binding"]
       12 GETTABLEKS                       R6 R4 K2 ["start"]
       14 SETTABLEKS                       R6 R5 K2 ["start"]
       16 GETTABLEKS                       R6 R4 K3 ["finish"]
       18 SETTABLEKS                       R6 R5 K3 ["finish"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K5 ["getCandidateControlPoints"]
       23 GETTABLEKS                       R7 R5 K2 ["start"]
       25 GETTABLEKS                       R8 R5 K3 ["finish"]
       27 CALL                             R6 2 1
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K6 ["isClickNearCurve"]
       31 MOVE                             R8 R0
       32 GETTABLEKS                       R9 R6 K7 ["p0"]
       34 GETTABLEKS                       R10 R6 K8 ["p1"]
       36 GETTABLEKS                       R11 R6 K9 ["p2"]
       38 GETTABLEKS                       R12 R6 K10 ["p3"]
       40 GETUPVAL                         R13 1
       41 GETTABLEKS                       R13 R13 K11 ["SLOPPY_SELECTION_BOUNDARY"]
       43 CALL                             R7 6 1
       44 JUMPIF                           R7 ; [+1]
       45 RETURN                           R0 0
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K12 ["getMinDistanceToBezierCurve"]
       49 MOVE                             R8 R0
       50 GETTABLEKS                       R9 R6 K7 ["p0"]
       52 GETTABLEKS                       R10 R6 K8 ["p1"]
       54 GETTABLEKS                       R11 R6 K9 ["p2"]
       56 GETTABLEKS                       R12 R6 K10 ["p3"]
       58 CALL                             R7 5 -1
       59 RETURN                           R7 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R2 ; [+3]
        8 NEWTABLE                         R3 0 0
       10 RETURN                           R3 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K0 ["getCurvePoints"]
       14 MOVE                             R4 R1
       15 MOVE                             R5 R2
       16 CALL                             R3 2 1
       17 GETIMPORT                        R4 K3 [table.freeze]
       19 NEWTABLE                         R5 0 2
       21 GETTABLEKS                       R6 R3 K4 ["start"]
       23 GETTABLEKS                       R7 R3 K5 ["finish"]
       25 SETLIST                          R5 R6 2 [1]
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createComputed"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 ORK                              R2 R3 K1 [1]
        4 MULK                             R1 R2 K0 [3]
        5 RETURN                           R1 1

PROTO_15:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["createComputed"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["NodeViewTypes"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["Parent"]
       21 GETTABLEKS                       R4 R4 K9 ["Signals"]
       23 CALL                             R3 1 1
       24 NEWTABLE                         R4 16 0
       26 LOADK                            R5 K10 [0.45]
       27 SETTABLEKS                       R5 R4 K11 ["OUTPUT_ZONE_MAX"]
       29 LOADK                            R5 K12 [0.55]
       30 SETTABLEKS                       R5 R4 K13 ["INPUT_ZONE_MIN"]
       32 DUPCLOSURE                       R5 K14 [PROTO_0]
       33 SETTABLEKS                       R5 R4 K15 ["evaluateBezier"]
       35 DUPCLOSURE                       R5 K16 [PROTO_1]
       36 SETTABLEKS                       R5 R4 K17 ["evaluateBezierDerivative"]
       38 DUPCLOSURE                       R5 K18 [PROTO_2]
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R5 R4 K19 ["dotDerivativeAtT"]
       42 DUPCLOSURE                       R5 K20 [PROTO_6]
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R5 R4 K21 ["getMinDistanceToBezierCurve"]
       46 DUPCLOSURE                       R5 K22 [PROTO_7]
       47 SETTABLEKS                       R5 R4 K23 ["isClickNearCurve"]
       49 DUPCLOSURE                       R5 K24 [PROTO_8]
       50 SETTABLEKS                       R5 R4 K25 ["getCurvePoints"]
       52 DUPCLOSURE                       R5 K26 [PROTO_9]
       53 SETTABLEKS                       R5 R4 K27 ["getCandidateControlPoints"]
       55 DUPCLOSURE                       R5 K28 [PROTO_10]
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R5 R4 K29 ["getCandidateControlPointsWithVector2"]
       59 DUPCLOSURE                       R5 K30 [PROTO_11]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R5 R4 K31 ["getCurveHitResult"]
       64 DUPCLOSURE                       R5 K32 [PROTO_13]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 SETTABLEKS                       R5 R4 K33 ["observeCurvePoints"]
       69 DUPCLOSURE                       R5 K34 [PROTO_15]
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R5 R4 K35 ["getObserveThickness"]
       73 RETURN                           R4 1
