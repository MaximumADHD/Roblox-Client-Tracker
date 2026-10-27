PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancelExport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["exportRequested"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["exportRequested"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["Hooks"]
       11 GETTABLEKS                       R3 R3 K2 ["useTokens"]
       13 CALL                             R3 0 1
       14 GETUPVAL                         R4 3
       15 MOVE                             R5 R2
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 4
       18 MOVE                             R6 R2
       19 CALL                             R5 1 1
       20 GETUPVAL                         R6 5
       21 MOVE                             R7 R2
       22 CALL                             R6 1 1
       23 GETUPVAL                         R8 6
       24 CALL                             R8 0 1
       25 JUMPIFNOT                        R8 ; [+4]
       26 GETUPVAL                         R7 7
       27 MOVE                             R8 R2
       28 CALL                             R7 1 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R7
       31 GETUPVAL                         R9 6
       32 CALL                             R9 0 1
       33 JUMPIFNOT                        R9 ; [+4]
       34 GETUPVAL                         R8 8
       35 MOVE                             R9 R7
       36 CALL                             R8 1 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R8
       39 GETUPVAL                         R10 9
       40 CALL                             R10 0 1
       41 JUMPIFNOT                        R10 ; [+4]
       42 GETUPVAL                         R9 10
       43 MOVE                             R10 R2
       44 CALL                             R9 1 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R9
       47 GETUPVAL                         R11 9
       48 CALL                             R11 0 1
       49 JUMPIFNOT                        R11 ; [+15]
       50 GETUPVAL                         R11 11
       51 GETTABLEKS                       R11 R11 K3 ["Obj"]
       53 JUMPIFEQ                         R9 R11 ; [+9]
       55 LOADB                            R10 0
       56 GETUPVAL                         R11 11
       57 GETTABLEKS                       R11 R11 K4 ["Gltf"]
       59 JUMPIFNOTEQ                      R9 R11 ; [+8]
       61 MOVE                             R10 R5
       62 JUMPIFNOT                        R10 ; [+5]
       63 NOT                              R10 R4
       64 JUMP                             ; [+3]
       65 MOVE                             R10 R5
       66 JUMPIFNOT                        R10 ; [+1]
       67 NOT                              R10 R4
       68 GETUPVAL                         R12 6
       69 CALL                             R12 0 1
       70 AND                              R11 R12 R4
       71 LOADK                            R14 K5 ["Buttons"]
       72 LOADK                            R15 K6 ["Export"]
       73 NAMECALL                         R12 R1 K7 ["getText"]
       75 CALL                             R12 3 1
       76 GETUPVAL                         R13 9
       77 CALL                             R13 0 1
       78 JUMPIFNOT                        R13 ; [+13]
       79 GETUPVAL                         R13 11
       80 GETTABLEKS                       R13 R13 K4 ["Gltf"]
       82 JUMPIFNOTEQ                      R9 R13 ; [+16]
       84 JUMPIF                           R5 ; [+14]
       85 LOADK                            R15 K5 ["Buttons"]
       86 LOADK                            R16 K8 ["Processing"]
       87 NAMECALL                         R13 R1 K7 ["getText"]
       89 CALL                             R13 3 1
       90 MOVE                             R12 R13
       91 JUMP                             ; [+7]
       92 JUMPIF                           R10 ; [+6]
       93 LOADK                            R15 K5 ["Buttons"]
       94 LOADK                            R16 K8 ["Processing"]
       95 NAMECALL                         R13 R1 K7 ["getText"]
       97 CALL                             R13 3 1
       98 MOVE                             R12 R13
       99 LOADNIL                          R13
      100 GETUPVAL                         R14 9
      101 CALL                             R14 0 1
      102 JUMPIF                           R14 ; [+19]
      103 NEWTABLE                         R14 0 3
      105 LOADK                            R15 K9 ["skinning"]
      106 LOADK                            R16 K10 ["textures"]
      107 LOADK                            R17 K11 ["cages"]
      108 SETLIST                          R14 R15 3 [1]
      110 MOVE                             R13 R14
      111 GETUPVAL                         R14 12
      112 CALL                             R14 0 1
      113 JUMPIFNOT                        R14 ; [+8]
      114 LOADN                            R16 3
      115 LOADK                            R17 K12 ["attachments"]
      116 FASTCALL3                        TABLE_INSERT R13 R16 R17
      118 MOVE                             R15 R13
      119 GETIMPORT                        R14 K15 [table.insert]
      121 CALL                             R14 3 0
      122 GETUPVAL                         R14 13
      123 GETTABLEKS                       R14 R14 K16 ["createElement"]
      125 GETUPVAL                         R15 2
      126 GETTABLEKS                       R15 R15 K17 ["View"]
      128 DUPTABLE                         R16 K22 [{["tag"] = "col size-full padding-medium bg-surface-300", ["LayoutOrder"] = 1}]
      129 DUPTABLE                         R17 K26 [{"Header", "CenterPanel", "ButtonPanel"}]
      130 GETUPVAL                         R18 13
      131 GETTABLEKS                       R18 R18 K16 ["createElement"]
      133 GETUPVAL                         R19 2
      134 GETTABLEKS                       R19 R19 K17 ["View"]
      136 DUPTABLE                         R20 K28 [{["tag"] = "row align-y-top gap-small size-full-0 auto-y padding-small"}]
      137 DUPTABLE                         R21 K32 [{"iconElement", "textPanel", "show"}]
      138 GETUPVAL                         R22 13
      139 GETTABLEKS                       R22 R22 K16 ["createElement"]
      141 GETUPVAL                         R23 2
      142 GETTABLEKS                       R23 R23 K33 ["Image"]
      144 DUPTABLE                         R24 K36 [{["Image"] = "rbxassetid://71912387248131", ["Size"], ["LayoutOrder"] = 1}]
      145 GETIMPORT                        R25 K39 [UDim2.fromOffset]
      147 LOADN                            R26 36
      148 LOADN                            R27 36
      149 CALL                             R25 2 1
      150 SETTABLEKS                       R25 R24 K35 ["Size"]
      152 CALL                             R22 2 1
      153 SETTABLEKS                       R22 R21 K29 ["iconElement"]
      155 GETUPVAL                         R22 13
      156 GETTABLEKS                       R22 R22 K16 ["createElement"]
      158 GETUPVAL                         R23 2
      159 GETTABLEKS                       R23 R23 K17 ["View"]
      161 DUPTABLE                         R24 K42 [{["tag"] = "col align-y-top grow gap-small size-0-0 auto-y", ["LayoutOrder"] = 2}]
      162 DUPTABLE                         R25 K45 [{"MainText", "SupportText"}]
      163 GETUPVAL                         R26 13
      164 GETTABLEKS                       R26 R26 K16 ["createElement"]
      166 GETUPVAL                         R27 2
      167 GETTABLEKS                       R27 R27 K46 ["Text"]
      169 DUPTABLE                         R28 K48 [{["tag"] = "size-full-0 auto-y text-title-medium text-no-wrap text-align-x-left text-truncate-end", ["Text"], ["LayoutOrder"] = 1}]
      170 LOADK                            R31 K49 ["Title"]
      171 LOADK                            R32 K50 ["Customize"]
      172 NAMECALL                         R29 R1 K7 ["getText"]
      174 CALL                             R29 3 1
      175 SETTABLEKS                       R29 R28 K46 ["Text"]
      177 CALL                             R26 2 1
      178 SETTABLEKS                       R26 R25 K43 ["MainText"]
      180 GETUPVAL                         R26 13
      181 GETTABLEKS                       R26 R26 K16 ["createElement"]
      183 GETUPVAL                         R27 2
      184 GETTABLEKS                       R27 R27 K46 ["Text"]
      186 DUPTABLE                         R28 K52 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left", ["Text"], ["LayoutOrder"] = 2}]
      187 LOADK                            R31 K53 ["Info"]
      188 LOADK                            R32 K50 ["Customize"]
      189 NAMECALL                         R29 R1 K7 ["getText"]
      191 CALL                             R29 3 1
      192 SETTABLEKS                       R29 R28 K46 ["Text"]
      194 CALL                             R26 2 1
      195 SETTABLEKS                       R26 R25 K44 ["SupportText"]
      197 CALL                             R22 3 1
      198 SETTABLEKS                       R22 R21 K30 ["textPanel"]
      200 GETUPVAL                         R22 13
      201 GETTABLEKS                       R22 R22 K16 ["createElement"]
      203 GETUPVAL                         R23 2
      204 GETTABLEKS                       R23 R23 K17 ["View"]
      206 DUPTABLE                         R24 K56 [{["tag"] = "row align-y-center size-0-full auto-xy", ["LayoutOrder"] = 3}]
      207 NEWTABLE                         R25 0 0
      209 CALL                             R22 3 1
      210 SETTABLEKS                       R22 R21 K31 ["show"]
      212 CALL                             R18 3 1
      213 SETTABLEKS                       R18 R17 K23 ["Header"]
      215 GETUPVAL                         R18 13
      216 GETTABLEKS                       R18 R18 K16 ["createElement"]
      218 GETUPVAL                         R19 2
      219 GETTABLEKS                       R19 R19 K17 ["View"]
      221 DUPTABLE                         R20 K58 [{["tag"] = "row align-y-top grow gap-small size-full-0 padding-small", ["LayoutOrder"] = 2}]
      222 DUPTABLE                         R21 K61 [{"spacer", "Settings"}]
      223 GETUPVAL                         R22 13
      224 GETTABLEKS                       R22 R22 K16 ["createElement"]
      226 GETUPVAL                         R23 2
      227 GETTABLEKS                       R23 R23 K17 ["View"]
      229 DUPTABLE                         R24 K62 [{["Size"], ["LayoutOrder"] = 1}]
      230 GETIMPORT                        R25 K39 [UDim2.fromOffset]
      232 LOADN                            R26 36
      233 LOADN                            R27 36
      234 CALL                             R25 2 1
      235 SETTABLEKS                       R25 R24 K35 ["Size"]
      237 CALL                             R22 2 1
      238 SETTABLEKS                       R22 R21 K59 ["spacer"]
      240 GETUPVAL                         R22 13
      241 GETTABLEKS                       R22 R22 K16 ["createElement"]
      243 GETUPVAL                         R23 2
      244 GETTABLEKS                       R23 R23 K17 ["View"]
      246 DUPTABLE                         R24 K64 [{["tag"] = "grow size-0-full", ["LayoutOrder"] = 2}]
      247 DUPTABLE                         R25 K66 [{"scroll"}]
      248 GETUPVAL                         R26 13
      249 GETTABLEKS                       R26 R26 K16 ["createElement"]
      251 GETUPVAL                         R27 2
      252 GETTABLEKS                       R27 R27 K67 ["ScrollView"]
      254 DUPTABLE                         R28 K69 [{["tag"] = "size-full", ["scroll"]}]
      255 DUPTABLE                         R29 K74 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
      256 GETUPVAL                         R31 9
      257 CALL                             R31 0 1
      258 JUMPIFNOT                        R31 ; [+8]
      259 GETUPVAL                         R30 2
      260 GETTABLEKS                       R30 R30 K75 ["Enums"]
      262 GETTABLEKS                       R30 R30 K76 ["Visibility"]
      264 GETTABLEKS                       R30 R30 K77 ["Always"]
      266 JUMP                             ; [+7]
      267 GETUPVAL                         R30 2
      268 GETTABLEKS                       R30 R30 K75 ["Enums"]
      270 GETTABLEKS                       R30 R30 K78 ["ScrollBarVisibility"]
      272 GETTABLEKS                       R30 R30 K79 ["Auto"]
      274 SETTABLEKS                       R30 R29 K70 ["scrollBarVisibility"]
      276 GETIMPORT                        R30 K82 [Enum.ScrollingDirection.Y]
      278 SETTABLEKS                       R30 R29 K71 ["ScrollingDirection"]
      280 GETIMPORT                        R30 K84 [Enum.AutomaticSize.Y]
      282 SETTABLEKS                       R30 R29 K72 ["AutomaticCanvasSize"]
      284 GETIMPORT                        R30 K86 [UDim2.fromScale]
      286 LOADN                            R31 0
      287 LOADN                            R32 0
      288 CALL                             R30 2 1
      289 SETTABLEKS                       R30 R29 K73 ["CanvasSize"]
      291 SETTABLEKS                       R29 R28 K65 ["scroll"]
      293 DUPTABLE                         R29 K88 [{"SettingsContainer"}]
      294 GETUPVAL                         R31 9
      295 CALL                             R31 0 1
      296 JUMPIFNOT                        R31 ; [+13]
      297 GETUPVAL                         R30 13
      298 GETTABLEKS                       R30 R30 K16 ["createElement"]
      300 GETUPVAL                         R31 14
      301 DUPTABLE                         R32 K90 [{"settingsEnabled"}]
      302 JUMPIFEQKS                       R6 K91 ["Main"] ; [+2]
      304 LOADB                            R33 0 +1
      305 LOADB                            R33 1
      306 SETTABLEKS                       R33 R32 K89 ["settingsEnabled"]
      308 CALL                             R30 2 1
      309 JUMP                             ; [+14]
      310 GETUPVAL                         R30 13
      311 GETTABLEKS                       R30 R30 K16 ["createElement"]
      313 GETUPVAL                         R31 14
      314 DUPTABLE                         R32 K95 [{["title"] = "Include", ["settingsEnabled"], ["settings"]}]
      315 JUMPIFEQKS                       R6 K91 ["Main"] ; [+2]
      317 LOADB                            R33 0 +1
      318 LOADB                            R33 1
      319 SETTABLEKS                       R33 R32 K89 ["settingsEnabled"]
      321 SETTABLEKS                       R13 R32 K94 ["settings"]
      323 CALL                             R30 2 1
      324 SETTABLEKS                       R30 R29 K87 ["SettingsContainer"]
      326 CALL                             R26 3 1
      327 SETTABLEKS                       R26 R25 K65 ["scroll"]
      329 CALL                             R22 3 1
      330 SETTABLEKS                       R22 R21 K60 ["Settings"]
      332 CALL                             R18 3 1
      333 SETTABLEKS                       R18 R17 K24 ["CenterPanel"]
      335 GETUPVAL                         R18 13
      336 GETTABLEKS                       R18 R18 K16 ["createElement"]
      338 GETUPVAL                         R19 2
      339 GETTABLEKS                       R19 R19 K17 ["View"]
      341 DUPTABLE                         R20 K98 [{["tag"] = "row align-x-right gap-small size-full-1200 padding-small bg-surface-300", ["LayoutOrder"] = 4}]
      342 DUPTABLE                         R21 K100 [{"Cancel", "Export"}]
      343 GETUPVAL                         R22 13
      344 GETTABLEKS                       R22 R22 K16 ["createElement"]
      346 GETUPVAL                         R23 2
      347 GETTABLEKS                       R23 R23 K101 ["Button"]
      349 DUPTABLE                         R24 K108 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"] = 1}]
      350 LOADK                            R27 K5 ["Buttons"]
      351 LOADK                            R28 K99 ["Cancel"]
      352 NAMECALL                         R25 R1 K7 ["getText"]
      354 CALL                             R25 3 1
      355 SETTABLEKS                       R25 R24 K102 ["text"]
      357 GETUPVAL                         R25 2
      358 GETTABLEKS                       R25 R25 K75 ["Enums"]
      360 GETTABLEKS                       R25 R25 K109 ["ButtonVariant"]
      362 GETTABLEKS                       R25 R25 K110 ["Standard"]
      364 SETTABLEKS                       R25 R24 K103 ["variant"]
      366 NEWCLOSURE                       R25 P0
      367 CAPTURE                          VAL R2
      368 SETTABLEKS                       R25 R24 K104 ["onActivated"]
      370 GETUPVAL                         R25 2
      371 GETTABLEKS                       R25 R25 K75 ["Enums"]
      373 GETTABLEKS                       R25 R25 K111 ["InputSize"]
      375 GETTABLEKS                       R25 R25 K112 ["Small"]
      377 SETTABLEKS                       R25 R24 K107 ["size"]
      379 CALL                             R22 2 1
      380 SETTABLEKS                       R22 R21 K99 ["Cancel"]
      382 GETUPVAL                         R23 6
      383 CALL                             R23 0 1
      384 JUMPIFNOT                        R23 ; [+146]
      385 GETUPVAL                         R22 13
      386 GETTABLEKS                       R22 R22 K16 ["createElement"]
      388 GETUPVAL                         R23 2
      389 GETTABLEKS                       R23 R23 K17 ["View"]
      391 DUPTABLE                         R24 K114 [{["tag"] = "auto-xy", ["LayoutOrder"] = 2}]
      392 DUPTABLE                         R25 K116 [{"Button", "ProcessingContent"}]
      393 GETUPVAL                         R26 13
      394 GETTABLEKS                       R26 R26 K16 ["createElement"]
      396 GETUPVAL                         R27 2
      397 GETTABLEKS                       R27 R27 K101 ["Button"]
      399 DUPTABLE                         R28 K120 [{["text"], ["variant"], ["onActivated"], ["isDisabled"], ["size"], ["width"], ["testId"] = "export-button"}]
      400 JUMPIFNOT                        R11 ; [+2]
      401 LOADK                            R29 K121 [""]
      402 JUMP                             ; [+1]
      403 MOVE                             R29 R12
      404 SETTABLEKS                       R29 R28 K102 ["text"]
      406 GETUPVAL                         R29 2
      407 GETTABLEKS                       R29 R29 K75 ["Enums"]
      409 GETTABLEKS                       R29 R29 K109 ["ButtonVariant"]
      411 GETTABLEKS                       R29 R29 K122 ["Emphasis"]
      413 SETTABLEKS                       R29 R28 K103 ["variant"]
      415 NEWCLOSURE                       R29 P1
      416 CAPTURE                          VAL R10
      417 CAPTURE                          VAL R2
      418 SETTABLEKS                       R29 R28 K104 ["onActivated"]
      420 NOT                              R29 R10
      421 SETTABLEKS                       R29 R28 K105 ["isDisabled"]
      423 GETUPVAL                         R29 2
      424 GETTABLEKS                       R29 R29 K75 ["Enums"]
      426 GETTABLEKS                       R29 R29 K111 ["InputSize"]
      428 GETTABLEKS                       R29 R29 K112 ["Small"]
      430 SETTABLEKS                       R29 R28 K107 ["size"]
      432 JUMPIFNOT                        R11 ; [+6]
      433 GETIMPORT                        R29 K125 [UDim.new]
      435 LOADN                            R30 1
      436 LOADN                            R31 0
      437 CALL                             R29 2 1
      438 JUMP                             ; [+5]
      439 GETIMPORT                        R29 K125 [UDim.new]
      441 LOADN                            R30 0
      442 LOADN                            R31 0
      443 CALL                             R29 2 1
      444 SETTABLEKS                       R29 R28 K117 ["width"]
      446 CALL                             R26 2 1
      447 SETTABLEKS                       R26 R25 K101 ["Button"]
      449 JUMPIFNOT                        R11 ; [+76]
      450 GETUPVAL                         R26 13
      451 GETTABLEKS                       R26 R26 K16 ["createElement"]
      453 GETUPVAL                         R27 2
      454 GETTABLEKS                       R27 R27 K17 ["View"]
      456 DUPTABLE                         R28 K128 [{["tag"] = "row align-x-center align-y-center gap-xsmall size-0-full auto-x padding-small", ["ZIndex"] = 2}]
      457 DUPTABLE                         R29 K131 [{"Progress", "Label"}]
      458 GETUPVAL                         R30 13
      459 GETTABLEKS                       R30 R30 K16 ["createElement"]
      461 GETUPVAL                         R31 2
      462 GETTABLEKS                       R31 R31 K129 ["Progress"]
      464 DUPTABLE                         R32 K134 [{["size"], ["shape"], ["value"], ["LayoutOrder"] = 1}]
      465 GETUPVAL                         R33 2
      466 GETTABLEKS                       R33 R33 K75 ["Enums"]
      468 GETTABLEKS                       R33 R33 K135 ["ProgressSize"]
      470 GETTABLEKS                       R33 R33 K112 ["Small"]
      472 SETTABLEKS                       R33 R32 K107 ["size"]
      474 GETUPVAL                         R33 2
      475 GETTABLEKS                       R33 R33 K75 ["Enums"]
      477 GETTABLEKS                       R33 R33 K136 ["ProgressShape"]
      479 GETTABLEKS                       R33 R33 K137 ["Circle"]
      481 SETTABLEKS                       R33 R32 K132 ["shape"]
      483 SETTABLEKS                       R8 R32 K133 ["value"]
      485 CALL                             R30 2 1
      486 SETTABLEKS                       R30 R29 K129 ["Progress"]
      488 GETUPVAL                         R30 13
      489 GETTABLEKS                       R30 R30 K16 ["createElement"]
      491 GETUPVAL                         R31 2
      492 GETTABLEKS                       R31 R31 K46 ["Text"]
      494 DUPTABLE                         R32 K140 [{["Text"], ["tag"] = "text-label-small auto-xy", ["textStyle"], ["LayoutOrder"] = 2}]
      495 SETTABLEKS                       R12 R32 K46 ["Text"]
      497 DUPTABLE                         R33 K143 [{"Color3", "Transparency"}]
      498 GETTABLEKS                       R34 R3 K144 ["Color"]
      500 GETTABLEKS                       R34 R34 K145 ["ActionEmphasis"]
      502 GETTABLEKS                       R34 R34 K146 ["Foreground"]
      504 GETTABLEKS                       R34 R34 K141 ["Color3"]
      506 SETTABLEKS                       R34 R33 K141 ["Color3"]
      508 GETTABLEKS                       R35 R3 K144 ["Color"]
      510 GETTABLEKS                       R35 R35 K145 ["ActionEmphasis"]
      512 GETTABLEKS                       R35 R35 K146 ["Foreground"]
      514 GETTABLEKS                       R35 R35 K142 ["Transparency"]
      516 ADDK                             R34 R35 K147 [0.5]
      517 SETTABLEKS                       R34 R33 K142 ["Transparency"]
      519 SETTABLEKS                       R33 R32 K139 ["textStyle"]
      521 CALL                             R30 2 1
      522 SETTABLEKS                       R30 R29 K130 ["Label"]
      524 CALL                             R26 3 1
      525 JUMP                             ; [+1]
      526 LOADNIL                          R26
      527 SETTABLEKS                       R26 R25 K115 ["ProcessingContent"]
      529 CALL                             R22 3 1
      530 JUMP                             ; [+36]
      531 GETUPVAL                         R22 13
      532 GETTABLEKS                       R22 R22 K16 ["createElement"]
      534 GETUPVAL                         R23 2
      535 GETTABLEKS                       R23 R23 K101 ["Button"]
      537 DUPTABLE                         R24 K148 [{["text"], ["variant"], ["onActivated"], ["isDisabled"], ["size"], ["LayoutOrder"] = 2}]
      538 SETTABLEKS                       R12 R24 K102 ["text"]
      540 GETUPVAL                         R25 2
      541 GETTABLEKS                       R25 R25 K75 ["Enums"]
      543 GETTABLEKS                       R25 R25 K109 ["ButtonVariant"]
      545 GETTABLEKS                       R25 R25 K122 ["Emphasis"]
      547 SETTABLEKS                       R25 R24 K103 ["variant"]
      549 NEWCLOSURE                       R25 P2
      550 CAPTURE                          VAL R10
      551 CAPTURE                          VAL R2
      552 SETTABLEKS                       R25 R24 K104 ["onActivated"]
      554 NOT                              R25 R10
      555 SETTABLEKS                       R25 R24 K105 ["isDisabled"]
      557 GETUPVAL                         R25 2
      558 GETTABLEKS                       R25 R25 K75 ["Enums"]
      560 GETTABLEKS                       R25 R25 K111 ["InputSize"]
      562 GETTABLEKS                       R25 R25 K112 ["Small"]
      564 SETTABLEKS                       R25 R24 K107 ["size"]
      566 CALL                             R22 2 1
      567 SETTABLEKS                       R22 R21 K6 ["Export"]
      569 CALL                             R18 3 1
      570 SETTABLEKS                       R18 R17 K25 ["ButtonPanel"]
      572 CALL                             R14 3 -1
      573 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagCreateAttachmentsOnAssetDm"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Flags"]
       43 GETTABLEKS                       R6 R6 K13 ["getFFlagAsyncObjExport"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K11 ["Flags"]
       52 GETTABLEKS                       R7 R7 K14 ["getFFlagGltfExportProgress"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K10 ["Src"]
       59 GETTABLEKS                       R8 R8 K15 ["Util"]
       61 GETTABLEKS                       R8 R8 K16 ["ExportFormat"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R2 K17 ["ContextServices"]
       66 GETTABLEKS                       R9 R8 K18 ["Localization"]
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K10 ["Src"]
       72 GETTABLEKS                       R11 R11 K19 ["Components"]
       74 GETTABLEKS                       R11 R11 K20 ["SettingsContainer"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K10 ["Src"]
       81 GETTABLEKS                       R12 R12 K21 ["Controllers"]
       83 GETTABLEKS                       R12 R12 K22 ["ExportController"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K10 ["Src"]
       90 GETTABLEKS                       R13 R13 K23 ["Hooks"]
       92 GETTABLEKS                       R13 R13 K24 ["usePermissionsReady"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K10 ["Src"]
       99 GETTABLEKS                       R14 R14 K23 ["Hooks"]
      101 GETTABLEKS                       R14 R14 K25 ["useExportProcessing"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K10 ["Src"]
      108 GETTABLEKS                       R15 R15 K23 ["Hooks"]
      110 GETTABLEKS                       R15 R15 K26 ["useFormat"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K5 [require]
      115 GETTABLEKS                       R16 R0 K10 ["Src"]
      117 GETTABLEKS                       R16 R16 K23 ["Hooks"]
      119 GETTABLEKS                       R16 R16 K27 ["useViewState"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K5 [require]
      124 GETTABLEKS                       R17 R0 K10 ["Src"]
      126 GETTABLEKS                       R17 R17 K23 ["Hooks"]
      128 GETTABLEKS                       R17 R17 K28 ["useExportProgress"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K5 [require]
      133 GETTABLEKS                       R18 R0 K10 ["Src"]
      135 GETTABLEKS                       R18 R18 K23 ["Hooks"]
      137 GETTABLEKS                       R18 R18 K29 ["useSmoothProgress"]
      139 CALL                             R17 1 1
      140 DUPCLOSURE                       R18 K30 [PROTO_3]
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R10
      156 RETURN                           R18 1
