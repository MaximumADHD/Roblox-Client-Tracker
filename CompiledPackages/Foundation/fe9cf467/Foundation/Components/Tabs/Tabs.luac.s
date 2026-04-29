PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onActivated"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["onActivated"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
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
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R5 R6 K8 ["fillBehavior"]
       42 SETTABLEKS                       R5 R4 K8 ["fillBehavior"]
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R5 R6 K9 ["size"]
       47 SETTABLEKS                       R5 R4 K9 ["size"]
       49 GETTABLEKS                       R5 R0 K10 ["isDisabled"]
       51 SETTABLEKS                       R5 R4 K10 ["isDisabled"]
       53 LOADK                            R6 K16 ["%*--item-%*"]
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R8 R9 K11 ["testId"]
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
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K3 ["Stroke"]
        6 GETTABLEKS                       R3 R4 K4 ["Thick"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETIMPORT                        R3 K2 [UDim2.fromOffset]
        4 MOVE                             R4 R1
        5 GETUPVAL                         R8 0
        6 GETTABLEKS                       R7 R8 K3 ["Stroke"]
        8 GETTABLEKS                       R6 R7 K4 ["Thick"]
       10 SUB                              R5 R2 R6
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
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
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R5 R6 K8 ["fillBehavior"]
       42 SETTABLEKS                       R5 R4 K8 ["fillBehavior"]
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R5 R6 K9 ["size"]
       47 SETTABLEKS                       R5 R4 K9 ["size"]
       49 GETTABLEKS                       R5 R0 K10 ["isDisabled"]
       51 SETTABLEKS                       R5 R4 K10 ["isDisabled"]
       53 LOADK                            R6 K15 ["%*--item-%*"]
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R8 R9 K11 ["testId"]
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
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R4 R5 K0 ["useState"]
        9 GETTABLEKS                       R5 R3 K1 ["defaultActiveTabId"]
       11 JUMPIF                           R5 ; [+11]
       12 GETUPVAL                         R6 4
       13 GETTABLEKS                       R5 R6 K2 ["get"]
       15 MOVE                             R6 R3
       16 NEWTABLE                         R7 0 2
       18 LOADN                            R8 1
       19 LOADK                            R9 K3 ["id"]
       20 SETLIST                          R7 R8 2 [1]
       22 CALL                             R5 2 1
       23 CALL                             R4 1 2
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R5
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R8 R3 K5 ["fillBehavior"]
       33 GETUPVAL                         R10 5
       34 GETTABLEKS                       R9 R10 K6 ["Fill"]
       36 JUMPIFEQ                         R8 R9 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 GETTABLEKS                       R9 R3 K7 ["activeTabId"]
       42 OR                               R8 R9 R4
       43 GETUPVAL                         R10 4
       44 GETTABLEKS                       R9 R10 K8 ["find"]
       46 GETTABLEKS                       R10 R3 K9 ["tabs"]
       48 NEWCLOSURE                       R11 P1
       49 CAPTURE                          VAL R8
       50 CALL                             R9 2 1
       51 GETUPVAL                         R12 6
       52 GETTABLEKS                       R11 R12 K10 ["FoundationAnimateTabs"]
       54 JUMPIFNOT                        R11 ; [+6]
       55 GETUPVAL                         R11 3
       56 GETTABLEKS                       R10 R11 K11 ["useRef"]
       58 LOADNIL                          R11
       59 CALL                             R10 1 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R10
       62 GETUPVAL                         R13 6
       63 GETTABLEKS                       R12 R13 K10 ["FoundationAnimateTabs"]
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
       80 GETUPVAL                         R17 6
       81 GETTABLEKS                       R16 R17 K10 ["FoundationAnimateTabs"]
       83 JUMPIFNOT                        R16 ; [+8]
       84 GETTABLEKS                       R12 R11 K13 ["highlightPosition"]
       86 GETTABLEKS                       R13 R11 K14 ["highlightWidth"]
       88 GETTABLEKS                       R14 R11 K15 ["activeItemHeight"]
       90 GETTABLEKS                       R15 R11 K16 ["itemRefs"]
       92 GETUPVAL                         R17 6
       93 GETTABLEKS                       R16 R17 K10 ["FoundationAnimateTabs"]
       95 JUMPIFNOT                        R16 ; [+266]
       96 GETUPVAL                         R17 3
       97 GETTABLEKS                       R16 R17 K17 ["createElement"]
       99 GETUPVAL                         R17 8
      100 DUPTABLE                         R18 K20 [{"tag", "ClipsDescendants"}]
      101 LOADK                            R19 K21 ["size-full-0 auto-y"]
      102 SETTABLEKS                       R19 R18 K18 ["tag"]
      104 LOADB                            R19 1
      105 SETTABLEKS                       R19 R18 K19 ["ClipsDescendants"]
      107 DUPTABLE                         R19 K24 [{"Tabs", "AnimatedBorder"}]
      108 GETUPVAL                         R21 3
      109 GETTABLEKS                       R20 R21 K17 ["createElement"]
      111 GETUPVAL                         R21 8
      112 GETUPVAL                         R22 9
      113 MOVE                             R23 R3
      114 DUPTABLE                         R24 K26 [{"ref", "tag"}]
      115 OR                               R25 R1 R10
      116 SETTABLEKS                       R25 R24 K25 ["ref"]
      118 LOADK                            R25 K27 ["auto-y size-full-0 col"]
      119 SETTABLEKS                       R25 R24 K18 ["tag"]
      121 CALL                             R22 2 1
      122 DUPTABLE                         R23 K30 [{"Wrapper", "Content"}]
      123 GETUPVAL                         R25 3
      124 GETTABLEKS                       R24 R25 K17 ["createElement"]
      126 GETUPVAL                         R25 8
      127 DUPTABLE                         R26 K33 [{"LayoutOrder", "tag", "testId"}]
      128 LOADN                            R27 1
      129 SETTABLEKS                       R27 R26 K31 ["LayoutOrder"]
      131 LOADK                            R27 K34 ["auto-y size-full-0"]
      132 SETTABLEKS                       R27 R26 K18 ["tag"]
      134 LOADK                            R28 K35 ["%*--wrapper"]
      135 GETTABLEKS                       R30 R3 K32 ["testId"]
      137 NAMECALL                         R28 R28 K36 ["format"]
      139 CALL                             R28 2 1
      140 MOVE                             R27 R28
      141 SETTABLEKS                       R27 R26 K32 ["testId"]
      143 DUPTABLE                         R27 K39 [{"ScrollContainer", "Border"}]
      144 GETUPVAL                         R29 3
      145 GETTABLEKS                       R28 R29 K17 ["createElement"]
      147 GETUPVAL                         R29 10
      148 DUPTABLE                         R30 K40 [{"LayoutOrder", "size", "testId"}]
      149 LOADN                            R31 1
      150 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      152 GETTABLEKS                       R31 R3 K12 ["size"]
      154 SETTABLEKS                       R31 R30 K12 ["size"]
      156 LOADK                            R32 K41 ["%*--scroll-container"]
      157 GETTABLEKS                       R34 R3 K32 ["testId"]
      159 NAMECALL                         R32 R32 K36 ["format"]
      161 CALL                             R32 2 1
      162 MOVE                             R31 R32
      163 SETTABLEKS                       R31 R30 K32 ["testId"]
      165 DUPTABLE                         R31 K43 [{"TabList"}]
      166 GETUPVAL                         R33 3
      167 GETTABLEKS                       R32 R33 K17 ["createElement"]
      169 GETUPVAL                         R33 8
      170 DUPTABLE                         R34 K44 [{"tag", "testId"}]
      171 NEWTABLE                         R35 4 0
      173 LOADB                            R36 1
      174 SETTABLEKS                       R36 R35 K45 ["row auto-xy flex-y-fill"]
      176 NOT                              R36 R7
      177 SETTABLEKS                       R36 R35 K46 ["gap-large"]
      179 SETTABLEKS                       R7 R35 K47 ["size-full-0"]
      181 SETTABLEKS                       R35 R34 K18 ["tag"]
      183 LOADK                            R36 K48 ["%*--list"]
      184 GETTABLEKS                       R38 R3 K32 ["testId"]
      186 NAMECALL                         R36 R36 K36 ["format"]
      188 CALL                             R36 2 1
      189 MOVE                             R35 R36
      190 SETTABLEKS                       R35 R34 K32 ["testId"]
      192 GETUPVAL                         R36 4
      193 GETTABLEKS                       R35 R36 K49 ["map"]
      195 GETTABLEKS                       R36 R3 K9 ["tabs"]
      197 NEWCLOSURE                       R37 P2
      198 CAPTURE                          UPVAL U3
      199 CAPTURE                          UPVAL U11
      200 CAPTURE                          VAL R8
      201 CAPTURE                          VAL R6
      202 CAPTURE                          VAL R3
      203 CAPTURE                          REF R15
      204 CALL                             R35 2 -1
      205 CALL                             R32 -1 1
      206 SETTABLEKS                       R32 R31 K42 ["TabList"]
      208 CALL                             R28 3 1
      209 SETTABLEKS                       R28 R27 K37 ["ScrollContainer"]
      211 GETUPVAL                         R29 3
      212 GETTABLEKS                       R28 R29 K17 ["createElement"]
      214 GETUPVAL                         R29 8
      215 DUPTABLE                         R30 K54 [{"LayoutOrder", "AnchorPoint", "Size", "Position", "backgroundStyle", "testId"}]
      216 LOADN                            R31 2
      217 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      219 GETIMPORT                        R31 K57 [Vector2.new]
      221 LOADN                            R32 0
      222 LOADN                            R33 1
      223 CALL                             R31 2 1
      224 SETTABLEKS                       R31 R30 K50 ["AnchorPoint"]
      226 GETIMPORT                        R31 K59 [UDim2.new]
      228 LOADN                            R32 1
      229 LOADN                            R33 0
      230 LOADN                            R34 0
      231 GETTABLEKS                       R36 R2 K60 ["Stroke"]
      233 GETTABLEKS                       R35 R36 K61 ["Thick"]
      235 CALL                             R31 4 1
      236 SETTABLEKS                       R31 R30 K51 ["Size"]
      238 GETIMPORT                        R31 K63 [UDim2.fromScale]
      240 LOADN                            R32 0
      241 LOADN                            R33 1
      242 CALL                             R31 2 1
      243 SETTABLEKS                       R31 R30 K52 ["Position"]
      245 GETTABLEKS                       R33 R2 K64 ["Color"]
      247 GETTABLEKS                       R32 R33 K60 ["Stroke"]
      249 GETTABLEKS                       R31 R32 K65 ["Default"]
      251 SETTABLEKS                       R31 R30 K53 ["backgroundStyle"]
      253 LOADK                            R32 K66 ["%*--border"]
      254 GETTABLEKS                       R34 R3 K32 ["testId"]
      256 NAMECALL                         R32 R32 K36 ["format"]
      258 CALL                             R32 2 1
      259 MOVE                             R31 R32
      260 SETTABLEKS                       R31 R30 K32 ["testId"]
      262 CALL                             R28 2 1
      263 SETTABLEKS                       R28 R27 K38 ["Border"]
      265 CALL                             R24 3 1
      266 SETTABLEKS                       R24 R23 K28 ["Wrapper"]
      268 JUMPIFNOT                        R9 ; [+27]
      269 GETTABLEKS                       R25 R9 K67 ["content"]
      271 JUMPIFNOT                        R25 ; [+24]
      272 GETUPVAL                         R25 3
      273 GETTABLEKS                       R24 R25 K17 ["createElement"]
      275 GETUPVAL                         R25 8
      276 DUPTABLE                         R26 K33 [{"LayoutOrder", "tag", "testId"}]
      277 LOADN                            R27 2
      278 SETTABLEKS                       R27 R26 K31 ["LayoutOrder"]
      280 LOADK                            R27 K34 ["auto-y size-full-0"]
      281 SETTABLEKS                       R27 R26 K18 ["tag"]
      283 LOADK                            R28 K68 ["%*--content"]
      284 GETTABLEKS                       R30 R3 K32 ["testId"]
      286 NAMECALL                         R28 R28 K36 ["format"]
      288 CALL                             R28 2 1
      289 MOVE                             R27 R28
      290 SETTABLEKS                       R27 R26 K32 ["testId"]
      292 GETTABLEKS                       R27 R9 K67 ["content"]
      294 CALL                             R24 3 1
      295 JUMP                             ; [+1]
      296 LOADNIL                          R24
      297 SETTABLEKS                       R24 R23 K29 ["Content"]
      299 CALL                             R20 3 1
      300 SETTABLEKS                       R20 R19 K22 ["Tabs"]
      302 GETUPVAL                         R21 3
      303 GETTABLEKS                       R20 R21 K17 ["createElement"]
      305 GETUPVAL                         R21 8
      306 DUPTABLE                         R22 K70 [{"LayoutOrder", "ZIndex", "Size", "Position", "backgroundStyle", "testId"}]
      307 LOADN                            R23 0
      308 SETTABLEKS                       R23 R22 K31 ["LayoutOrder"]
      310 GETTABLEKS                       R24 R3 K69 ["ZIndex"]
      312 ADDK                             R23 R24 K71 [1]
      313 SETTABLEKS                       R23 R22 K69 ["ZIndex"]
      315 NEWCLOSURE                       R25 P3
      316 CAPTURE                          VAL R2
      317 NAMECALL                         R23 R13 K49 ["map"]
      319 CALL                             R23 2 1
      320 SETTABLEKS                       R23 R22 K51 ["Size"]
      322 GETUPVAL                         R24 3
      323 GETTABLEKS                       R23 R24 K72 ["joinBindings"]
      325 NEWTABLE                         R24 0 2
      327 MOVE                             R25 R12
      328 MOVE                             R26 R14
      329 SETLIST                          R24 R25 2 [1]
      331 CALL                             R23 1 1
      332 NEWCLOSURE                       R25 P4
      333 CAPTURE                          VAL R2
      334 NAMECALL                         R23 R23 K49 ["map"]
      336 CALL                             R23 2 1
      337 SETTABLEKS                       R23 R22 K52 ["Position"]
      339 GETTABLEKS                       R25 R2 K64 ["Color"]
      341 GETTABLEKS                       R24 R25 K73 ["System"]
      343 GETTABLEKS                       R23 R24 K74 ["Contrast"]
      345 SETTABLEKS                       R23 R22 K53 ["backgroundStyle"]
      347 LOADK                            R24 K75 ["%*--animated-border"]
      348 GETTABLEKS                       R26 R3 K32 ["testId"]
      350 NAMECALL                         R24 R24 K36 ["format"]
      352 CALL                             R24 2 1
      353 MOVE                             R23 R24
      354 SETTABLEKS                       R23 R22 K32 ["testId"]
      356 CALL                             R20 2 1
      357 SETTABLEKS                       R20 R19 K23 ["AnimatedBorder"]
      359 CALL                             R16 3 -1
      360 CLOSEUPVALS                      R15
      361 RETURN                           R16 -1
      362 GETUPVAL                         R17 3
      363 GETTABLEKS                       R16 R17 K17 ["createElement"]
      365 GETUPVAL                         R17 8
      366 GETUPVAL                         R18 9
      367 MOVE                             R19 R3
      368 DUPTABLE                         R20 K26 [{"ref", "tag"}]
      369 SETTABLEKS                       R1 R20 K25 ["ref"]
      371 LOADK                            R21 K27 ["auto-y size-full-0 col"]
      372 SETTABLEKS                       R21 R20 K18 ["tag"]
      374 CALL                             R18 2 1
      375 DUPTABLE                         R19 K30 [{"Wrapper", "Content"}]
      376 GETUPVAL                         R21 3
      377 GETTABLEKS                       R20 R21 K17 ["createElement"]
      379 GETUPVAL                         R21 8
      380 DUPTABLE                         R22 K33 [{"LayoutOrder", "tag", "testId"}]
      381 LOADN                            R23 1
      382 SETTABLEKS                       R23 R22 K31 ["LayoutOrder"]
      384 LOADK                            R23 K34 ["auto-y size-full-0"]
      385 SETTABLEKS                       R23 R22 K18 ["tag"]
      387 LOADK                            R24 K35 ["%*--wrapper"]
      388 GETTABLEKS                       R26 R3 K32 ["testId"]
      390 NAMECALL                         R24 R24 K36 ["format"]
      392 CALL                             R24 2 1
      393 MOVE                             R23 R24
      394 SETTABLEKS                       R23 R22 K32 ["testId"]
      396 DUPTABLE                         R23 K39 [{"ScrollContainer", "Border"}]
      397 GETUPVAL                         R25 3
      398 GETTABLEKS                       R24 R25 K17 ["createElement"]
      400 GETUPVAL                         R25 10
      401 DUPTABLE                         R26 K40 [{"LayoutOrder", "size", "testId"}]
      402 LOADN                            R27 1
      403 SETTABLEKS                       R27 R26 K31 ["LayoutOrder"]
      405 GETTABLEKS                       R27 R3 K12 ["size"]
      407 SETTABLEKS                       R27 R26 K12 ["size"]
      409 LOADK                            R28 K41 ["%*--scroll-container"]
      410 GETTABLEKS                       R30 R3 K32 ["testId"]
      412 NAMECALL                         R28 R28 K36 ["format"]
      414 CALL                             R28 2 1
      415 MOVE                             R27 R28
      416 SETTABLEKS                       R27 R26 K32 ["testId"]
      418 DUPTABLE                         R27 K43 [{"TabList"}]
      419 GETUPVAL                         R29 3
      420 GETTABLEKS                       R28 R29 K17 ["createElement"]
      422 GETUPVAL                         R29 8
      423 DUPTABLE                         R30 K44 [{"tag", "testId"}]
      424 NEWTABLE                         R31 4 0
      426 LOADB                            R32 1
      427 SETTABLEKS                       R32 R31 K45 ["row auto-xy flex-y-fill"]
      429 NOT                              R32 R7
      430 SETTABLEKS                       R32 R31 K46 ["gap-large"]
      432 SETTABLEKS                       R7 R31 K47 ["size-full-0"]
      434 SETTABLEKS                       R31 R30 K18 ["tag"]
      436 LOADK                            R32 K48 ["%*--list"]
      437 GETTABLEKS                       R34 R3 K32 ["testId"]
      439 NAMECALL                         R32 R32 K36 ["format"]
      441 CALL                             R32 2 1
      442 MOVE                             R31 R32
      443 SETTABLEKS                       R31 R30 K32 ["testId"]
      445 GETUPVAL                         R32 4
      446 GETTABLEKS                       R31 R32 K49 ["map"]
      448 GETTABLEKS                       R32 R3 K9 ["tabs"]
      450 NEWCLOSURE                       R33 P5
      451 CAPTURE                          UPVAL U3
      452 CAPTURE                          UPVAL U11
      453 CAPTURE                          VAL R8
      454 CAPTURE                          VAL R6
      455 CAPTURE                          VAL R3
      456 CALL                             R31 2 -1
      457 CALL                             R28 -1 1
      458 SETTABLEKS                       R28 R27 K42 ["TabList"]
      460 CALL                             R24 3 1
      461 SETTABLEKS                       R24 R23 K37 ["ScrollContainer"]
      463 GETUPVAL                         R25 3
      464 GETTABLEKS                       R24 R25 K17 ["createElement"]
      466 GETUPVAL                         R25 8
      467 DUPTABLE                         R26 K54 [{"LayoutOrder", "AnchorPoint", "Size", "Position", "backgroundStyle", "testId"}]
      468 LOADN                            R27 2
      469 SETTABLEKS                       R27 R26 K31 ["LayoutOrder"]
      471 GETIMPORT                        R27 K57 [Vector2.new]
      473 LOADN                            R28 0
      474 LOADN                            R29 1
      475 CALL                             R27 2 1
      476 SETTABLEKS                       R27 R26 K50 ["AnchorPoint"]
      478 GETIMPORT                        R27 K59 [UDim2.new]
      480 LOADN                            R28 1
      481 LOADN                            R29 0
      482 LOADN                            R30 0
      483 GETTABLEKS                       R32 R2 K60 ["Stroke"]
      485 GETTABLEKS                       R31 R32 K61 ["Thick"]
      487 CALL                             R27 4 1
      488 SETTABLEKS                       R27 R26 K51 ["Size"]
      490 GETIMPORT                        R27 K63 [UDim2.fromScale]
      492 LOADN                            R28 0
      493 LOADN                            R29 1
      494 CALL                             R27 2 1
      495 SETTABLEKS                       R27 R26 K52 ["Position"]
      497 GETTABLEKS                       R29 R2 K64 ["Color"]
      499 GETTABLEKS                       R28 R29 K60 ["Stroke"]
      501 GETTABLEKS                       R27 R28 K65 ["Default"]
      503 SETTABLEKS                       R27 R26 K53 ["backgroundStyle"]
      505 LOADK                            R28 K66 ["%*--border"]
      506 GETTABLEKS                       R30 R3 K32 ["testId"]
      508 NAMECALL                         R28 R28 K36 ["format"]
      510 CALL                             R28 2 1
      511 MOVE                             R27 R28
      512 SETTABLEKS                       R27 R26 K32 ["testId"]
      514 CALL                             R24 2 1
      515 SETTABLEKS                       R24 R23 K38 ["Border"]
      517 CALL                             R20 3 1
      518 SETTABLEKS                       R20 R19 K28 ["Wrapper"]
      520 JUMPIFNOT                        R9 ; [+27]
      521 GETTABLEKS                       R21 R9 K67 ["content"]
      523 JUMPIFNOT                        R21 ; [+24]
      524 GETUPVAL                         R21 3
      525 GETTABLEKS                       R20 R21 K17 ["createElement"]
      527 GETUPVAL                         R21 8
      528 DUPTABLE                         R22 K33 [{"LayoutOrder", "tag", "testId"}]
      529 LOADN                            R23 2
      530 SETTABLEKS                       R23 R22 K31 ["LayoutOrder"]
      532 LOADK                            R23 K34 ["auto-y size-full-0"]
      533 SETTABLEKS                       R23 R22 K18 ["tag"]
      535 LOADK                            R24 K68 ["%*--content"]
      536 GETTABLEKS                       R26 R3 K32 ["testId"]
      538 NAMECALL                         R24 R24 K36 ["format"]
      540 CALL                             R24 2 1
      541 MOVE                             R23 R24
      542 SETTABLEKS                       R23 R22 K32 ["testId"]
      544 GETTABLEKS                       R23 R9 K67 ["content"]
      546 CALL                             R20 3 1
      547 JUMP                             ; [+1]
      548 LOADNIL                          R20
      549 SETTABLEKS                       R20 R19 K29 ["Content"]
      551 CALL                             R16 3 -1
      552 CLOSEUPVALS                      R15
      553 RETURN                           R16 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R7 K12 ["FillBehavior"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R8 K13 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETIMPORT                        R10 K1 [script]
       44 GETTABLEKS                       R9 R10 K4 ["Parent"]
       46 GETTABLEKS                       R8 R9 K14 ["TabItem"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K15 ["Components"]
       53 GETTABLEKS                       R9 R10 K16 ["Types"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K15 ["Components"]
       60 GETTABLEKS                       R10 R11 K17 ["View"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R13 R0 K18 ["Providers"]
       67 GETTABLEKS                       R12 R13 K19 ["Style"]
       69 GETTABLEKS                       R11 R12 K20 ["useTokens"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K9 ["Utility"]
       76 GETTABLEKS                       R12 R13 K21 ["withCommonProps"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R14 R0 K9 ["Utility"]
       83 GETTABLEKS                       R13 R14 K22 ["withDefaults"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R15 R0 K9 ["Utility"]
       90 GETTABLEKS                       R14 R15 K23 ["useAnimatedHighlight"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETIMPORT                        R17 K1 [script]
       97 GETTABLEKS                       R16 R17 K4 ["Parent"]
       99 GETTABLEKS                       R15 R16 K24 ["OverflowScrollContainer"]
      101 CALL                             R14 1 1
      102 DUPTABLE                         R15 K29 [{"fillBehavior", "size", "testId", "ZIndex"}]
      103 GETTABLEKS                       R16 R5 K30 ["Fill"]
      105 SETTABLEKS                       R16 R15 K25 ["fillBehavior"]
      107 GETTABLEKS                       R16 R6 K31 ["Medium"]
      109 SETTABLEKS                       R16 R15 K26 ["size"]
      111 LOADK                            R16 K32 ["--foundation-tabs"]
      112 SETTABLEKS                       R16 R15 K27 ["testId"]
      114 LOADN                            R16 1
      115 SETTABLEKS                       R16 R15 K28 ["ZIndex"]
      117 DUPCLOSURE                       R16 K33 [PROTO_6]
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R4
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
