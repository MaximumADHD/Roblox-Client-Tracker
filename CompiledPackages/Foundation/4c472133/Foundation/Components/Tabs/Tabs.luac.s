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
      116 GETUPVAL                         R19 6
      117 GETTABLEKS                       R19 R19 K18 ["FoundationFixNoCommonPropsOnComponentParents"]
      119 JUMPIFNOT                        R19 ; [+18]
      120 GETUPVAL                         R18 9
      121 MOVE                             R19 R3
      122 GETUPVAL                         R21 6
      123 GETTABLEKS                       R21 R21 K19 ["FoundationTabsInlineSizeFull"]
      125 JUMPIFNOT                        R21 ; [+9]
      126 DUPTABLE                         R20 K23 [{["tag"] = "auto-y clip", ["Size"]}]
      127 GETIMPORT                        R21 K26 [UDim2.fromScale]
      129 LOADN                            R22 1
      130 LOADN                            R23 0
      131 CALL                             R21 2 1
      132 SETTABLEKS                       R21 R20 K22 ["Size"]
      134 JUMP                             ; [+1]
      135 DUPTABLE                         R20 K28 [{["tag"] = "size-full-0 auto-y clip"}]
      136 CALL                             R18 2 1
      137 JUMP                             ; [+14]
      138 GETUPVAL                         R19 6
      139 GETTABLEKS                       R19 R19 K19 ["FoundationTabsInlineSizeFull"]
      141 JUMPIFNOT                        R19 ; [+9]
      142 DUPTABLE                         R18 K23 [{["tag"] = "auto-y clip", ["Size"]}]
      143 GETIMPORT                        R19 K26 [UDim2.fromScale]
      145 LOADN                            R20 1
      146 LOADN                            R21 0
      147 CALL                             R19 2 1
      148 SETTABLEKS                       R19 R18 K22 ["Size"]
      150 JUMP                             ; [+1]
      151 DUPTABLE                         R18 K28 [{["tag"] = "size-full-0 auto-y clip"}]
      152 DUPTABLE                         R19 K31 [{"Tabs", "AnimatedBorder"}]
      153 GETUPVAL                         R20 3
      154 GETTABLEKS                       R20 R20 K17 ["createElement"]
      156 GETUPVAL                         R21 8
      157 GETUPVAL                         R23 6
      158 GETTABLEKS                       R23 R23 K18 ["FoundationFixNoCommonPropsOnComponentParents"]
      160 JUMPIFNOT                        R23 ; [+21]
      161 GETUPVAL                         R23 6
      162 GETTABLEKS                       R23 R23 K19 ["FoundationTabsInlineSizeFull"]
      164 JUMPIFNOT                        R23 ; [+12]
      165 DUPTABLE                         R22 K34 [{["ref"], ["tag"] = "col auto-y", ["Size"]}]
      166 OR                               R23 R1 R10
      167 SETTABLEKS                       R23 R22 K32 ["ref"]
      169 GETIMPORT                        R23 K26 [UDim2.fromScale]
      171 LOADN                            R24 1
      172 LOADN                            R25 0
      173 CALL                             R23 2 1
      174 SETTABLEKS                       R23 R22 K22 ["Size"]
      176 JUMP                             ; [+28]
      177 DUPTABLE                         R22 K36 [{["ref"], ["tag"] = "col size-full-0 auto-y"}]
      178 OR                               R23 R1 R10
      179 SETTABLEKS                       R23 R22 K32 ["ref"]
      181 JUMP                             ; [+23]
      182 GETUPVAL                         R22 9
      183 MOVE                             R23 R3
      184 GETUPVAL                         R25 6
      185 GETTABLEKS                       R25 R25 K19 ["FoundationTabsInlineSizeFull"]
      187 JUMPIFNOT                        R25 ; [+12]
      188 DUPTABLE                         R24 K34 [{["ref"], ["tag"] = "col auto-y", ["Size"]}]
      189 OR                               R25 R1 R10
      190 SETTABLEKS                       R25 R24 K32 ["ref"]
      192 GETIMPORT                        R25 K26 [UDim2.fromScale]
      194 LOADN                            R26 1
      195 LOADN                            R27 0
      196 CALL                             R25 2 1
      197 SETTABLEKS                       R25 R24 K22 ["Size"]
      199 JUMP                             ; [+4]
      200 DUPTABLE                         R24 K36 [{["ref"], ["tag"] = "col size-full-0 auto-y"}]
      201 OR                               R25 R1 R10
      202 SETTABLEKS                       R25 R24 K32 ["ref"]
      204 CALL                             R22 2 1
      205 DUPTABLE                         R23 K39 [{"Wrapper", "Content"}]
      206 GETUPVAL                         R24 3
      207 GETTABLEKS                       R24 R24 K17 ["createElement"]
      209 GETUPVAL                         R25 8
      210 GETUPVAL                         R27 6
      211 GETTABLEKS                       R27 R27 K19 ["FoundationTabsInlineSizeFull"]
      213 JUMPIFNOT                        R27 ; [+18]
      214 DUPTABLE                         R26 K44 [{["LayoutOrder"] = 1, ["tag"] = "auto-y", ["Size"], ["testId"]}]
      215 GETIMPORT                        R27 K26 [UDim2.fromScale]
      217 LOADN                            R28 1
      218 LOADN                            R29 0
      219 CALL                             R27 2 1
      220 SETTABLEKS                       R27 R26 K22 ["Size"]
      222 LOADK                            R28 K45 ["%*--wrapper"]
      223 GETTABLEKS                       R30 R3 K43 ["testId"]
      225 NAMECALL                         R28 R28 K46 ["format"]
      227 CALL                             R28 2 1
      228 MOVE                             R27 R28
      229 SETTABLEKS                       R27 R26 K43 ["testId"]
      231 JUMP                             ; [+10]
      232 DUPTABLE                         R26 K48 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y", ["testId"]}]
      233 LOADK                            R28 K45 ["%*--wrapper"]
      234 GETTABLEKS                       R30 R3 K43 ["testId"]
      236 NAMECALL                         R28 R28 K46 ["format"]
      238 CALL                             R28 2 1
      239 MOVE                             R27 R28
      240 SETTABLEKS                       R27 R26 K43 ["testId"]
      242 DUPTABLE                         R27 K51 [{"ScrollContainer", "Border"}]
      243 GETUPVAL                         R28 3
      244 GETTABLEKS                       R28 R28 K17 ["createElement"]
      246 GETUPVAL                         R29 10
      247 DUPTABLE                         R30 K52 [{["LayoutOrder"] = 1, ["size"], ["testId"]}]
      248 GETTABLEKS                       R31 R3 K13 ["size"]
      250 SETTABLEKS                       R31 R30 K13 ["size"]
      252 LOADK                            R32 K53 ["%*--scroll-container"]
      253 GETTABLEKS                       R34 R3 K43 ["testId"]
      255 NAMECALL                         R32 R32 K46 ["format"]
      257 CALL                             R32 2 1
      258 MOVE                             R31 R32
      259 SETTABLEKS                       R31 R30 K43 ["testId"]
      261 DUPTABLE                         R31 K55 [{"TabList"}]
      262 GETUPVAL                         R32 3
      263 GETTABLEKS                       R32 R32 K17 ["createElement"]
      265 GETUPVAL                         R33 8
      266 DUPTABLE                         R34 K56 [{"tag", "Size", "testId"}]
      267 GETUPVAL                         R36 6
      268 GETTABLEKS                       R36 R36 K19 ["FoundationTabsInlineSizeFull"]
      270 JUMPIFNOT                        R36 ; [+9]
      271 NEWTABLE                         R35 2 0
      273 LOADB                            R36 1
      274 SETTABLEKS                       R36 R35 K57 ["row flex-y-fill auto-xy"]
      276 NOT                              R36 R7
      277 SETTABLEKS                       R36 R35 K58 ["gap-large"]
      279 JUMP                             ; [+10]
      280 NEWTABLE                         R35 4 0
      282 LOADB                            R36 1
      283 SETTABLEKS                       R36 R35 K57 ["row flex-y-fill auto-xy"]
      285 NOT                              R36 R7
      286 SETTABLEKS                       R36 R35 K58 ["gap-large"]
      288 SETTABLEKS                       R7 R35 K59 ["size-full-0"]
      290 SETTABLEKS                       R35 R34 K20 ["tag"]
      292 GETUPVAL                         R36 6
      293 GETTABLEKS                       R36 R36 K19 ["FoundationTabsInlineSizeFull"]
      295 JUMPIFNOT                        R36 ; [+7]
      296 JUMPIFNOT                        R7 ; [+6]
      297 GETIMPORT                        R35 K26 [UDim2.fromScale]
      299 LOADN                            R36 1
      300 LOADN                            R37 0
      301 CALL                             R35 2 1
      302 JUMP                             ; [+1]
      303 LOADNIL                          R35
      304 SETTABLEKS                       R35 R34 K22 ["Size"]
      306 LOADK                            R36 K60 ["%*--list"]
      307 GETTABLEKS                       R38 R3 K43 ["testId"]
      309 NAMECALL                         R36 R36 K46 ["format"]
      311 CALL                             R36 2 1
      312 MOVE                             R35 R36
      313 SETTABLEKS                       R35 R34 K43 ["testId"]
      315 GETUPVAL                         R35 4
      316 GETTABLEKS                       R35 R35 K61 ["map"]
      318 GETTABLEKS                       R36 R3 K9 ["tabs"]
      320 NEWCLOSURE                       R37 P4
      321 CAPTURE                          UPVAL U3
      322 CAPTURE                          UPVAL U11
      323 CAPTURE                          VAL R8
      324 CAPTURE                          VAL R6
      325 CAPTURE                          VAL R3
      326 CAPTURE                          REF R11
      327 CALL                             R35 2 -1
      328 CALL                             R32 -1 1
      329 SETTABLEKS                       R32 R31 K54 ["TabList"]
      331 CALL                             R28 3 1
      332 SETTABLEKS                       R28 R27 K49 ["ScrollContainer"]
      334 GETUPVAL                         R28 3
      335 GETTABLEKS                       R28 R28 K17 ["createElement"]
      337 GETUPVAL                         R29 8
      338 DUPTABLE                         R30 K66 [{["LayoutOrder"] = 2, ["AnchorPoint"], ["Size"], ["Position"], ["backgroundStyle"], ["testId"]}]
      339 GETIMPORT                        R31 K69 [Vector2.new]
      341 LOADN                            R32 0
      342 LOADN                            R33 1
      343 CALL                             R31 2 1
      344 SETTABLEKS                       R31 R30 K63 ["AnchorPoint"]
      346 GETIMPORT                        R31 K70 [UDim2.new]
      348 LOADN                            R32 1
      349 LOADN                            R33 0
      350 LOADN                            R34 0
      351 GETTABLEKS                       R35 R2 K71 ["Stroke"]
      353 GETTABLEKS                       R35 R35 K72 ["Thick"]
      355 CALL                             R31 4 1
      356 SETTABLEKS                       R31 R30 K22 ["Size"]
      358 GETIMPORT                        R31 K26 [UDim2.fromScale]
      360 LOADN                            R32 0
      361 LOADN                            R33 1
      362 CALL                             R31 2 1
      363 SETTABLEKS                       R31 R30 K64 ["Position"]
      365 GETTABLEKS                       R31 R2 K73 ["Color"]
      367 GETTABLEKS                       R31 R31 K71 ["Stroke"]
      369 GETTABLEKS                       R31 R31 K74 ["Default"]
      371 SETTABLEKS                       R31 R30 K65 ["backgroundStyle"]
      373 LOADK                            R32 K75 ["%*--border"]
      374 GETTABLEKS                       R34 R3 K43 ["testId"]
      376 NAMECALL                         R32 R32 K46 ["format"]
      378 CALL                             R32 2 1
      379 MOVE                             R31 R32
      380 SETTABLEKS                       R31 R30 K43 ["testId"]
      382 CALL                             R28 2 1
      383 SETTABLEKS                       R28 R27 K50 ["Border"]
      385 CALL                             R24 3 1
      386 SETTABLEKS                       R24 R23 K37 ["Wrapper"]
      388 JUMPIFNOT                        R9 ; [+43]
      389 GETTABLEKS                       R25 R9 K76 ["content"]
      391 JUMPIFNOT                        R25 ; [+40]
      392 GETUPVAL                         R24 3
      393 GETTABLEKS                       R24 R24 K17 ["createElement"]
      395 GETUPVAL                         R25 8
      396 GETUPVAL                         R27 6
      397 GETTABLEKS                       R27 R27 K19 ["FoundationTabsInlineSizeFull"]
      399 JUMPIFNOT                        R27 ; [+18]
      400 DUPTABLE                         R26 K77 [{["LayoutOrder"] = 2, ["tag"] = "auto-y", ["Size"], ["testId"]}]
      401 GETIMPORT                        R27 K26 [UDim2.fromScale]
      403 LOADN                            R28 1
      404 LOADN                            R29 0
      405 CALL                             R27 2 1
      406 SETTABLEKS                       R27 R26 K22 ["Size"]
      408 LOADK                            R28 K78 ["%*--content"]
      409 GETTABLEKS                       R30 R3 K43 ["testId"]
      411 NAMECALL                         R28 R28 K46 ["format"]
      413 CALL                             R28 2 1
      414 MOVE                             R27 R28
      415 SETTABLEKS                       R27 R26 K43 ["testId"]
      417 JUMP                             ; [+10]
      418 DUPTABLE                         R26 K79 [{["LayoutOrder"] = 2, ["tag"] = "size-full-0 auto-y", ["testId"]}]
      419 LOADK                            R28 K78 ["%*--content"]
      420 GETTABLEKS                       R30 R3 K43 ["testId"]
      422 NAMECALL                         R28 R28 K46 ["format"]
      424 CALL                             R28 2 1
      425 MOVE                             R27 R28
      426 SETTABLEKS                       R27 R26 K43 ["testId"]
      428 GETTABLEKS                       R27 R9 K76 ["content"]
      430 CALL                             R24 3 1
      431 JUMP                             ; [+1]
      432 LOADNIL                          R24
      433 SETTABLEKS                       R24 R23 K38 ["Content"]
      435 CALL                             R20 3 1
      436 SETTABLEKS                       R20 R19 K29 ["Tabs"]
      438 GETUPVAL                         R20 3
      439 GETTABLEKS                       R20 R20 K17 ["createElement"]
      441 GETUPVAL                         R21 8
      442 DUPTABLE                         R22 K82 [{["LayoutOrder"] = 0, ["ZIndex"], ["Size"], ["Position"], ["backgroundStyle"], ["testId"]}]
      443 GETTABLEKS                       R24 R3 K81 ["ZIndex"]
      445 ADDK                             R23 R24 K41 [1]
      446 SETTABLEKS                       R23 R22 K81 ["ZIndex"]
      448 NEWCLOSURE                       R25 P5
      449 CAPTURE                          VAL R2
      450 NAMECALL                         R23 R14 K61 ["map"]
      452 CALL                             R23 2 1
      453 SETTABLEKS                       R23 R22 K22 ["Size"]
      455 GETUPVAL                         R23 3
      456 GETTABLEKS                       R23 R23 K83 ["joinBindings"]
      458 NEWTABLE                         R24 0 2
      460 MOVE                             R25 R13
      461 MOVE                             R26 R15
      462 SETLIST                          R24 R25 2 [1]
      464 CALL                             R23 1 1
      465 NEWCLOSURE                       R25 P6
      466 CAPTURE                          VAL R2
      467 NAMECALL                         R23 R23 K61 ["map"]
      469 CALL                             R23 2 1
      470 SETTABLEKS                       R23 R22 K64 ["Position"]
      472 GETTABLEKS                       R23 R2 K73 ["Color"]
      474 GETTABLEKS                       R23 R23 K84 ["System"]
      476 GETTABLEKS                       R23 R23 K85 ["Contrast"]
      478 SETTABLEKS                       R23 R22 K65 ["backgroundStyle"]
      480 LOADK                            R24 K86 ["%*--animated-border"]
      481 GETTABLEKS                       R26 R3 K43 ["testId"]
      483 NAMECALL                         R24 R24 K46 ["format"]
      485 CALL                             R24 2 1
      486 MOVE                             R23 R24
      487 SETTABLEKS                       R23 R22 K43 ["testId"]
      489 CALL                             R20 2 1
      490 SETTABLEKS                       R20 R19 K30 ["AnimatedBorder"]
      492 CALL                             R16 3 -1
      493 CLOSEUPVALS                      R11
      494 RETURN                           R16 -1

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
