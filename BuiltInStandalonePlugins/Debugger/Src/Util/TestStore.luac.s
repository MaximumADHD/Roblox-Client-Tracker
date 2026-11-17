PROTO_0:
        0 DUPTABLE                         R1 K10 [{[1] = "Expression 1", ["path"] = "3", ["scope"], ["value"] = "somePreview", ["dataType"] = "string", ["childPaths"]}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K11 ["Local"]
        4 SETTABLEKS                       R2 R1 K4 ["scope"]
        6 NEWTABLE                         R2 0 0
        8 SETTABLEKS                       R2 R1 K9 ["childPaths"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K12 ["fromData"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K13 ["new"]
       18 LOADN                            R4 1
       19 LOADK                            R5 K14 ["Alex"]
       20 LOADK                            R6 K6 ["somePreview"]
       21 LOADK                            R7 K15 ["map"]
       22 CALL                             R3 4 1
       23 DUPTABLE                         R4 K19 [{["name"] = "Heesoo", ["path"] = "Alex_Heesoo", ["scope"], ["value"] = "somePreview", ["dataType"] = "map"}]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K11 ["Local"]
       27 SETTABLEKS                       R5 R4 K4 ["scope"]
       29 DUPTABLE                         R5 K22 [{["name"] = "Austin", ["path"] = "Alex_Austin", ["scope"], ["value"] = "somePreview", ["dataType"] = "string"}]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K11 ["Local"]
       33 SETTABLEKS                       R6 R5 K4 ["scope"]
       35 DUPTABLE                         R6 K25 [{["name"] = "Raul", ["path"] = "Alex_Heesoo_Raul", ["scope"], ["value"] = "somePreview", ["dataType"] = "string"}]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K11 ["Local"]
       39 SETTABLEKS                       R7 R6 K4 ["scope"]
       41 DUPTABLE                         R7 K28 [{["name"] = "Karan", ["path"] = "Alex_Austin_Karan", ["scope"], ["value"] = "somePreview", ["dataType"] = "string"}]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K11 ["Local"]
       45 SETTABLEKS                       R8 R7 K4 ["scope"]
       47 GETUPVAL                         R8 2
       48 GETTABLEKS                       R8 R8 K13 ["new"]
       50 LOADN                            R9 2
       51 LOADK                            R10 K29 ["UnitedStates"]
       52 LOADK                            R11 K30 ["somePreview2"]
       53 LOADK                            R12 K15 ["map"]
       54 CALL                             R8 4 1
       55 DUPTABLE                         R9 K33 [{["name"] = "Wisconsin", ["path"] = "UnitedStates_Wisconsin", ["scope"], ["value"] = "somePreview2", ["dataType"] = "map"}]
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R10 R10 K11 ["Local"]
       59 SETTABLEKS                       R10 R9 K4 ["scope"]
       61 DUPTABLE                         R10 K36 [{["name"] = "GreenBay", ["path"] = "UnitedStates_Wisconsin_GreenBay", ["scope"], ["value"] = "somePreview2", ["dataType"] = "string"}]
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R11 R11 K11 ["Local"]
       65 SETTABLEKS                       R11 R10 K4 ["scope"]
       67 GETUPVAL                         R11 3
       68 GETTABLEKS                       R11 R11 K12 ["fromData"]
       70 MOVE                             R12 R4
       71 CALL                             R11 1 1
       72 GETUPVAL                         R12 3
       73 GETTABLEKS                       R12 R12 K12 ["fromData"]
       75 MOVE                             R13 R5
       76 CALL                             R12 1 1
       77 GETUPVAL                         R13 3
       78 GETTABLEKS                       R13 R13 K12 ["fromData"]
       80 MOVE                             R14 R6
       81 CALL                             R13 1 1
       82 GETUPVAL                         R14 3
       83 GETTABLEKS                       R14 R14 K12 ["fromData"]
       85 MOVE                             R15 R7
       86 CALL                             R14 1 1
       87 GETUPVAL                         R15 3
       88 GETTABLEKS                       R15 R15 K12 ["fromData"]
       90 MOVE                             R16 R9
       91 CALL                             R15 1 1
       92 GETUPVAL                         R16 3
       93 GETTABLEKS                       R16 R16 K12 ["fromData"]
       95 MOVE                             R17 R10
       96 CALL                             R16 1 1
       97 GETUPVAL                         R17 4
       98 GETTABLEKS                       R17 R17 K13 ["new"]
      100 CALL                             R17 0 1
      101 GETUPVAL                         R18 4
      102 GETTABLEKS                       R18 R18 K13 ["new"]
      104 CALL                             R18 0 1
      105 GETUPVAL                         R19 5
      106 GETTABLEKS                       R19 R19 K13 ["new"]
      108 LOADN                            R20 10
      109 MOVE                             R21 R17
      110 LOADK                            R22 K37 ["TestFrame1"]
      111 LOADK                            R23 K38 ["C"]
      112 CALL                             R19 4 1
      113 GETUPVAL                         R20 5
      114 GETTABLEKS                       R20 R20 K13 ["new"]
      116 LOADN                            R21 20
      117 MOVE                             R22 R18
      118 LOADK                            R23 K39 ["TestFrame2"]
      119 LOADK                            R24 K38 ["C"]
      120 CALL                             R20 4 1
      121 NEWTABLE                         R21 2 0
      123 LOADN                            R22 0
      124 SETTABLE                         R19 R21 R22
      125 SETTABLEN                        R20 R21 1
      126 NEWTABLE                         R22 2 0
      128 LOADN                            R23 0
      129 SETTABLE                         R20 R22 R23
      130 SETTABLEN                        R19 R22 1
      131 GETUPVAL                         R23 6
      132 GETTABLEKS                       R23 R23 K13 ["new"]
      134 LOADN                            R24 1
      135 MOVE                             R25 R17
      136 LOADB                            R26 1
      137 CALL                             R23 3 1
      138 GETUPVAL                         R24 6
      139 GETTABLEKS                       R24 R24 K13 ["new"]
      141 LOADN                            R25 2
      142 MOVE                             R26 R18
      143 LOADB                            R27 1
      144 CALL                             R24 3 1
      145 LOADNIL                          R25
      146 GETUPVAL                         R26 7
      147 GETTABLEKS                       R26 R26 K13 ["new"]
      149 GETUPVAL                         R27 8
      150 GETTABLEKS                       R27 R27 K40 ["DebuggerPauseReason"]
      152 GETTABLEKS                       R27 R27 K41 ["Requested"]
      154 LOADN                            R28 1
      155 LOADB                            R29 1
      156 CALL                             R26 3 1
      157 MOVE                             R25 R26
      158 GETUPVAL                         R26 9
      159 GETTABLEKS                       R26 R26 K13 ["new"]
      161 LOADN                            R27 1
      162 CALL                             R26 1 1
      163 GETUPVAL                         R27 10
      164 GETTABLEKS                       R27 R27 K13 ["new"]
      166 CALL                             R27 0 1
      167 GETUPVAL                         R28 11
      168 GETTABLEKS                       R28 R28 K13 ["new"]
      170 MOVE                             R29 R0
      171 MOVE                             R30 R27
      172 GETUPVAL                         R31 12
      173 GETTABLEKS                       R31 R31 K13 ["new"]
      175 CALL                             R31 0 1
      176 GETUPVAL                         R32 13
      177 GETTABLEKS                       R32 R32 K13 ["new"]
      179 CALL                             R32 0 -1
      180 CALL                             R28 -1 1
      181 GETTABLEKS                       R29 R26 K42 ["MockSetThreadStateById"]
      183 LOADN                            R30 1
      184 MOVE                             R31 R23
      185 CALL                             R29 2 0
      186 GETTABLEKS                       R29 R26 K42 ["MockSetThreadStateById"]
      188 LOADN                            R30 2
      189 MOVE                             R31 R24
      190 CALL                             R29 2 0
      191 GETTABLEKS                       R29 R26 K43 ["MockSetCallstackByThreadId"]
      193 LOADN                            R30 1
      194 MOVE                             R31 R21
      195 CALL                             R29 2 0
      196 GETTABLEKS                       R29 R26 K43 ["MockSetCallstackByThreadId"]
      198 LOADN                            R30 2
      199 MOVE                             R31 R22
      200 CALL                             R29 2 0
      201 GETUPVAL                         R29 2
      202 GETTABLEKS                       R29 R29 K44 ["GetDefaultFrameVariables"]
      204 CALL                             R29 0 1
      205 GETTABLEKS                       R30 R29 K45 ["Locals"]
      207 NEWTABLE                         R32 0 2
      209 MOVE                             R33 R3
      210 MOVE                             R34 R8
      211 SETLIST                          R32 R33 2 [1]
      213 NAMECALL                         R30 R30 K46 ["MockSetChildren"]
      215 CALL                             R30 2 0
      216 GETTABLEKS                       R30 R26 K47 ["MockSetDebuggerVariablesByCallstackFrame"]
      218 MOVE                             R31 R19
      219 MOVE                             R32 R29
      220 CALL                             R30 2 0
      221 GETUPVAL                         R30 2
      222 GETTABLEKS                       R30 R30 K44 ["GetDefaultFrameVariables"]
      224 CALL                             R30 0 1
      225 GETTABLEKS                       R31 R30 K45 ["Locals"]
      227 NEWTABLE                         R33 0 2
      229 MOVE                             R34 R8
      230 MOVE                             R35 R3
      231 SETLIST                          R33 R34 2 [1]
      233 NAMECALL                         R31 R31 K46 ["MockSetChildren"]
      235 CALL                             R31 2 0
      236 GETTABLEKS                       R31 R26 K47 ["MockSetDebuggerVariablesByCallstackFrame"]
      238 MOVE                             R32 R20
      239 MOVE                             R33 R30
      240 CALL                             R31 2 0
      241 GETTABLEKS                       R31 R27 K48 ["ConnectionStarted"]
      243 MOVE                             R33 R26
      244 NAMECALL                         R31 R31 K49 ["Fire"]
      246 CALL                             R31 2 0
      247 GETTABLEKS                       R31 R26 K50 ["Paused"]
      249 MOVE                             R33 R25
      250 GETTABLEKS                       R34 R25 K51 ["Reason"]
      252 NAMECALL                         R31 R31 K49 ["Fire"]
      254 CALL                             R31 3 0
      255 NAMECALL                         R31 R0 K52 ["getState"]
      257 CALL                             R31 1 1
      258 GETTABLEKS                       R32 R31 K53 ["Common"]
      260 GETTABLEKS                       R34 R32 K54 ["debuggerConnectionIdToDST"]
      262 GETTABLEKS                       R35 R32 K55 ["currentDebuggerConnectionId"]
      264 GETTABLE                         R33 R34 R35
      265 GETUPVAL                         R34 14
      266 GETTABLEKS                       R34 R34 K56 ["ctor"]
      268 MOVE                             R35 R33
      269 LOADN                            R36 1
      270 LOADN                            R37 1
      271 CALL                             R34 3 1
      272 GETUPVAL                         R37 15
      273 LOADK                            R38 K1 ["Expression 1"]
      274 CALL                             R37 1 -1
      275 NAMECALL                         R35 R0 K57 ["dispatch"]
      277 CALL                             R35 -1 0
      278 GETUPVAL                         R37 16
      279 MOVE                             R38 R34
      280 MOVE                             R39 R2
      281 CALL                             R37 2 -1
      282 NAMECALL                         R35 R0 K57 ["dispatch"]
      284 CALL                             R35 -1 0
      285 LOADN                            R35 0
      286 GETIMPORT                        R36 K59 [ipairs]
      288 NEWTABLE                         R37 0 13
      290 LOADN                            R39 1
      291 LOADN                            R40 2
      292 LOADN                            R41 3
      293 LOADN                            R42 4
      294 LOADN                            R43 5
      295 LOADN                            R44 6
      296 LOADN                            R45 7
      297 LOADN                            R46 8
      298 LOADN                            R47 9
      299 LOADN                            R48 10
      300 LOADN                            R49 11
      301 LOADN                            R50 12
      302 LOADN                            R51 14
      303 SETLIST                          R37 R39 13 [1]
      305 CALL                             R36 1 3
      306 FORGPREP_INEXT                   R36
      307 GETUPVAL                         R43 17
      308 LOADN                            R44 123
      309 GETUPVAL                         R45 18
      310 GETTABLEKS                       R45 R45 K60 ["mockMetaBreakpoint"]
      312 DUPTABLE                         R46 K62 [{"isEnabled"}]
      313 LOADN                            R48 6
      314 JUMPIFLE                         R48 R35 ; [+2]
      316 LOADB                            R47 0 +1
      317 LOADB                            R47 1
      318 SETTABLEKS                       R47 R46 K61 ["isEnabled"]
      320 MOVE                             R47 R40
      321 CALL                             R45 2 -1
      322 CALL                             R43 -1 -1
      323 NAMECALL                         R41 R0 K57 ["dispatch"]
      325 CALL                             R41 -1 0
      326 ADDK                             R35 R35 K63 [1]
      327 FORGLOOP                         R36 2 [inext] ; [-21]
      329 GETUPVAL                         R38 19
      330 MOVE                             R39 R34
      331 LOADK                            R40 K14 ["Alex"]
      332 NEWTABLE                         R41 0 2
      334 MOVE                             R42 R11
      335 MOVE                             R43 R12
      336 SETLIST                          R41 R42 2 [1]
      338 CALL                             R38 3 -1
      339 NAMECALL                         R36 R0 K57 ["dispatch"]
      341 CALL                             R36 -1 0
      342 GETUPVAL                         R38 19
      343 MOVE                             R39 R34
      344 LOADK                            R40 K18 ["Alex_Heesoo"]
      345 NEWTABLE                         R41 0 1
      347 MOVE                             R42 R13
      348 SETLIST                          R41 R42 1 [1]
      350 CALL                             R38 3 -1
      351 NAMECALL                         R36 R0 K57 ["dispatch"]
      353 CALL                             R36 -1 0
      354 GETUPVAL                         R38 19
      355 MOVE                             R39 R34
      356 LOADK                            R40 K21 ["Alex_Austin"]
      357 NEWTABLE                         R41 0 1
      359 MOVE                             R42 R14
      360 SETLIST                          R41 R42 1 [1]
      362 CALL                             R38 3 -1
      363 NAMECALL                         R36 R0 K57 ["dispatch"]
      365 CALL                             R36 -1 0
      366 GETUPVAL                         R38 19
      367 MOVE                             R39 R34
      368 LOADK                            R40 K29 ["UnitedStates"]
      369 NEWTABLE                         R41 0 1
      371 MOVE                             R42 R15
      372 SETLIST                          R41 R42 1 [1]
      374 CALL                             R38 3 -1
      375 NAMECALL                         R36 R0 K57 ["dispatch"]
      377 CALL                             R36 -1 0
      378 GETUPVAL                         R38 19
      379 MOVE                             R39 R34
      380 LOADK                            R40 K32 ["UnitedStates_Wisconsin"]
      381 NEWTABLE                         R41 0 1
      383 MOVE                             R42 R16
      384 SETLIST                          R41 R42 1 [1]
      386 CALL                             R38 3 -1
      387 NAMECALL                         R36 R0 K57 ["dispatch"]
      389 CALL                             R36 -1 0
      390 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Models"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Watch"]
       13 GETTABLEKS                       R3 R3 K7 ["WatchRow"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K6 ["Watch"]
       20 GETTABLEKS                       R4 R4 K8 ["VariableRow"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K6 ["Watch"]
       27 GETTABLEKS                       R5 R5 K9 ["ScopeEnum"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R1 K10 ["StepStateBundle"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R7 R1 K11 ["MetaBreakpoint"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R0 K12 ["Mocks"]
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R7 K13 ["ThreadState"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R7 K14 ["StackFrame"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R7 K15 ["ScriptRef"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R7 K16 ["PausedState"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R13 R7 K17 ["DebuggerVariable"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R7 K18 ["MockDebuggerConnection"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K5 [require]
       74 GETTABLEKS                       R15 R7 K19 ["MockDebuggerConnectionManager"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K5 [require]
       79 GETTABLEKS                       R16 R7 K20 ["MockDebuggerUIService"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K5 [require]
       84 GETTABLEKS                       R17 R7 K21 ["MockCrossDMScriptChangeListenerService"]
       86 CALL                             R16 1 1
       87 GETTABLEKS                       R17 R0 K22 ["Actions"]
       89 GETIMPORT                        R18 K5 [require]
       91 GETTABLEKS                       R19 R17 K6 ["Watch"]
       93 GETTABLEKS                       R19 R19 K23 ["AddExpression"]
       95 CALL                             R18 1 1
       96 GETIMPORT                        R19 K5 [require]
       98 GETTABLEKS                       R20 R17 K6 ["Watch"]
      100 GETTABLEKS                       R20 R20 K24 ["ExpressionEvaluated"]
      102 CALL                             R19 1 1
      103 GETIMPORT                        R20 K5 [require]
      105 GETTABLEKS                       R21 R17 K25 ["BreakpointsWindow"]
      107 GETTABLEKS                       R21 R21 K26 ["AddBreakpoint"]
      109 CALL                             R20 1 1
      110 GETIMPORT                        R21 K5 [require]
      112 GETTABLEKS                       R22 R17 K6 ["Watch"]
      114 GETTABLEKS                       R22 R22 K27 ["AddChildVariables"]
      116 CALL                             R21 1 1
      117 GETIMPORT                        R22 K5 [require]
      119 GETTABLEKS                       R23 R0 K28 ["Util"]
      121 GETTABLEKS                       R23 R23 K29 ["DebugConnectionListener"]
      123 GETTABLEKS                       R23 R23 K29 ["DebugConnectionListener"]
      125 CALL                             R22 1 1
      126 GETIMPORT                        R23 K5 [require]
      128 GETTABLEKS                       R24 R0 K28 ["Util"]
      130 GETTABLEKS                       R24 R24 K30 ["Constants"]
      132 CALL                             R23 1 1
      133 DUPCLOSURE                       R24 K31 [PROTO_0]
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R23
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R22
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R21
      154 RETURN                           R24 1
