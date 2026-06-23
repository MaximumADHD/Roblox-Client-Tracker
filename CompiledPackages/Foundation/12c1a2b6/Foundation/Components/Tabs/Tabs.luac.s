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
      119 JUMPIFNOT                        R19 ; [+24]
      120 GETUPVAL                         R18 9
      121 MOVE                             R19 R3
      122 GETUPVAL                         R21 6
      123 GETTABLEKS                       R21 R21 K19 ["FoundationTabsInlineSizeFull"]
      125 JUMPIFNOT                        R21 ; [+12]
      126 DUPTABLE                         R20 K22 [{"tag", "Size"}]
      127 LOADK                            R21 K23 ["auto-y clip"]
      128 SETTABLEKS                       R21 R20 K20 ["tag"]
      130 GETIMPORT                        R21 K26 [UDim2.fromScale]
      132 LOADN                            R22 1
      133 LOADN                            R23 0
      134 CALL                             R21 2 1
      135 SETTABLEKS                       R21 R20 K21 ["Size"]
      137 JUMP                             ; [+4]
      138 DUPTABLE                         R20 K27 [{"tag"}]
      139 LOADK                            R21 K28 ["size-full-0 auto-y clip"]
      140 SETTABLEKS                       R21 R20 K20 ["tag"]
      142 CALL                             R18 2 1
      143 JUMP                             ; [+20]
      144 GETUPVAL                         R19 6
      145 GETTABLEKS                       R19 R19 K19 ["FoundationTabsInlineSizeFull"]
      147 JUMPIFNOT                        R19 ; [+12]
      148 DUPTABLE                         R18 K22 [{"tag", "Size"}]
      149 LOADK                            R19 K23 ["auto-y clip"]
      150 SETTABLEKS                       R19 R18 K20 ["tag"]
      152 GETIMPORT                        R19 K26 [UDim2.fromScale]
      154 LOADN                            R20 1
      155 LOADN                            R21 0
      156 CALL                             R19 2 1
      157 SETTABLEKS                       R19 R18 K21 ["Size"]
      159 JUMP                             ; [+4]
      160 DUPTABLE                         R18 K27 [{"tag"}]
      161 LOADK                            R19 K28 ["size-full-0 auto-y clip"]
      162 SETTABLEKS                       R19 R18 K20 ["tag"]
      164 DUPTABLE                         R19 K31 [{"Tabs", "AnimatedBorder"}]
      165 GETUPVAL                         R20 3
      166 GETTABLEKS                       R20 R20 K17 ["createElement"]
      168 GETUPVAL                         R21 8
      169 GETUPVAL                         R23 6
      170 GETTABLEKS                       R23 R23 K18 ["FoundationFixNoCommonPropsOnComponentParents"]
      172 JUMPIFNOT                        R23 ; [+27]
      173 GETUPVAL                         R23 6
      174 GETTABLEKS                       R23 R23 K19 ["FoundationTabsInlineSizeFull"]
      176 JUMPIFNOT                        R23 ; [+15]
      177 DUPTABLE                         R22 K33 [{"ref", "tag", "Size"}]
      178 OR                               R23 R1 R10
      179 SETTABLEKS                       R23 R22 K32 ["ref"]
      181 LOADK                            R23 K34 ["col auto-y"]
      182 SETTABLEKS                       R23 R22 K20 ["tag"]
      184 GETIMPORT                        R23 K26 [UDim2.fromScale]
      186 LOADN                            R24 1
      187 LOADN                            R25 0
      188 CALL                             R23 2 1
      189 SETTABLEKS                       R23 R22 K21 ["Size"]
      191 JUMP                             ; [+37]
      192 DUPTABLE                         R22 K35 [{"ref", "tag"}]
      193 OR                               R23 R1 R10
      194 SETTABLEKS                       R23 R22 K32 ["ref"]
      196 LOADK                            R23 K36 ["col size-full-0 auto-y"]
      197 SETTABLEKS                       R23 R22 K20 ["tag"]
      199 JUMP                             ; [+29]
      200 GETUPVAL                         R22 9
      201 MOVE                             R23 R3
      202 GETUPVAL                         R25 6
      203 GETTABLEKS                       R25 R25 K19 ["FoundationTabsInlineSizeFull"]
      205 JUMPIFNOT                        R25 ; [+15]
      206 DUPTABLE                         R24 K33 [{"ref", "tag", "Size"}]
      207 OR                               R25 R1 R10
      208 SETTABLEKS                       R25 R24 K32 ["ref"]
      210 LOADK                            R25 K34 ["col auto-y"]
      211 SETTABLEKS                       R25 R24 K20 ["tag"]
      213 GETIMPORT                        R25 K26 [UDim2.fromScale]
      215 LOADN                            R26 1
      216 LOADN                            R27 0
      217 CALL                             R25 2 1
      218 SETTABLEKS                       R25 R24 K21 ["Size"]
      220 JUMP                             ; [+7]
      221 DUPTABLE                         R24 K35 [{"ref", "tag"}]
      222 OR                               R25 R1 R10
      223 SETTABLEKS                       R25 R24 K32 ["ref"]
      225 LOADK                            R25 K36 ["col size-full-0 auto-y"]
      226 SETTABLEKS                       R25 R24 K20 ["tag"]
      228 CALL                             R22 2 1
      229 DUPTABLE                         R23 K39 [{"Wrapper", "Content"}]
      230 GETUPVAL                         R24 3
      231 GETTABLEKS                       R24 R24 K17 ["createElement"]
      233 GETUPVAL                         R25 8
      234 GETUPVAL                         R27 6
      235 GETTABLEKS                       R27 R27 K19 ["FoundationTabsInlineSizeFull"]
      237 JUMPIFNOT                        R27 ; [+24]
      238 DUPTABLE                         R26 K42 [{"LayoutOrder", "tag", "Size", "testId"}]
      239 LOADN                            R27 1
      240 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      242 LOADK                            R27 K43 ["auto-y"]
      243 SETTABLEKS                       R27 R26 K20 ["tag"]
      245 GETIMPORT                        R27 K26 [UDim2.fromScale]
      247 LOADN                            R28 1
      248 LOADN                            R29 0
      249 CALL                             R27 2 1
      250 SETTABLEKS                       R27 R26 K21 ["Size"]
      252 LOADK                            R28 K44 ["%*--wrapper"]
      253 GETTABLEKS                       R30 R3 K41 ["testId"]
      255 NAMECALL                         R28 R28 K45 ["format"]
      257 CALL                             R28 2 1
      258 MOVE                             R27 R28
      259 SETTABLEKS                       R27 R26 K41 ["testId"]
      261 JUMP                             ; [+16]
      262 DUPTABLE                         R26 K46 [{"LayoutOrder", "tag", "testId"}]
      263 LOADN                            R27 1
      264 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      266 LOADK                            R27 K47 ["size-full-0 auto-y"]
      267 SETTABLEKS                       R27 R26 K20 ["tag"]
      269 LOADK                            R28 K44 ["%*--wrapper"]
      270 GETTABLEKS                       R30 R3 K41 ["testId"]
      272 NAMECALL                         R28 R28 K45 ["format"]
      274 CALL                             R28 2 1
      275 MOVE                             R27 R28
      276 SETTABLEKS                       R27 R26 K41 ["testId"]
      278 DUPTABLE                         R27 K50 [{"ScrollContainer", "Border"}]
      279 GETUPVAL                         R28 3
      280 GETTABLEKS                       R28 R28 K17 ["createElement"]
      282 GETUPVAL                         R29 10
      283 DUPTABLE                         R30 K51 [{"LayoutOrder", "size", "testId"}]
      284 LOADN                            R31 1
      285 SETTABLEKS                       R31 R30 K40 ["LayoutOrder"]
      287 GETTABLEKS                       R31 R3 K13 ["size"]
      289 SETTABLEKS                       R31 R30 K13 ["size"]
      291 LOADK                            R32 K52 ["%*--scroll-container"]
      292 GETTABLEKS                       R34 R3 K41 ["testId"]
      294 NAMECALL                         R32 R32 K45 ["format"]
      296 CALL                             R32 2 1
      297 MOVE                             R31 R32
      298 SETTABLEKS                       R31 R30 K41 ["testId"]
      300 DUPTABLE                         R31 K54 [{"TabList"}]
      301 GETUPVAL                         R32 3
      302 GETTABLEKS                       R32 R32 K17 ["createElement"]
      304 GETUPVAL                         R33 8
      305 DUPTABLE                         R34 K55 [{"tag", "Size", "testId"}]
      306 GETUPVAL                         R36 6
      307 GETTABLEKS                       R36 R36 K19 ["FoundationTabsInlineSizeFull"]
      309 JUMPIFNOT                        R36 ; [+9]
      310 NEWTABLE                         R35 2 0
      312 LOADB                            R36 1
      313 SETTABLEKS                       R36 R35 K56 ["row flex-y-fill auto-xy"]
      315 NOT                              R36 R7
      316 SETTABLEKS                       R36 R35 K57 ["gap-large"]
      318 JUMP                             ; [+10]
      319 NEWTABLE                         R35 4 0
      321 LOADB                            R36 1
      322 SETTABLEKS                       R36 R35 K56 ["row flex-y-fill auto-xy"]
      324 NOT                              R36 R7
      325 SETTABLEKS                       R36 R35 K57 ["gap-large"]
      327 SETTABLEKS                       R7 R35 K58 ["size-full-0"]
      329 SETTABLEKS                       R35 R34 K20 ["tag"]
      331 GETUPVAL                         R36 6
      332 GETTABLEKS                       R36 R36 K19 ["FoundationTabsInlineSizeFull"]
      334 JUMPIFNOT                        R36 ; [+7]
      335 JUMPIFNOT                        R7 ; [+6]
      336 GETIMPORT                        R35 K26 [UDim2.fromScale]
      338 LOADN                            R36 1
      339 LOADN                            R37 0
      340 CALL                             R35 2 1
      341 JUMP                             ; [+1]
      342 LOADNIL                          R35
      343 SETTABLEKS                       R35 R34 K21 ["Size"]
      345 LOADK                            R36 K59 ["%*--list"]
      346 GETTABLEKS                       R38 R3 K41 ["testId"]
      348 NAMECALL                         R36 R36 K45 ["format"]
      350 CALL                             R36 2 1
      351 MOVE                             R35 R36
      352 SETTABLEKS                       R35 R34 K41 ["testId"]
      354 GETUPVAL                         R35 4
      355 GETTABLEKS                       R35 R35 K60 ["map"]
      357 GETTABLEKS                       R36 R3 K9 ["tabs"]
      359 NEWCLOSURE                       R37 P4
      360 CAPTURE                          UPVAL U3
      361 CAPTURE                          UPVAL U11
      362 CAPTURE                          VAL R8
      363 CAPTURE                          VAL R6
      364 CAPTURE                          VAL R3
      365 CAPTURE                          REF R11
      366 CALL                             R35 2 -1
      367 CALL                             R32 -1 1
      368 SETTABLEKS                       R32 R31 K53 ["TabList"]
      370 CALL                             R28 3 1
      371 SETTABLEKS                       R28 R27 K48 ["ScrollContainer"]
      373 GETUPVAL                         R28 3
      374 GETTABLEKS                       R28 R28 K17 ["createElement"]
      376 GETUPVAL                         R29 8
      377 DUPTABLE                         R30 K64 [{"LayoutOrder", "AnchorPoint", "Size", "Position", "backgroundStyle", "testId"}]
      378 LOADN                            R31 2
      379 SETTABLEKS                       R31 R30 K40 ["LayoutOrder"]
      381 GETIMPORT                        R31 K67 [Vector2.new]
      383 LOADN                            R32 0
      384 LOADN                            R33 1
      385 CALL                             R31 2 1
      386 SETTABLEKS                       R31 R30 K61 ["AnchorPoint"]
      388 GETIMPORT                        R31 K68 [UDim2.new]
      390 LOADN                            R32 1
      391 LOADN                            R33 0
      392 LOADN                            R34 0
      393 GETTABLEKS                       R35 R2 K69 ["Stroke"]
      395 GETTABLEKS                       R35 R35 K70 ["Thick"]
      397 CALL                             R31 4 1
      398 SETTABLEKS                       R31 R30 K21 ["Size"]
      400 GETIMPORT                        R31 K26 [UDim2.fromScale]
      402 LOADN                            R32 0
      403 LOADN                            R33 1
      404 CALL                             R31 2 1
      405 SETTABLEKS                       R31 R30 K62 ["Position"]
      407 GETTABLEKS                       R31 R2 K71 ["Color"]
      409 GETTABLEKS                       R31 R31 K69 ["Stroke"]
      411 GETTABLEKS                       R31 R31 K72 ["Default"]
      413 SETTABLEKS                       R31 R30 K63 ["backgroundStyle"]
      415 LOADK                            R32 K73 ["%*--border"]
      416 GETTABLEKS                       R34 R3 K41 ["testId"]
      418 NAMECALL                         R32 R32 K45 ["format"]
      420 CALL                             R32 2 1
      421 MOVE                             R31 R32
      422 SETTABLEKS                       R31 R30 K41 ["testId"]
      424 CALL                             R28 2 1
      425 SETTABLEKS                       R28 R27 K49 ["Border"]
      427 CALL                             R24 3 1
      428 SETTABLEKS                       R24 R23 K37 ["Wrapper"]
      430 JUMPIFNOT                        R9 ; [+55]
      431 GETTABLEKS                       R25 R9 K74 ["content"]
      433 JUMPIFNOT                        R25 ; [+52]
      434 GETUPVAL                         R24 3
      435 GETTABLEKS                       R24 R24 K17 ["createElement"]
      437 GETUPVAL                         R25 8
      438 GETUPVAL                         R27 6
      439 GETTABLEKS                       R27 R27 K19 ["FoundationTabsInlineSizeFull"]
      441 JUMPIFNOT                        R27 ; [+24]
      442 DUPTABLE                         R26 K42 [{"LayoutOrder", "tag", "Size", "testId"}]
      443 LOADN                            R27 2
      444 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      446 LOADK                            R27 K43 ["auto-y"]
      447 SETTABLEKS                       R27 R26 K20 ["tag"]
      449 GETIMPORT                        R27 K26 [UDim2.fromScale]
      451 LOADN                            R28 1
      452 LOADN                            R29 0
      453 CALL                             R27 2 1
      454 SETTABLEKS                       R27 R26 K21 ["Size"]
      456 LOADK                            R28 K75 ["%*--content"]
      457 GETTABLEKS                       R30 R3 K41 ["testId"]
      459 NAMECALL                         R28 R28 K45 ["format"]
      461 CALL                             R28 2 1
      462 MOVE                             R27 R28
      463 SETTABLEKS                       R27 R26 K41 ["testId"]
      465 JUMP                             ; [+16]
      466 DUPTABLE                         R26 K46 [{"LayoutOrder", "tag", "testId"}]
      467 LOADN                            R27 2
      468 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      470 LOADK                            R27 K47 ["size-full-0 auto-y"]
      471 SETTABLEKS                       R27 R26 K20 ["tag"]
      473 LOADK                            R28 K75 ["%*--content"]
      474 GETTABLEKS                       R30 R3 K41 ["testId"]
      476 NAMECALL                         R28 R28 K45 ["format"]
      478 CALL                             R28 2 1
      479 MOVE                             R27 R28
      480 SETTABLEKS                       R27 R26 K41 ["testId"]
      482 GETTABLEKS                       R27 R9 K74 ["content"]
      484 CALL                             R24 3 1
      485 JUMP                             ; [+1]
      486 LOADNIL                          R24
      487 SETTABLEKS                       R24 R23 K38 ["Content"]
      489 CALL                             R20 3 1
      490 SETTABLEKS                       R20 R19 K29 ["Tabs"]
      492 GETUPVAL                         R20 3
      493 GETTABLEKS                       R20 R20 K17 ["createElement"]
      495 GETUPVAL                         R21 8
      496 DUPTABLE                         R22 K77 [{"LayoutOrder", "ZIndex", "Size", "Position", "backgroundStyle", "testId"}]
      497 LOADN                            R23 0
      498 SETTABLEKS                       R23 R22 K40 ["LayoutOrder"]
      500 GETTABLEKS                       R24 R3 K76 ["ZIndex"]
      502 ADDK                             R23 R24 K78 [1]
      503 SETTABLEKS                       R23 R22 K76 ["ZIndex"]
      505 NEWCLOSURE                       R25 P5
      506 CAPTURE                          VAL R2
      507 NAMECALL                         R23 R14 K60 ["map"]
      509 CALL                             R23 2 1
      510 SETTABLEKS                       R23 R22 K21 ["Size"]
      512 GETUPVAL                         R23 3
      513 GETTABLEKS                       R23 R23 K79 ["joinBindings"]
      515 NEWTABLE                         R24 0 2
      517 MOVE                             R25 R13
      518 MOVE                             R26 R15
      519 SETLIST                          R24 R25 2 [1]
      521 CALL                             R23 1 1
      522 NEWCLOSURE                       R25 P6
      523 CAPTURE                          VAL R2
      524 NAMECALL                         R23 R23 K60 ["map"]
      526 CALL                             R23 2 1
      527 SETTABLEKS                       R23 R22 K62 ["Position"]
      529 GETTABLEKS                       R23 R2 K71 ["Color"]
      531 GETTABLEKS                       R23 R23 K80 ["System"]
      533 GETTABLEKS                       R23 R23 K81 ["Contrast"]
      535 SETTABLEKS                       R23 R22 K63 ["backgroundStyle"]
      537 LOADK                            R24 K82 ["%*--animated-border"]
      538 GETTABLEKS                       R26 R3 K41 ["testId"]
      540 NAMECALL                         R24 R24 K45 ["format"]
      542 CALL                             R24 2 1
      543 MOVE                             R23 R24
      544 SETTABLEKS                       R23 R22 K41 ["testId"]
      546 CALL                             R20 2 1
      547 SETTABLEKS                       R20 R19 K30 ["AnimatedBorder"]
      549 CALL                             R16 3 -1
      550 CLOSEUPVALS                      R11
      551 RETURN                           R16 -1

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
