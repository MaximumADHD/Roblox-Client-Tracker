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
      121 JUMPIFNOT                        R21 ; [+9]
      122 DUPTABLE                         R20 K22 [{["tag"] = "auto-y clip", ["Size"]}]
      123 GETIMPORT                        R21 K25 [UDim2.fromScale]
      125 LOADN                            R22 1
      126 LOADN                            R23 0
      127 CALL                             R21 2 1
      128 SETTABLEKS                       R21 R20 K21 ["Size"]
      130 JUMP                             ; [+1]
      131 DUPTABLE                         R20 K27 [{["tag"] = "size-full-0 auto-y clip"}]
      132 CALL                             R18 2 1
      133 DUPTABLE                         R19 K30 [{"Tabs", "AnimatedBorder"}]
      134 GETUPVAL                         R20 3
      135 GETTABLEKS                       R20 R20 K17 ["createElement"]
      137 GETUPVAL                         R21 8
      138 GETUPVAL                         R23 6
      139 GETTABLEKS                       R23 R23 K18 ["FoundationTabsInlineSizeFull"]
      141 JUMPIFNOT                        R23 ; [+12]
      142 DUPTABLE                         R22 K33 [{["ref"], ["tag"] = "col auto-y", ["Size"]}]
      143 OR                               R23 R1 R10
      144 SETTABLEKS                       R23 R22 K31 ["ref"]
      146 GETIMPORT                        R23 K25 [UDim2.fromScale]
      148 LOADN                            R24 1
      149 LOADN                            R25 0
      150 CALL                             R23 2 1
      151 SETTABLEKS                       R23 R22 K21 ["Size"]
      153 JUMP                             ; [+4]
      154 DUPTABLE                         R22 K35 [{["ref"], ["tag"] = "col size-full-0 auto-y"}]
      155 OR                               R23 R1 R10
      156 SETTABLEKS                       R23 R22 K31 ["ref"]
      158 DUPTABLE                         R23 K38 [{"Wrapper", "Content"}]
      159 GETUPVAL                         R24 3
      160 GETTABLEKS                       R24 R24 K17 ["createElement"]
      162 GETUPVAL                         R25 8
      163 GETUPVAL                         R27 6
      164 GETTABLEKS                       R27 R27 K18 ["FoundationTabsInlineSizeFull"]
      166 JUMPIFNOT                        R27 ; [+18]
      167 DUPTABLE                         R26 K43 [{["LayoutOrder"] = 1, ["tag"] = "auto-y", ["Size"], ["testId"]}]
      168 GETIMPORT                        R27 K25 [UDim2.fromScale]
      170 LOADN                            R28 1
      171 LOADN                            R29 0
      172 CALL                             R27 2 1
      173 SETTABLEKS                       R27 R26 K21 ["Size"]
      175 LOADK                            R28 K44 ["%*--wrapper"]
      176 GETTABLEKS                       R30 R3 K42 ["testId"]
      178 NAMECALL                         R28 R28 K45 ["format"]
      180 CALL                             R28 2 1
      181 MOVE                             R27 R28
      182 SETTABLEKS                       R27 R26 K42 ["testId"]
      184 JUMP                             ; [+10]
      185 DUPTABLE                         R26 K47 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y", ["testId"]}]
      186 LOADK                            R28 K44 ["%*--wrapper"]
      187 GETTABLEKS                       R30 R3 K42 ["testId"]
      189 NAMECALL                         R28 R28 K45 ["format"]
      191 CALL                             R28 2 1
      192 MOVE                             R27 R28
      193 SETTABLEKS                       R27 R26 K42 ["testId"]
      195 DUPTABLE                         R27 K50 [{"ScrollContainer", "Border"}]
      196 GETUPVAL                         R28 3
      197 GETTABLEKS                       R28 R28 K17 ["createElement"]
      199 GETUPVAL                         R29 10
      200 DUPTABLE                         R30 K51 [{["LayoutOrder"] = 1, ["size"], ["testId"]}]
      201 GETTABLEKS                       R31 R3 K13 ["size"]
      203 SETTABLEKS                       R31 R30 K13 ["size"]
      205 LOADK                            R32 K52 ["%*--scroll-container"]
      206 GETTABLEKS                       R34 R3 K42 ["testId"]
      208 NAMECALL                         R32 R32 K45 ["format"]
      210 CALL                             R32 2 1
      211 MOVE                             R31 R32
      212 SETTABLEKS                       R31 R30 K42 ["testId"]
      214 DUPTABLE                         R31 K54 [{"TabList"}]
      215 GETUPVAL                         R32 3
      216 GETTABLEKS                       R32 R32 K17 ["createElement"]
      218 GETUPVAL                         R33 8
      219 DUPTABLE                         R34 K55 [{"tag", "Size", "testId"}]
      220 GETUPVAL                         R36 6
      221 GETTABLEKS                       R36 R36 K18 ["FoundationTabsInlineSizeFull"]
      223 JUMPIFNOT                        R36 ; [+9]
      224 NEWTABLE                         R35 2 0
      226 LOADB                            R36 1
      227 SETTABLEKS                       R36 R35 K56 ["row flex-y-fill auto-xy"]
      229 NOT                              R36 R7
      230 SETTABLEKS                       R36 R35 K57 ["gap-large"]
      232 JUMP                             ; [+10]
      233 NEWTABLE                         R35 4 0
      235 LOADB                            R36 1
      236 SETTABLEKS                       R36 R35 K56 ["row flex-y-fill auto-xy"]
      238 NOT                              R36 R7
      239 SETTABLEKS                       R36 R35 K57 ["gap-large"]
      241 SETTABLEKS                       R7 R35 K58 ["size-full-0"]
      243 SETTABLEKS                       R35 R34 K19 ["tag"]
      245 GETUPVAL                         R36 6
      246 GETTABLEKS                       R36 R36 K18 ["FoundationTabsInlineSizeFull"]
      248 JUMPIFNOT                        R36 ; [+7]
      249 JUMPIFNOT                        R7 ; [+6]
      250 GETIMPORT                        R35 K25 [UDim2.fromScale]
      252 LOADN                            R36 1
      253 LOADN                            R37 0
      254 CALL                             R35 2 1
      255 JUMP                             ; [+1]
      256 LOADNIL                          R35
      257 SETTABLEKS                       R35 R34 K21 ["Size"]
      259 LOADK                            R36 K59 ["%*--list"]
      260 GETTABLEKS                       R38 R3 K42 ["testId"]
      262 NAMECALL                         R36 R36 K45 ["format"]
      264 CALL                             R36 2 1
      265 MOVE                             R35 R36
      266 SETTABLEKS                       R35 R34 K42 ["testId"]
      268 GETUPVAL                         R35 4
      269 GETTABLEKS                       R35 R35 K60 ["map"]
      271 GETTABLEKS                       R36 R3 K9 ["tabs"]
      273 NEWCLOSURE                       R37 P4
      274 CAPTURE                          UPVAL U3
      275 CAPTURE                          UPVAL U11
      276 CAPTURE                          VAL R8
      277 CAPTURE                          VAL R6
      278 CAPTURE                          VAL R3
      279 CAPTURE                          REF R11
      280 CALL                             R35 2 -1
      281 CALL                             R32 -1 1
      282 SETTABLEKS                       R32 R31 K53 ["TabList"]
      284 CALL                             R28 3 1
      285 SETTABLEKS                       R28 R27 K48 ["ScrollContainer"]
      287 GETUPVAL                         R28 3
      288 GETTABLEKS                       R28 R28 K17 ["createElement"]
      290 GETUPVAL                         R29 8
      291 DUPTABLE                         R30 K65 [{["LayoutOrder"] = 2, ["AnchorPoint"], ["Size"], ["Position"], ["backgroundStyle"], ["testId"]}]
      292 GETIMPORT                        R31 K68 [Vector2.new]
      294 LOADN                            R32 0
      295 LOADN                            R33 1
      296 CALL                             R31 2 1
      297 SETTABLEKS                       R31 R30 K62 ["AnchorPoint"]
      299 GETIMPORT                        R31 K69 [UDim2.new]
      301 LOADN                            R32 1
      302 LOADN                            R33 0
      303 LOADN                            R34 0
      304 GETTABLEKS                       R35 R2 K70 ["Stroke"]
      306 GETTABLEKS                       R35 R35 K71 ["Thick"]
      308 CALL                             R31 4 1
      309 SETTABLEKS                       R31 R30 K21 ["Size"]
      311 GETIMPORT                        R31 K25 [UDim2.fromScale]
      313 LOADN                            R32 0
      314 LOADN                            R33 1
      315 CALL                             R31 2 1
      316 SETTABLEKS                       R31 R30 K63 ["Position"]
      318 GETTABLEKS                       R31 R2 K72 ["Color"]
      320 GETTABLEKS                       R31 R31 K70 ["Stroke"]
      322 GETTABLEKS                       R31 R31 K73 ["Default"]
      324 SETTABLEKS                       R31 R30 K64 ["backgroundStyle"]
      326 LOADK                            R32 K74 ["%*--border"]
      327 GETTABLEKS                       R34 R3 K42 ["testId"]
      329 NAMECALL                         R32 R32 K45 ["format"]
      331 CALL                             R32 2 1
      332 MOVE                             R31 R32
      333 SETTABLEKS                       R31 R30 K42 ["testId"]
      335 CALL                             R28 2 1
      336 SETTABLEKS                       R28 R27 K49 ["Border"]
      338 CALL                             R24 3 1
      339 SETTABLEKS                       R24 R23 K36 ["Wrapper"]
      341 JUMPIFNOT                        R9 ; [+43]
      342 GETTABLEKS                       R25 R9 K75 ["content"]
      344 JUMPIFNOT                        R25 ; [+40]
      345 GETUPVAL                         R24 3
      346 GETTABLEKS                       R24 R24 K17 ["createElement"]
      348 GETUPVAL                         R25 8
      349 GETUPVAL                         R27 6
      350 GETTABLEKS                       R27 R27 K18 ["FoundationTabsInlineSizeFull"]
      352 JUMPIFNOT                        R27 ; [+18]
      353 DUPTABLE                         R26 K76 [{["LayoutOrder"] = 2, ["tag"] = "auto-y", ["Size"], ["testId"]}]
      354 GETIMPORT                        R27 K25 [UDim2.fromScale]
      356 LOADN                            R28 1
      357 LOADN                            R29 0
      358 CALL                             R27 2 1
      359 SETTABLEKS                       R27 R26 K21 ["Size"]
      361 LOADK                            R28 K77 ["%*--content"]
      362 GETTABLEKS                       R30 R3 K42 ["testId"]
      364 NAMECALL                         R28 R28 K45 ["format"]
      366 CALL                             R28 2 1
      367 MOVE                             R27 R28
      368 SETTABLEKS                       R27 R26 K42 ["testId"]
      370 JUMP                             ; [+10]
      371 DUPTABLE                         R26 K78 [{["LayoutOrder"] = 2, ["tag"] = "size-full-0 auto-y", ["testId"]}]
      372 LOADK                            R28 K77 ["%*--content"]
      373 GETTABLEKS                       R30 R3 K42 ["testId"]
      375 NAMECALL                         R28 R28 K45 ["format"]
      377 CALL                             R28 2 1
      378 MOVE                             R27 R28
      379 SETTABLEKS                       R27 R26 K42 ["testId"]
      381 GETTABLEKS                       R27 R9 K75 ["content"]
      383 CALL                             R24 3 1
      384 JUMP                             ; [+1]
      385 LOADNIL                          R24
      386 SETTABLEKS                       R24 R23 K37 ["Content"]
      388 CALL                             R20 3 1
      389 SETTABLEKS                       R20 R19 K28 ["Tabs"]
      391 GETUPVAL                         R20 3
      392 GETTABLEKS                       R20 R20 K17 ["createElement"]
      394 GETUPVAL                         R21 8
      395 DUPTABLE                         R22 K81 [{["LayoutOrder"] = 0, ["ZIndex"], ["Size"], ["Position"], ["backgroundStyle"], ["testId"]}]
      396 GETTABLEKS                       R24 R3 K80 ["ZIndex"]
      398 ADDK                             R23 R24 K40 [1]
      399 SETTABLEKS                       R23 R22 K80 ["ZIndex"]
      401 NEWCLOSURE                       R25 P5
      402 CAPTURE                          VAL R2
      403 NAMECALL                         R23 R14 K60 ["map"]
      405 CALL                             R23 2 1
      406 SETTABLEKS                       R23 R22 K21 ["Size"]
      408 GETUPVAL                         R23 3
      409 GETTABLEKS                       R23 R23 K82 ["joinBindings"]
      411 NEWTABLE                         R24 0 2
      413 MOVE                             R25 R13
      414 MOVE                             R26 R15
      415 SETLIST                          R24 R25 2 [1]
      417 CALL                             R23 1 1
      418 NEWCLOSURE                       R25 P6
      419 CAPTURE                          VAL R2
      420 NAMECALL                         R23 R23 K60 ["map"]
      422 CALL                             R23 2 1
      423 SETTABLEKS                       R23 R22 K63 ["Position"]
      425 GETTABLEKS                       R23 R2 K72 ["Color"]
      427 GETTABLEKS                       R23 R23 K83 ["System"]
      429 GETTABLEKS                       R23 R23 K84 ["Contrast"]
      431 SETTABLEKS                       R23 R22 K64 ["backgroundStyle"]
      433 LOADK                            R24 K85 ["%*--animated-border"]
      434 GETTABLEKS                       R26 R3 K42 ["testId"]
      436 NAMECALL                         R24 R24 K45 ["format"]
      438 CALL                             R24 2 1
      439 MOVE                             R23 R24
      440 SETTABLEKS                       R23 R22 K42 ["testId"]
      442 CALL                             R20 2 1
      443 SETTABLEKS                       R20 R19 K29 ["AnimatedBorder"]
      445 CALL                             R16 3 -1
      446 CLOSEUPVALS                      R11
      447 RETURN                           R16 -1

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
      102 DUPTABLE                         R15 K31 [{["fillBehavior"], ["size"], ["testId"] = "--foundation-tabs", ["ZIndex"] = 1}]
      103 GETTABLEKS                       R16 R4 K32 ["Fill"]
      105 SETTABLEKS                       R16 R15 K25 ["fillBehavior"]
      107 GETTABLEKS                       R16 R6 K33 ["Medium"]
      109 SETTABLEKS                       R16 R15 K26 ["size"]
      111 DUPCLOSURE                       R16 K34 [PROTO_7]
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R5
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
