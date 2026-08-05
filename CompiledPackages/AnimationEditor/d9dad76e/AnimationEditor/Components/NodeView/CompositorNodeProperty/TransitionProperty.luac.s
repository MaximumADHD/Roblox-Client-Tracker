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
      123 GETTABLEKS                       R13 R0 K25 ["HideWeight"]
      125 JUMPIFNOT                        R13 ; [+1]
      126 NOT                              R13 R12
      127 GETUPVAL                         R14 6
      128 GETTABLEKS                       R14 R14 K26 ["translateLabel"]
      130 MOVE                             R15 R1
      131 GETTABLEKS                       R16 R0 K27 ["Label"]
      133 CALL                             R14 2 1
      134 GETTABLEKS                       R17 R0 K27 ["Label"]
      136 FASTCALL1                        TYPE R17 ; [+2]
      137 GETIMPORT                        R16 K29 [type]
      139 CALL                             R16 1 1
      140 JUMPIFNOTEQKS                    R16 K30 ["string"] ; [+2]
      142 LOADB                            R15 0 +1
      143 LOADB                            R15 1
      144 GETUPVAL                         R16 1
      145 GETTABLEKS                       R16 R16 K31 ["createElement"]
      147 GETUPVAL                         R17 4
      148 GETTABLEKS                       R17 R17 K32 ["View"]
      150 DUPTABLE                         R18 K36 [{"tag", "LayoutOrder", "testId"}]
      151 GETUPVAL                         R19 4
      152 GETTABLEKS                       R19 R19 K37 ["Hooks"]
      154 GETTABLEKS                       R19 R19 K38 ["useDefaultTags"]
      156 GETTABLEKS                       R20 R0 K39 ["tags"]
      158 LOADK                            R21 K40 ["row auto-y gap-small size-full-700 align-y-center"]
      159 CALL                             R19 2 1
      160 SETTABLEKS                       R19 R18 K33 ["tag"]
      162 GETTABLEKS                       R19 R0 K34 ["LayoutOrder"]
      164 SETTABLEKS                       R19 R18 K34 ["LayoutOrder"]
      166 GETTABLEKS                       R19 R0 K35 ["testId"]
      168 SETTABLEKS                       R19 R18 K35 ["testId"]
      170 DUPTABLE                         R19 K48 [{"InputLabel", "DuplicateWarning", "InputDelete", "InputDeleteSpacer", "InputWeight", "TransitionButton", "Popover"}]
      171 GETUPVAL                         R20 1
      172 GETTABLEKS                       R20 R20 K31 ["createElement"]
      174 GETUPVAL                         R21 7
      175 DUPTABLE                         R22 K52 [{"tag", "Text", "TextTruncate", "LayoutOrder", "isDisabled"}]
      176 NEWTABLE                         R23 4 0
      178 LOADB                            R24 1
      179 SETTABLEKS                       R24 R23 K53 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      181 SETTABLEKS                       R13 R23 K54 ["fill"]
      183 GETUPVAL                         R24 8
      184 CALL                             R24 0 1
      185 JUMPIFNOT                        R24 ; [+1]
      186 NOT                              R24 R13
      187 SETTABLEKS                       R24 R23 K55 ["shrink"]
      189 SETTABLEKS                       R23 R22 K33 ["tag"]
      191 SETTABLEKS                       R14 R22 K49 ["Text"]
      193 GETIMPORT                        R23 K58 [Enum.TextTruncate.SplitWord]
      195 SETTABLEKS                       R23 R22 K50 ["TextTruncate"]
      197 MOVE                             R23 R5
      198 CALL                             R23 0 1
      199 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      201 SETTABLEKS                       R15 R22 K51 ["isDisabled"]
      203 CALL                             R20 2 1
      204 SETTABLEKS                       R20 R19 K41 ["InputLabel"]
      206 GETUPVAL                         R21 9
      207 CALL                             R21 0 1
      208 JUMPIFNOT                        R21 ; [+1]
      209 JUMPIF                           R12 ; [+83]
      210 GETTABLEKS                       R21 R0 K59 ["HasDuplicateName"]
      212 JUMPIFNOT                        R21 ; [+80]
      213 GETUPVAL                         R20 1
      214 GETTABLEKS                       R20 R20 K31 ["createElement"]
      216 GETUPVAL                         R21 4
      217 GETTABLEKS                       R21 R21 K60 ["Tooltip"]
      219 DUPTABLE                         R22 K64 [{"title", "side", "align", "LayoutOrder"}]
      220 LOADK                            R25 K65 ["Common"]
      221 LOADK                            R26 K66 ["AnimationEditor"]
      222 LOADK                            R27 K67 ["InputPanel"]
      223 LOADK                            R28 K68 ["DuplicateName"]
      224 DUPTABLE                         R29 K70 [{"name"}]
      225 SETTABLEKS                       R14 R29 K69 ["name"]
      227 NAMECALL                         R23 R1 K71 ["getExternalText"]
      229 CALL                             R23 6 1
      230 SETTABLEKS                       R23 R22 K61 ["title"]
      232 GETUPVAL                         R23 4
      233 GETTABLEKS                       R23 R23 K72 ["Enums"]
      235 GETTABLEKS                       R23 R23 K73 ["PopoverSide"]
      237 GETTABLEKS                       R23 R23 K74 ["Bottom"]
      239 SETTABLEKS                       R23 R22 K62 ["side"]
      241 GETUPVAL                         R23 4
      242 GETTABLEKS                       R23 R23 K72 ["Enums"]
      244 GETTABLEKS                       R23 R23 K75 ["PopoverAlign"]
      246 GETTABLEKS                       R23 R23 K76 ["Start"]
      248 SETTABLEKS                       R23 R22 K63 ["align"]
      250 MOVE                             R23 R5
      251 CALL                             R23 0 1
      252 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      254 GETUPVAL                         R23 1
      255 GETTABLEKS                       R23 R23 K31 ["createElement"]
      257 GETUPVAL                         R24 4
      258 GETTABLEKS                       R24 R24 K32 ["View"]
      260 DUPTABLE                         R25 K79 [{["tag"] = "auto-xy", ["testId"] = "input-duplicate-warning"}]
      261 DUPTABLE                         R26 K81 [{"Icon"}]
      262 GETUPVAL                         R27 1
      263 GETTABLEKS                       R27 R27 K31 ["createElement"]
      265 GETUPVAL                         R28 4
      266 GETTABLEKS                       R28 R28 K80 ["Icon"]
      268 DUPTABLE                         R29 K85 [{["name"] = "triangle-exclamation", ["size"], ["variant"]}]
      269 GETUPVAL                         R30 4
      270 GETTABLEKS                       R30 R30 K72 ["Enums"]
      272 GETTABLEKS                       R30 R30 K86 ["IconSize"]
      274 GETTABLEKS                       R30 R30 K87 ["XSmall"]
      276 SETTABLEKS                       R30 R29 K83 ["size"]
      278 GETUPVAL                         R30 4
      279 GETTABLEKS                       R30 R30 K72 ["Enums"]
      281 GETTABLEKS                       R30 R30 K88 ["IconVariant"]
      283 GETTABLEKS                       R30 R30 K89 ["Regular"]
      285 SETTABLEKS                       R30 R29 K84 ["variant"]
      287 CALL                             R27 2 1
      288 SETTABLEKS                       R27 R26 K80 ["Icon"]
      290 CALL                             R23 3 -1
      291 CALL                             R20 -1 1
      292 JUMP                             ; [+1]
      293 LOADNIL                          R20
      294 SETTABLEKS                       R20 R19 K42 ["DuplicateWarning"]
      296 JUMPIFNOT                        R12 ; [+15]
      297 GETUPVAL                         R20 1
      298 GETTABLEKS                       R20 R20 K31 ["createElement"]
      300 GETUPVAL                         R21 10
      301 DUPTABLE                         R22 K90 [{"LayoutOrder", "OnDelete"}]
      302 MOVE                             R23 R5
      303 CALL                             R23 0 1
      304 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      306 GETTABLEKS                       R23 R0 K24 ["OnDelete"]
      308 SETTABLEKS                       R23 R22 K24 ["OnDelete"]
      310 CALL                             R20 2 1
      311 JUMP                             ; [+1]
      312 LOADNIL                          R20
      313 SETTABLEKS                       R20 R19 K43 ["InputDelete"]
      315 JUMPIFNOT                        R12 ; [+13]
      316 GETUPVAL                         R20 1
      317 GETTABLEKS                       R20 R20 K31 ["createElement"]
      319 GETUPVAL                         R21 4
      320 GETTABLEKS                       R21 R21 K32 ["View"]
      322 DUPTABLE                         R22 K92 [{["tag"] = "fill auto-y", ["LayoutOrder"]}]
      323 MOVE                             R23 R5
      324 CALL                             R23 0 1
      325 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      327 CALL                             R20 2 1
      328 JUMP                             ; [+1]
      329 LOADNIL                          R20
      330 SETTABLEKS                       R20 R19 K44 ["InputDeleteSpacer"]
      332 GETTABLEKS                       R21 R0 K25 ["HideWeight"]
      334 JUMPIF                           R21 ; [+47]
      335 JUMPIF                           R12 ; [+46]
      336 GETUPVAL                         R20 1
      337 GETTABLEKS                       R20 R20 K31 ["createElement"]
      339 GETUPVAL                         R21 4
      340 GETTABLEKS                       R21 R21 K49 ["Text"]
      342 DUPTABLE                         R22 K94 [{"tag", "Size", "Text", "LayoutOrder"}]
      343 NEWTABLE                         R23 4 0
      345 LOADB                            R24 1
      346 SETTABLEKS                       R24 R23 K95 ["auto-y text-body-small text-align-x-left content-muted"]
      348 GETUPVAL                         R25 8
      349 CALL                             R25 0 1
      350 NOT                              R24 R25
      351 JUMPIFNOT                        R24 ; [+1]
      352 NOT                              R24 R12
      353 SETTABLEKS                       R24 R23 K54 ["fill"]
      355 GETUPVAL                         R24 8
      356 CALL                             R24 0 1
      357 SETTABLEKS                       R24 R23 K96 ["grow"]
      359 SETTABLEKS                       R23 R22 K33 ["tag"]
      361 GETIMPORT                        R23 K99 [UDim2.fromOffset]
      363 LOADN                            R24 30
      364 LOADN                            R25 0
      365 CALL                             R23 2 1
      366 SETTABLEKS                       R23 R22 K93 ["Size"]
      368 LOADK                            R24 K100 ["%*%%"]
      369 MOVE                             R26 R11
      370 NAMECALL                         R24 R24 K101 ["format"]
      372 CALL                             R24 2 1
      373 MOVE                             R23 R24
      374 SETTABLEKS                       R23 R22 K49 ["Text"]
      376 MOVE                             R23 R5
      377 CALL                             R23 0 1
      378 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      380 CALL                             R20 2 1
      381 JUMP                             ; [+1]
      382 LOADNIL                          R20
      383 SETTABLEKS                       R20 R19 K45 ["InputWeight"]
      385 GETUPVAL                         R20 1
      386 GETTABLEKS                       R20 R20 K31 ["createElement"]
      388 GETUPVAL                         R21 4
      389 GETTABLEKS                       R21 R21 K32 ["View"]
      391 DUPTABLE                         R22 K106 [{["tag"] = "auto-xy", ["LayoutOrder"], ["onStateChanged"], ["stateLayer"], ["ref"], ["testId"] = "transition-property-toggle"}]
      392 MOVE                             R23 R5
      393 CALL                             R23 0 1
      394 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      396 SETTABLEKS                       R6 R22 K102 ["onStateChanged"]
      398 DUPTABLE                         R23 K108 [{"affordance"}]
      399 GETUPVAL                         R24 4
      400 GETTABLEKS                       R24 R24 K72 ["Enums"]
      402 GETTABLEKS                       R24 R24 K109 ["StateLayerAffordance"]
      404 GETTABLEKS                       R24 R24 K110 ["None"]
      406 SETTABLEKS                       R24 R23 K107 ["affordance"]
      408 SETTABLEKS                       R23 R22 K103 ["stateLayer"]
      410 SETTABLEKS                       R4 R22 K104 ["ref"]
      412 DUPTABLE                         R23 K81 [{"Icon"}]
      413 GETUPVAL                         R24 1
      414 GETTABLEKS                       R24 R24 K31 ["createElement"]
      416 GETUPVAL                         R25 4
      417 GETTABLEKS                       R25 R25 K80 ["Icon"]
      419 DUPTABLE                         R26 K113 [{["name"] = "arrow-small-right", ["size"], ["variant"], ["style"]}]
      420 GETUPVAL                         R27 4
      421 GETTABLEKS                       R27 R27 K72 ["Enums"]
      423 GETTABLEKS                       R27 R27 K86 ["IconSize"]
      425 GETTABLEKS                       R27 R27 K87 ["XSmall"]
      427 SETTABLEKS                       R27 R26 K83 ["size"]
      429 GETUPVAL                         R27 4
      430 GETTABLEKS                       R27 R27 K72 ["Enums"]
      432 GETTABLEKS                       R27 R27 K88 ["IconVariant"]
      434 GETTABLEKS                       R27 R27 K89 ["Regular"]
      436 SETTABLEKS                       R27 R26 K84 ["variant"]
      438 SETTABLEKS                       R8 R26 K112 ["style"]
      440 CALL                             R24 2 1
      441 SETTABLEKS                       R24 R23 K80 ["Icon"]
      443 CALL                             R20 3 1
      444 SETTABLEKS                       R20 R19 K46 ["TransitionButton"]
      446 GETUPVAL                         R20 1
      447 GETTABLEKS                       R20 R20 K31 ["createElement"]
      449 GETUPVAL                         R21 4
      450 GETTABLEKS                       R21 R21 K47 ["Popover"]
      452 GETTABLEKS                       R21 R21 K114 ["Root"]
      454 DUPTABLE                         R22 K116 [{"isOpen"}]
      455 GETTABLEKS                       R23 R3 K12 ["enabled"]
      457 SETTABLEKS                       R23 R22 K115 ["isOpen"]
      459 DUPTABLE                         R23 K119 [{"Anchor", "Content"}]
      460 GETUPVAL                         R24 1
      461 GETTABLEKS                       R24 R24 K31 ["createElement"]
      463 GETUPVAL                         R25 4
      464 GETTABLEKS                       R25 R25 K47 ["Popover"]
      466 GETTABLEKS                       R25 R25 K117 ["Anchor"]
      468 DUPTABLE                         R26 K121 [{"anchorRef"}]
      469 SETTABLEKS                       R4 R26 K120 ["anchorRef"]
      471 CALL                             R24 2 1
      472 SETTABLEKS                       R24 R23 K117 ["Anchor"]
      474 GETUPVAL                         R24 1
      475 GETTABLEKS                       R24 R24 K31 ["createElement"]
      477 GETUPVAL                         R25 4
      478 GETTABLEKS                       R25 R25 K47 ["Popover"]
      480 GETTABLEKS                       R25 R25 K118 ["Content"]
      482 DUPTABLE                         R26 K123 [{"align", "side", "onPressedOutside"}]
      483 GETUPVAL                         R27 4
      484 GETTABLEKS                       R27 R27 K72 ["Enums"]
      486 GETTABLEKS                       R27 R27 K75 ["PopoverAlign"]
      488 GETTABLEKS                       R27 R27 K76 ["Start"]
      490 SETTABLEKS                       R27 R26 K63 ["align"]
      492 GETUPVAL                         R27 4
      493 GETTABLEKS                       R27 R27 K72 ["Enums"]
      495 GETTABLEKS                       R27 R27 K73 ["PopoverSide"]
      497 GETTABLEKS                       R27 R27 K124 ["Right"]
      499 SETTABLEKS                       R27 R26 K62 ["side"]
      501 GETTABLEKS                       R27 R3 K125 ["disable"]
      503 SETTABLEKS                       R27 R26 K122 ["onPressedOutside"]
      505 JUMPIFNOT                        R9 ; [+63]
      506 GETUPVAL                         R27 1
      507 GETTABLEKS                       R27 R27 K31 ["createElement"]
      509 GETUPVAL                         R28 11
      510 DUPTABLE                         R29 K140 [{["AllowReset"], ["Name"], ["Expanded"] = True, ["IsDefaultValue"], ["TransitionBuilder"], ["Transition"], ["OnChanged"], ["OnClosed"], ["GraphPayload"], ["PropertyLookup"], ["Position"], ["Size"], ["StateLookup"], ["text"] = "", ["editName"] = ""}]
      511 SETTABLEKS                       R7 R29 K10 ["AllowReset"]
      513 GETTABLEKS                       R31 R0 K27 ["Label"]
      515 ORK                              R30 R31 K138 [""]
      516 SETTABLEKS                       R30 R29 K126 ["Name"]
      518 GETTABLEKS                       R30 R0 K13 ["IsDefaultValue"]
      520 SETTABLEKS                       R30 R29 K13 ["IsDefaultValue"]
      522 GETTABLEKS                       R30 R0 K129 ["TransitionBuilder"]
      524 SETTABLEKS                       R30 R29 K129 ["TransitionBuilder"]
      526 GETTABLEKS                       R30 R0 K141 ["Value"]
      528 JUMPIF                           R30 ; [+2]
      529 GETTABLEKS                       R30 R0 K142 ["DefaultValue"]
      531 SETTABLEKS                       R30 R29 K130 ["Transition"]
      533 GETTABLEKS                       R30 R0 K131 ["OnChanged"]
      535 SETTABLEKS                       R30 R29 K131 ["OnChanged"]
      537 GETTABLEKS                       R30 R3 K125 ["disable"]
      539 SETTABLEKS                       R30 R29 K132 ["OnClosed"]
      541 SETTABLEKS                       R9 R29 K133 ["GraphPayload"]
      543 NEWTABLE                         R30 0 0
      545 SETTABLEKS                       R30 R29 K134 ["PropertyLookup"]
      547 JUMPIFNOT                        R10 ; [+3]
      548 GETTABLEKS                       R30 R10 K143 ["position"]
      550 JUMP                             ; [+2]
      551 GETIMPORT                        R30 K146 [Vector2.zero]
      553 SETTABLEKS                       R30 R29 K135 ["Position"]
      555 JUMPIFNOT                        R10 ; [+3]
      556 GETTABLEKS                       R30 R10 K83 ["size"]
      558 JUMP                             ; [+2]
      559 GETIMPORT                        R30 K146 [Vector2.zero]
      561 SETTABLEKS                       R30 R29 K93 ["Size"]
      563 NEWTABLE                         R30 0 0
      565 SETTABLEKS                       R30 R29 K136 ["StateLookup"]
      567 CALL                             R27 2 1
      568 JUMP                             ; [+1]
      569 LOADNIL                          R27
      570 CALL                             R24 3 1
      571 SETTABLEKS                       R24 R23 K118 ["Content"]
      573 CALL                             R20 3 1
      574 SETTABLEKS                       R20 R19 K47 ["Popover"]
      576 CALL                             R16 3 -1
      577 RETURN                           R16 -1

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
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K26 ["Flags"]
      102 GETTABLEKS                       R13 R13 K27 ["getFFlagAnimGraphUIDeleteInputButtonChanges"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R14 R0 K26 ["Flags"]
      109 GETTABLEKS                       R14 R14 K28 ["getFFlagAnimGraphUIWeightOverlap"]
      111 CALL                             R13 1 1
      112 DUPCLOSURE                       R14 K29 [PROTO_4]
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R11
      125 RETURN                           R14 1
