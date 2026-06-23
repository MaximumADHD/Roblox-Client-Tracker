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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["tabs"]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETTABLEKS                       R6 R5 K2 ["ref"]
       11 JUMPIFNOT                        R6 ; [+6]
       12 GETTABLEKS                       R6 R5 K3 ["id"]
       14 GETTABLEKS                       R7 R5 K2 ["ref"]
       16 SETTABLE                         R7 R0 R6
       17 JUMP                             ; [+11]
       18 GETTABLEKS                       R7 R5 K3 ["id"]
       20 GETTABLE                         R6 R0 R7
       21 JUMPIF                           R6 ; [+7]
       22 GETTABLEKS                       R6 R5 K3 ["id"]
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K4 ["createRef"]
       27 CALL                             R7 0 1
       28 SETTABLE                         R7 R0 R6
       29 FORGLOOP                         R1 2 ; [-21]
       31 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["tabs"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["id"]
       10 GETTABLEKS                       R7 R5 K2 ["ref"]
       12 JUMPIF                           R7 ; [+4]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K3 ["createRef"]
       16 CALL                             R7 0 1
       17 SETTABLE                         R7 R0 R6
       18 FORGLOOP                         R1 2 ; [-11]
       20 RETURN                           R0 1

PROTO_4:
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

PROTO_5:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["Stroke"]
        6 GETTABLEKS                       R3 R3 K4 ["Thick"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_6:
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

PROTO_7:
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
       51 GETUPVAL                         R10 3
       52 GETTABLEKS                       R10 R10 K10 ["useRef"]
       54 LOADNIL                          R11
       55 CALL                             R10 1 1
       56 LOADNIL                          R11
       57 GETUPVAL                         R12 6
       58 GETTABLEKS                       R12 R12 K11 ["FoundationFixStaleAnimatedHighlightRefs"]
       60 JUMPIFNOT                        R12 ; [+22]
       61 GETUPVAL                         R12 3
       62 GETTABLEKS                       R12 R12 K10 ["useRef"]
       64 NEWTABLE                         R13 0 0
       66 CALL                             R12 1 1
       67 GETUPVAL                         R13 3
       68 GETTABLEKS                       R13 R13 K12 ["useMemo"]
       70 NEWCLOSURE                       R14 P2
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R3
       73 CAPTURE                          UPVAL U3
       74 NEWTABLE                         R15 0 1
       76 GETTABLEKS                       R16 R3 K9 ["tabs"]
       78 SETLIST                          R15 R16 1 [1]
       80 CALL                             R13 2 1
       81 MOVE                             R11 R13
       82 JUMP                             ; [+14]
       83 GETUPVAL                         R12 3
       84 GETTABLEKS                       R12 R12 K12 ["useMemo"]
       86 NEWCLOSURE                       R13 P3
       87 CAPTURE                          VAL R3
       88 CAPTURE                          UPVAL U3
       89 NEWTABLE                         R14 0 1
       91 GETTABLEKS                       R15 R3 K9 ["tabs"]
       93 SETLIST                          R14 R15 1 [1]
       95 CALL                             R12 2 1
       96 MOVE                             R11 R12
       97 GETUPVAL                         R12 7
       98 MOVE                             R13 R8
       99 OR                               R14 R1 R10
      100 MOVE                             R15 R11
      101 GETTABLEKS                       R16 R3 K13 ["size"]
      103 GETTABLEKS                       R17 R3 K5 ["fillBehavior"]
      105 CALL                             R12 5 1
      106 GETTABLEKS                       R13 R12 K14 ["highlightPosition"]
      108 GETTABLEKS                       R14 R12 K15 ["highlightWidth"]
      110 GETTABLEKS                       R15 R12 K16 ["activeItemHeight"]
      112 GETUPVAL                         R16 3
      113 GETTABLEKS                       R16 R16 K17 ["createElement"]
      115 GETUPVAL                         R17 8
      116 GETUPVAL                         R18 9
      117 MOVE                             R19 R3
      118 GETUPVAL                         R21 6
      119 GETTABLEKS                       R21 R21 K18 ["FoundationTabsInlineSizeFull"]
      121 JUMPIFNOT                        R21 ; [+12]
      122 DUPTABLE                         R20 K21 [{"tag", "Size"}]
      123 LOADK                            R21 K22 ["auto-y clip"]
      124 SETTABLEKS                       R21 R20 K19 ["tag"]
      126 GETIMPORT                        R21 K25 [UDim2.fromScale]
      128 LOADN                            R22 1
      129 LOADN                            R23 0
      130 CALL                             R21 2 1
      131 SETTABLEKS                       R21 R20 K20 ["Size"]
      133 JUMP                             ; [+4]
      134 DUPTABLE                         R20 K26 [{"tag"}]
      135 LOADK                            R21 K27 ["size-full-0 auto-y clip"]
      136 SETTABLEKS                       R21 R20 K19 ["tag"]
      138 CALL                             R18 2 1
      139 DUPTABLE                         R19 K30 [{"Tabs", "AnimatedBorder"}]
      140 GETUPVAL                         R20 3
      141 GETTABLEKS                       R20 R20 K17 ["createElement"]
      143 GETUPVAL                         R21 8
      144 GETUPVAL                         R23 6
      145 GETTABLEKS                       R23 R23 K18 ["FoundationTabsInlineSizeFull"]
      147 JUMPIFNOT                        R23 ; [+15]
      148 DUPTABLE                         R22 K32 [{"ref", "tag", "Size"}]
      149 OR                               R23 R1 R10
      150 SETTABLEKS                       R23 R22 K31 ["ref"]
      152 LOADK                            R23 K33 ["col auto-y"]
      153 SETTABLEKS                       R23 R22 K19 ["tag"]
      155 GETIMPORT                        R23 K25 [UDim2.fromScale]
      157 LOADN                            R24 1
      158 LOADN                            R25 0
      159 CALL                             R23 2 1
      160 SETTABLEKS                       R23 R22 K20 ["Size"]
      162 JUMP                             ; [+7]
      163 DUPTABLE                         R22 K34 [{"ref", "tag"}]
      164 OR                               R23 R1 R10
      165 SETTABLEKS                       R23 R22 K31 ["ref"]
      167 LOADK                            R23 K35 ["col size-full-0 auto-y"]
      168 SETTABLEKS                       R23 R22 K19 ["tag"]
      170 DUPTABLE                         R23 K38 [{"Wrapper", "Content"}]
      171 GETUPVAL                         R24 3
      172 GETTABLEKS                       R24 R24 K17 ["createElement"]
      174 GETUPVAL                         R25 8
      175 GETUPVAL                         R27 6
      176 GETTABLEKS                       R27 R27 K18 ["FoundationTabsInlineSizeFull"]
      178 JUMPIFNOT                        R27 ; [+24]
      179 DUPTABLE                         R26 K41 [{"LayoutOrder", "tag", "Size", "testId"}]
      180 LOADN                            R27 1
      181 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      183 LOADK                            R27 K42 ["auto-y"]
      184 SETTABLEKS                       R27 R26 K19 ["tag"]
      186 GETIMPORT                        R27 K25 [UDim2.fromScale]
      188 LOADN                            R28 1
      189 LOADN                            R29 0
      190 CALL                             R27 2 1
      191 SETTABLEKS                       R27 R26 K20 ["Size"]
      193 LOADK                            R28 K43 ["%*--wrapper"]
      194 GETTABLEKS                       R30 R3 K40 ["testId"]
      196 NAMECALL                         R28 R28 K44 ["format"]
      198 CALL                             R28 2 1
      199 MOVE                             R27 R28
      200 SETTABLEKS                       R27 R26 K40 ["testId"]
      202 JUMP                             ; [+16]
      203 DUPTABLE                         R26 K45 [{"LayoutOrder", "tag", "testId"}]
      204 LOADN                            R27 1
      205 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      207 LOADK                            R27 K46 ["size-full-0 auto-y"]
      208 SETTABLEKS                       R27 R26 K19 ["tag"]
      210 LOADK                            R28 K43 ["%*--wrapper"]
      211 GETTABLEKS                       R30 R3 K40 ["testId"]
      213 NAMECALL                         R28 R28 K44 ["format"]
      215 CALL                             R28 2 1
      216 MOVE                             R27 R28
      217 SETTABLEKS                       R27 R26 K40 ["testId"]
      219 DUPTABLE                         R27 K49 [{"ScrollContainer", "Border"}]
      220 GETUPVAL                         R28 3
      221 GETTABLEKS                       R28 R28 K17 ["createElement"]
      223 GETUPVAL                         R29 10
      224 DUPTABLE                         R30 K50 [{"LayoutOrder", "size", "testId"}]
      225 LOADN                            R31 1
      226 SETTABLEKS                       R31 R30 K39 ["LayoutOrder"]
      228 GETTABLEKS                       R31 R3 K13 ["size"]
      230 SETTABLEKS                       R31 R30 K13 ["size"]
      232 LOADK                            R32 K51 ["%*--scroll-container"]
      233 GETTABLEKS                       R34 R3 K40 ["testId"]
      235 NAMECALL                         R32 R32 K44 ["format"]
      237 CALL                             R32 2 1
      238 MOVE                             R31 R32
      239 SETTABLEKS                       R31 R30 K40 ["testId"]
      241 DUPTABLE                         R31 K53 [{"TabList"}]
      242 GETUPVAL                         R32 3
      243 GETTABLEKS                       R32 R32 K17 ["createElement"]
      245 GETUPVAL                         R33 8
      246 DUPTABLE                         R34 K54 [{"tag", "Size", "testId"}]
      247 GETUPVAL                         R36 6
      248 GETTABLEKS                       R36 R36 K18 ["FoundationTabsInlineSizeFull"]
      250 JUMPIFNOT                        R36 ; [+9]
      251 NEWTABLE                         R35 2 0
      253 LOADB                            R36 1
      254 SETTABLEKS                       R36 R35 K55 ["row flex-y-fill auto-xy"]
      256 NOT                              R36 R7
      257 SETTABLEKS                       R36 R35 K56 ["gap-large"]
      259 JUMP                             ; [+10]
      260 NEWTABLE                         R35 4 0
      262 LOADB                            R36 1
      263 SETTABLEKS                       R36 R35 K55 ["row flex-y-fill auto-xy"]
      265 NOT                              R36 R7
      266 SETTABLEKS                       R36 R35 K56 ["gap-large"]
      268 SETTABLEKS                       R7 R35 K57 ["size-full-0"]
      270 SETTABLEKS                       R35 R34 K19 ["tag"]
      272 GETUPVAL                         R36 6
      273 GETTABLEKS                       R36 R36 K18 ["FoundationTabsInlineSizeFull"]
      275 JUMPIFNOT                        R36 ; [+7]
      276 JUMPIFNOT                        R7 ; [+6]
      277 GETIMPORT                        R35 K25 [UDim2.fromScale]
      279 LOADN                            R36 1
      280 LOADN                            R37 0
      281 CALL                             R35 2 1
      282 JUMP                             ; [+1]
      283 LOADNIL                          R35
      284 SETTABLEKS                       R35 R34 K20 ["Size"]
      286 LOADK                            R36 K58 ["%*--list"]
      287 GETTABLEKS                       R38 R3 K40 ["testId"]
      289 NAMECALL                         R36 R36 K44 ["format"]
      291 CALL                             R36 2 1
      292 MOVE                             R35 R36
      293 SETTABLEKS                       R35 R34 K40 ["testId"]
      295 GETUPVAL                         R35 4
      296 GETTABLEKS                       R35 R35 K59 ["map"]
      298 GETTABLEKS                       R36 R3 K9 ["tabs"]
      300 NEWCLOSURE                       R37 P4
      301 CAPTURE                          UPVAL U3
      302 CAPTURE                          UPVAL U11
      303 CAPTURE                          VAL R8
      304 CAPTURE                          VAL R6
      305 CAPTURE                          VAL R3
      306 CAPTURE                          REF R11
      307 CALL                             R35 2 -1
      308 CALL                             R32 -1 1
      309 SETTABLEKS                       R32 R31 K52 ["TabList"]
      311 CALL                             R28 3 1
      312 SETTABLEKS                       R28 R27 K47 ["ScrollContainer"]
      314 GETUPVAL                         R28 3
      315 GETTABLEKS                       R28 R28 K17 ["createElement"]
      317 GETUPVAL                         R29 8
      318 DUPTABLE                         R30 K63 [{"LayoutOrder", "AnchorPoint", "Size", "Position", "backgroundStyle", "testId"}]
      319 LOADN                            R31 2
      320 SETTABLEKS                       R31 R30 K39 ["LayoutOrder"]
      322 GETIMPORT                        R31 K66 [Vector2.new]
      324 LOADN                            R32 0
      325 LOADN                            R33 1
      326 CALL                             R31 2 1
      327 SETTABLEKS                       R31 R30 K60 ["AnchorPoint"]
      329 GETIMPORT                        R31 K67 [UDim2.new]
      331 LOADN                            R32 1
      332 LOADN                            R33 0
      333 LOADN                            R34 0
      334 GETTABLEKS                       R35 R2 K68 ["Stroke"]
      336 GETTABLEKS                       R35 R35 K69 ["Thick"]
      338 CALL                             R31 4 1
      339 SETTABLEKS                       R31 R30 K20 ["Size"]
      341 GETIMPORT                        R31 K25 [UDim2.fromScale]
      343 LOADN                            R32 0
      344 LOADN                            R33 1
      345 CALL                             R31 2 1
      346 SETTABLEKS                       R31 R30 K61 ["Position"]
      348 GETTABLEKS                       R31 R2 K70 ["Color"]
      350 GETTABLEKS                       R31 R31 K68 ["Stroke"]
      352 GETTABLEKS                       R31 R31 K71 ["Default"]
      354 SETTABLEKS                       R31 R30 K62 ["backgroundStyle"]
      356 LOADK                            R32 K72 ["%*--border"]
      357 GETTABLEKS                       R34 R3 K40 ["testId"]
      359 NAMECALL                         R32 R32 K44 ["format"]
      361 CALL                             R32 2 1
      362 MOVE                             R31 R32
      363 SETTABLEKS                       R31 R30 K40 ["testId"]
      365 CALL                             R28 2 1
      366 SETTABLEKS                       R28 R27 K48 ["Border"]
      368 CALL                             R24 3 1
      369 SETTABLEKS                       R24 R23 K36 ["Wrapper"]
      371 JUMPIFNOT                        R9 ; [+55]
      372 GETTABLEKS                       R25 R9 K73 ["content"]
      374 JUMPIFNOT                        R25 ; [+52]
      375 GETUPVAL                         R24 3
      376 GETTABLEKS                       R24 R24 K17 ["createElement"]
      378 GETUPVAL                         R25 8
      379 GETUPVAL                         R27 6
      380 GETTABLEKS                       R27 R27 K18 ["FoundationTabsInlineSizeFull"]
      382 JUMPIFNOT                        R27 ; [+24]
      383 DUPTABLE                         R26 K41 [{"LayoutOrder", "tag", "Size", "testId"}]
      384 LOADN                            R27 2
      385 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      387 LOADK                            R27 K42 ["auto-y"]
      388 SETTABLEKS                       R27 R26 K19 ["tag"]
      390 GETIMPORT                        R27 K25 [UDim2.fromScale]
      392 LOADN                            R28 1
      393 LOADN                            R29 0
      394 CALL                             R27 2 1
      395 SETTABLEKS                       R27 R26 K20 ["Size"]
      397 LOADK                            R28 K74 ["%*--content"]
      398 GETTABLEKS                       R30 R3 K40 ["testId"]
      400 NAMECALL                         R28 R28 K44 ["format"]
      402 CALL                             R28 2 1
      403 MOVE                             R27 R28
      404 SETTABLEKS                       R27 R26 K40 ["testId"]
      406 JUMP                             ; [+16]
      407 DUPTABLE                         R26 K45 [{"LayoutOrder", "tag", "testId"}]
      408 LOADN                            R27 2
      409 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      411 LOADK                            R27 K46 ["size-full-0 auto-y"]
      412 SETTABLEKS                       R27 R26 K19 ["tag"]
      414 LOADK                            R28 K74 ["%*--content"]
      415 GETTABLEKS                       R30 R3 K40 ["testId"]
      417 NAMECALL                         R28 R28 K44 ["format"]
      419 CALL                             R28 2 1
      420 MOVE                             R27 R28
      421 SETTABLEKS                       R27 R26 K40 ["testId"]
      423 GETTABLEKS                       R27 R9 K73 ["content"]
      425 CALL                             R24 3 1
      426 JUMP                             ; [+1]
      427 LOADNIL                          R24
      428 SETTABLEKS                       R24 R23 K37 ["Content"]
      430 CALL                             R20 3 1
      431 SETTABLEKS                       R20 R19 K28 ["Tabs"]
      433 GETUPVAL                         R20 3
      434 GETTABLEKS                       R20 R20 K17 ["createElement"]
      436 GETUPVAL                         R21 8
      437 DUPTABLE                         R22 K76 [{"LayoutOrder", "ZIndex", "Size", "Position", "backgroundStyle", "testId"}]
      438 LOADN                            R23 0
      439 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      441 GETTABLEKS                       R24 R3 K75 ["ZIndex"]
      443 ADDK                             R23 R24 K77 [1]
      444 SETTABLEKS                       R23 R22 K75 ["ZIndex"]
      446 NEWCLOSURE                       R25 P5
      447 CAPTURE                          VAL R2
      448 NAMECALL                         R23 R14 K59 ["map"]
      450 CALL                             R23 2 1
      451 SETTABLEKS                       R23 R22 K20 ["Size"]
      453 GETUPVAL                         R23 3
      454 GETTABLEKS                       R23 R23 K78 ["joinBindings"]
      456 NEWTABLE                         R24 0 2
      458 MOVE                             R25 R13
      459 MOVE                             R26 R15
      460 SETLIST                          R24 R25 2 [1]
      462 CALL                             R23 1 1
      463 NEWCLOSURE                       R25 P6
      464 CAPTURE                          VAL R2
      465 NAMECALL                         R23 R23 K59 ["map"]
      467 CALL                             R23 2 1
      468 SETTABLEKS                       R23 R22 K61 ["Position"]
      470 GETTABLEKS                       R23 R2 K70 ["Color"]
      472 GETTABLEKS                       R23 R23 K79 ["System"]
      474 GETTABLEKS                       R23 R23 K80 ["Contrast"]
      476 SETTABLEKS                       R23 R22 K62 ["backgroundStyle"]
      478 LOADK                            R24 K81 ["%*--animated-border"]
      479 GETTABLEKS                       R26 R3 K40 ["testId"]
      481 NAMECALL                         R24 R24 K44 ["format"]
      483 CALL                             R24 2 1
      484 MOVE                             R23 R24
      485 SETTABLEKS                       R23 R22 K40 ["testId"]
      487 CALL                             R20 2 1
      488 SETTABLEKS                       R20 R19 K29 ["AnimatedBorder"]
      490 CALL                             R16 3 -1
      491 CLOSEUPVALS                      R11
      492 RETURN                           R16 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["FillBehavior"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Utility"]
       30 GETTABLEKS                       R6 R6 K12 ["Flags"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Enums"]
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
       74 GETTABLEKS                       R12 R0 K11 ["Utility"]
       76 GETTABLEKS                       R12 R12 K21 ["withCommonProps"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K11 ["Utility"]
       83 GETTABLEKS                       R13 R13 K22 ["withDefaults"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K11 ["Utility"]
       90 GETTABLEKS                       R14 R14 K23 ["useAnimatedHighlight"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETIMPORT                        R15 K1 [script]
       97 GETTABLEKS                       R15 R15 K4 ["Parent"]
       99 GETTABLEKS                       R15 R15 K24 ["OverflowScrollContainer"]
      101 CALL                             R14 1 1
      102 DUPTABLE                         R15 K29 [{"fillBehavior", "size", "testId", "ZIndex"}]
      103 GETTABLEKS                       R16 R4 K30 ["Fill"]
      105 SETTABLEKS                       R16 R15 K25 ["fillBehavior"]
      107 GETTABLEKS                       R16 R6 K31 ["Medium"]
      109 SETTABLEKS                       R16 R15 K26 ["size"]
      111 LOADK                            R16 K32 ["--foundation-tabs"]
      112 SETTABLEKS                       R16 R15 K27 ["testId"]
      114 LOADN                            R16 1
      115 SETTABLEKS                       R16 R15 K28 ["ZIndex"]
      117 DUPCLOSURE                       R16 K33 [PROTO_7]
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R7
      130 GETTABLEKS                       R17 R3 K34 ["memo"]
      132 GETTABLEKS                       R18 R3 K35 ["forwardRef"]
      134 MOVE                             R19 R16
      135 CALL                             R18 1 -1
      136 CALL                             R17 -1 -1
      137 RETURN                           R17 -1
