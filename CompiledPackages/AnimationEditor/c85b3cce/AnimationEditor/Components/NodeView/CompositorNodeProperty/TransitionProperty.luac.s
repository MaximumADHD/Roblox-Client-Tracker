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
      166 DUPTABLE                         R18 K46 [{"InputLabel", "DuplicateWarning", "InputDelete", "InputWeight", "TransitionButton", "Popover"}]
      167 GETUPVAL                         R19 1
      168 GETTABLEKS                       R19 R19 K30 ["createElement"]
      170 GETUPVAL                         R21 7
      171 CALL                             R21 0 1
      172 JUMPIFNOT                        R21 ; [+2]
      173 GETUPVAL                         R20 8
      174 JUMP                             ; [+3]
      175 GETUPVAL                         R20 4
      176 GETTABLEKS                       R20 R20 K47 ["Text"]
      178 DUPTABLE                         R21 K50 [{"tag", "Text", "TextTruncate", "LayoutOrder", "OnDelete", "IsHovered", "isDisabled"}]
      179 GETUPVAL                         R23 9
      180 CALL                             R23 0 1
      181 JUMPIFNOT                        R23 ; [+12]
      182 NEWTABLE                         R22 2 0
      184 LOADB                            R23 1
      185 SETTABLEKS                       R23 R22 K51 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      187 GETTABLEKS                       R23 R0 K52 ["HideWeight"]
      189 JUMPIFNOT                        R23 ; [+1]
      190 NOT                              R23 R12
      191 SETTABLEKS                       R23 R22 K53 ["fill"]
      193 JUMP                             ; [+1]
      194 LOADK                            R22 K54 ["fill auto-x text-body-small text-align-x-left content-emphasis"]
      195 SETTABLEKS                       R22 R21 K32 ["tag"]
      197 GETUPVAL                         R23 7
      198 CALL                             R23 0 1
      199 JUMPIFNOT                        R23 ; [+2]
      200 MOVE                             R22 R13
      201 JUMP                             ; [+2]
      202 GETTABLEKS                       R22 R0 K26 ["Label"]
      204 SETTABLEKS                       R22 R21 K47 ["Text"]
      206 GETIMPORT                        R22 K57 [Enum.TextTruncate.SplitWord]
      208 SETTABLEKS                       R22 R21 K48 ["TextTruncate"]
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
      244 SETTABLEKS                       R22 R21 K49 ["isDisabled"]
      246 CALL                             R19 2 1
      247 SETTABLEKS                       R19 R18 K40 ["InputLabel"]
      249 GETUPVAL                         R20 7
      250 CALL                             R20 0 1
      251 JUMPIFNOT                        R20 ; [+83]
      252 GETTABLEKS                       R20 R0 K58 ["HasDuplicateName"]
      254 JUMPIFNOT                        R20 ; [+80]
      255 GETUPVAL                         R19 1
      256 GETTABLEKS                       R19 R19 K30 ["createElement"]
      258 GETUPVAL                         R20 4
      259 GETTABLEKS                       R20 R20 K59 ["Tooltip"]
      261 DUPTABLE                         R21 K63 [{"title", "side", "align", "LayoutOrder"}]
      262 LOADK                            R24 K64 ["Common"]
      263 LOADK                            R25 K65 ["AnimationEditor"]
      264 LOADK                            R26 K66 ["InputPanel"]
      265 LOADK                            R27 K67 ["DuplicateName"]
      266 DUPTABLE                         R28 K69 [{"name"}]
      267 SETTABLEKS                       R13 R28 K68 ["name"]
      269 NAMECALL                         R22 R1 K70 ["getExternalText"]
      271 CALL                             R22 6 1
      272 SETTABLEKS                       R22 R21 K60 ["title"]
      274 GETUPVAL                         R22 4
      275 GETTABLEKS                       R22 R22 K71 ["Enums"]
      277 GETTABLEKS                       R22 R22 K72 ["PopoverSide"]
      279 GETTABLEKS                       R22 R22 K73 ["Bottom"]
      281 SETTABLEKS                       R22 R21 K61 ["side"]
      283 GETUPVAL                         R22 4
      284 GETTABLEKS                       R22 R22 K71 ["Enums"]
      286 GETTABLEKS                       R22 R22 K74 ["PopoverAlign"]
      288 GETTABLEKS                       R22 R22 K75 ["Start"]
      290 SETTABLEKS                       R22 R21 K62 ["align"]
      292 MOVE                             R22 R5
      293 CALL                             R22 0 1
      294 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      296 GETUPVAL                         R22 1
      297 GETTABLEKS                       R22 R22 K30 ["createElement"]
      299 GETUPVAL                         R23 4
      300 GETTABLEKS                       R23 R23 K31 ["View"]
      302 DUPTABLE                         R24 K78 [{["tag"] = "auto-xy", ["testId"] = "input-duplicate-warning"}]
      303 DUPTABLE                         R25 K80 [{"Icon"}]
      304 GETUPVAL                         R26 1
      305 GETTABLEKS                       R26 R26 K30 ["createElement"]
      307 GETUPVAL                         R27 4
      308 GETTABLEKS                       R27 R27 K79 ["Icon"]
      310 DUPTABLE                         R28 K84 [{["name"] = "triangle-exclamation", ["size"], ["variant"]}]
      311 GETUPVAL                         R29 4
      312 GETTABLEKS                       R29 R29 K71 ["Enums"]
      314 GETTABLEKS                       R29 R29 K85 ["IconSize"]
      316 GETTABLEKS                       R29 R29 K86 ["XSmall"]
      318 SETTABLEKS                       R29 R28 K82 ["size"]
      320 GETUPVAL                         R29 4
      321 GETTABLEKS                       R29 R29 K71 ["Enums"]
      323 GETTABLEKS                       R29 R29 K87 ["IconVariant"]
      325 GETTABLEKS                       R29 R29 K88 ["Regular"]
      327 SETTABLEKS                       R29 R28 K83 ["variant"]
      329 CALL                             R26 2 1
      330 SETTABLEKS                       R26 R25 K79 ["Icon"]
      332 CALL                             R22 3 -1
      333 CALL                             R19 -1 1
      334 JUMP                             ; [+1]
      335 LOADNIL                          R19
      336 SETTABLEKS                       R19 R18 K41 ["DuplicateWarning"]
      338 GETUPVAL                         R20 9
      339 CALL                             R20 0 1
      340 JUMPIFNOT                        R20 ; [+16]
      341 JUMPIFNOT                        R12 ; [+15]
      342 GETUPVAL                         R19 1
      343 GETTABLEKS                       R19 R19 K30 ["createElement"]
      345 GETUPVAL                         R20 10
      346 DUPTABLE                         R21 K89 [{"LayoutOrder", "OnDelete"}]
      347 MOVE                             R22 R5
      348 CALL                             R22 0 1
      349 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      351 GETTABLEKS                       R22 R0 K24 ["OnDelete"]
      353 SETTABLEKS                       R22 R21 K24 ["OnDelete"]
      355 CALL                             R19 2 1
      356 JUMP                             ; [+1]
      357 LOADNIL                          R19
      358 SETTABLEKS                       R19 R18 K42 ["InputDelete"]
      360 GETTABLEKS                       R20 R0 K52 ["HideWeight"]
      362 JUMPIF                           R20 ; [+46]
      363 GETUPVAL                         R20 9
      364 CALL                             R20 0 1
      365 JUMPIFNOT                        R20 ; [+1]
      366 JUMPIF                           R12 ; [+42]
      367 GETUPVAL                         R19 1
      368 GETTABLEKS                       R19 R19 K30 ["createElement"]
      370 GETUPVAL                         R20 4
      371 GETTABLEKS                       R20 R20 K47 ["Text"]
      373 DUPTABLE                         R21 K91 [{"tag", "Size", "Text", "LayoutOrder"}]
      374 NEWTABLE                         R22 2 0
      376 LOADB                            R23 1
      377 SETTABLEKS                       R23 R22 K92 ["auto-y text-body-small text-align-x-left content-muted"]
      379 GETUPVAL                         R24 9
      380 CALL                             R24 0 1
      381 NOT                              R23 R24
      382 JUMPIF                           R23 ; [+1]
      383 NOT                              R23 R12
      384 SETTABLEKS                       R23 R22 K53 ["fill"]
      386 SETTABLEKS                       R22 R21 K32 ["tag"]
      388 GETIMPORT                        R22 K95 [UDim2.fromOffset]
      390 LOADN                            R23 30
      391 LOADN                            R24 0
      392 CALL                             R22 2 1
      393 SETTABLEKS                       R22 R21 K90 ["Size"]
      395 LOADK                            R23 K96 ["%*%%"]
      396 MOVE                             R25 R11
      397 NAMECALL                         R23 R23 K97 ["format"]
      399 CALL                             R23 2 1
      400 MOVE                             R22 R23
      401 SETTABLEKS                       R22 R21 K47 ["Text"]
      403 MOVE                             R22 R5
      404 CALL                             R22 0 1
      405 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      407 CALL                             R19 2 1
      408 JUMP                             ; [+1]
      409 LOADNIL                          R19
      410 SETTABLEKS                       R19 R18 K43 ["InputWeight"]
      412 GETUPVAL                         R19 1
      413 GETTABLEKS                       R19 R19 K30 ["createElement"]
      415 GETUPVAL                         R20 4
      416 GETTABLEKS                       R20 R20 K31 ["View"]
      418 DUPTABLE                         R21 K102 [{["tag"] = "auto-xy", ["LayoutOrder"], ["onStateChanged"], ["stateLayer"], ["ref"], ["testId"] = "transition-property-toggle"}]
      419 MOVE                             R22 R5
      420 CALL                             R22 0 1
      421 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      423 SETTABLEKS                       R6 R21 K98 ["onStateChanged"]
      425 DUPTABLE                         R22 K104 [{"affordance"}]
      426 GETUPVAL                         R23 4
      427 GETTABLEKS                       R23 R23 K71 ["Enums"]
      429 GETTABLEKS                       R23 R23 K105 ["StateLayerAffordance"]
      431 GETTABLEKS                       R23 R23 K106 ["None"]
      433 SETTABLEKS                       R23 R22 K103 ["affordance"]
      435 SETTABLEKS                       R22 R21 K99 ["stateLayer"]
      437 SETTABLEKS                       R4 R21 K100 ["ref"]
      439 DUPTABLE                         R22 K80 [{"Icon"}]
      440 GETUPVAL                         R23 1
      441 GETTABLEKS                       R23 R23 K30 ["createElement"]
      443 GETUPVAL                         R24 4
      444 GETTABLEKS                       R24 R24 K79 ["Icon"]
      446 DUPTABLE                         R25 K109 [{["name"] = "arrow-small-right", ["size"], ["variant"], ["style"]}]
      447 GETUPVAL                         R26 4
      448 GETTABLEKS                       R26 R26 K71 ["Enums"]
      450 GETTABLEKS                       R26 R26 K85 ["IconSize"]
      452 GETTABLEKS                       R26 R26 K86 ["XSmall"]
      454 SETTABLEKS                       R26 R25 K82 ["size"]
      456 GETUPVAL                         R26 4
      457 GETTABLEKS                       R26 R26 K71 ["Enums"]
      459 GETTABLEKS                       R26 R26 K87 ["IconVariant"]
      461 GETTABLEKS                       R26 R26 K88 ["Regular"]
      463 SETTABLEKS                       R26 R25 K83 ["variant"]
      465 SETTABLEKS                       R8 R25 K108 ["style"]
      467 CALL                             R23 2 1
      468 SETTABLEKS                       R23 R22 K79 ["Icon"]
      470 CALL                             R19 3 1
      471 SETTABLEKS                       R19 R18 K44 ["TransitionButton"]
      473 GETUPVAL                         R19 1
      474 GETTABLEKS                       R19 R19 K30 ["createElement"]
      476 GETUPVAL                         R20 4
      477 GETTABLEKS                       R20 R20 K45 ["Popover"]
      479 GETTABLEKS                       R20 R20 K110 ["Root"]
      481 DUPTABLE                         R21 K112 [{"isOpen"}]
      482 GETTABLEKS                       R22 R3 K12 ["enabled"]
      484 SETTABLEKS                       R22 R21 K111 ["isOpen"]
      486 DUPTABLE                         R22 K115 [{"Anchor", "Content"}]
      487 GETUPVAL                         R23 1
      488 GETTABLEKS                       R23 R23 K30 ["createElement"]
      490 GETUPVAL                         R24 4
      491 GETTABLEKS                       R24 R24 K45 ["Popover"]
      493 GETTABLEKS                       R24 R24 K113 ["Anchor"]
      495 DUPTABLE                         R25 K117 [{"anchorRef"}]
      496 SETTABLEKS                       R4 R25 K116 ["anchorRef"]
      498 CALL                             R23 2 1
      499 SETTABLEKS                       R23 R22 K113 ["Anchor"]
      501 GETUPVAL                         R23 1
      502 GETTABLEKS                       R23 R23 K30 ["createElement"]
      504 GETUPVAL                         R24 4
      505 GETTABLEKS                       R24 R24 K45 ["Popover"]
      507 GETTABLEKS                       R24 R24 K114 ["Content"]
      509 DUPTABLE                         R25 K119 [{"align", "side", "onPressedOutside"}]
      510 GETUPVAL                         R26 4
      511 GETTABLEKS                       R26 R26 K71 ["Enums"]
      513 GETTABLEKS                       R26 R26 K74 ["PopoverAlign"]
      515 GETTABLEKS                       R26 R26 K75 ["Start"]
      517 SETTABLEKS                       R26 R25 K62 ["align"]
      519 GETUPVAL                         R26 4
      520 GETTABLEKS                       R26 R26 K71 ["Enums"]
      522 GETTABLEKS                       R26 R26 K72 ["PopoverSide"]
      524 GETTABLEKS                       R26 R26 K120 ["Right"]
      526 SETTABLEKS                       R26 R25 K61 ["side"]
      528 GETTABLEKS                       R26 R3 K121 ["disable"]
      530 SETTABLEKS                       R26 R25 K118 ["onPressedOutside"]
      532 JUMPIFNOT                        R9 ; [+63]
      533 GETUPVAL                         R26 1
      534 GETTABLEKS                       R26 R26 K30 ["createElement"]
      536 GETUPVAL                         R27 11
      537 DUPTABLE                         R28 K136 [{["AllowReset"], ["Name"], ["Expanded"] = True, ["IsDefaultValue"], ["TransitionBuilder"], ["Transition"], ["OnChanged"], ["OnClosed"], ["GraphPayload"], ["PropertyLookup"], ["Position"], ["Size"], ["StateLookup"], ["text"] = "", ["editName"] = ""}]
      538 SETTABLEKS                       R7 R28 K10 ["AllowReset"]
      540 GETTABLEKS                       R30 R0 K26 ["Label"]
      542 ORK                              R29 R30 K134 [""]
      543 SETTABLEKS                       R29 R28 K122 ["Name"]
      545 GETTABLEKS                       R29 R0 K13 ["IsDefaultValue"]
      547 SETTABLEKS                       R29 R28 K13 ["IsDefaultValue"]
      549 GETTABLEKS                       R29 R0 K125 ["TransitionBuilder"]
      551 SETTABLEKS                       R29 R28 K125 ["TransitionBuilder"]
      553 GETTABLEKS                       R29 R0 K137 ["Value"]
      555 JUMPIF                           R29 ; [+2]
      556 GETTABLEKS                       R29 R0 K138 ["DefaultValue"]
      558 SETTABLEKS                       R29 R28 K126 ["Transition"]
      560 GETTABLEKS                       R29 R0 K127 ["OnChanged"]
      562 SETTABLEKS                       R29 R28 K127 ["OnChanged"]
      564 GETTABLEKS                       R29 R3 K121 ["disable"]
      566 SETTABLEKS                       R29 R28 K128 ["OnClosed"]
      568 SETTABLEKS                       R9 R28 K129 ["GraphPayload"]
      570 NEWTABLE                         R29 0 0
      572 SETTABLEKS                       R29 R28 K130 ["PropertyLookup"]
      574 JUMPIFNOT                        R10 ; [+3]
      575 GETTABLEKS                       R29 R10 K139 ["position"]
      577 JUMP                             ; [+2]
      578 GETIMPORT                        R29 K142 [Vector2.zero]
      580 SETTABLEKS                       R29 R28 K131 ["Position"]
      582 JUMPIFNOT                        R10 ; [+3]
      583 GETTABLEKS                       R29 R10 K82 ["size"]
      585 JUMP                             ; [+2]
      586 GETIMPORT                        R29 K142 [Vector2.zero]
      588 SETTABLEKS                       R29 R28 K90 ["Size"]
      590 NEWTABLE                         R29 0 0
      592 SETTABLEKS                       R29 R28 K132 ["StateLookup"]
      594 CALL                             R26 2 1
      595 JUMP                             ; [+1]
      596 LOADNIL                          R26
      597 CALL                             R23 3 1
      598 SETTABLEKS                       R23 R22 K114 ["Content"]
      600 CALL                             R19 3 1
      601 SETTABLEKS                       R19 R18 K45 ["Popover"]
      603 CALL                             R15 3 -1
      604 RETURN                           R15 -1

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
      104 GETTABLEKS                       R14 R14 K28 ["getFFlagAnimGraphUIDuplicateNodeNames"]
      106 CALL                             R13 1 1
      107 DUPCLOSURE                       R14 K29 [PROTO_4]
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R11
      120 RETURN                           R14 1
