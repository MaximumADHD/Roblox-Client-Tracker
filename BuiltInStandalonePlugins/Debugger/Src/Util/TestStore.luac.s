PROTO_0:
        0 DUPTABLE                         R1 K6 [{"expression", "path", "scope", "value", "dataType", "childPaths"}]
        1 LOADK                            R2 K7 ["Expression 1"]
        2 SETTABLEKS                       R2 R1 K0 ["expression"]
        4 LOADK                            R2 K8 ["3"]
        5 SETTABLEKS                       R2 R1 K1 ["path"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K9 ["Local"]
       10 SETTABLEKS                       R2 R1 K2 ["scope"]
       12 LOADK                            R2 K10 ["somePreview"]
       13 SETTABLEKS                       R2 R1 K3 ["value"]
       15 LOADK                            R2 K11 ["string"]
       16 SETTABLEKS                       R2 R1 K4 ["dataType"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K5 ["childPaths"]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R2 R3 K12 ["fromData"]
       25 MOVE                             R3 R1
       26 CALL                             R2 1 1
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R3 R4 K13 ["new"]
       30 LOADN                            R4 1
       31 LOADK                            R5 K14 ["Alex"]
       32 LOADK                            R6 K10 ["somePreview"]
       33 LOADK                            R7 K15 ["map"]
       34 CALL                             R3 4 1
       35 DUPTABLE                         R4 K17 [{"name", "path", "scope", "value", "dataType"}]
       36 LOADK                            R5 K18 ["Heesoo"]
       37 SETTABLEKS                       R5 R4 K16 ["name"]
       39 LOADK                            R5 K19 ["Alex_Heesoo"]
       40 SETTABLEKS                       R5 R4 K1 ["path"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R5 R6 K9 ["Local"]
       45 SETTABLEKS                       R5 R4 K2 ["scope"]
       47 LOADK                            R5 K10 ["somePreview"]
       48 SETTABLEKS                       R5 R4 K3 ["value"]
       50 LOADK                            R5 K15 ["map"]
       51 SETTABLEKS                       R5 R4 K4 ["dataType"]
       53 DUPTABLE                         R5 K17 [{"name", "path", "scope", "value", "dataType"}]
       54 LOADK                            R6 K20 ["Austin"]
       55 SETTABLEKS                       R6 R5 K16 ["name"]
       57 LOADK                            R6 K21 ["Alex_Austin"]
       58 SETTABLEKS                       R6 R5 K1 ["path"]
       60 GETUPVAL                         R7 0
       61 GETTABLEKS                       R6 R7 K9 ["Local"]
       63 SETTABLEKS                       R6 R5 K2 ["scope"]
       65 LOADK                            R6 K10 ["somePreview"]
       66 SETTABLEKS                       R6 R5 K3 ["value"]
       68 LOADK                            R6 K11 ["string"]
       69 SETTABLEKS                       R6 R5 K4 ["dataType"]
       71 DUPTABLE                         R6 K17 [{"name", "path", "scope", "value", "dataType"}]
       72 LOADK                            R7 K22 ["Raul"]
       73 SETTABLEKS                       R7 R6 K16 ["name"]
       75 LOADK                            R7 K23 ["Alex_Heesoo_Raul"]
       76 SETTABLEKS                       R7 R6 K1 ["path"]
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R7 R8 K9 ["Local"]
       81 SETTABLEKS                       R7 R6 K2 ["scope"]
       83 LOADK                            R7 K10 ["somePreview"]
       84 SETTABLEKS                       R7 R6 K3 ["value"]
       86 LOADK                            R7 K11 ["string"]
       87 SETTABLEKS                       R7 R6 K4 ["dataType"]
       89 DUPTABLE                         R7 K17 [{"name", "path", "scope", "value", "dataType"}]
       90 LOADK                            R8 K24 ["Karan"]
       91 SETTABLEKS                       R8 R7 K16 ["name"]
       93 LOADK                            R8 K25 ["Alex_Austin_Karan"]
       94 SETTABLEKS                       R8 R7 K1 ["path"]
       96 GETUPVAL                         R9 0
       97 GETTABLEKS                       R8 R9 K9 ["Local"]
       99 SETTABLEKS                       R8 R7 K2 ["scope"]
      101 LOADK                            R8 K10 ["somePreview"]
      102 SETTABLEKS                       R8 R7 K3 ["value"]
      104 LOADK                            R8 K11 ["string"]
      105 SETTABLEKS                       R8 R7 K4 ["dataType"]
      107 GETUPVAL                         R9 2
      108 GETTABLEKS                       R8 R9 K13 ["new"]
      110 LOADN                            R9 2
      111 LOADK                            R10 K26 ["UnitedStates"]
      112 LOADK                            R11 K27 ["somePreview2"]
      113 LOADK                            R12 K15 ["map"]
      114 CALL                             R8 4 1
      115 DUPTABLE                         R9 K17 [{"name", "path", "scope", "value", "dataType"}]
      116 LOADK                            R10 K28 ["Wisconsin"]
      117 SETTABLEKS                       R10 R9 K16 ["name"]
      119 LOADK                            R10 K29 ["UnitedStates_Wisconsin"]
      120 SETTABLEKS                       R10 R9 K1 ["path"]
      122 GETUPVAL                         R11 0
      123 GETTABLEKS                       R10 R11 K9 ["Local"]
      125 SETTABLEKS                       R10 R9 K2 ["scope"]
      127 LOADK                            R10 K27 ["somePreview2"]
      128 SETTABLEKS                       R10 R9 K3 ["value"]
      130 LOADK                            R10 K15 ["map"]
      131 SETTABLEKS                       R10 R9 K4 ["dataType"]
      133 DUPTABLE                         R10 K17 [{"name", "path", "scope", "value", "dataType"}]
      134 LOADK                            R11 K30 ["GreenBay"]
      135 SETTABLEKS                       R11 R10 K16 ["name"]
      137 LOADK                            R11 K31 ["UnitedStates_Wisconsin_GreenBay"]
      138 SETTABLEKS                       R11 R10 K1 ["path"]
      140 GETUPVAL                         R12 0
      141 GETTABLEKS                       R11 R12 K9 ["Local"]
      143 SETTABLEKS                       R11 R10 K2 ["scope"]
      145 LOADK                            R11 K27 ["somePreview2"]
      146 SETTABLEKS                       R11 R10 K3 ["value"]
      148 LOADK                            R11 K11 ["string"]
      149 SETTABLEKS                       R11 R10 K4 ["dataType"]
      151 GETUPVAL                         R12 3
      152 GETTABLEKS                       R11 R12 K12 ["fromData"]
      154 MOVE                             R12 R4
      155 CALL                             R11 1 1
      156 GETUPVAL                         R13 3
      157 GETTABLEKS                       R12 R13 K12 ["fromData"]
      159 MOVE                             R13 R5
      160 CALL                             R12 1 1
      161 GETUPVAL                         R14 3
      162 GETTABLEKS                       R13 R14 K12 ["fromData"]
      164 MOVE                             R14 R6
      165 CALL                             R13 1 1
      166 GETUPVAL                         R15 3
      167 GETTABLEKS                       R14 R15 K12 ["fromData"]
      169 MOVE                             R15 R7
      170 CALL                             R14 1 1
      171 GETUPVAL                         R16 3
      172 GETTABLEKS                       R15 R16 K12 ["fromData"]
      174 MOVE                             R16 R9
      175 CALL                             R15 1 1
      176 GETUPVAL                         R17 3
      177 GETTABLEKS                       R16 R17 K12 ["fromData"]
      179 MOVE                             R17 R10
      180 CALL                             R16 1 1
      181 GETUPVAL                         R18 4
      182 GETTABLEKS                       R17 R18 K13 ["new"]
      184 CALL                             R17 0 1
      185 GETUPVAL                         R19 4
      186 GETTABLEKS                       R18 R19 K13 ["new"]
      188 CALL                             R18 0 1
      189 GETUPVAL                         R20 5
      190 GETTABLEKS                       R19 R20 K13 ["new"]
      192 LOADN                            R20 10
      193 MOVE                             R21 R17
      194 LOADK                            R22 K32 ["TestFrame1"]
      195 LOADK                            R23 K33 ["C"]
      196 CALL                             R19 4 1
      197 GETUPVAL                         R21 5
      198 GETTABLEKS                       R20 R21 K13 ["new"]
      200 LOADN                            R21 20
      201 MOVE                             R22 R18
      202 LOADK                            R23 K34 ["TestFrame2"]
      203 LOADK                            R24 K33 ["C"]
      204 CALL                             R20 4 1
      205 NEWTABLE                         R21 2 0
      207 LOADN                            R22 0
      208 SETTABLE                         R19 R21 R22
      209 SETTABLEN                        R20 R21 1
      210 NEWTABLE                         R22 2 0
      212 LOADN                            R23 0
      213 SETTABLE                         R20 R22 R23
      214 SETTABLEN                        R19 R22 1
      215 GETUPVAL                         R24 6
      216 GETTABLEKS                       R23 R24 K13 ["new"]
      218 LOADN                            R24 1
      219 MOVE                             R25 R17
      220 LOADB                            R26 1
      221 CALL                             R23 3 1
      222 GETUPVAL                         R25 6
      223 GETTABLEKS                       R24 R25 K13 ["new"]
      225 LOADN                            R25 2
      226 MOVE                             R26 R18
      227 LOADB                            R27 1
      228 CALL                             R24 3 1
      229 LOADNIL                          R25
      230 GETUPVAL                         R27 7
      231 GETTABLEKS                       R26 R27 K13 ["new"]
      233 GETUPVAL                         R29 8
      234 GETTABLEKS                       R28 R29 K35 ["DebuggerPauseReason"]
      236 GETTABLEKS                       R27 R28 K36 ["Requested"]
      238 LOADN                            R28 1
      239 LOADB                            R29 1
      240 CALL                             R26 3 1
      241 MOVE                             R25 R26
      242 GETUPVAL                         R27 9
      243 GETTABLEKS                       R26 R27 K13 ["new"]
      245 LOADN                            R27 1
      246 CALL                             R26 1 1
      247 GETUPVAL                         R28 10
      248 GETTABLEKS                       R27 R28 K13 ["new"]
      250 CALL                             R27 0 1
      251 GETUPVAL                         R29 11
      252 GETTABLEKS                       R28 R29 K13 ["new"]
      254 MOVE                             R29 R0
      255 MOVE                             R30 R27
      256 GETUPVAL                         R32 12
      257 GETTABLEKS                       R31 R32 K13 ["new"]
      259 CALL                             R31 0 1
      260 GETUPVAL                         R33 13
      261 GETTABLEKS                       R32 R33 K13 ["new"]
      263 CALL                             R32 0 -1
      264 CALL                             R28 -1 1
      265 GETTABLEKS                       R29 R26 K37 ["MockSetThreadStateById"]
      267 LOADN                            R30 1
      268 MOVE                             R31 R23
      269 CALL                             R29 2 0
      270 GETTABLEKS                       R29 R26 K37 ["MockSetThreadStateById"]
      272 LOADN                            R30 2
      273 MOVE                             R31 R24
      274 CALL                             R29 2 0
      275 GETTABLEKS                       R29 R26 K38 ["MockSetCallstackByThreadId"]
      277 LOADN                            R30 1
      278 MOVE                             R31 R21
      279 CALL                             R29 2 0
      280 GETTABLEKS                       R29 R26 K38 ["MockSetCallstackByThreadId"]
      282 LOADN                            R30 2
      283 MOVE                             R31 R22
      284 CALL                             R29 2 0
      285 GETUPVAL                         R30 2
      286 GETTABLEKS                       R29 R30 K39 ["GetDefaultFrameVariables"]
      288 CALL                             R29 0 1
      289 GETTABLEKS                       R30 R29 K40 ["Locals"]
      291 NEWTABLE                         R32 0 2
      293 MOVE                             R33 R3
      294 MOVE                             R34 R8
      295 SETLIST                          R32 R33 2 [1]
      297 NAMECALL                         R30 R30 K41 ["MockSetChildren"]
      299 CALL                             R30 2 0
      300 GETTABLEKS                       R30 R26 K42 ["MockSetDebuggerVariablesByCallstackFrame"]
      302 MOVE                             R31 R19
      303 MOVE                             R32 R29
      304 CALL                             R30 2 0
      305 GETUPVAL                         R31 2
      306 GETTABLEKS                       R30 R31 K39 ["GetDefaultFrameVariables"]
      308 CALL                             R30 0 1
      309 GETTABLEKS                       R31 R30 K40 ["Locals"]
      311 NEWTABLE                         R33 0 2
      313 MOVE                             R34 R8
      314 MOVE                             R35 R3
      315 SETLIST                          R33 R34 2 [1]
      317 NAMECALL                         R31 R31 K41 ["MockSetChildren"]
      319 CALL                             R31 2 0
      320 GETTABLEKS                       R31 R26 K42 ["MockSetDebuggerVariablesByCallstackFrame"]
      322 MOVE                             R32 R20
      323 MOVE                             R33 R30
      324 CALL                             R31 2 0
      325 GETTABLEKS                       R31 R27 K43 ["ConnectionStarted"]
      327 MOVE                             R33 R26
      328 NAMECALL                         R31 R31 K44 ["Fire"]
      330 CALL                             R31 2 0
      331 GETTABLEKS                       R31 R26 K45 ["Paused"]
      333 MOVE                             R33 R25
      334 GETTABLEKS                       R34 R25 K46 ["Reason"]
      336 NAMECALL                         R31 R31 K44 ["Fire"]
      338 CALL                             R31 3 0
      339 NAMECALL                         R31 R0 K47 ["getState"]
      341 CALL                             R31 1 1
      342 GETTABLEKS                       R32 R31 K48 ["Common"]
      344 GETTABLEKS                       R34 R32 K49 ["debuggerConnectionIdToDST"]
      346 GETTABLEKS                       R35 R32 K50 ["currentDebuggerConnectionId"]
      348 GETTABLE                         R33 R34 R35
      349 GETUPVAL                         R35 14
      350 GETTABLEKS                       R34 R35 K51 ["ctor"]
      352 MOVE                             R35 R33
      353 LOADN                            R36 1
      354 LOADN                            R37 1
      355 CALL                             R34 3 1
      356 GETUPVAL                         R37 15
      357 LOADK                            R38 K7 ["Expression 1"]
      358 CALL                             R37 1 -1
      359 NAMECALL                         R35 R0 K52 ["dispatch"]
      361 CALL                             R35 -1 0
      362 GETUPVAL                         R37 16
      363 MOVE                             R38 R34
      364 MOVE                             R39 R2
      365 CALL                             R37 2 -1
      366 NAMECALL                         R35 R0 K52 ["dispatch"]
      368 CALL                             R35 -1 0
      369 LOADN                            R35 0
      370 GETIMPORT                        R36 K54 [ipairs]
      372 NEWTABLE                         R37 0 13
      374 LOADN                            R39 1
      375 LOADN                            R40 2
      376 LOADN                            R41 3
      377 LOADN                            R42 4
      378 LOADN                            R43 5
      379 LOADN                            R44 6
      380 LOADN                            R45 7
      381 LOADN                            R46 8
      382 LOADN                            R47 9
      383 LOADN                            R48 10
      384 LOADN                            R49 11
      385 LOADN                            R50 12
      386 LOADN                            R51 14
      387 SETLIST                          R37 R39 13 [1]
      389 CALL                             R36 1 3
      390 FORGPREP_INEXT                   R36
      391 GETUPVAL                         R43 17
      392 LOADN                            R44 123
      393 GETUPVAL                         R46 18
      394 GETTABLEKS                       R45 R46 K55 ["mockMetaBreakpoint"]
      396 DUPTABLE                         R46 K57 [{"isEnabled"}]
      397 LOADN                            R48 6
      398 JUMPIFLE                         R48 R35 ; [+2]
      400 LOADB                            R47 0 +1
      401 LOADB                            R47 1
      402 SETTABLEKS                       R47 R46 K56 ["isEnabled"]
      404 MOVE                             R47 R40
      405 CALL                             R45 2 -1
      406 CALL                             R43 -1 -1
      407 NAMECALL                         R41 R0 K52 ["dispatch"]
      409 CALL                             R41 -1 0
      410 ADDK                             R35 R35 K58 [1]
      411 FORGLOOP                         R36 2 [inext] ; [-21]
      413 GETUPVAL                         R38 19
      414 MOVE                             R39 R34
      415 LOADK                            R40 K14 ["Alex"]
      416 NEWTABLE                         R41 0 2
      418 MOVE                             R42 R11
      419 MOVE                             R43 R12
      420 SETLIST                          R41 R42 2 [1]
      422 CALL                             R38 3 -1
      423 NAMECALL                         R36 R0 K52 ["dispatch"]
      425 CALL                             R36 -1 0
      426 GETUPVAL                         R38 19
      427 MOVE                             R39 R34
      428 LOADK                            R40 K19 ["Alex_Heesoo"]
      429 NEWTABLE                         R41 0 1
      431 MOVE                             R42 R13
      432 SETLIST                          R41 R42 1 [1]
      434 CALL                             R38 3 -1
      435 NAMECALL                         R36 R0 K52 ["dispatch"]
      437 CALL                             R36 -1 0
      438 GETUPVAL                         R38 19
      439 MOVE                             R39 R34
      440 LOADK                            R40 K21 ["Alex_Austin"]
      441 NEWTABLE                         R41 0 1
      443 MOVE                             R42 R14
      444 SETLIST                          R41 R42 1 [1]
      446 CALL                             R38 3 -1
      447 NAMECALL                         R36 R0 K52 ["dispatch"]
      449 CALL                             R36 -1 0
      450 GETUPVAL                         R38 19
      451 MOVE                             R39 R34
      452 LOADK                            R40 K26 ["UnitedStates"]
      453 NEWTABLE                         R41 0 1
      455 MOVE                             R42 R15
      456 SETLIST                          R41 R42 1 [1]
      458 CALL                             R38 3 -1
      459 NAMECALL                         R36 R0 K52 ["dispatch"]
      461 CALL                             R36 -1 0
      462 GETUPVAL                         R38 19
      463 MOVE                             R39 R34
      464 LOADK                            R40 K29 ["UnitedStates_Wisconsin"]
      465 NEWTABLE                         R41 0 1
      467 MOVE                             R42 R16
      468 SETLIST                          R41 R42 1 [1]
      470 CALL                             R38 3 -1
      471 NAMECALL                         R36 R0 K52 ["dispatch"]
      473 CALL                             R36 -1 0
      474 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Models"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R4 R1 K6 ["Watch"]
       13 GETTABLEKS                       R3 R4 K7 ["WatchRow"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R1 K6 ["Watch"]
       20 GETTABLEKS                       R4 R5 K8 ["VariableRow"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R1 K6 ["Watch"]
       27 GETTABLEKS                       R5 R6 K9 ["ScopeEnum"]
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
       91 GETTABLEKS                       R20 R17 K6 ["Watch"]
       93 GETTABLEKS                       R19 R20 K23 ["AddExpression"]
       95 CALL                             R18 1 1
       96 GETIMPORT                        R19 K5 [require]
       98 GETTABLEKS                       R21 R17 K6 ["Watch"]
      100 GETTABLEKS                       R20 R21 K24 ["ExpressionEvaluated"]
      102 CALL                             R19 1 1
      103 GETIMPORT                        R20 K5 [require]
      105 GETTABLEKS                       R22 R17 K25 ["BreakpointsWindow"]
      107 GETTABLEKS                       R21 R22 K26 ["AddBreakpoint"]
      109 CALL                             R20 1 1
      110 GETIMPORT                        R21 K5 [require]
      112 GETTABLEKS                       R23 R17 K6 ["Watch"]
      114 GETTABLEKS                       R22 R23 K27 ["AddChildVariables"]
      116 CALL                             R21 1 1
      117 GETIMPORT                        R22 K5 [require]
      119 GETTABLEKS                       R25 R0 K28 ["Util"]
      121 GETTABLEKS                       R24 R25 K29 ["DebugConnectionListener"]
      123 GETTABLEKS                       R23 R24 K29 ["DebugConnectionListener"]
      125 CALL                             R22 1 1
      126 GETIMPORT                        R23 K5 [require]
      128 GETTABLEKS                       R25 R0 K28 ["Util"]
      130 GETTABLEKS                       R24 R25 K30 ["Constants"]
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
