PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["plotToAbs"]
        3 GETIMPORT                        R3 K3 [Vector2.new]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K4 ["PlotAbsoluteSize"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["makeControlPoint"]
        4 MOVE                             R6 R0
        5 MOVE                             R7 R1
        6 MOVE                             R8 R2
        7 CALL                             R5 3 -1
        8 FASTCALL                         TABLE_INSERT ; [+2]
        9 GETIMPORT                        R3 K3 [table.insert]
       11 CALL                             R3 -1 0
       12 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["getXMin"]
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K1 ["EqHook"]
       15 GETTABLEKS                       R5 R5 K2 ["lowGain"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K3 ["plotToAbs"]
       20 GETIMPORT                        R7 K6 [Vector2.new]
       22 MOVE                             R8 R4
       23 MOVE                             R9 R5
       24 CALL                             R7 2 1
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K7 ["PlotAbsoluteSize"]
       28 CALL                             R6 2 1
       29 MOVE                             R3 R6
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K1 ["EqHook"]
       33 GETTABLEKS                       R6 R6 K9 ["lowThreshold"]
       35 DIVK                             R5 R6 K8 [1.5]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K1 ["EqHook"]
       39 GETTABLEKS                       R6 R6 K2 ["lowGain"]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K3 ["plotToAbs"]
       44 GETIMPORT                        R8 K6 [Vector2.new]
       46 MOVE                             R9 R5
       47 MOVE                             R10 R6
       48 CALL                             R8 2 1
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R9 R9 K7 ["PlotAbsoluteSize"]
       52 CALL                             R7 2 1
       53 MOVE                             R4 R7
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R7 R7 K1 ["EqHook"]
       57 GETTABLEKS                       R7 R7 K9 ["lowThreshold"]
       59 MULK                             R6 R7 K8 [1.5]
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K1 ["EqHook"]
       63 GETTABLEKS                       R7 R7 K10 ["midGain"]
       65 GETUPVAL                         R8 0
       66 GETTABLEKS                       R8 R8 K3 ["plotToAbs"]
       68 GETIMPORT                        R9 K6 [Vector2.new]
       70 MOVE                             R10 R6
       71 MOVE                             R11 R7
       72 CALL                             R9 2 1
       73 GETUPVAL                         R10 1
       74 GETTABLEKS                       R10 R10 K7 ["PlotAbsoluteSize"]
       76 CALL                             R8 2 1
       77 MOVE                             R5 R8
       78 GETUPVAL                         R8 1
       79 GETTABLEKS                       R8 R8 K1 ["EqHook"]
       81 GETTABLEKS                       R8 R8 K11 ["highThreshold"]
       83 DIVK                             R7 R8 K8 [1.5]
       84 GETUPVAL                         R8 1
       85 GETTABLEKS                       R8 R8 K1 ["EqHook"]
       87 GETTABLEKS                       R8 R8 K10 ["midGain"]
       89 GETUPVAL                         R9 0
       90 GETTABLEKS                       R9 R9 K3 ["plotToAbs"]
       92 GETIMPORT                        R10 K6 [Vector2.new]
       94 MOVE                             R11 R7
       95 MOVE                             R12 R8
       96 CALL                             R10 2 1
       97 GETUPVAL                         R11 1
       98 GETTABLEKS                       R11 R11 K7 ["PlotAbsoluteSize"]
      100 CALL                             R9 2 1
      101 MOVE                             R6 R9
      102 GETUPVAL                         R9 1
      103 GETTABLEKS                       R9 R9 K1 ["EqHook"]
      105 GETTABLEKS                       R9 R9 K11 ["highThreshold"]
      107 MULK                             R8 R9 K8 [1.5]
      108 GETUPVAL                         R9 1
      109 GETTABLEKS                       R9 R9 K1 ["EqHook"]
      111 GETTABLEKS                       R9 R9 K12 ["highGain"]
      113 GETUPVAL                         R10 0
      114 GETTABLEKS                       R10 R10 K3 ["plotToAbs"]
      116 GETIMPORT                        R11 K6 [Vector2.new]
      118 MOVE                             R12 R8
      119 MOVE                             R13 R9
      120 CALL                             R11 2 1
      121 GETUPVAL                         R12 1
      122 GETTABLEKS                       R12 R12 K7 ["PlotAbsoluteSize"]
      124 CALL                             R10 2 1
      125 MOVE                             R7 R10
      126 GETUPVAL                         R9 0
      127 GETTABLEKS                       R9 R9 K13 ["getXMax"]
      129 CALL                             R9 0 1
      130 GETUPVAL                         R10 1
      131 GETTABLEKS                       R10 R10 K1 ["EqHook"]
      133 GETTABLEKS                       R10 R10 K12 ["highGain"]
      135 GETUPVAL                         R11 0
      136 GETTABLEKS                       R11 R11 K3 ["plotToAbs"]
      138 GETIMPORT                        R12 K6 [Vector2.new]
      140 MOVE                             R13 R9
      141 MOVE                             R14 R10
      142 CALL                             R12 2 1
      143 GETUPVAL                         R13 1
      144 GETTABLEKS                       R13 R13 K7 ["PlotAbsoluteSize"]
      146 CALL                             R11 2 1
      147 MOVE                             R8 R11
      148 GETIMPORT                        R9 K6 [Vector2.new]
      150 GETTABLEKS                       R12 R5 K15 ["X"]
      152 GETTABLEKS                       R13 R4 K15 ["X"]
      154 SUB                              R11 R12 R13
      155 DIVK                             R10 R11 K14 [2]
      156 LOADN                            R11 0
      157 CALL                             R9 2 1
      158 GETIMPORT                        R10 K6 [Vector2.new]
      160 GETTABLEKS                       R14 R5 K15 ["X"]
      162 GETTABLEKS                       R15 R4 K15 ["X"]
      164 SUB                              R13 R14 R15
      165 MINUS                            R12 R13
      166 DIVK                             R11 R12 K14 [2]
      167 LOADN                            R12 0
      168 CALL                             R10 2 1
      169 GETIMPORT                        R11 K6 [Vector2.new]
      171 GETTABLEKS                       R14 R7 K15 ["X"]
      173 GETTABLEKS                       R15 R6 K15 ["X"]
      175 SUB                              R13 R14 R15
      176 DIVK                             R12 R13 K14 [2]
      177 LOADN                            R13 0
      178 CALL                             R11 2 1
      179 GETIMPORT                        R12 K6 [Vector2.new]
      181 GETTABLEKS                       R16 R7 K15 ["X"]
      183 GETTABLEKS                       R17 R6 K15 ["X"]
      185 SUB                              R15 R16 R17
      186 MINUS                            R14 R15
      187 DIVK                             R13 R14 K14 [2]
      188 LOADN                            R14 0
      189 CALL                             R12 2 1
      190 GETTABLEKS                       R13 R3 K15 ["X"]
      192 GETTABLEKS                       R14 R4 K15 ["X"]
      194 JUMPIFNOTLT                      R13 R14 ; [+13]
      196 MOVE                             R14 R0
      197 GETUPVAL                         R15 2
      198 GETTABLEKS                       R15 R15 K16 ["makeControlPoint"]
      200 MOVE                             R16 R3
      201 LOADNIL                          R17
      202 LOADNIL                          R18
      203 CALL                             R15 3 -1
      204 FASTCALL                         TABLE_INSERT ; [+2]
      205 GETIMPORT                        R13 K19 [table.insert]
      207 CALL                             R13 -1 0
      208 GETIMPORT                        R13 K6 [Vector2.new]
      210 LOADN                            R14 0
      211 LOADN                            R15 0
      212 CALL                             R13 2 1
      213 MOVE                             R15 R0
      214 GETUPVAL                         R16 2
      215 GETTABLEKS                       R16 R16 K16 ["makeControlPoint"]
      217 MOVE                             R17 R4
      218 MOVE                             R18 R13
      219 MOVE                             R19 R9
      220 CALL                             R16 3 -1
      221 FASTCALL                         TABLE_INSERT ; [+2]
      222 GETIMPORT                        R14 K19 [table.insert]
      224 CALL                             R14 -1 0
      225 GETTABLEKS                       R13 R6 K15 ["X"]
      227 GETTABLEKS                       R14 R5 K15 ["X"]
      229 JUMPIFNOTLT                      R13 R14 ; [+47]
      231 GETTABLEKS                       R15 R5 K15 ["X"]
      233 GETTABLEKS                       R16 R6 K15 ["X"]
      235 SUB                              R14 R15 R16
      236 GETTABLEKS                       R16 R5 K15 ["X"]
      238 GETTABLEKS                       R17 R4 K15 ["X"]
      240 SUB                              R15 R16 R17
      241 DIV                              R13 R14 R15
      242 ADD                              R15 R4 R7
      243 DIVK                             R14 R15 K14 [2]
      244 LOADK                            R16 K20 [0.25]
      245 ADD                              R18 R7 R12
      246 SUB                              R17 R18 R14
      247 MUL                              R15 R16 R17
      248 GETIMPORT                        R16 K6 [Vector2.new]
      250 GETTABLEKS                       R17 R14 K15 ["X"]
      252 GETTABLEKS                       R18 R5 K21 ["Y"]
      254 CALL                             R16 2 1
      255 SUBRK                            R19 R22 K13 ["getXMax"]
      256 MUL                              R18 R16 R19
      257 MUL                              R19 R14 R13
      258 ADD                              R17 R18 R19
      259 SUBRK                            R20 R22 K13 ["getXMax"]
      260 MUL                              R19 R11 R20
      261 MUL                              R20 R15 R13
      262 ADD                              R18 R19 R20
      263 MINUS                            R19 R18
      264 MOVE                             R21 R0
      265 GETUPVAL                         R22 2
      266 GETTABLEKS                       R22 R22 K16 ["makeControlPoint"]
      268 MOVE                             R23 R17
      269 MOVE                             R24 R19
      270 MOVE                             R25 R18
      271 CALL                             R22 3 -1
      272 FASTCALL                         TABLE_INSERT ; [+2]
      273 GETIMPORT                        R20 K19 [table.insert]
      275 CALL                             R20 -1 0
      276 JUMP                             ; [+34]
      277 GETIMPORT                        R13 K6 [Vector2.new]
      279 LOADN                            R14 0
      280 LOADN                            R15 0
      281 CALL                             R13 2 1
      282 MOVE                             R15 R0
      283 GETUPVAL                         R16 2
      284 GETTABLEKS                       R16 R16 K16 ["makeControlPoint"]
      286 MOVE                             R17 R5
      287 MOVE                             R18 R10
      288 MOVE                             R19 R13
      289 CALL                             R16 3 -1
      290 FASTCALL                         TABLE_INSERT ; [+2]
      291 GETIMPORT                        R14 K19 [table.insert]
      293 CALL                             R14 -1 0
      294 GETIMPORT                        R13 K6 [Vector2.new]
      296 LOADN                            R14 0
      297 LOADN                            R15 0
      298 CALL                             R13 2 1
      299 MOVE                             R15 R0
      300 GETUPVAL                         R16 2
      301 GETTABLEKS                       R16 R16 K16 ["makeControlPoint"]
      303 MOVE                             R17 R6
      304 MOVE                             R18 R13
      305 MOVE                             R19 R11
      306 CALL                             R16 3 -1
      307 FASTCALL                         TABLE_INSERT ; [+2]
      308 GETIMPORT                        R14 K19 [table.insert]
      310 CALL                             R14 -1 0
      311 GETIMPORT                        R13 K6 [Vector2.new]
      313 LOADN                            R14 0
      314 LOADN                            R15 0
      315 CALL                             R13 2 1
      316 MOVE                             R15 R0
      317 GETUPVAL                         R16 2
      318 GETTABLEKS                       R16 R16 K16 ["makeControlPoint"]
      320 MOVE                             R17 R7
      321 MOVE                             R18 R12
      322 MOVE                             R19 R13
      323 CALL                             R16 3 -1
      324 FASTCALL                         TABLE_INSERT ; [+2]
      325 GETIMPORT                        R14 K19 [table.insert]
      327 CALL                             R14 -1 0
      328 GETTABLEKS                       R13 R8 K15 ["X"]
      330 GETTABLEKS                       R14 R7 K15 ["X"]
      332 JUMPIFNOTLT                      R14 R13 ; [+13]
      334 MOVE                             R14 R0
      335 GETUPVAL                         R15 2
      336 GETTABLEKS                       R15 R15 K16 ["makeControlPoint"]
      338 MOVE                             R16 R8
      339 LOADNIL                          R17
      340 LOADNIL                          R18
      341 CALL                             R15 3 -1
      342 FASTCALL                         TABLE_INSERT ; [+2]
      343 GETIMPORT                        R13 K19 [table.insert]
      345 CALL                             R13 -1 0
      346 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["EqHook"]
        2 GETTABLEKS                       R2 R2 K1 ["bypass"]
        4 NOT                              R1 R2
        5 GETUPVAL                         R2 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 NEWTABLE                         R4 0 2
       12 GETTABLEKS                       R5 R0 K0 ["EqHook"]
       14 GETTABLEKS                       R6 R0 K2 ["PlotAbsoluteSize"]
       16 SETLIST                          R4 R5 2 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K3 ["createElement"]
       22 LOADK                            R4 K4 ["CanvasGroup"]
       23 DUPTABLE                         R5 K7 [{"Size", "BackgroundTransparency"}]
       24 GETIMPORT                        R6 K10 [UDim2.fromScale]
       26 LOADN                            R7 1
       27 LOADN                            R8 1
       28 CALL                             R6 2 1
       29 SETTABLEKS                       R6 R5 K5 ["Size"]
       31 LOADN                            R6 1
       32 SETTABLEKS                       R6 R5 K6 ["BackgroundTransparency"]
       34 DUPTABLE                         R6 K12 [{"Curve"}]
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R7 R7 K3 ["createElement"]
       38 GETUPVAL                         R8 4
       39 DUPTABLE                         R9 K15 [{"ControlPoints", "Tag"}]
       40 SETTABLEKS                       R2 R9 K13 ["ControlPoints"]
       42 JUMPIFNOT                        R1 ; [+2]
       43 LOADK                            R10 K16 ["FullCurve"]
       44 JUMP                             ; [+1]
       45 LOADK                            R10 K17 ["FullCurveDisabled"]
       46 SETTABLEKS                       R10 R9 K14 ["Tag"]
       48 CALL                             R7 2 1
       49 SETTABLEKS                       R7 R6 K11 ["Curve"]
       51 CALL                             R3 3 -1
       52 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AudioEqualizerEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R3 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useMemo"]
       20 GETIMPORT                        R4 K6 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Src"]
       24 GETTABLEKS                       R5 R5 K11 ["Types"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Path2DWrapper"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R1 K10 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Util"]
       38 GETTABLEKS                       R7 R7 K14 ["Path2DUtil"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K6 [require]
       43 GETTABLEKS                       R8 R1 K10 ["Src"]
       45 GETTABLEKS                       R8 R8 K13 ["Util"]
       47 GETTABLEKS                       R8 R8 K15 ["PlotUtil"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K16 [PROTO_3]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R5
       56 RETURN                           R8 1
