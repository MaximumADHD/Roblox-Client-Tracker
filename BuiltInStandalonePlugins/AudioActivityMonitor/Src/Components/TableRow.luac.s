PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["formatValue"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R2 R1 K0 ["formatValue"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R0 R2
        8 JUMPIFEQKNIL                     R0 ; [+7]
       10 FASTCALL1                        TOSTRING R0 ; [+3]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K2 [tostring]
       14 CALL                             R2 1 1
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 0
       17 LOADK                            R4 K3 ["Cell"]
       18 LOADK                            R5 K4 ["NoValue"]
       19 NAMECALL                         R2 R2 K5 ["getText"]
       21 CALL                             R2 3 -1
       22 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectId"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isMeteringBar"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["openContextMenu"]
        7 LOADB                            R1 0
        8 LOADB                            R2 1
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Enums"]
        4 GETTABLEKS                       R3 R3 K1 ["ControlState"]
        6 GETTABLEKS                       R3 R3 K2 ["Hover"]
        8 JUMPIFEQ                         R0 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["RowData"]
        9 GETTABLEKS                       R3 R0 K3 ["TableState"]
       11 GETTABLEKS                       R4 R0 K4 ["Row"]
       13 GETTABLEKS                       R4 R4 K5 ["Data"]
       15 GETTABLEKS                       R6 R0 K4 ["Row"]
       17 GETTABLEKS                       R6 R6 K6 ["ContributingGain"]
       19 JUMPIFNOTEQKNIL                  R6 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 GETTABLEKS                       R7 R0 K4 ["Row"]
       25 GETTABLEKS                       R7 R7 K7 ["Children"]
       27 JUMPIFNOTEQKNIL                  R7 ; [+2]
       29 LOADB                            R6 0 +1
       30 LOADB                            R6 1
       31 GETTABLEKS                       R7 R0 K8 ["Index"]
       33 GETTABLEKS                       R8 R3 K9 ["rowHeight"]
       35 GETTABLEKS                       R10 R2 K10 ["selectedIds"]
       37 GETTABLEKS                       R11 R4 K11 ["Id"]
       39 GETTABLE                         R9 R10 R11
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R10 R10 K12 ["useState"]
       43 LOADB                            R11 0
       44 CALL                             R10 1 2
       45 GETUPVAL                         R12 2
       46 GETTABLEKS                       R12 R12 K13 ["Hooks"]
       48 GETTABLEKS                       R12 R12 K14 ["useTokens"]
       50 CALL                             R12 0 1
       51 GETTABLEKS                       R13 R12 K15 ["Color"]
       53 GETTABLEKS                       R13 R13 K16 ["Surface"]
       55 GETTABLEKS                       R13 R13 K17 ["Surface_0"]
       57 GETUPVAL                         R14 2
       58 GETTABLEKS                       R14 R14 K18 ["Utility"]
       60 GETTABLEKS                       R14 R14 K19 ["blendColors"]
       62 MOVE                             R15 R13
       63 GETTABLEKS                       R16 R12 K15 ["Color"]
       65 GETTABLEKS                       R16 R16 K20 ["ActionStandard"]
       67 GETTABLEKS                       R16 R16 K21 ["Background"]
       69 CALL                             R14 2 1
       70 MOVE                             R15 R13
       71 JUMPIFNOT                        R10 ; [+1]
       72 MOVE                             R15 R14
       73 JUMPIFNOT                        R9 ; [+6]
       74 GETTABLEKS                       R16 R12 K15 ["Color"]
       76 GETTABLEKS                       R16 R16 K22 ["ActionEmphasis"]
       78 GETTABLEKS                       R15 R16 K21 ["Background"]
       80 NEWCLOSURE                       R16 P0
       81 CAPTURE                          VAL R1
       82 NEWCLOSURE                       R17 P1
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R4
       85 NEWTABLE                         R18 0 0
       87 LOADB                            R19 1
       88 GETTABLEKS                       R20 R2 K23 ["columnDefinitions"]
       90 LOADNIL                          R21
       91 LOADNIL                          R22
       92 FORGPREP                         R20
       93 GETTABLEKS                       R26 R3 K24 ["columnVisibilities"]
       95 GETTABLE                         R25 R26 R23
       96 JUMPIFNOT                        R25 ; [+368]
       97 MOVE                             R25 R19
       98 JUMPIFNOT                        R25 ; [+1]
       99 LOADB                            R19 0
      100 GETTABLEKS                       R26 R24 K25 ["getValue"]
      102 GETTABLEKS                       R27 R0 K4 ["Row"]
      104 MOVE                             R28 R1
      105 CALL                             R26 2 1
      106 LOADNIL                          R27
      107 GETTABLEKS                       R28 R24 K26 ["isMeteringBar"]
      109 JUMPIFNOT                        R28 ; [+14]
      110 GETUPVAL                         R28 0
      111 GETTABLEKS                       R28 R28 K27 ["createElement"]
      113 GETUPVAL                         R29 3
      114 DUPTABLE                         R30 K31 [{"Volume", "IsSelected", "BackgroundStyle"}]
      115 SETTABLEKS                       R26 R30 K28 ["Volume"]
      117 SETTABLEKS                       R9 R30 K29 ["IsSelected"]
      119 SETTABLEKS                       R15 R30 K30 ["BackgroundStyle"]
      121 CALL                             R28 2 1
      122 MOVE                             R27 R28
      123 JUMP                             ; [+120]
      124 GETTABLEKS                       R28 R24 K32 ["isName"]
      126 JUMPIFNOT                        R28 ; [+42]
      127 GETUPVAL                         R28 0
      128 GETTABLEKS                       R28 R28 K27 ["createElement"]
      130 GETUPVAL                         R29 4
      131 DUPTABLE                         R30 K35 [{"Name", "ClassName", "IsSelected", "TableState"}]
      132 MOVE                             R32 R26
      133 GETTABLEKS                       R33 R24 K36 ["formatValue"]
      135 JUMPIFNOT                        R33 ; [+5]
      136 GETTABLEKS                       R33 R24 K36 ["formatValue"]
      138 MOVE                             R34 R32
      139 CALL                             R33 1 1
      140 MOVE                             R32 R33
      141 JUMPIFEQKNIL                     R32 ; [+8]
      143 FASTCALL1                        TOSTRING R32 ; [+3]
      144 MOVE                             R34 R32
      145 GETIMPORT                        R33 K38 [tostring]
      147 CALL                             R33 1 1
      148 MOVE                             R31 R33
      149 JUMP                             ; [+6]
      150 LOADK                            R35 K39 ["Cell"]
      151 LOADK                            R36 K40 ["NoValue"]
      152 NAMECALL                         R33 R1 K41 ["getText"]
      154 CALL                             R33 3 1
      155 MOVE                             R31 R33
      156 SETTABLEKS                       R31 R30 K33 ["Name"]
      158 GETTABLEKS                       R31 R4 K34 ["ClassName"]
      160 SETTABLEKS                       R31 R30 K34 ["ClassName"]
      162 SETTABLEKS                       R9 R30 K29 ["IsSelected"]
      164 SETTABLEKS                       R3 R30 K3 ["TableState"]
      166 CALL                             R28 2 1
      167 MOVE                             R27 R28
      168 JUMP                             ; [+75]
      169 GETUPVAL                         R28 0
      170 GETTABLEKS                       R28 R28 K27 ["createElement"]
      172 GETUPVAL                         R29 5
      173 DUPTABLE                         R30 K46 [{"Text", "Description", "IsContextMenuOpen", "tag"}]
      174 MOVE                             R32 R26
      175 GETTABLEKS                       R33 R24 K36 ["formatValue"]
      177 JUMPIFNOT                        R33 ; [+5]
      178 GETTABLEKS                       R33 R24 K36 ["formatValue"]
      180 MOVE                             R34 R32
      181 CALL                             R33 1 1
      182 MOVE                             R32 R33
      183 JUMPIFEQKNIL                     R32 ; [+8]
      185 FASTCALL1                        TOSTRING R32 ; [+3]
      186 MOVE                             R34 R32
      187 GETIMPORT                        R33 K38 [tostring]
      189 CALL                             R33 1 1
      190 MOVE                             R31 R33
      191 JUMP                             ; [+6]
      192 LOADK                            R35 K39 ["Cell"]
      193 LOADK                            R36 K40 ["NoValue"]
      194 NAMECALL                         R33 R1 K41 ["getText"]
      196 CALL                             R33 3 1
      197 MOVE                             R31 R33
      198 SETTABLEKS                       R31 R30 K42 ["Text"]
      200 GETTABLEKS                       R32 R24 K47 ["getDescription"]
      202 JUMPIFNOT                        R32 ; [+7]
      203 GETTABLEKS                       R31 R24 K47 ["getDescription"]
      205 GETTABLEKS                       R32 R0 K4 ["Row"]
      207 MOVE                             R33 R1
      208 CALL                             R31 2 1
      209 JUMP                             ; [+1]
      210 LOADNIL                          R31
      211 SETTABLEKS                       R31 R30 K43 ["Description"]
      213 GETTABLEKS                       R31 R3 K48 ["isContextMenuOpen"]
      215 SETTABLEKS                       R31 R30 K44 ["IsContextMenuOpen"]
      217 NEWTABLE                         R31 4 0
      219 LOADB                            R32 1
      220 SETTABLEKS                       R32 R31 K49 ["size-full text-body-small"]
      222 GETTABLEKS                       R33 R24 K50 ["isNumeric"]
      224 JUMPIFEQKB                       R33 TRUE ; [+2]
      226 LOADB                            R32 0 +1
      227 LOADB                            R32 1
      228 SETTABLEKS                       R32 R31 K51 ["text-align-x-right"]
      230 GETTABLEKS                       R33 R24 K50 ["isNumeric"]
      232 JUMPIFNOTEQKB                    R33 TRUE ; [+2]
      234 LOADB                            R32 0 +1
      235 LOADB                            R32 1
      236 SETTABLEKS                       R32 R31 K52 ["text-align-x-left"]
      238 SETTABLEKS                       R9 R31 K53 ["content-action-emphasis"]
      240 SETTABLEKS                       R31 R30 K45 ["tag"]
      242 CALL                             R28 2 1
      243 MOVE                             R27 R28
      244 NEWTABLE                         R28 4 0
      246 JUMPIFNOT                        R25 ; [+165]
      247 JUMPIFNOT                        R5 ; [+50]
      248 GETUPVAL                         R29 0
      249 GETTABLEKS                       R29 R29 K27 ["createElement"]
      251 LOADK                            R30 K54 ["ImageLabel"]
      252 DUPTABLE                         R31 K65 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Size"], ["Image"] = "rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/indentGuide.png", ["ImageColor3"], ["ImageTransparency"], ["ScaleType"], ["TileSize"]}]
      253 GETIMPORT                        R32 K68 [UDim2.new]
      255 LOADN                            R33 0
      256 LOADN                            R34 12
      257 LOADN                            R35 1
      258 LOADN                            R36 0
      259 CALL                             R32 4 1
      260 SETTABLEKS                       R32 R31 K58 ["Size"]
      262 GETTABLEKS                       R32 R12 K15 ["Color"]
      264 GETTABLEKS                       R32 R32 K69 ["Stroke"]
      266 GETTABLEKS                       R32 R32 K70 ["Default"]
      268 GETTABLEKS                       R32 R32 K71 ["Color3"]
      270 SETTABLEKS                       R32 R31 K61 ["ImageColor3"]
      272 GETTABLEKS                       R32 R12 K15 ["Color"]
      274 GETTABLEKS                       R32 R32 K69 ["Stroke"]
      276 GETTABLEKS                       R32 R32 K70 ["Default"]
      278 GETTABLEKS                       R32 R32 K72 ["Transparency"]
      280 SETTABLEKS                       R32 R31 K62 ["ImageTransparency"]
      282 GETIMPORT                        R32 K75 [Enum.ScaleType.Tile]
      284 SETTABLEKS                       R32 R31 K63 ["ScaleType"]
      286 GETIMPORT                        R32 K68 [UDim2.new]
      288 LOADN                            R33 0
      289 LOADN                            R34 12
      290 LOADN                            R35 1
      291 LOADN                            R36 0
      292 CALL                             R32 4 1
      293 SETTABLEKS                       R32 R31 K64 ["TileSize"]
      295 CALL                             R29 2 1
      296 SETTABLEKS                       R29 R28 K76 ["IndentGuide"]
      298 GETUPVAL                         R29 0
      299 GETTABLEKS                       R29 R29 K27 ["createElement"]
      301 GETUPVAL                         R30 6
      302 DUPTABLE                         R31 K79 [{["LayoutOrder"] = 2, ["Size"], ["tag"] = "shrink-0"}]
      303 GETIMPORT                        R32 K68 [UDim2.new]
      305 LOADN                            R33 0
      306 LOADN                            R34 20
      307 LOADN                            R35 1
      308 LOADN                            R36 0
      309 CALL                             R32 4 1
      310 SETTABLEKS                       R32 R31 K58 ["Size"]
      312 DUPTABLE                         R32 K81 [{"Icon"}]
      313 JUMPIFNOT                        R6 ; [+80]
      314 GETUPVAL                         R33 0
      315 GETTABLEKS                       R33 R33 K27 ["createElement"]
      317 LOADK                            R34 K54 ["ImageLabel"]
      318 DUPTABLE                         R35 K84 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["Image"], ["ImageColor3"], ["ImageTransparency"]}]
      319 GETIMPORT                        R36 K86 [Vector2.new]
      321 LOADK                            R37 K87 [0.5]
      322 LOADK                            R38 K87 [0.5]
      323 CALL                             R36 2 1
      324 SETTABLEKS                       R36 R35 K82 ["AnchorPoint"]
      326 GETIMPORT                        R36 K68 [UDim2.new]
      328 LOADN                            R37 0
      329 LOADK                            R38 K88 [11.5]
      330 LOADK                            R39 K87 [0.5]
      331 LOADN                            R40 0
      332 CALL                             R36 4 1
      333 SETTABLEKS                       R36 R35 K83 ["Position"]
      335 GETIMPORT                        R36 K90 [UDim2.fromOffset]
      337 LOADN                            R37 16
      338 LOADN                            R38 16
      339 CALL                             R36 2 1
      340 SETTABLEKS                       R36 R35 K58 ["Size"]
      342 GETTABLEKS                       R37 R0 K4 ["Row"]
      344 GETTABLEKS                       R37 R37 K91 ["IsExpanded"]
      346 JUMPIFNOT                        R37 ; [+2]
      347 LOADK                            R36 K92 ["rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/expanded.png"]
      348 JUMP                             ; [+1]
      349 LOADK                            R36 K93 ["rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/collapsed.png"]
      350 SETTABLEKS                       R36 R35 K59 ["Image"]
      352 JUMPIFNOT                        R9 ; [+9]
      353 GETTABLEKS                       R36 R12 K15 ["Color"]
      355 GETTABLEKS                       R36 R36 K94 ["Content"]
      357 GETTABLEKS                       R36 R36 K95 ["Emphasis"]
      359 GETTABLEKS                       R36 R36 K71 ["Color3"]
      361 JUMP                             ; [+8]
      362 GETTABLEKS                       R36 R12 K15 ["Color"]
      364 GETTABLEKS                       R36 R36 K94 ["Content"]
      366 GETTABLEKS                       R36 R36 K70 ["Default"]
      368 GETTABLEKS                       R36 R36 K71 ["Color3"]
      370 SETTABLEKS                       R36 R35 K61 ["ImageColor3"]
      372 JUMPIFNOT                        R9 ; [+9]
      373 GETTABLEKS                       R36 R12 K15 ["Color"]
      375 GETTABLEKS                       R36 R36 K94 ["Content"]
      377 GETTABLEKS                       R36 R36 K95 ["Emphasis"]
      379 GETTABLEKS                       R36 R36 K72 ["Transparency"]
      381 JUMP                             ; [+8]
      382 GETTABLEKS                       R36 R12 K15 ["Color"]
      384 GETTABLEKS                       R36 R36 K94 ["Content"]
      386 GETTABLEKS                       R36 R36 K70 ["Default"]
      388 GETTABLEKS                       R36 R36 K72 ["Transparency"]
      390 SETTABLEKS                       R36 R35 K62 ["ImageTransparency"]
      392 CALL                             R33 2 1
      393 JUMP                             ; [+1]
      394 LOADNIL                          R33
      395 SETTABLEKS                       R33 R32 K80 ["Icon"]
      397 CALL                             R29 3 1
      398 SETTABLEKS                       R29 R28 K96 ["ExpandSlot"]
      400 GETUPVAL                         R29 0
      401 GETTABLEKS                       R29 R29 K27 ["createElement"]
      403 GETUPVAL                         R30 6
      404 DUPTABLE                         R31 K99 [{["LayoutOrder"] = 3, ["tag"] = "grow size-0-full"}]
      405 DUPTABLE                         R32 K101 [{"Value"}]
      406 SETTABLEKS                       R27 R32 K100 ["Value"]
      408 CALL                             R29 3 1
      409 SETTABLEKS                       R29 R28 K94 ["Content"]
      411 JUMP                             ; [+2]
      412 SETTABLEKS                       R27 R28 K94 ["Content"]
      414 GETTABLEKS                       R29 R24 K102 ["name"]
      416 GETUPVAL                         R30 0
      417 GETTABLEKS                       R30 R30 K27 ["createElement"]
      419 GETUPVAL                         R31 6
      420 DUPTABLE                         R32 K106 [{"LayoutOrder", "Size", "tag", "onActivated", "onSecondaryActivated", "stateLayer"}]
      421 SETTABLEKS                       R23 R32 K57 ["LayoutOrder"]
      423 GETIMPORT                        R33 K68 [UDim2.new]
      425 LOADN                            R34 0
      426 GETTABLEKS                       R36 R3 K107 ["columnWidths"]
      428 GETTABLE                         R35 R36 R23
      429 LOADN                            R36 1
      430 LOADN                            R37 0
      431 CALL                             R33 4 1
      432 SETTABLEKS                       R33 R32 K58 ["Size"]
      434 NEWTABLE                         R33 2 0
      436 SETTABLEKS                       R25 R33 K108 ["row padding-left-xsmall padding-right-large"]
      438 NOT                              R34 R25
      439 SETTABLEKS                       R34 R33 K109 ["padding-x-large"]
      441 SETTABLEKS                       R33 R32 K45 ["tag"]
      443 SETTABLEKS                       R17 R32 K103 ["onActivated"]
      445 NEWCLOSURE                       R33 P2
      446 CAPTURE                          VAL R24
      447 CAPTURE                          VAL R3
      448 SETTABLEKS                       R33 R32 K104 ["onSecondaryActivated"]
      450 DUPTABLE                         R33 K111 [{"affordance"}]
      451 GETUPVAL                         R34 2
      452 GETTABLEKS                       R34 R34 K112 ["Enums"]
      454 GETTABLEKS                       R34 R34 K113 ["StateLayerAffordance"]
      456 GETTABLEKS                       R34 R34 K114 ["None"]
      458 SETTABLEKS                       R34 R33 K110 ["affordance"]
      460 SETTABLEKS                       R33 R32 K105 ["stateLayer"]
      462 MOVE                             R33 R28
      463 CALL                             R30 3 1
      464 SETTABLE                         R30 R18 R29
      465 FORGLOOP                         R20 2 ; [-373]
      467 GETUPVAL                         R20 0
      468 GETTABLEKS                       R20 R20 K27 ["createElement"]
      470 GETUPVAL                         R21 0
      471 GETTABLEKS                       R21 R21 K115 ["Fragment"]
      473 NEWTABLE                         R22 0 0
      475 DUPTABLE                         R23 K117 [{"Row", "Divider"}]
      476 GETUPVAL                         R24 0
      477 GETTABLEKS                       R24 R24 K27 ["createElement"]
      479 GETUPVAL                         R25 6
      480 DUPTABLE                         R26 K121 [{["Size"], ["Position"], ["LayoutOrder"], ["tag"] = "row", ["backgroundStyle"], ["stateLayer"], ["onStateChanged"], ["onActivated"]}]
      481 GETIMPORT                        R27 K68 [UDim2.new]
      483 LOADN                            R28 1
      484 LOADN                            R29 0
      485 LOADN                            R30 0
      486 MOVE                             R31 R8
      487 CALL                             R27 4 1
      488 SETTABLEKS                       R27 R26 K58 ["Size"]
      490 GETIMPORT                        R27 K90 [UDim2.fromOffset]
      492 LOADN                            R28 0
      493 SUBK                             R30 R7 K56 [1]
      494 MUL                              R29 R30 R8
      495 CALL                             R27 2 1
      496 SETTABLEKS                       R27 R26 K83 ["Position"]
      498 SETTABLEKS                       R7 R26 K57 ["LayoutOrder"]
      500 SETTABLEKS                       R15 R26 K119 ["backgroundStyle"]
      502 DUPTABLE                         R27 K111 [{"affordance"}]
      503 GETUPVAL                         R28 2
      504 GETTABLEKS                       R28 R28 K112 ["Enums"]
      506 GETTABLEKS                       R28 R28 K113 ["StateLayerAffordance"]
      508 GETTABLEKS                       R28 R28 K114 ["None"]
      510 SETTABLEKS                       R28 R27 K110 ["affordance"]
      512 SETTABLEKS                       R27 R26 K105 ["stateLayer"]
      514 NEWCLOSURE                       R27 P3
      515 CAPTURE                          VAL R11
      516 CAPTURE                          UPVAL U2
      517 SETTABLEKS                       R27 R26 K120 ["onStateChanged"]
      519 SETTABLEKS                       R17 R26 K103 ["onActivated"]
      521 MOVE                             R27 R18
      522 CALL                             R24 3 1
      523 SETTABLEKS                       R24 R23 K4 ["Row"]
      525 GETUPVAL                         R24 0
      526 GETTABLEKS                       R24 R24 K27 ["createElement"]
      528 GETUPVAL                         R25 7
      529 DUPTABLE                         R26 K125 [{["Size"], ["Position"], ["ZIndex"] = 2, ["variant"], ["orientation"]}]
      530 GETIMPORT                        R27 K68 [UDim2.new]
      532 LOADN                            R28 1
      533 LOADN                            R29 0
      534 LOADN                            R30 0
      535 GETTABLEKS                       R31 R12 K69 ["Stroke"]
      537 GETTABLEKS                       R31 R31 K126 ["Standard"]
      539 CALL                             R27 4 1
      540 SETTABLEKS                       R27 R26 K58 ["Size"]
      542 GETIMPORT                        R27 K90 [UDim2.fromOffset]
      544 LOADN                            R28 0
      545 MUL                              R30 R7 R8
      546 GETTABLEKS                       R31 R12 K69 ["Stroke"]
      548 GETTABLEKS                       R31 R31 K126 ["Standard"]
      550 SUB                              R29 R30 R31
      551 CALL                             R27 2 1
      552 SETTABLEKS                       R27 R26 K83 ["Position"]
      554 GETUPVAL                         R27 2
      555 GETTABLEKS                       R27 R27 K112 ["Enums"]
      557 GETTABLEKS                       R27 R27 K127 ["DividerVariant"]
      559 GETTABLEKS                       R27 R27 K70 ["Default"]
      561 SETTABLEKS                       R27 R26 K123 ["variant"]
      563 GETUPVAL                         R27 2
      564 GETTABLEKS                       R27 R27 K112 ["Enums"]
      566 GETTABLEKS                       R27 R27 K128 ["Orientation"]
      568 GETTABLEKS                       R27 R27 K129 ["Horizontal"]
      570 SETTABLEKS                       R27 R26 K124 ["orientation"]
      572 CALL                             R24 2 1
      573 SETTABLEKS                       R24 R23 K116 ["Divider"]
      575 CALL                             R20 3 -1
      576 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["Divider"]
       30 GETTABLEKS                       R5 R3 K12 ["View"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Packages"]
       36 GETTABLEKS                       R7 R7 K13 ["StudioFoundation"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R6 K14 ["Contexts"]
       41 GETTABLEKS                       R7 R7 K15 ["Localization"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K8 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Components"]
       49 GETTABLEKS                       R9 R9 K17 ["MeteringBar"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R0 K8 ["Src"]
       56 GETTABLEKS                       R10 R10 K16 ["Components"]
       58 GETTABLEKS                       R10 R10 K18 ["NameDisplay"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R11 R0 K8 ["Src"]
       65 GETTABLEKS                       R11 R11 K16 ["Components"]
       67 GETTABLEKS                       R11 R11 K19 ["TextWithTooltip"]
       69 CALL                             R10 1 1
       70 DUPCLOSURE                       R11 K20 [PROTO_4]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R4
       79 RETURN                           R11 1
