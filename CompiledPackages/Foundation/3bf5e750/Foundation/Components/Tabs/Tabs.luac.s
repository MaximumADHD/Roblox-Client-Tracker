PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onActivated"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onActivated"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K13 [{"id", "text", "key", "icon", "isActive", "onActivated", "LayoutOrder", "fillBehavior", "size", "isDisabled", "testId", "ref"}]
        5 GETTABLEKS                       R5 R0 K1 ["id"]
        7 SETTABLEKS                       R5 R4 K1 ["id"]
        9 GETTABLEKS                       R5 R0 K2 ["text"]
       11 SETTABLEKS                       R5 R4 K2 ["text"]
       13 GETTABLEKS                       R6 R0 K1 ["id"]
       15 FASTCALL1                        TOSTRING R6 ; [+2]
       16 GETIMPORT                        R5 K15 [tostring]
       18 CALL                             R5 1 1
       19 SETTABLEKS                       R5 R4 K3 ["key"]
       21 GETTABLEKS                       R5 R0 K4 ["icon"]
       23 SETTABLEKS                       R5 R4 K4 ["icon"]
       25 GETTABLEKS                       R6 R0 K1 ["id"]
       27 GETUPVAL                         R7 2
       28 JUMPIFEQ                         R6 R7 ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 SETTABLEKS                       R5 R4 K5 ["isActive"]
       34 GETUPVAL                         R5 3
       35 SETTABLEKS                       R5 R4 K6 ["onActivated"]
       37 SETTABLEKS                       R1 R4 K7 ["LayoutOrder"]
       39 GETUPVAL                         R5 4
       40 GETTABLEKS                       R5 R5 K8 ["fillBehavior"]
       42 SETTABLEKS                       R5 R4 K8 ["fillBehavior"]
       44 GETUPVAL                         R5 4
       45 GETTABLEKS                       R5 R5 K9 ["size"]
       47 SETTABLEKS                       R5 R4 K9 ["size"]
       49 GETTABLEKS                       R5 R0 K10 ["isDisabled"]
       51 SETTABLEKS                       R5 R4 K10 ["isDisabled"]
       53 LOADK                            R6 K16 ["%*--item-%*"]
       54 GETUPVAL                         R8 4
       55 GETTABLEKS                       R8 R8 K11 ["testId"]
       57 GETTABLEKS                       R9 R0 K1 ["id"]
       59 NAMECALL                         R6 R6 K17 ["format"]
       61 CALL                             R6 3 1
       62 MOVE                             R5 R6
       63 SETTABLEKS                       R5 R4 K11 ["testId"]
       65 GETUPVAL                         R6 5
       66 GETTABLEKS                       R7 R0 K1 ["id"]
       68 GETTABLE                         R5 R6 R7
       69 SETTABLEKS                       R5 R4 K12 ["ref"]
       71 CALL                             R2 2 -1
       72 RETURN                           R2 -1

PROTO_3:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["Stroke"]
        6 GETTABLEKS                       R3 R3 K4 ["Thick"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETIMPORT                        R3 K2 [UDim2.fromOffset]
        4 MOVE                             R4 R1
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K3 ["Stroke"]
        8 GETTABLEKS                       R6 R6 K4 ["Thick"]
       10 SUB                              R5 R2 R6
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K12 [{"id", "text", "key", "icon", "isActive", "onActivated", "LayoutOrder", "fillBehavior", "size", "isDisabled", "testId"}]
        5 GETTABLEKS                       R5 R0 K1 ["id"]
        7 SETTABLEKS                       R5 R4 K1 ["id"]
        9 GETTABLEKS                       R5 R0 K2 ["text"]
       11 SETTABLEKS                       R5 R4 K2 ["text"]
       13 GETTABLEKS                       R6 R0 K1 ["id"]
       15 FASTCALL1                        TOSTRING R6 ; [+2]
       16 GETIMPORT                        R5 K14 [tostring]
       18 CALL                             R5 1 1
       19 SETTABLEKS                       R5 R4 K3 ["key"]
       21 GETTABLEKS                       R5 R0 K4 ["icon"]
       23 SETTABLEKS                       R5 R4 K4 ["icon"]
       25 GETTABLEKS                       R6 R0 K1 ["id"]
       27 GETUPVAL                         R7 2
       28 JUMPIFEQ                         R6 R7 ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 SETTABLEKS                       R5 R4 K5 ["isActive"]
       34 GETUPVAL                         R5 3
       35 SETTABLEKS                       R5 R4 K6 ["onActivated"]
       37 SETTABLEKS                       R1 R4 K7 ["LayoutOrder"]
       39 GETUPVAL                         R5 4
       40 GETTABLEKS                       R5 R5 K8 ["fillBehavior"]
       42 SETTABLEKS                       R5 R4 K8 ["fillBehavior"]
       44 GETUPVAL                         R5 4
       45 GETTABLEKS                       R5 R5 K9 ["size"]
       47 SETTABLEKS                       R5 R4 K9 ["size"]
       49 GETTABLEKS                       R5 R0 K10 ["isDisabled"]
       51 SETTABLEKS                       R5 R4 K10 ["isDisabled"]
       53 LOADK                            R6 K15 ["%*--item-%*"]
       54 GETUPVAL                         R8 4
       55 GETTABLEKS                       R8 R8 K11 ["testId"]
       57 GETTABLEKS                       R9 R0 K1 ["id"]
       59 NAMECALL                         R6 R6 K16 ["format"]
       61 CALL                             R6 3 1
       62 MOVE                             R5 R6
       63 SETTABLEKS                       R5 R4 K11 ["testId"]
       65 CALL                             R2 2 -1
       66 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETUPVAL                         R5 2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["useState"]
        9 GETTABLEKS                       R5 R3 K1 ["defaultActiveTabId"]
       11 JUMPIF                           R5 ; [+11]
       12 GETUPVAL                         R5 4
       13 GETTABLEKS                       R5 R5 K2 ["get"]
       15 MOVE                             R6 R3
       16 NEWTABLE                         R7 0 2
       18 LOADN                            R8 1
       19 LOADK                            R9 K3 ["id"]
       20 SETLIST                          R7 R8 2 [1]
       22 CALL                             R5 2 1
       23 CALL                             R4 1 2
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R5
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R8 R3 K5 ["fillBehavior"]
       33 GETUPVAL                         R9 5
       34 GETTABLEKS                       R9 R9 K6 ["Fill"]
       36 JUMPIFEQ                         R8 R9 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 GETTABLEKS                       R9 R3 K7 ["activeTabId"]
       42 OR                               R8 R9 R4
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R9 R9 K8 ["find"]
       46 GETTABLEKS                       R10 R3 K9 ["tabs"]
       48 NEWCLOSURE                       R11 P1
       49 CAPTURE                          VAL R8
       50 CALL                             R9 2 1
       51 GETUPVAL                         R11 6
       52 GETTABLEKS                       R11 R11 K10 ["FoundationAnimateTabs"]
       54 JUMPIFNOT                        R11 ; [+6]
       55 GETUPVAL                         R10 3
       56 GETTABLEKS                       R10 R10 K11 ["useRef"]
       58 LOADNIL                          R11
       59 CALL                             R10 1 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R10
       62 GETUPVAL                         R12 6
       63 GETTABLEKS                       R12 R12 K10 ["FoundationAnimateTabs"]
       65 JUMPIFNOT                        R12 ; [+9]
       66 GETUPVAL                         R11 7
       67 MOVE                             R12 R8
       68 OR                               R13 R1 R10
       69 GETTABLEKS                       R14 R3 K12 ["size"]
       71 GETTABLEKS                       R15 R3 K5 ["fillBehavior"]
       73 CALL                             R11 4 1
       74 JUMP                             ; [+1]
       75 LOADNIL                          R11
       76 LOADNIL                          R12
       77 LOADNIL                          R13
       78 LOADNIL                          R14
       79 LOADNIL                          R15
       80 GETUPVAL                         R16 6
       81 GETTABLEKS                       R16 R16 K10 ["FoundationAnimateTabs"]
       83 JUMPIFNOT                        R16 ; [+8]
       84 GETTABLEKS                       R12 R11 K13 ["highlightPosition"]
       86 GETTABLEKS                       R13 R11 K14 ["highlightWidth"]
       88 GETTABLEKS                       R14 R11 K15 ["activeItemHeight"]
       90 GETTABLEKS                       R15 R11 K16 ["itemRefs"]
       92 GETUPVAL                         R16 6
       93 GETTABLEKS                       R16 R16 K10 ["FoundationAnimateTabs"]
       95 JUMPIFNOT                        R16 ; [+236]
       96 GETUPVAL                         R16 3
       97 GETTABLEKS                       R16 R16 K17 ["createElement"]
       99 GETUPVAL                         R17 8
      100 DUPTABLE                         R18 K22 [{["tag"] = "size-full-0 auto-y", ["ClipsDescendants"] = True}]
      101 DUPTABLE                         R19 K25 [{"Tabs", "AnimatedBorder"}]
      102 GETUPVAL                         R20 3
      103 GETTABLEKS                       R20 R20 K17 ["createElement"]
      105 GETUPVAL                         R21 8
      106 GETUPVAL                         R22 9
      107 MOVE                             R23 R3
      108 DUPTABLE                         R24 K28 [{["ref"], ["tag"] = "auto-y size-full-0 col"}]
      109 OR                               R25 R1 R10
      110 SETTABLEKS                       R25 R24 K26 ["ref"]
      112 CALL                             R22 2 1
      113 DUPTABLE                         R23 K31 [{"Wrapper", "Content"}]
      114 GETUPVAL                         R24 3
      115 GETTABLEKS                       R24 R24 K17 ["createElement"]
      117 GETUPVAL                         R25 8
      118 DUPTABLE                         R26 K36 [{["LayoutOrder"] = 1, ["tag"] = "auto-y size-full-0", ["testId"]}]
      119 LOADK                            R28 K37 ["%*--wrapper"]
      120 GETTABLEKS                       R30 R3 K35 ["testId"]
      122 NAMECALL                         R28 R28 K38 ["format"]
      124 CALL                             R28 2 1
      125 MOVE                             R27 R28
      126 SETTABLEKS                       R27 R26 K35 ["testId"]
      128 DUPTABLE                         R27 K41 [{"ScrollContainer", "Border"}]
      129 GETUPVAL                         R28 3
      130 GETTABLEKS                       R28 R28 K17 ["createElement"]
      132 GETUPVAL                         R29 10
      133 DUPTABLE                         R30 K42 [{["LayoutOrder"] = 1, ["size"], ["testId"]}]
      134 GETTABLEKS                       R31 R3 K12 ["size"]
      136 SETTABLEKS                       R31 R30 K12 ["size"]
      138 LOADK                            R32 K43 ["%*--scroll-container"]
      139 GETTABLEKS                       R34 R3 K35 ["testId"]
      141 NAMECALL                         R32 R32 K38 ["format"]
      143 CALL                             R32 2 1
      144 MOVE                             R31 R32
      145 SETTABLEKS                       R31 R30 K35 ["testId"]
      147 DUPTABLE                         R31 K45 [{"TabList"}]
      148 GETUPVAL                         R32 3
      149 GETTABLEKS                       R32 R32 K17 ["createElement"]
      151 GETUPVAL                         R33 8
      152 DUPTABLE                         R34 K46 [{"tag", "testId"}]
      153 NEWTABLE                         R35 4 0
      155 LOADB                            R36 1
      156 SETTABLEKS                       R36 R35 K47 ["row auto-xy flex-y-fill"]
      158 NOT                              R36 R7
      159 SETTABLEKS                       R36 R35 K48 ["gap-large"]
      161 SETTABLEKS                       R7 R35 K49 ["size-full-0"]
      163 SETTABLEKS                       R35 R34 K18 ["tag"]
      165 LOADK                            R36 K50 ["%*--list"]
      166 GETTABLEKS                       R38 R3 K35 ["testId"]
      168 NAMECALL                         R36 R36 K38 ["format"]
      170 CALL                             R36 2 1
      171 MOVE                             R35 R36
      172 SETTABLEKS                       R35 R34 K35 ["testId"]
      174 GETUPVAL                         R35 4
      175 GETTABLEKS                       R35 R35 K51 ["map"]
      177 GETTABLEKS                       R36 R3 K9 ["tabs"]
      179 NEWCLOSURE                       R37 P2
      180 CAPTURE                          UPVAL U3
      181 CAPTURE                          UPVAL U11
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R3
      185 CAPTURE                          REF R15
      186 CALL                             R35 2 -1
      187 CALL                             R32 -1 1
      188 SETTABLEKS                       R32 R31 K44 ["TabList"]
      190 CALL                             R28 3 1
      191 SETTABLEKS                       R28 R27 K39 ["ScrollContainer"]
      193 GETUPVAL                         R28 3
      194 GETTABLEKS                       R28 R28 K17 ["createElement"]
      196 GETUPVAL                         R29 8
      197 DUPTABLE                         R30 K57 [{["LayoutOrder"] = 2, ["AnchorPoint"], ["Size"], ["Position"], ["backgroundStyle"], ["testId"]}]
      198 GETIMPORT                        R31 K60 [Vector2.new]
      200 LOADN                            R32 0
      201 LOADN                            R33 1
      202 CALL                             R31 2 1
      203 SETTABLEKS                       R31 R30 K53 ["AnchorPoint"]
      205 GETIMPORT                        R31 K62 [UDim2.new]
      207 LOADN                            R32 1
      208 LOADN                            R33 0
      209 LOADN                            R34 0
      210 GETTABLEKS                       R35 R2 K63 ["Stroke"]
      212 GETTABLEKS                       R35 R35 K64 ["Thick"]
      214 CALL                             R31 4 1
      215 SETTABLEKS                       R31 R30 K54 ["Size"]
      217 GETIMPORT                        R31 K66 [UDim2.fromScale]
      219 LOADN                            R32 0
      220 LOADN                            R33 1
      221 CALL                             R31 2 1
      222 SETTABLEKS                       R31 R30 K55 ["Position"]
      224 GETTABLEKS                       R31 R2 K67 ["Color"]
      226 GETTABLEKS                       R31 R31 K63 ["Stroke"]
      228 GETTABLEKS                       R31 R31 K68 ["Default"]
      230 SETTABLEKS                       R31 R30 K56 ["backgroundStyle"]
      232 LOADK                            R32 K69 ["%*--border"]
      233 GETTABLEKS                       R34 R3 K35 ["testId"]
      235 NAMECALL                         R32 R32 K38 ["format"]
      237 CALL                             R32 2 1
      238 MOVE                             R31 R32
      239 SETTABLEKS                       R31 R30 K35 ["testId"]
      241 CALL                             R28 2 1
      242 SETTABLEKS                       R28 R27 K40 ["Border"]
      244 CALL                             R24 3 1
      245 SETTABLEKS                       R24 R23 K29 ["Wrapper"]
      247 JUMPIFNOT                        R9 ; [+21]
      248 GETTABLEKS                       R25 R9 K70 ["content"]
      250 JUMPIFNOT                        R25 ; [+18]
      251 GETUPVAL                         R24 3
      252 GETTABLEKS                       R24 R24 K17 ["createElement"]
      254 GETUPVAL                         R25 8
      255 DUPTABLE                         R26 K71 [{["LayoutOrder"] = 2, ["tag"] = "auto-y size-full-0", ["testId"]}]
      256 LOADK                            R28 K72 ["%*--content"]
      257 GETTABLEKS                       R30 R3 K35 ["testId"]
      259 NAMECALL                         R28 R28 K38 ["format"]
      261 CALL                             R28 2 1
      262 MOVE                             R27 R28
      263 SETTABLEKS                       R27 R26 K35 ["testId"]
      265 GETTABLEKS                       R27 R9 K70 ["content"]
      267 CALL                             R24 3 1
      268 JUMP                             ; [+1]
      269 LOADNIL                          R24
      270 SETTABLEKS                       R24 R23 K30 ["Content"]
      272 CALL                             R20 3 1
      273 SETTABLEKS                       R20 R19 K23 ["Tabs"]
      275 GETUPVAL                         R20 3
      276 GETTABLEKS                       R20 R20 K17 ["createElement"]
      278 GETUPVAL                         R21 8
      279 DUPTABLE                         R22 K75 [{["LayoutOrder"] = 0, ["ZIndex"], ["Size"], ["Position"], ["backgroundStyle"], ["testId"]}]
      280 GETTABLEKS                       R24 R3 K74 ["ZIndex"]
      282 ADDK                             R23 R24 K33 [1]
      283 SETTABLEKS                       R23 R22 K74 ["ZIndex"]
      285 NEWCLOSURE                       R25 P3
      286 CAPTURE                          VAL R2
      287 NAMECALL                         R23 R13 K51 ["map"]
      289 CALL                             R23 2 1
      290 SETTABLEKS                       R23 R22 K54 ["Size"]
      292 GETUPVAL                         R23 3
      293 GETTABLEKS                       R23 R23 K76 ["joinBindings"]
      295 NEWTABLE                         R24 0 2
      297 MOVE                             R25 R12
      298 MOVE                             R26 R14
      299 SETLIST                          R24 R25 2 [1]
      301 CALL                             R23 1 1
      302 NEWCLOSURE                       R25 P4
      303 CAPTURE                          VAL R2
      304 NAMECALL                         R23 R23 K51 ["map"]
      306 CALL                             R23 2 1
      307 SETTABLEKS                       R23 R22 K55 ["Position"]
      309 GETTABLEKS                       R23 R2 K67 ["Color"]
      311 GETTABLEKS                       R23 R23 K77 ["System"]
      313 GETTABLEKS                       R23 R23 K78 ["Contrast"]
      315 SETTABLEKS                       R23 R22 K56 ["backgroundStyle"]
      317 LOADK                            R24 K79 ["%*--animated-border"]
      318 GETTABLEKS                       R26 R3 K35 ["testId"]
      320 NAMECALL                         R24 R24 K38 ["format"]
      322 CALL                             R24 2 1
      323 MOVE                             R23 R24
      324 SETTABLEKS                       R23 R22 K35 ["testId"]
      326 CALL                             R20 2 1
      327 SETTABLEKS                       R20 R19 K24 ["AnimatedBorder"]
      329 CALL                             R16 3 -1
      330 CLOSEUPVALS                      R15
      331 RETURN                           R16 -1
      332 GETUPVAL                         R16 3
      333 GETTABLEKS                       R16 R16 K17 ["createElement"]
      335 GETUPVAL                         R17 8
      336 GETUPVAL                         R18 9
      337 MOVE                             R19 R3
      338 DUPTABLE                         R20 K28 [{["ref"], ["tag"] = "auto-y size-full-0 col"}]
      339 SETTABLEKS                       R1 R20 K26 ["ref"]
      341 CALL                             R18 2 1
      342 DUPTABLE                         R19 K31 [{"Wrapper", "Content"}]
      343 GETUPVAL                         R20 3
      344 GETTABLEKS                       R20 R20 K17 ["createElement"]
      346 GETUPVAL                         R21 8
      347 DUPTABLE                         R22 K36 [{["LayoutOrder"] = 1, ["tag"] = "auto-y size-full-0", ["testId"]}]
      348 LOADK                            R24 K37 ["%*--wrapper"]
      349 GETTABLEKS                       R26 R3 K35 ["testId"]
      351 NAMECALL                         R24 R24 K38 ["format"]
      353 CALL                             R24 2 1
      354 MOVE                             R23 R24
      355 SETTABLEKS                       R23 R22 K35 ["testId"]
      357 DUPTABLE                         R23 K41 [{"ScrollContainer", "Border"}]
      358 GETUPVAL                         R24 3
      359 GETTABLEKS                       R24 R24 K17 ["createElement"]
      361 GETUPVAL                         R25 10
      362 DUPTABLE                         R26 K42 [{["LayoutOrder"] = 1, ["size"], ["testId"]}]
      363 GETTABLEKS                       R27 R3 K12 ["size"]
      365 SETTABLEKS                       R27 R26 K12 ["size"]
      367 LOADK                            R28 K43 ["%*--scroll-container"]
      368 GETTABLEKS                       R30 R3 K35 ["testId"]
      370 NAMECALL                         R28 R28 K38 ["format"]
      372 CALL                             R28 2 1
      373 MOVE                             R27 R28
      374 SETTABLEKS                       R27 R26 K35 ["testId"]
      376 DUPTABLE                         R27 K45 [{"TabList"}]
      377 GETUPVAL                         R28 3
      378 GETTABLEKS                       R28 R28 K17 ["createElement"]
      380 GETUPVAL                         R29 8
      381 DUPTABLE                         R30 K46 [{"tag", "testId"}]
      382 NEWTABLE                         R31 4 0
      384 LOADB                            R32 1
      385 SETTABLEKS                       R32 R31 K47 ["row auto-xy flex-y-fill"]
      387 NOT                              R32 R7
      388 SETTABLEKS                       R32 R31 K48 ["gap-large"]
      390 SETTABLEKS                       R7 R31 K49 ["size-full-0"]
      392 SETTABLEKS                       R31 R30 K18 ["tag"]
      394 LOADK                            R32 K50 ["%*--list"]
      395 GETTABLEKS                       R34 R3 K35 ["testId"]
      397 NAMECALL                         R32 R32 K38 ["format"]
      399 CALL                             R32 2 1
      400 MOVE                             R31 R32
      401 SETTABLEKS                       R31 R30 K35 ["testId"]
      403 GETUPVAL                         R31 4
      404 GETTABLEKS                       R31 R31 K51 ["map"]
      406 GETTABLEKS                       R32 R3 K9 ["tabs"]
      408 NEWCLOSURE                       R33 P5
      409 CAPTURE                          UPVAL U3
      410 CAPTURE                          UPVAL U11
      411 CAPTURE                          VAL R8
      412 CAPTURE                          VAL R6
      413 CAPTURE                          VAL R3
      414 CALL                             R31 2 -1
      415 CALL                             R28 -1 1
      416 SETTABLEKS                       R28 R27 K44 ["TabList"]
      418 CALL                             R24 3 1
      419 SETTABLEKS                       R24 R23 K39 ["ScrollContainer"]
      421 GETUPVAL                         R24 3
      422 GETTABLEKS                       R24 R24 K17 ["createElement"]
      424 GETUPVAL                         R25 8
      425 DUPTABLE                         R26 K57 [{["LayoutOrder"] = 2, ["AnchorPoint"], ["Size"], ["Position"], ["backgroundStyle"], ["testId"]}]
      426 GETIMPORT                        R27 K60 [Vector2.new]
      428 LOADN                            R28 0
      429 LOADN                            R29 1
      430 CALL                             R27 2 1
      431 SETTABLEKS                       R27 R26 K53 ["AnchorPoint"]
      433 GETIMPORT                        R27 K62 [UDim2.new]
      435 LOADN                            R28 1
      436 LOADN                            R29 0
      437 LOADN                            R30 0
      438 GETTABLEKS                       R31 R2 K63 ["Stroke"]
      440 GETTABLEKS                       R31 R31 K64 ["Thick"]
      442 CALL                             R27 4 1
      443 SETTABLEKS                       R27 R26 K54 ["Size"]
      445 GETIMPORT                        R27 K66 [UDim2.fromScale]
      447 LOADN                            R28 0
      448 LOADN                            R29 1
      449 CALL                             R27 2 1
      450 SETTABLEKS                       R27 R26 K55 ["Position"]
      452 GETTABLEKS                       R27 R2 K67 ["Color"]
      454 GETTABLEKS                       R27 R27 K63 ["Stroke"]
      456 GETTABLEKS                       R27 R27 K68 ["Default"]
      458 SETTABLEKS                       R27 R26 K56 ["backgroundStyle"]
      460 LOADK                            R28 K69 ["%*--border"]
      461 GETTABLEKS                       R30 R3 K35 ["testId"]
      463 NAMECALL                         R28 R28 K38 ["format"]
      465 CALL                             R28 2 1
      466 MOVE                             R27 R28
      467 SETTABLEKS                       R27 R26 K35 ["testId"]
      469 CALL                             R24 2 1
      470 SETTABLEKS                       R24 R23 K40 ["Border"]
      472 CALL                             R20 3 1
      473 SETTABLEKS                       R20 R19 K29 ["Wrapper"]
      475 JUMPIFNOT                        R9 ; [+21]
      476 GETTABLEKS                       R21 R9 K70 ["content"]
      478 JUMPIFNOT                        R21 ; [+18]
      479 GETUPVAL                         R20 3
      480 GETTABLEKS                       R20 R20 K17 ["createElement"]
      482 GETUPVAL                         R21 8
      483 DUPTABLE                         R22 K71 [{["LayoutOrder"] = 2, ["tag"] = "auto-y size-full-0", ["testId"]}]
      484 LOADK                            R24 K72 ["%*--content"]
      485 GETTABLEKS                       R26 R3 K35 ["testId"]
      487 NAMECALL                         R24 R24 K38 ["format"]
      489 CALL                             R24 2 1
      490 MOVE                             R23 R24
      491 SETTABLEKS                       R23 R22 K35 ["testId"]
      493 GETTABLEKS                       R23 R9 K70 ["content"]
      495 CALL                             R20 3 1
      496 JUMP                             ; [+1]
      497 LOADNIL                          R20
      498 SETTABLEKS                       R20 R19 K30 ["Content"]
      500 CALL                             R16 3 -1
      501 CLOSEUPVALS                      R15
      502 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["FillBehavior"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETIMPORT                        R8 K1 [script]
       44 GETTABLEKS                       R8 R8 K4 ["Parent"]
       46 GETTABLEKS                       R8 R8 K14 ["TabItem"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Components"]
       53 GETTABLEKS                       R9 R9 K16 ["Types"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K15 ["Components"]
       60 GETTABLEKS                       R10 R10 K17 ["View"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K18 ["Providers"]
       67 GETTABLEKS                       R11 R11 K19 ["Style"]
       69 GETTABLEKS                       R11 R11 K20 ["useTokens"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K9 ["Utility"]
       76 GETTABLEKS                       R12 R12 K21 ["withCommonProps"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K9 ["Utility"]
       83 GETTABLEKS                       R13 R13 K22 ["withDefaults"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K9 ["Utility"]
       90 GETTABLEKS                       R14 R14 K23 ["useAnimatedHighlight"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETIMPORT                        R15 K1 [script]
       97 GETTABLEKS                       R15 R15 K4 ["Parent"]
       99 GETTABLEKS                       R15 R15 K24 ["OverflowScrollContainer"]
      101 CALL                             R14 1 1
      102 DUPTABLE                         R15 K31 [{["fillBehavior"], ["size"], ["testId"] = "--foundation-tabs", ["ZIndex"] = 1}]
      103 GETTABLEKS                       R16 R5 K32 ["Fill"]
      105 SETTABLEKS                       R16 R15 K25 ["fillBehavior"]
      107 GETTABLEKS                       R16 R6 K33 ["Medium"]
      109 SETTABLEKS                       R16 R15 K26 ["size"]
      111 DUPCLOSURE                       R16 K34 [PROTO_6]
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R7
      124 GETTABLEKS                       R17 R3 K35 ["memo"]
      126 GETTABLEKS                       R18 R3 K36 ["forwardRef"]
      128 MOVE                             R19 R16
      129 CALL                             R18 1 -1
      130 CALL                             R17 -1 -1
      131 RETURN                           R17 -1
