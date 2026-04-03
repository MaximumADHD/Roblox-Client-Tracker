PROTO_0:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 1
        4 SETTABLE                         R0 R2 R1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+11]
        1 JUMPIFNOTEQKS                    R0 K0 ["InputContext"] ; [+10]
        3 GETUPVAL                         R2 0
        4 DUPTABLE                         R3 K3 [{"itemType", "parentUuid"}]
        5 LOADK                            R4 K4 ["InputAction"]
        6 SETTABLEKS                       R4 R3 K1 ["itemType"]
        8 SETTABLEKS                       R1 R3 K2 ["parentUuid"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0
       12 JUMPIF                           R0 ; [+6]
       13 GETUPVAL                         R2 0
       14 DUPTABLE                         R3 K5 [{"itemType"}]
       15 LOADK                            R4 K0 ["InputContext"]
       16 SETTABLEKS                       R4 R3 K1 ["itemType"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createInputItem"]
        3 LOADNIL                          R4
        4 DUPTABLE                         R5 K4 [{"itemType", "name", "parentUuid"}]
        5 SETTABLEKS                       R0 R5 K1 ["itemType"]
        7 SETTABLEKS                       R1 R5 K2 ["name"]
        9 SETTABLEKS                       R2 R5 K3 ["parentUuid"]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 1
       13 LOADNIL                          R4
       14 CALL                             R3 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R3
        1 JUMPIFNOTEQKS                    R0 K0 ["InputContext"] ; [+10]
        3 GETIMPORT                        R4 K3 [table.clone]
        5 GETUPVAL                         R6 0
        6 GETTABLE                         R5 R6 R2
        7 CALL                             R4 1 1
        8 SETTABLEKS                       R1 R4 K4 ["name"]
       10 MOVE                             R3 R4
       11 JUMP                             ; [+10]
       12 JUMPIFNOTEQKS                    R0 K5 ["InputAction"] ; [+9]
       14 GETIMPORT                        R4 K3 [table.clone]
       16 GETUPVAL                         R6 1
       17 GETTABLE                         R5 R6 R2
       18 CALL                             R4 1 1
       19 SETTABLEKS                       R1 R4 K4 ["name"]
       21 MOVE                             R3 R4
       22 JUMPIFNOT                        R3 ; [+10]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R4 R5 K6 ["updateInputItem"]
       26 LOADNIL                          R5
       27 DUPTABLE                         R6 K9 [{"itemType", "value"}]
       28 SETTABLEKS                       R0 R6 K7 ["itemType"]
       30 SETTABLEKS                       R3 R6 K8 ["value"]
       32 CALL                             R4 2 0
       33 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R2 K1 ["Items"]
        8 GETTABLEKS                       R4 R2 K2 ["BindingReference"]
       10 GETTABLEKS                       R5 R2 K3 ["Contexts"]
       12 GETTABLEKS                       R6 R2 K4 ["Actions"]
       14 GETUPVAL                         R8 2
       15 GETTABLEKS                       R7 R8 K5 ["useContext"]
       17 GETUPVAL                         R9 3
       18 GETTABLEKS                       R8 R9 K6 ["Context"]
       20 CALL                             R7 1 1
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R8 R9 K7 ["useState"]
       24 NEWTABLE                         R9 0 0
       26 CALL                             R8 1 2
       27 GETUPVAL                         R11 2
       28 GETTABLEKS                       R10 R11 K7 ["useState"]
       30 LOADNIL                          R11
       31 CALL                             R10 1 2
       32 NEWTABLE                         R12 0 0
       34 NEWTABLE                         R13 0 0
       36 GETUPVAL                         R15 0
       37 GETTABLEKS                       R14 R15 K8 ["useEventCallback"]
       39 NEWCLOSURE                       R15 P0
       40 CAPTURE                          VAL R8
       41 CAPTURE                          VAL R9
       42 CALL                             R14 1 1
       43 GETUPVAL                         R16 0
       44 GETTABLEKS                       R15 R16 K8 ["useEventCallback"]
       46 NEWCLOSURE                       R16 P1
       47 CAPTURE                          VAL R11
       48 CALL                             R15 1 1
       49 GETUPVAL                         R17 0
       50 GETTABLEKS                       R16 R17 K8 ["useEventCallback"]
       52 NEWCLOSURE                       R17 P2
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R11
       55 CALL                             R16 1 1
       56 GETUPVAL                         R18 2
       57 GETTABLEKS                       R17 R18 K9 ["useCallback"]
       59 NEWCLOSURE                       R18 P3
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 NEWTABLE                         R19 0 2
       65 MOVE                             R20 R5
       66 MOVE                             R21 R6
       67 SETLIST                          R19 R20 2 [1]
       69 CALL                             R17 2 1
       70 MOVE                             R18 R3
       71 LOADNIL                          R19
       72 LOADNIL                          R20
       73 FORGPREP                         R18
       74 GETTABLEKS                       R23 R22 K10 ["ItemType"]
       76 JUMPIFNOTEQKS                    R23 K11 ["InputContext"] ; [+132]
       78 GETTABLEKS                       R23 R22 K12 ["Item"]
       80 MOVE                             R24 R1
       81 CALL                             R24 0 1
       82 LOADK                            R26 K13 ["%*%*"]
       83 GETTABLEKS                       R28 R23 K14 ["name"]
       85 MOVE                             R29 R24
       86 NAMECALL                         R26 R26 K15 ["format"]
       88 CALL                             R26 3 1
       89 MOVE                             R25 R26
       90 GETUPVAL                         R27 2
       91 GETTABLEKS                       R26 R27 K16 ["createElement"]
       93 GETUPVAL                         R27 4
       94 DUPTABLE                         R28 K18 [{"LayoutOrder"}]
       95 SETTABLEKS                       R24 R28 K17 ["LayoutOrder"]
       97 CALL                             R26 2 1
       98 SETTABLE                         R26 R12 R25
       99 LOADK                            R26 K13 ["%*%*"]
      100 GETTABLEKS                       R28 R23 K14 ["name"]
      102 MOVE                             R29 R24
      103 NAMECALL                         R26 R26 K15 ["format"]
      105 CALL                             R26 3 1
      106 MOVE                             R25 R26
      107 GETUPVAL                         R27 2
      108 GETTABLEKS                       R26 R27 K16 ["createElement"]
      110 GETUPVAL                         R27 5
      111 DUPTABLE                         R28 K27 [{"depth", "expandable", "expanded", "inputType", "LayoutOrder", "name", "onChildAdded", "onNameChanged", "setExpanded", "uuid"}]
      112 LOADN                            R29 0
      113 SETTABLEKS                       R29 R28 K19 ["depth"]
      115 GETTABLEKS                       R31 R23 K28 ["actions"]
      117 LENGTH                           R30 R31
      118 LOADN                            R31 0
      119 JUMPIFLT                         R31 R30 ; [+2]
      121 LOADB                            R29 0 +1
      122 LOADB                            R29 1
      123 SETTABLEKS                       R29 R28 K20 ["expandable"]
      125 GETTABLEKS                       R30 R23 K26 ["uuid"]
      127 GETTABLE                         R29 R8 R30
      128 SETTABLEKS                       R29 R28 K21 ["expanded"]
      130 GETTABLEKS                       R29 R22 K10 ["ItemType"]
      132 SETTABLEKS                       R29 R28 K22 ["inputType"]
      134 SETTABLEKS                       R24 R28 K17 ["LayoutOrder"]
      136 GETTABLEKS                       R29 R23 K14 ["name"]
      138 SETTABLEKS                       R29 R28 K14 ["name"]
      140 SETTABLEKS                       R15 R28 K23 ["onChildAdded"]
      142 SETTABLEKS                       R17 R28 K24 ["onNameChanged"]
      144 SETTABLEKS                       R14 R28 K25 ["setExpanded"]
      146 GETTABLEKS                       R29 R23 K26 ["uuid"]
      148 SETTABLEKS                       R29 R28 K26 ["uuid"]
      150 CALL                             R26 2 1
      151 SETTABLE                         R26 R13 R25
      152 JUMPIFNOT                        R10 ; [+56]
      153 GETTABLEKS                       R25 R10 K29 ["parentUuid"]
      155 GETTABLEKS                       R26 R23 K26 ["uuid"]
      157 JUMPIFNOTEQ                      R25 R26 ; [+51]
      159 MOVE                             R25 R1
      160 CALL                             R25 0 1
      161 MOVE                             R24 R25
      162 GETUPVAL                         R26 2
      163 GETTABLEKS                       R25 R26 K16 ["createElement"]
      165 GETUPVAL                         R26 4
      166 DUPTABLE                         R27 K18 [{"LayoutOrder"}]
      167 SETTABLEKS                       R24 R27 K17 ["LayoutOrder"]
      169 CALL                             R25 2 1
      170 SETTABLEKS                       R25 R12 K30 ["creating-context-row"]
      172 GETUPVAL                         R26 2
      173 GETTABLEKS                       R25 R26 K16 ["createElement"]
      175 GETUPVAL                         R26 5
      176 DUPTABLE                         R27 K33 [{"creating", "depth", "expandable", "expanded", "inputType", "LayoutOrder", "onCreated", "parentUuid", "name", "uuid"}]
      177 LOADB                            R28 1
      178 SETTABLEKS                       R28 R27 K31 ["creating"]
      180 LOADN                            R28 1
      181 SETTABLEKS                       R28 R27 K19 ["depth"]
      183 LOADB                            R28 0
      184 SETTABLEKS                       R28 R27 K20 ["expandable"]
      186 LOADB                            R28 0
      187 SETTABLEKS                       R28 R27 K21 ["expanded"]
      189 LOADK                            R28 K34 ["InputAction"]
      190 SETTABLEKS                       R28 R27 K22 ["inputType"]
      192 SETTABLEKS                       R24 R27 K17 ["LayoutOrder"]
      194 SETTABLEKS                       R16 R27 K32 ["onCreated"]
      196 GETTABLEKS                       R28 R23 K26 ["uuid"]
      198 SETTABLEKS                       R28 R27 K29 ["parentUuid"]
      200 LOADK                            R28 K34 ["InputAction"]
      201 SETTABLEKS                       R28 R27 K14 ["name"]
      203 LOADK                            R28 K35 ["creating-action-node"]
      204 SETTABLEKS                       R28 R27 K26 ["uuid"]
      206 CALL                             R25 2 1
      207 SETTABLEKS                       R25 R13 K36 ["creating-context-node"]
      209 GETTABLEKS                       R23 R22 K10 ["ItemType"]
      211 JUMPIFNOTEQKS                    R23 K34 ["InputAction"] ; [+82]
      213 GETTABLEKS                       R23 R22 K37 ["Parent"]
      215 JUMPIFNOT                        R23 ; [+4]
      216 GETTABLEKS                       R24 R22 K37 ["Parent"]
      218 GETTABLE                         R23 R8 R24
      219 JUMPIFNOT                        R23 ; [+74]
      220 GETTABLEKS                       R23 R22 K12 ["Item"]
      222 MOVE                             R24 R1
      223 CALL                             R24 0 1
      224 LOADK                            R26 K13 ["%*%*"]
      225 GETTABLEKS                       R28 R23 K14 ["name"]
      227 MOVE                             R29 R24
      228 NAMECALL                         R26 R26 K15 ["format"]
      230 CALL                             R26 3 1
      231 MOVE                             R25 R26
      232 GETUPVAL                         R27 2
      233 GETTABLEKS                       R26 R27 K16 ["createElement"]
      235 GETUPVAL                         R27 4
      236 DUPTABLE                         R28 K40 [{"inputBindings", "inputActionType", "LayoutOrder"}]
      237 GETTABLEKS                       R30 R23 K26 ["uuid"]
      239 GETTABLE                         R29 R4 R30
      240 SETTABLEKS                       R29 R28 K38 ["inputBindings"]
      242 GETTABLEKS                       R29 R23 K41 ["type"]
      244 SETTABLEKS                       R29 R28 K39 ["inputActionType"]
      246 SETTABLEKS                       R24 R28 K17 ["LayoutOrder"]
      248 CALL                             R26 2 1
      249 SETTABLE                         R26 R12 R25
      250 LOADK                            R26 K13 ["%*%*"]
      251 GETTABLEKS                       R28 R23 K14 ["name"]
      253 MOVE                             R29 R24
      254 NAMECALL                         R26 R26 K15 ["format"]
      256 CALL                             R26 3 1
      257 MOVE                             R25 R26
      258 GETUPVAL                         R27 2
      259 GETTABLEKS                       R26 R27 K16 ["createElement"]
      261 GETUPVAL                         R27 5
      262 DUPTABLE                         R28 K42 [{"depth", "expandable", "expanded", "inputType", "LayoutOrder", "name", "onNameChanged", "setExpanded", "uuid"}]
      263 LOADN                            R29 1
      264 SETTABLEKS                       R29 R28 K19 ["depth"]
      266 LOADB                            R29 0
      267 SETTABLEKS                       R29 R28 K20 ["expandable"]
      269 GETTABLEKS                       R30 R23 K26 ["uuid"]
      271 GETTABLE                         R29 R8 R30
      272 SETTABLEKS                       R29 R28 K21 ["expanded"]
      274 GETTABLEKS                       R29 R22 K10 ["ItemType"]
      276 SETTABLEKS                       R29 R28 K22 ["inputType"]
      278 SETTABLEKS                       R24 R28 K17 ["LayoutOrder"]
      280 GETTABLEKS                       R29 R23 K14 ["name"]
      282 SETTABLEKS                       R29 R28 K14 ["name"]
      284 SETTABLEKS                       R17 R28 K24 ["onNameChanged"]
      286 SETTABLEKS                       R14 R28 K25 ["setExpanded"]
      288 GETTABLEKS                       R29 R23 K26 ["uuid"]
      290 SETTABLEKS                       R29 R28 K26 ["uuid"]
      292 CALL                             R26 2 1
      293 SETTABLE                         R26 R13 R25
      294 FORGLOOP                         R18 2 ; [-221]
      296 JUMPIFNOT                        R10 ; [+49]
      297 GETTABLEKS                       R18 R10 K43 ["itemType"]
      299 JUMPIFNOTEQKS                    R18 K11 ["InputContext"] ; [+46]
      301 MOVE                             R18 R1
      302 CALL                             R18 0 1
      303 GETUPVAL                         R20 2
      304 GETTABLEKS                       R19 R20 K16 ["createElement"]
      306 GETUPVAL                         R20 4
      307 DUPTABLE                         R21 K18 [{"LayoutOrder"}]
      308 SETTABLEKS                       R18 R21 K17 ["LayoutOrder"]
      310 CALL                             R19 2 1
      311 SETTABLEKS                       R19 R12 K30 ["creating-context-row"]
      313 GETUPVAL                         R20 2
      314 GETTABLEKS                       R19 R20 K16 ["createElement"]
      316 GETUPVAL                         R20 5
      317 DUPTABLE                         R21 K44 [{"creating", "depth", "expandable", "expanded", "inputType", "LayoutOrder", "onNameChanged", "name", "uuid"}]
      318 LOADB                            R22 1
      319 SETTABLEKS                       R22 R21 K31 ["creating"]
      321 LOADN                            R22 0
      322 SETTABLEKS                       R22 R21 K19 ["depth"]
      324 LOADB                            R22 0
      325 SETTABLEKS                       R22 R21 K20 ["expandable"]
      327 LOADB                            R22 0
      328 SETTABLEKS                       R22 R21 K21 ["expanded"]
      330 LOADK                            R22 K11 ["InputContext"]
      331 SETTABLEKS                       R22 R21 K22 ["inputType"]
      333 SETTABLEKS                       R18 R21 K17 ["LayoutOrder"]
      335 SETTABLEKS                       R16 R21 K24 ["onNameChanged"]
      337 LOADK                            R22 K11 ["InputContext"]
      338 SETTABLEKS                       R22 R21 K14 ["name"]
      340 LOADK                            R22 K36 ["creating-context-node"]
      341 SETTABLEKS                       R22 R21 K26 ["uuid"]
      343 CALL                             R19 2 1
      344 SETTABLEKS                       R19 R13 K36 ["creating-context-node"]
      346 GETUPVAL                         R19 2
      347 GETTABLEKS                       R18 R19 K16 ["createElement"]
      349 GETUPVAL                         R19 6
      350 DUPTABLE                         R20 K46 [{"LayoutOrder", "tag"}]
      351 GETTABLEKS                       R21 R0 K17 ["LayoutOrder"]
      353 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      355 LOADK                            R21 K47 ["size-full-0 grow col align-y-top bg-surface-200"]
      356 SETTABLEKS                       R21 R20 K45 ["tag"]
      358 DUPTABLE                         R21 K51 [{"Header", "Divider", "ScrollView"}]
      359 GETUPVAL                         R23 2
      360 GETTABLEKS                       R22 R23 K16 ["createElement"]
      362 GETUPVAL                         R23 7
      363 DUPTABLE                         R24 K52 [{"LayoutOrder", "onChildAdded"}]
      364 MOVE                             R25 R1
      365 CALL                             R25 0 1
      366 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      368 SETTABLEKS                       R15 R24 K23 ["onChildAdded"]
      370 CALL                             R22 2 1
      371 SETTABLEKS                       R22 R21 K48 ["Header"]
      373 GETUPVAL                         R23 2
      374 GETTABLEKS                       R22 R23 K16 ["createElement"]
      376 GETUPVAL                         R23 8
      377 DUPTABLE                         R24 K54 [{"LayoutOrder", "orientation", "tag"}]
      378 MOVE                             R25 R1
      379 CALL                             R25 0 1
      380 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      382 GETUPVAL                         R28 9
      383 GETTABLEKS                       R27 R28 K55 ["Enums"]
      385 GETTABLEKS                       R26 R27 K56 ["Orientation"]
      387 GETTABLEKS                       R25 R26 K57 ["Horizontal"]
      389 SETTABLEKS                       R25 R24 K53 ["orientation"]
      391 LOADK                            R25 K58 ["auto-x"]
      392 SETTABLEKS                       R25 R24 K45 ["tag"]
      394 CALL                             R22 2 1
      395 SETTABLEKS                       R22 R21 K49 ["Divider"]
      397 GETUPVAL                         R23 2
      398 GETTABLEKS                       R22 R23 K16 ["createElement"]
      400 GETUPVAL                         R23 10
      401 DUPTABLE                         R24 K60 [{"LayoutOrder", "scroll", "tag"}]
      402 MOVE                             R25 R1
      403 CALL                             R25 0 1
      404 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      406 DUPTABLE                         R25 K63 [{"AutomaticCanvasSize", "CanvasSize"}]
      407 GETIMPORT                        R26 K67 [Enum.AutomaticSize.Y]
      409 SETTABLEKS                       R26 R25 K61 ["AutomaticCanvasSize"]
      411 GETIMPORT                        R26 K70 [UDim2.fromScale]
      413 LOADN                            R27 0
      414 LOADN                            R28 0
      415 CALL                             R26 2 1
      416 SETTABLEKS                       R26 R25 K62 ["CanvasSize"]
      418 SETTABLEKS                       R25 R24 K59 ["scroll"]
      420 LOADK                            R25 K71 ["size-full-0 grow"]
      421 SETTABLEKS                       R25 R24 K45 ["tag"]
      423 DUPTABLE                         R25 K73 [{"Content"}]
      424 GETUPVAL                         R27 2
      425 GETTABLEKS                       R26 R27 K16 ["createElement"]
      427 GETUPVAL                         R27 6
      428 DUPTABLE                         R28 K74 [{"tag"}]
      429 LOADK                            R29 K75 ["size-full-0 auto-y row"]
      430 SETTABLEKS                       R29 R28 K45 ["tag"]
      432 DUPTABLE                         R29 K78 [{"Tree", "Divider", "Table"}]
      433 GETUPVAL                         R31 2
      434 GETTABLEKS                       R30 R31 K16 ["createElement"]
      436 GETUPVAL                         R31 6
      437 DUPTABLE                         R32 K46 [{"LayoutOrder", "tag"}]
      438 MOVE                             R33 R1
      439 CALL                             R33 0 1
      440 SETTABLEKS                       R33 R32 K17 ["LayoutOrder"]
      442 LOADK                            R33 K79 ["columns-tree col auto-y top-align"]
      443 SETTABLEKS                       R33 R32 K45 ["tag"]
      445 MOVE                             R33 R13
      446 CALL                             R30 3 1
      447 SETTABLEKS                       R30 R29 K76 ["Tree"]
      449 GETUPVAL                         R31 2
      450 GETTABLEKS                       R30 R31 K16 ["createElement"]
      452 GETUPVAL                         R31 8
      453 DUPTABLE                         R32 K54 [{"LayoutOrder", "orientation", "tag"}]
      454 MOVE                             R33 R1
      455 CALL                             R33 0 1
      456 SETTABLEKS                       R33 R32 K17 ["LayoutOrder"]
      458 GETUPVAL                         R36 9
      459 GETTABLEKS                       R35 R36 K55 ["Enums"]
      461 GETTABLEKS                       R34 R35 K56 ["Orientation"]
      463 GETTABLEKS                       R33 R34 K80 ["Vertical"]
      465 SETTABLEKS                       R33 R32 K53 ["orientation"]
      467 LOADK                            R33 K81 ["auto-y"]
      468 SETTABLEKS                       R33 R32 K45 ["tag"]
      470 CALL                             R30 2 1
      471 SETTABLEKS                       R30 R29 K49 ["Divider"]
      473 GETUPVAL                         R31 2
      474 GETTABLEKS                       R30 R31 K16 ["createElement"]
      476 GETUPVAL                         R31 10
      477 DUPTABLE                         R32 K60 [{"LayoutOrder", "scroll", "tag"}]
      478 MOVE                             R33 R1
      479 CALL                             R33 0 1
      480 SETTABLEKS                       R33 R32 K17 ["LayoutOrder"]
      482 DUPTABLE                         R33 K83 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      483 GETIMPORT                        R34 K85 [Enum.AutomaticSize.X]
      485 SETTABLEKS                       R34 R33 K61 ["AutomaticCanvasSize"]
      487 GETIMPORT                        R34 K70 [UDim2.fromScale]
      489 LOADN                            R35 0
      490 LOADN                            R36 0
      491 CALL                             R34 2 1
      492 SETTABLEKS                       R34 R33 K62 ["CanvasSize"]
      494 GETIMPORT                        R34 K86 [Enum.ScrollingDirection.X]
      496 SETTABLEKS                       R34 R33 K82 ["ScrollingDirection"]
      498 SETTABLEKS                       R33 R32 K59 ["scroll"]
      500 LOADK                            R33 K87 ["columns-fill col auto-y"]
      501 SETTABLEKS                       R33 R32 K45 ["tag"]
      503 DUPTABLE                         R33 K73 [{"Content"}]
      504 GETUPVAL                         R35 2
      505 GETTABLEKS                       R34 R35 K16 ["createElement"]
      507 GETUPVAL                         R35 6
      508 DUPTABLE                         R36 K74 [{"tag"}]
      509 LOADK                            R37 K88 ["size-full-full col align-y-top"]
      510 SETTABLEKS                       R37 R36 K45 ["tag"]
      512 MOVE                             R37 R12
      513 CALL                             R34 3 1
      514 SETTABLEKS                       R34 R33 K72 ["Content"]
      516 CALL                             R30 3 1
      517 SETTABLEKS                       R30 R29 K77 ["Table"]
      519 CALL                             R26 3 1
      520 SETTABLEKS                       R26 R25 K72 ["Content"]
      522 CALL                             R22 3 1
      523 SETTABLEKS                       R22 R21 K50 ["ScrollView"]
      525 CALL                             R18 3 -1
      526 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Divider"]
       30 GETTABLEKS                       R5 R3 K11 ["View"]
       32 GETTABLEKS                       R7 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R7 K13 ["Components"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R9 R6 K14 ["Tree"]
       40 GETTABLEKS                       R8 R9 K15 ["Header"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R10 R6 K14 ["Tree"]
       47 GETTABLEKS                       R9 R10 K16 ["Node"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R12 R6 K14 ["Tree"]
       54 GETTABLEKS                       R11 R12 K17 ["Table"]
       56 GETTABLEKS                       R10 R11 K18 ["Row"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R10 R3 K19 ["ScrollView"]
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R14 R0 K12 ["Src"]
       65 GETTABLEKS                       R13 R14 K20 ["Contexts"]
       67 GETTABLEKS                       R12 R13 K21 ["Guest"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R14 R0 K12 ["Src"]
       74 GETTABLEKS                       R13 R14 K22 ["Types"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K5 [require]
       79 GETTABLEKS                       R16 R0 K12 ["Src"]
       81 GETTABLEKS                       R15 R16 K23 ["Hooks"]
       83 GETTABLEKS                       R14 R15 K24 ["useInputItems"]
       85 CALL                             R13 1 1
       86 DUPCLOSURE                       R14 K25 [PROTO_4]
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R10
       98 RETURN                           R14 1
