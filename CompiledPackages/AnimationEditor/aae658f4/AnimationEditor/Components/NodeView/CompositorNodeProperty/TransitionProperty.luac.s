PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R1 K2 ["Pressed"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["toggle"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["enabled"]
        4 JUMPIF                           R2 ; [+6]
        5 GETUPVAL                         R2 1
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K3 ["IsDefaultValue"]
       10 JUMPIF                           R2 ; [+2]
       11 LOADN                            R1 0
       12 JUMP                             ; [+7]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K4 ["IsHovered"]
       16 JUMPIFNOT                        R2 ; [+2]
       17 LOADK                            R1 K5 [0.5]
       18 JUMP                             ; [+1]
       19 LOADN                            R1 1
       20 SETTABLEKS                       R1 R0 K0 ["Transparency"]
       22 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeGraphNodeById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["NodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodeRenderInfoById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["NodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K5 ["useToggleState"]
       18 LOADB                            R4 0
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K6 ["useRef"]
       23 LOADNIL                          R5
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K7 ["createNextOrder"]
       28 CALL                             R5 0 1
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K8 ["useCallback"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R3
       35 NEWTABLE                         R8 0 1
       37 GETTABLEKS                       R9 R3 K9 ["toggle"]
       39 SETLIST                          R8 R9 1 [1]
       41 CALL                             R6 2 1
       42 GETTABLEKS                       R8 R0 K10 ["AllowReset"]
       44 JUMPIFNOTEQKB                    R8 FALSE ; [+2]
       46 LOADB                            R7 0 +1
       47 LOADB                            R7 1
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K11 ["useMemo"]
       51 NEWCLOSURE                       R9 P1
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R0
       55 NEWTABLE                         R10 0 4
       57 GETTABLEKS                       R11 R3 K12 ["enabled"]
       59 MOVE                             R12 R7
       60 GETTABLEKS                       R13 R0 K13 ["IsDefaultValue"]
       62 GETTABLEKS                       R14 R0 K14 ["IsHovered"]
       64 SETLIST                          R10 R11 4 [1]
       66 CALL                             R8 2 1
       67 GETUPVAL                         R9 5
       68 GETTABLEKS                       R9 R9 K15 ["useSignalState"]
       70 GETUPVAL                         R10 1
       71 GETTABLEKS                       R10 R10 K11 ["useMemo"]
       73 NEWCLOSURE                       R11 P2
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R0
       76 NEWTABLE                         R12 0 2
       78 GETTABLEKS                       R13 R2 K16 ["observeGraphNodeById"]
       80 GETTABLEKS                       R14 R0 K17 ["NodeId"]
       82 SETLIST                          R12 R13 2 [1]
       84 CALL                             R10 2 -1
       85 CALL                             R9 -1 1
       86 GETUPVAL                         R10 5
       87 GETTABLEKS                       R10 R10 K15 ["useSignalState"]
       89 GETUPVAL                         R11 1
       90 GETTABLEKS                       R11 R11 K11 ["useMemo"]
       92 NEWCLOSURE                       R12 P3
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R0
       95 NEWTABLE                         R13 0 2
       97 GETTABLEKS                       R14 R2 K18 ["observeNodeRenderInfoById"]
       99 GETTABLEKS                       R15 R0 K17 ["NodeId"]
      101 SETLIST                          R13 R14 2 [1]
      103 CALL                             R11 2 -1
      104 CALL                             R10 -1 1
      105 GETTABLEKS                       R12 R0 K19 ["Weight"]
      107 JUMPIFNOTEQKNIL                  R12 ; [+3]
      109 LOADN                            R11 0
      110 JUMP                             ; [+7]
      111 GETTABLEKS                       R13 R0 K19 ["Weight"]
      113 MULK                             R12 R13 K20 [100]
      114 FASTCALL1                        MATH_ROUND R12 ; [+2]
      115 GETIMPORT                        R11 K23 [math.round]
      117 CALL                             R11 1 1
      118 GETTABLEKS                       R12 R0 K24 ["OnDelete"]
      120 JUMPIFNOT                        R12 ; [+2]
      121 GETTABLEKS                       R12 R0 K14 ["IsHovered"]
      123 GETUPVAL                         R13 6
      124 GETTABLEKS                       R13 R13 K25 ["translateLabel"]
      126 MOVE                             R14 R1
      127 GETTABLEKS                       R15 R0 K26 ["Label"]
      129 CALL                             R13 2 1
      130 GETTABLEKS                       R16 R0 K26 ["Label"]
      132 FASTCALL1                        TYPE R16 ; [+2]
      133 GETIMPORT                        R15 K28 [type]
      135 CALL                             R15 1 1
      136 JUMPIFNOTEQKS                    R15 K29 ["string"] ; [+2]
      138 LOADB                            R14 0 +1
      139 LOADB                            R14 1
      140 GETUPVAL                         R15 1
      141 GETTABLEKS                       R15 R15 K30 ["createElement"]
      143 GETUPVAL                         R16 4
      144 GETTABLEKS                       R16 R16 K31 ["View"]
      146 DUPTABLE                         R17 K35 [{"tag", "LayoutOrder", "testId"}]
      147 GETUPVAL                         R18 4
      148 GETTABLEKS                       R18 R18 K36 ["Hooks"]
      150 GETTABLEKS                       R18 R18 K37 ["useDefaultTags"]
      152 GETTABLEKS                       R19 R0 K38 ["tags"]
      154 LOADK                            R20 K39 ["row auto-y gap-small size-full-700 align-y-center"]
      155 CALL                             R18 2 1
      156 SETTABLEKS                       R18 R17 K32 ["tag"]
      158 GETTABLEKS                       R18 R0 K33 ["LayoutOrder"]
      160 SETTABLEKS                       R18 R17 K33 ["LayoutOrder"]
      162 GETTABLEKS                       R18 R0 K34 ["testId"]
      164 SETTABLEKS                       R18 R17 K34 ["testId"]
      166 DUPTABLE                         R18 K47 [{"InputLabel", "DuplicateWarning", "InputDelete", "InputDeleteSpacer", "InputWeight", "TransitionButton", "Popover"}]
      167 GETUPVAL                         R19 1
      168 GETTABLEKS                       R19 R19 K30 ["createElement"]
      170 GETUPVAL                         R21 7
      171 CALL                             R21 0 1
      172 JUMPIFNOT                        R21 ; [+2]
      173 GETUPVAL                         R20 8
      174 JUMP                             ; [+3]
      175 GETUPVAL                         R20 4
      176 GETTABLEKS                       R20 R20 K48 ["Text"]
      178 DUPTABLE                         R21 K51 [{"tag", "Text", "TextTruncate", "LayoutOrder", "OnDelete", "IsHovered", "isDisabled"}]
      179 GETUPVAL                         R23 9
      180 CALL                             R23 0 1
      181 JUMPIFNOT                        R23 ; [+12]
      182 NEWTABLE                         R22 2 0
      184 LOADB                            R23 1
      185 SETTABLEKS                       R23 R22 K52 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      187 GETTABLEKS                       R23 R0 K53 ["HideWeight"]
      189 JUMPIFNOT                        R23 ; [+1]
      190 NOT                              R23 R12
      191 SETTABLEKS                       R23 R22 K54 ["fill"]
      193 JUMP                             ; [+1]
      194 LOADK                            R22 K55 ["fill auto-x text-body-small text-align-x-left content-emphasis"]
      195 SETTABLEKS                       R22 R21 K32 ["tag"]
      197 GETUPVAL                         R23 7
      198 CALL                             R23 0 1
      199 JUMPIFNOT                        R23 ; [+2]
      200 MOVE                             R22 R13
      201 JUMP                             ; [+2]
      202 GETTABLEKS                       R22 R0 K26 ["Label"]
      204 SETTABLEKS                       R22 R21 K48 ["Text"]
      206 GETIMPORT                        R22 K58 [Enum.TextTruncate.SplitWord]
      208 SETTABLEKS                       R22 R21 K49 ["TextTruncate"]
      210 MOVE                             R22 R5
      211 CALL                             R22 0 1
      212 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      214 GETUPVAL                         R23 7
      215 CALL                             R23 0 1
      216 JUMPIF                           R23 ; [+6]
      217 GETUPVAL                         R23 9
      218 CALL                             R23 0 1
      219 JUMPIFNOT                        R23 ; [+3]
      220 GETTABLEKS                       R22 R0 K24 ["OnDelete"]
      222 JUMP                             ; [+1]
      223 LOADNIL                          R22
      224 SETTABLEKS                       R22 R21 K24 ["OnDelete"]
      226 GETUPVAL                         R23 7
      227 CALL                             R23 0 1
      228 JUMPIF                           R23 ; [+6]
      229 GETUPVAL                         R23 9
      230 CALL                             R23 0 1
      231 JUMPIFNOT                        R23 ; [+3]
      232 GETTABLEKS                       R22 R0 K14 ["IsHovered"]
      234 JUMP                             ; [+1]
      235 LOADNIL                          R22
      236 SETTABLEKS                       R22 R21 K14 ["IsHovered"]
      238 GETUPVAL                         R23 7
      239 CALL                             R23 0 1
      240 JUMPIFNOT                        R23 ; [+2]
      241 MOVE                             R22 R14
      242 JUMP                             ; [+1]
      243 LOADNIL                          R22
      244 SETTABLEKS                       R22 R21 K50 ["isDisabled"]
      246 CALL                             R19 2 1
      247 SETTABLEKS                       R19 R18 K40 ["InputLabel"]
      249 GETUPVAL                         R20 7
      250 CALL                             R20 0 1
      251 JUMPIFNOT                        R20 ; [+87]
      252 GETUPVAL                         R20 10
      253 CALL                             R20 0 1
      254 JUMPIFNOT                        R20 ; [+1]
      255 JUMPIF                           R12 ; [+83]
      256 GETTABLEKS                       R20 R0 K59 ["HasDuplicateName"]
      258 JUMPIFNOT                        R20 ; [+80]
      259 GETUPVAL                         R19 1
      260 GETTABLEKS                       R19 R19 K30 ["createElement"]
      262 GETUPVAL                         R20 4
      263 GETTABLEKS                       R20 R20 K60 ["Tooltip"]
      265 DUPTABLE                         R21 K64 [{"title", "side", "align", "LayoutOrder"}]
      266 LOADK                            R24 K65 ["Common"]
      267 LOADK                            R25 K66 ["AnimationEditor"]
      268 LOADK                            R26 K67 ["InputPanel"]
      269 LOADK                            R27 K68 ["DuplicateName"]
      270 DUPTABLE                         R28 K70 [{"name"}]
      271 SETTABLEKS                       R13 R28 K69 ["name"]
      273 NAMECALL                         R22 R1 K71 ["getExternalText"]
      275 CALL                             R22 6 1
      276 SETTABLEKS                       R22 R21 K61 ["title"]
      278 GETUPVAL                         R22 4
      279 GETTABLEKS                       R22 R22 K72 ["Enums"]
      281 GETTABLEKS                       R22 R22 K73 ["PopoverSide"]
      283 GETTABLEKS                       R22 R22 K74 ["Bottom"]
      285 SETTABLEKS                       R22 R21 K62 ["side"]
      287 GETUPVAL                         R22 4
      288 GETTABLEKS                       R22 R22 K72 ["Enums"]
      290 GETTABLEKS                       R22 R22 K75 ["PopoverAlign"]
      292 GETTABLEKS                       R22 R22 K76 ["Start"]
      294 SETTABLEKS                       R22 R21 K63 ["align"]
      296 MOVE                             R22 R5
      297 CALL                             R22 0 1
      298 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      300 GETUPVAL                         R22 1
      301 GETTABLEKS                       R22 R22 K30 ["createElement"]
      303 GETUPVAL                         R23 4
      304 GETTABLEKS                       R23 R23 K31 ["View"]
      306 DUPTABLE                         R24 K79 [{["tag"] = "auto-xy", ["testId"] = "input-duplicate-warning"}]
      307 DUPTABLE                         R25 K81 [{"Icon"}]
      308 GETUPVAL                         R26 1
      309 GETTABLEKS                       R26 R26 K30 ["createElement"]
      311 GETUPVAL                         R27 4
      312 GETTABLEKS                       R27 R27 K80 ["Icon"]
      314 DUPTABLE                         R28 K85 [{["name"] = "triangle-exclamation", ["size"], ["variant"]}]
      315 GETUPVAL                         R29 4
      316 GETTABLEKS                       R29 R29 K72 ["Enums"]
      318 GETTABLEKS                       R29 R29 K86 ["IconSize"]
      320 GETTABLEKS                       R29 R29 K87 ["XSmall"]
      322 SETTABLEKS                       R29 R28 K83 ["size"]
      324 GETUPVAL                         R29 4
      325 GETTABLEKS                       R29 R29 K72 ["Enums"]
      327 GETTABLEKS                       R29 R29 K88 ["IconVariant"]
      329 GETTABLEKS                       R29 R29 K89 ["Regular"]
      331 SETTABLEKS                       R29 R28 K84 ["variant"]
      333 CALL                             R26 2 1
      334 SETTABLEKS                       R26 R25 K80 ["Icon"]
      336 CALL                             R22 3 -1
      337 CALL                             R19 -1 1
      338 JUMP                             ; [+1]
      339 LOADNIL                          R19
      340 SETTABLEKS                       R19 R18 K41 ["DuplicateWarning"]
      342 GETUPVAL                         R20 9
      343 CALL                             R20 0 1
      344 JUMPIFNOT                        R20 ; [+16]
      345 JUMPIFNOT                        R12 ; [+15]
      346 GETUPVAL                         R19 1
      347 GETTABLEKS                       R19 R19 K30 ["createElement"]
      349 GETUPVAL                         R20 11
      350 DUPTABLE                         R21 K90 [{"LayoutOrder", "OnDelete"}]
      351 MOVE                             R22 R5
      352 CALL                             R22 0 1
      353 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      355 GETTABLEKS                       R22 R0 K24 ["OnDelete"]
      357 SETTABLEKS                       R22 R21 K24 ["OnDelete"]
      359 CALL                             R19 2 1
      360 JUMP                             ; [+1]
      361 LOADNIL                          R19
      362 SETTABLEKS                       R19 R18 K42 ["InputDelete"]
      364 GETUPVAL                         R20 12
      365 CALL                             R20 0 1
      366 JUMPIFNOT                        R20 ; [+17]
      367 GETUPVAL                         R20 9
      368 CALL                             R20 0 1
      369 JUMPIFNOT                        R20 ; [+14]
      370 JUMPIFNOT                        R12 ; [+13]
      371 GETUPVAL                         R19 1
      372 GETTABLEKS                       R19 R19 K30 ["createElement"]
      374 GETUPVAL                         R20 4
      375 GETTABLEKS                       R20 R20 K31 ["View"]
      377 DUPTABLE                         R21 K92 [{["tag"] = "fill auto-y", ["LayoutOrder"]}]
      378 MOVE                             R22 R5
      379 CALL                             R22 0 1
      380 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      382 CALL                             R19 2 1
      383 JUMP                             ; [+1]
      384 LOADNIL                          R19
      385 SETTABLEKS                       R19 R18 K43 ["InputDeleteSpacer"]
      387 GETTABLEKS                       R20 R0 K53 ["HideWeight"]
      389 JUMPIF                           R20 ; [+46]
      390 GETUPVAL                         R20 9
      391 CALL                             R20 0 1
      392 JUMPIFNOT                        R20 ; [+1]
      393 JUMPIF                           R12 ; [+42]
      394 GETUPVAL                         R19 1
      395 GETTABLEKS                       R19 R19 K30 ["createElement"]
      397 GETUPVAL                         R20 4
      398 GETTABLEKS                       R20 R20 K48 ["Text"]
      400 DUPTABLE                         R21 K94 [{"tag", "Size", "Text", "LayoutOrder"}]
      401 NEWTABLE                         R22 2 0
      403 LOADB                            R23 1
      404 SETTABLEKS                       R23 R22 K95 ["auto-y text-body-small text-align-x-left content-muted"]
      406 GETUPVAL                         R24 9
      407 CALL                             R24 0 1
      408 NOT                              R23 R24
      409 JUMPIF                           R23 ; [+1]
      410 NOT                              R23 R12
      411 SETTABLEKS                       R23 R22 K54 ["fill"]
      413 SETTABLEKS                       R22 R21 K32 ["tag"]
      415 GETIMPORT                        R22 K98 [UDim2.fromOffset]
      417 LOADN                            R23 30
      418 LOADN                            R24 0
      419 CALL                             R22 2 1
      420 SETTABLEKS                       R22 R21 K93 ["Size"]
      422 LOADK                            R23 K99 ["%*%%"]
      423 MOVE                             R25 R11
      424 NAMECALL                         R23 R23 K100 ["format"]
      426 CALL                             R23 2 1
      427 MOVE                             R22 R23
      428 SETTABLEKS                       R22 R21 K48 ["Text"]
      430 MOVE                             R22 R5
      431 CALL                             R22 0 1
      432 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      434 CALL                             R19 2 1
      435 JUMP                             ; [+1]
      436 LOADNIL                          R19
      437 SETTABLEKS                       R19 R18 K44 ["InputWeight"]
      439 GETUPVAL                         R19 1
      440 GETTABLEKS                       R19 R19 K30 ["createElement"]
      442 GETUPVAL                         R20 4
      443 GETTABLEKS                       R20 R20 K31 ["View"]
      445 DUPTABLE                         R21 K105 [{["tag"] = "auto-xy", ["LayoutOrder"], ["onStateChanged"], ["stateLayer"], ["ref"], ["testId"] = "transition-property-toggle"}]
      446 MOVE                             R22 R5
      447 CALL                             R22 0 1
      448 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      450 SETTABLEKS                       R6 R21 K101 ["onStateChanged"]
      452 DUPTABLE                         R22 K107 [{"affordance"}]
      453 GETUPVAL                         R23 4
      454 GETTABLEKS                       R23 R23 K72 ["Enums"]
      456 GETTABLEKS                       R23 R23 K108 ["StateLayerAffordance"]
      458 GETTABLEKS                       R23 R23 K109 ["None"]
      460 SETTABLEKS                       R23 R22 K106 ["affordance"]
      462 SETTABLEKS                       R22 R21 K102 ["stateLayer"]
      464 SETTABLEKS                       R4 R21 K103 ["ref"]
      466 DUPTABLE                         R22 K81 [{"Icon"}]
      467 GETUPVAL                         R23 1
      468 GETTABLEKS                       R23 R23 K30 ["createElement"]
      470 GETUPVAL                         R24 4
      471 GETTABLEKS                       R24 R24 K80 ["Icon"]
      473 DUPTABLE                         R25 K112 [{["name"] = "arrow-small-right", ["size"], ["variant"], ["style"]}]
      474 GETUPVAL                         R26 4
      475 GETTABLEKS                       R26 R26 K72 ["Enums"]
      477 GETTABLEKS                       R26 R26 K86 ["IconSize"]
      479 GETTABLEKS                       R26 R26 K87 ["XSmall"]
      481 SETTABLEKS                       R26 R25 K83 ["size"]
      483 GETUPVAL                         R26 4
      484 GETTABLEKS                       R26 R26 K72 ["Enums"]
      486 GETTABLEKS                       R26 R26 K88 ["IconVariant"]
      488 GETTABLEKS                       R26 R26 K89 ["Regular"]
      490 SETTABLEKS                       R26 R25 K84 ["variant"]
      492 SETTABLEKS                       R8 R25 K111 ["style"]
      494 CALL                             R23 2 1
      495 SETTABLEKS                       R23 R22 K80 ["Icon"]
      497 CALL                             R19 3 1
      498 SETTABLEKS                       R19 R18 K45 ["TransitionButton"]
      500 GETUPVAL                         R19 1
      501 GETTABLEKS                       R19 R19 K30 ["createElement"]
      503 GETUPVAL                         R20 4
      504 GETTABLEKS                       R20 R20 K46 ["Popover"]
      506 GETTABLEKS                       R20 R20 K113 ["Root"]
      508 DUPTABLE                         R21 K115 [{"isOpen"}]
      509 GETTABLEKS                       R22 R3 K12 ["enabled"]
      511 SETTABLEKS                       R22 R21 K114 ["isOpen"]
      513 DUPTABLE                         R22 K118 [{"Anchor", "Content"}]
      514 GETUPVAL                         R23 1
      515 GETTABLEKS                       R23 R23 K30 ["createElement"]
      517 GETUPVAL                         R24 4
      518 GETTABLEKS                       R24 R24 K46 ["Popover"]
      520 GETTABLEKS                       R24 R24 K116 ["Anchor"]
      522 DUPTABLE                         R25 K120 [{"anchorRef"}]
      523 SETTABLEKS                       R4 R25 K119 ["anchorRef"]
      525 CALL                             R23 2 1
      526 SETTABLEKS                       R23 R22 K116 ["Anchor"]
      528 GETUPVAL                         R23 1
      529 GETTABLEKS                       R23 R23 K30 ["createElement"]
      531 GETUPVAL                         R24 4
      532 GETTABLEKS                       R24 R24 K46 ["Popover"]
      534 GETTABLEKS                       R24 R24 K117 ["Content"]
      536 DUPTABLE                         R25 K122 [{"align", "side", "onPressedOutside"}]
      537 GETUPVAL                         R26 4
      538 GETTABLEKS                       R26 R26 K72 ["Enums"]
      540 GETTABLEKS                       R26 R26 K75 ["PopoverAlign"]
      542 GETTABLEKS                       R26 R26 K76 ["Start"]
      544 SETTABLEKS                       R26 R25 K63 ["align"]
      546 GETUPVAL                         R26 4
      547 GETTABLEKS                       R26 R26 K72 ["Enums"]
      549 GETTABLEKS                       R26 R26 K73 ["PopoverSide"]
      551 GETTABLEKS                       R26 R26 K123 ["Right"]
      553 SETTABLEKS                       R26 R25 K62 ["side"]
      555 GETTABLEKS                       R26 R3 K124 ["disable"]
      557 SETTABLEKS                       R26 R25 K121 ["onPressedOutside"]
      559 JUMPIFNOT                        R9 ; [+63]
      560 GETUPVAL                         R26 1
      561 GETTABLEKS                       R26 R26 K30 ["createElement"]
      563 GETUPVAL                         R27 13
      564 DUPTABLE                         R28 K139 [{["AllowReset"], ["Name"], ["Expanded"] = True, ["IsDefaultValue"], ["TransitionBuilder"], ["Transition"], ["OnChanged"], ["OnClosed"], ["GraphPayload"], ["PropertyLookup"], ["Position"], ["Size"], ["StateLookup"], ["text"] = "", ["editName"] = ""}]
      565 SETTABLEKS                       R7 R28 K10 ["AllowReset"]
      567 GETTABLEKS                       R30 R0 K26 ["Label"]
      569 ORK                              R29 R30 K137 [""]
      570 SETTABLEKS                       R29 R28 K125 ["Name"]
      572 GETTABLEKS                       R29 R0 K13 ["IsDefaultValue"]
      574 SETTABLEKS                       R29 R28 K13 ["IsDefaultValue"]
      576 GETTABLEKS                       R29 R0 K128 ["TransitionBuilder"]
      578 SETTABLEKS                       R29 R28 K128 ["TransitionBuilder"]
      580 GETTABLEKS                       R29 R0 K140 ["Value"]
      582 JUMPIF                           R29 ; [+2]
      583 GETTABLEKS                       R29 R0 K141 ["DefaultValue"]
      585 SETTABLEKS                       R29 R28 K129 ["Transition"]
      587 GETTABLEKS                       R29 R0 K130 ["OnChanged"]
      589 SETTABLEKS                       R29 R28 K130 ["OnChanged"]
      591 GETTABLEKS                       R29 R3 K124 ["disable"]
      593 SETTABLEKS                       R29 R28 K131 ["OnClosed"]
      595 SETTABLEKS                       R9 R28 K132 ["GraphPayload"]
      597 NEWTABLE                         R29 0 0
      599 SETTABLEKS                       R29 R28 K133 ["PropertyLookup"]
      601 JUMPIFNOT                        R10 ; [+3]
      602 GETTABLEKS                       R29 R10 K142 ["position"]
      604 JUMP                             ; [+2]
      605 GETIMPORT                        R29 K145 [Vector2.zero]
      607 SETTABLEKS                       R29 R28 K134 ["Position"]
      609 JUMPIFNOT                        R10 ; [+3]
      610 GETTABLEKS                       R29 R10 K83 ["size"]
      612 JUMP                             ; [+2]
      613 GETIMPORT                        R29 K145 [Vector2.zero]
      615 SETTABLEKS                       R29 R28 K93 ["Size"]
      617 NEWTABLE                         R29 0 0
      619 SETTABLEKS                       R29 R28 K135 ["StateLookup"]
      621 CALL                             R26 2 1
      622 JUMP                             ; [+1]
      623 LOADNIL                          R26
      624 CALL                             R23 3 1
      625 SETTABLEKS                       R23 R22 K117 ["Content"]
      627 CALL                             R19 3 1
      628 SETTABLEKS                       R19 R18 K46 ["Popover"]
      630 CALL                             R15 3 -1
      631 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeInput"]
       15 GETTABLEKS                       R2 R2 K9 ["DeleteInputButton"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K14 ["NativeGraphContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["NodeGraphing"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K16 ["Util"]
       50 GETTABLEKS                       R7 R7 K17 ["Nodes"]
       52 GETTABLEKS                       R7 R7 K18 ["NodeNameFormattingUtils"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Components"]
       59 GETTABLEKS                       R8 R8 K7 ["NodeView"]
       61 GETTABLEKS                       R8 R8 K19 ["CompositorNodeProperty"]
       63 GETTABLEKS                       R8 R8 K20 ["PropertyLabel"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K10 ["Parent"]
       70 GETTABLEKS                       R9 R9 K21 ["React"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K10 ["Parent"]
       77 GETTABLEKS                       R10 R10 K22 ["ReactUtils"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K10 ["Parent"]
       84 GETTABLEKS                       R11 R11 K23 ["SignalsReact"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K6 ["Components"]
       91 GETTABLEKS                       R12 R12 K7 ["NodeView"]
       93 GETTABLEKS                       R12 R12 K24 ["CompositorNodeTransition"]
       95 GETTABLEKS                       R12 R12 K25 ["TransitionPanel"]
       97 CALL                             R11 1 1
       98 GETTABLEKS                       R12 R5 K26 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
      100 GETIMPORT                        R13 K5 [require]
      102 GETTABLEKS                       R14 R0 K27 ["Flags"]
      104 GETTABLEKS                       R14 R14 K28 ["getFFlagAnimGraphUIDeleteIconArea"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K5 [require]
      109 GETTABLEKS                       R15 R0 K27 ["Flags"]
      111 GETTABLEKS                       R15 R15 K29 ["getFFlagAnimGraphUIDeleteInputButtonChanges"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K5 [require]
      116 GETTABLEKS                       R16 R0 K27 ["Flags"]
      118 GETTABLEKS                       R16 R16 K30 ["getFFlagAnimGraphUIDuplicateNodeNames"]
      120 CALL                             R15 1 1
      121 DUPCLOSURE                       R16 K31 [PROTO_4]
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R11
      136 RETURN                           R16 1
