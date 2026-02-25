PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R1 R2 K0 ["EQUALIZER"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+35]
       12 GETUPVAL                         R0 4
       13 DUPTABLE                         R1 K7 [{"InstanceType", "LowGain", "MidGain", "HighGain", "MidRange", "Bypass"}]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K0 ["EQUALIZER"]
       17 SETTABLEKS                       R2 R1 K1 ["InstanceType"]
       19 GETUPVAL                         R2 5
       20 SETTABLEKS                       R2 R1 K2 ["LowGain"]
       22 GETUPVAL                         R2 6
       23 SETTABLEKS                       R2 R1 K3 ["MidGain"]
       25 GETUPVAL                         R2 7
       26 SETTABLEKS                       R2 R1 K4 ["HighGain"]
       28 GETIMPORT                        R2 K10 [NumberRange.new]
       30 GETUPVAL                         R3 8
       31 GETUPVAL                         R5 8
       32 GETUPVAL                         R6 9
       33 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       35 GETIMPORT                        R4 K13 [math.max]
       37 CALL                             R4 2 1
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R1 K5 ["MidRange"]
       41 GETUPVAL                         R2 10
       42 SETTABLEKS                       R2 R1 K6 ["Bypass"]
       44 CALL                             R0 1 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R0 2
       47 GETUPVAL                         R2 3
       48 GETTABLEKS                       R1 R2 K14 ["FILTER"]
       50 JUMPIFNOTEQ                      R0 R1 ; [+24]
       52 GETUPVAL                         R0 4
       53 DUPTABLE                         R1 K19 [{"InstanceType", "FilterType", "Frequency", "Gain", "Q", "Bypass"}]
       54 GETUPVAL                         R3 3
       55 GETTABLEKS                       R2 R3 K14 ["FILTER"]
       57 SETTABLEKS                       R2 R1 K1 ["InstanceType"]
       59 GETUPVAL                         R2 11
       60 SETTABLEKS                       R2 R1 K15 ["FilterType"]
       62 GETUPVAL                         R2 12
       63 SETTABLEKS                       R2 R1 K16 ["Frequency"]
       65 GETUPVAL                         R2 13
       66 SETTABLEKS                       R2 R1 K17 ["Gain"]
       68 GETUPVAL                         R2 14
       69 SETTABLEKS                       R2 R1 K18 ["Q"]
       71 GETUPVAL                         R2 15
       72 SETTABLEKS                       R2 R1 K6 ["Bypass"]
       74 CALL                             R0 1 0
       75 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getYMin"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["getYMax"]
        7 CALL                             R4 0 1
        8 FASTCALL3                        MATH_CLAMP R0 R3 R4
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [math.clamp]
       13 CALL                             R1 3 1
       14 MOVE                             R0 R1
       15 GETUPVAL                         R1 1
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getYMin"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["getYMax"]
        7 CALL                             R4 0 1
        8 FASTCALL3                        MATH_CLAMP R0 R3 R4
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [math.clamp]
       13 CALL                             R1 3 1
       14 MOVE                             R0 R1
       15 GETUPVAL                         R1 1
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getYMin"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["getYMax"]
        7 CALL                             R4 0 1
        8 FASTCALL3                        MATH_CLAMP R0 R3 R4
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [math.clamp]
       13 CALL                             R1 3 1
       14 MOVE                             R0 R1
       15 GETUPVAL                         R1 1
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getXMin"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["getXMax"]
        7 CALL                             R4 0 1
        8 FASTCALL3                        MATH_CLAMP R0 R3 R4
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [math.clamp]
       13 CALL                             R1 3 1
       14 GETUPVAL                         R2 1
       15 JUMPIFNOTLT                      R2 R1 ; [+4]
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 3
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getXMin"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["getXMax"]
        7 CALL                             R4 0 1
        8 FASTCALL3                        MATH_CLAMP R0 R3 R4
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [math.clamp]
       13 CALL                             R1 3 1
       14 GETUPVAL                         R2 1
       15 JUMPIFNOTLT                      R1 R2 ; [+4]
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 3
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["LowGain"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R2 R0 K1 ["MidGain"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R2 R0 K2 ["HighGain"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R3 R0 K3 ["MidRange"]
       15 GETTABLEKS                       R2 R3 K4 ["Min"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R3 R0 K3 ["MidRange"]
       21 GETTABLEKS                       R2 R3 K5 ["Max"]
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 5
       25 GETTABLEKS                       R2 R0 K6 ["Bypass"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getXMin"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["getXMax"]
        7 CALL                             R4 0 1
        8 FASTCALL3                        MATH_CLAMP R0 R3 R4
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [math.clamp]
       13 CALL                             R1 3 1
       14 MOVE                             R0 R1
       15 GETUPVAL                         R1 1
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getYMin"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["getYMax"]
        7 CALL                             R4 0 1
        8 FASTCALL3                        MATH_CLAMP R0 R3 R4
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [math.clamp]
       13 CALL                             R1 3 1
       14 MOVE                             R0 R1
       15 GETUPVAL                         R1 1
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R3 K0 [0.1]
        1 LOADN                            R4 10
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K3 [math.clamp]
        7 CALL                             R1 3 1
        8 MOVE                             R0 R1
        9 GETUPVAL                         R1 0
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["FilterType"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R2 R0 K1 ["Frequency"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R2 R0 K2 ["Gain"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R2 R0 K3 ["Q"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R2 R0 K4 ["Bypass"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_14:
        0 RETURN                           R0 0

PROTO_15:
        0 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["InstanceType"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R4 R0 K1 ["LowGain"]
        5 CALL                             R3 1 2
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R6 R0 K2 ["MidGain"]
        9 CALL                             R5 1 2
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R8 R0 K3 ["HighGain"]
       13 CALL                             R7 1 2
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R11 R0 K4 ["MidRange"]
       17 JUMPIFNOT                        R11 ; [+5]
       18 GETTABLEKS                       R11 R0 K4 ["MidRange"]
       20 GETTABLEKS                       R10 R11 K5 ["Min"]
       22 JUMP                             ; [+1]
       23 LOADN                            R10 0
       24 CALL                             R9 1 2
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R13 R0 K4 ["MidRange"]
       28 JUMPIFNOT                        R13 ; [+5]
       29 GETTABLEKS                       R13 R0 K4 ["MidRange"]
       31 GETTABLEKS                       R12 R13 K6 ["Max"]
       33 JUMP                             ; [+1]
       34 LOADN                            R12 0
       35 CALL                             R11 1 2
       36 GETUPVAL                         R13 0
       37 GETTABLEKS                       R14 R0 K7 ["Bypass"]
       39 CALL                             R13 1 2
       40 GETUPVAL                         R15 0
       41 GETTABLEKS                       R16 R0 K8 ["FilterType"]
       43 CALL                             R15 1 2
       44 GETUPVAL                         R17 0
       45 GETTABLEKS                       R18 R0 K9 ["Frequency"]
       47 CALL                             R17 1 2
       48 GETUPVAL                         R19 0
       49 GETTABLEKS                       R20 R0 K10 ["Gain"]
       51 CALL                             R19 1 2
       52 GETUPVAL                         R21 0
       53 GETTABLEKS                       R22 R0 K11 ["Q"]
       55 CALL                             R21 1 2
       56 GETUPVAL                         R23 0
       57 GETTABLEKS                       R24 R0 K7 ["Bypass"]
       59 CALL                             R23 1 2
       60 GETUPVAL                         R25 0
       61 LOADB                            R26 0
       62 CALL                             R25 1 2
       63 GETUPVAL                         R27 1
       64 NEWCLOSURE                       R28 P0
       65 CAPTURE                          VAL R25
       66 CAPTURE                          VAL R26
       67 CAPTURE                          VAL R2
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R15
       77 CAPTURE                          VAL R17
       78 CAPTURE                          VAL R19
       79 CAPTURE                          VAL R21
       80 CAPTURE                          VAL R23
       81 NEWTABLE                         R29 0 11
       83 MOVE                             R30 R3
       84 MOVE                             R31 R5
       85 MOVE                             R32 R7
       86 MOVE                             R33 R9
       87 MOVE                             R34 R11
       88 MOVE                             R35 R13
       89 MOVE                             R36 R15
       90 MOVE                             R37 R17
       91 MOVE                             R38 R19
       92 MOVE                             R39 R21
       93 MOVE                             R40 R23
       94 SETLIST                          R29 R30 11 [1]
       96 CALL                             R27 2 0
       97 GETUPVAL                         R28 2
       98 GETTABLEKS                       R27 R28 K12 ["EQUALIZER"]
      100 JUMPIFNOTEQ                      R2 R27 ; [+115]
      102 DUPTABLE                         R27 K26 [{"lowGain", "midGain", "highGain", "lowThreshold", "highThreshold", "bypass", "setLowGain", "setMidGain", "setHighGain", "setLowThreshold", "setHighThreshold", "setBypass", "reset"}]
      103 SETTABLEKS                       R3 R27 K13 ["lowGain"]
      105 SETTABLEKS                       R5 R27 K14 ["midGain"]
      107 SETTABLEKS                       R7 R27 K15 ["highGain"]
      109 SETTABLEKS                       R9 R27 K16 ["lowThreshold"]
      111 SETTABLEKS                       R11 R27 K17 ["highThreshold"]
      113 SETTABLEKS                       R13 R27 K18 ["bypass"]
      115 GETUPVAL                         R28 3
      116 NEWCLOSURE                       R29 P1
      117 CAPTURE                          UPVAL U4
      118 CAPTURE                          VAL R4
      119 NEWTABLE                         R30 0 1
      121 MOVE                             R31 R4
      122 SETLIST                          R30 R31 1 [1]
      124 CALL                             R28 2 1
      125 SETTABLEKS                       R28 R27 K19 ["setLowGain"]
      127 GETUPVAL                         R28 3
      128 NEWCLOSURE                       R29 P2
      129 CAPTURE                          UPVAL U4
      130 CAPTURE                          VAL R6
      131 NEWTABLE                         R30 0 1
      133 MOVE                             R31 R6
      134 SETLIST                          R30 R31 1 [1]
      136 CALL                             R28 2 1
      137 SETTABLEKS                       R28 R27 K20 ["setMidGain"]
      139 GETUPVAL                         R28 3
      140 NEWCLOSURE                       R29 P3
      141 CAPTURE                          UPVAL U4
      142 CAPTURE                          VAL R8
      143 NEWTABLE                         R30 0 1
      145 MOVE                             R31 R8
      146 SETLIST                          R30 R31 1 [1]
      148 CALL                             R28 2 1
      149 SETTABLEKS                       R28 R27 K21 ["setHighGain"]
      151 GETUPVAL                         R28 3
      152 NEWCLOSURE                       R29 P4
      153 CAPTURE                          UPVAL U4
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R10
      157 NEWTABLE                         R30 0 3
      159 MOVE                             R31 R11
      160 MOVE                             R32 R10
      161 MOVE                             R33 R12
      162 SETLIST                          R30 R31 3 [1]
      164 CALL                             R28 2 1
      165 SETTABLEKS                       R28 R27 K22 ["setLowThreshold"]
      167 GETUPVAL                         R28 3
      168 NEWCLOSURE                       R29 P5
      169 CAPTURE                          UPVAL U4
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R12
      173 NEWTABLE                         R30 0 3
      175 MOVE                             R31 R9
      176 MOVE                             R32 R10
      177 MOVE                             R33 R12
      178 SETLIST                          R30 R31 3 [1]
      180 CALL                             R28 2 1
      181 SETTABLEKS                       R28 R27 K23 ["setHighThreshold"]
      183 GETUPVAL                         R28 3
      184 NEWCLOSURE                       R29 P6
      185 CAPTURE                          VAL R14
      186 NEWTABLE                         R30 0 1
      188 MOVE                             R31 R14
      189 SETLIST                          R30 R31 1 [1]
      191 CALL                             R28 2 1
      192 SETTABLEKS                       R28 R27 K24 ["setBypass"]
      194 GETUPVAL                         R28 3
      195 NEWCLOSURE                       R29 P7
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R6
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R10
      200 CAPTURE                          VAL R12
      201 CAPTURE                          VAL R14
      202 NEWTABLE                         R30 0 6
      204 MOVE                             R31 R4
      205 MOVE                             R32 R6
      206 MOVE                             R33 R8
      207 MOVE                             R34 R10
      208 MOVE                             R35 R12
      209 MOVE                             R36 R14
      210 SETLIST                          R30 R31 6 [1]
      212 CALL                             R28 2 1
      213 SETTABLEKS                       R28 R27 K25 ["reset"]
      215 RETURN                           R27 1
      216 GETUPVAL                         R28 2
      217 GETTABLEKS                       R27 R28 K27 ["FILTER"]
      219 JUMPIFNOTEQ                      R2 R27 ; [+90]
      221 DUPTABLE                         R27 K36 [{"filterType", "frequency", "gain", "q", "bypass", "setFilterType", "setFrequency", "setGain", "setQ", "setBypass", "reset"}]
      222 SETTABLEKS                       R15 R27 K28 ["filterType"]
      224 SETTABLEKS                       R17 R27 K29 ["frequency"]
      226 SETTABLEKS                       R19 R27 K30 ["gain"]
      228 SETTABLEKS                       R21 R27 K31 ["q"]
      230 SETTABLEKS                       R23 R27 K18 ["bypass"]
      232 GETUPVAL                         R28 3
      233 NEWCLOSURE                       R29 P8
      234 CAPTURE                          VAL R16
      235 NEWTABLE                         R30 0 1
      237 MOVE                             R31 R16
      238 SETLIST                          R30 R31 1 [1]
      240 CALL                             R28 2 1
      241 SETTABLEKS                       R28 R27 K32 ["setFilterType"]
      243 GETUPVAL                         R28 3
      244 NEWCLOSURE                       R29 P9
      245 CAPTURE                          UPVAL U4
      246 CAPTURE                          VAL R18
      247 NEWTABLE                         R30 0 1
      249 MOVE                             R31 R18
      250 SETLIST                          R30 R31 1 [1]
      252 CALL                             R28 2 1
      253 SETTABLEKS                       R28 R27 K33 ["setFrequency"]
      255 GETUPVAL                         R28 3
      256 NEWCLOSURE                       R29 P10
      257 CAPTURE                          UPVAL U4
      258 CAPTURE                          VAL R20
      259 NEWTABLE                         R30 0 1
      261 MOVE                             R31 R20
      262 SETLIST                          R30 R31 1 [1]
      264 CALL                             R28 2 1
      265 SETTABLEKS                       R28 R27 K34 ["setGain"]
      267 GETUPVAL                         R28 3
      268 NEWCLOSURE                       R29 P11
      269 CAPTURE                          VAL R22
      270 NEWTABLE                         R30 0 2
      272 MOVE                             R31 R21
      273 MOVE                             R32 R22
      274 SETLIST                          R30 R31 2 [1]
      276 CALL                             R28 2 1
      277 SETTABLEKS                       R28 R27 K35 ["setQ"]
      279 GETUPVAL                         R28 3
      280 NEWCLOSURE                       R29 P12
      281 CAPTURE                          VAL R24
      282 NEWTABLE                         R30 0 1
      284 MOVE                             R31 R24
      285 SETLIST                          R30 R31 1 [1]
      287 CALL                             R28 2 1
      288 SETTABLEKS                       R28 R27 K24 ["setBypass"]
      290 GETUPVAL                         R28 3
      291 NEWCLOSURE                       R29 P13
      292 CAPTURE                          VAL R16
      293 CAPTURE                          VAL R18
      294 CAPTURE                          VAL R20
      295 CAPTURE                          VAL R22
      296 CAPTURE                          VAL R24
      297 NEWTABLE                         R30 0 5
      299 MOVE                             R31 R16
      300 MOVE                             R32 R18
      301 MOVE                             R33 R20
      302 MOVE                             R34 R22
      303 MOVE                             R35 R24
      304 SETLIST                          R30 R31 5 [1]
      306 CALL                             R28 2 1
      307 SETTABLEKS                       R28 R27 K25 ["reset"]
      309 RETURN                           R27 1
      310 GETUPVAL                         R30 2
      311 GETTABLEKS                       R29 R30 K37 ["NO_INSTANCE"]
      313 JUMPIFEQ                         R2 R29 ; [+2]
      315 LOADB                            R28 0 +1
      316 LOADB                            R28 1
      317 FASTCALL2K                       ASSERT R28 K38 ; [+4]
      319 LOADK                            R29 K38 ["unsupported instance type"]
      320 GETIMPORT                        R27 K40 [assert]
      322 CALL                             R27 2 0
      323 DUPTABLE                         R27 K41 [{"bypass", "setBypass", "reset"}]
      324 LOADB                            R28 0
      325 SETTABLEKS                       R28 R27 K18 ["bypass"]
      327 DUPCLOSURE                       R28 K42 [PROTO_14]
      328 SETTABLEKS                       R28 R27 K24 ["setBypass"]
      330 DUPCLOSURE                       R28 K43 [PROTO_15]
      331 SETTABLEKS                       R28 R27 K25 ["reset"]
      333 RETURN                           R27 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioEqualizerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETTABLEKS                       R4 R1 K10 ["useState"]
       20 GETIMPORT                        R5 K5 [require]
       22 GETTABLEKS                       R7 R0 K11 ["Src"]
       24 GETTABLEKS                       R6 R7 K12 ["Types"]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R9 R0 K11 ["Src"]
       31 GETTABLEKS                       R8 R9 K13 ["Util"]
       33 GETTABLEKS                       R7 R8 K14 ["PlotUtil"]
       35 CALL                             R6 1 1
       36 DUPCLOSURE                       R7 K15 [PROTO_16]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R6
       42 RETURN                           R7 1
