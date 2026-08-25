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
      170 DUPTABLE                         R19 K49 [{"PinChildren", "InputLabel", "DuplicateWarning", "InputDelete", "InputDeleteSpacer", "InputWeight", "TransitionButton", "Popover"}]
      171 GETUPVAL                         R20 1
      172 GETTABLEKS                       R20 R20 K31 ["createElement"]
      174 LOADK                            R21 K50 ["Folder"]
      175 NEWTABLE                         R22 0 0
      177 GETTABLEKS                       R23 R0 K51 ["children"]
      179 CALL                             R20 3 1
      180 SETTABLEKS                       R20 R19 K41 ["PinChildren"]
      182 GETUPVAL                         R20 1
      183 GETTABLEKS                       R20 R20 K31 ["createElement"]
      185 GETUPVAL                         R21 7
      186 DUPTABLE                         R22 K55 [{"tag", "Text", "TextTruncate", "LayoutOrder", "isDisabled"}]
      187 NEWTABLE                         R23 4 0
      189 LOADB                            R24 1
      190 SETTABLEKS                       R24 R23 K56 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      192 SETTABLEKS                       R13 R23 K57 ["fill"]
      194 GETUPVAL                         R24 8
      195 CALL                             R24 0 1
      196 JUMPIFNOT                        R24 ; [+1]
      197 NOT                              R24 R13
      198 SETTABLEKS                       R24 R23 K58 ["shrink"]
      200 SETTABLEKS                       R23 R22 K33 ["tag"]
      202 SETTABLEKS                       R14 R22 K52 ["Text"]
      204 GETIMPORT                        R23 K61 [Enum.TextTruncate.SplitWord]
      206 SETTABLEKS                       R23 R22 K53 ["TextTruncate"]
      208 MOVE                             R23 R5
      209 CALL                             R23 0 1
      210 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      212 SETTABLEKS                       R15 R22 K54 ["isDisabled"]
      214 CALL                             R20 2 1
      215 SETTABLEKS                       R20 R19 K42 ["InputLabel"]
      217 GETUPVAL                         R21 9
      218 CALL                             R21 0 1
      219 JUMPIFNOT                        R21 ; [+1]
      220 JUMPIF                           R12 ; [+83]
      221 GETTABLEKS                       R21 R0 K62 ["HasDuplicateName"]
      223 JUMPIFNOT                        R21 ; [+80]
      224 GETUPVAL                         R20 1
      225 GETTABLEKS                       R20 R20 K31 ["createElement"]
      227 GETUPVAL                         R21 4
      228 GETTABLEKS                       R21 R21 K63 ["Tooltip"]
      230 DUPTABLE                         R22 K67 [{"title", "side", "align", "LayoutOrder"}]
      231 LOADK                            R25 K68 ["Common"]
      232 LOADK                            R26 K69 ["AnimationEditor"]
      233 LOADK                            R27 K70 ["InputPanel"]
      234 LOADK                            R28 K71 ["DuplicateName"]
      235 DUPTABLE                         R29 K73 [{"name"}]
      236 SETTABLEKS                       R14 R29 K72 ["name"]
      238 NAMECALL                         R23 R1 K74 ["getExternalText"]
      240 CALL                             R23 6 1
      241 SETTABLEKS                       R23 R22 K64 ["title"]
      243 GETUPVAL                         R23 4
      244 GETTABLEKS                       R23 R23 K75 ["Enums"]
      246 GETTABLEKS                       R23 R23 K76 ["PopoverSide"]
      248 GETTABLEKS                       R23 R23 K77 ["Bottom"]
      250 SETTABLEKS                       R23 R22 K65 ["side"]
      252 GETUPVAL                         R23 4
      253 GETTABLEKS                       R23 R23 K75 ["Enums"]
      255 GETTABLEKS                       R23 R23 K78 ["PopoverAlign"]
      257 GETTABLEKS                       R23 R23 K79 ["Start"]
      259 SETTABLEKS                       R23 R22 K66 ["align"]
      261 MOVE                             R23 R5
      262 CALL                             R23 0 1
      263 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      265 GETUPVAL                         R23 1
      266 GETTABLEKS                       R23 R23 K31 ["createElement"]
      268 GETUPVAL                         R24 4
      269 GETTABLEKS                       R24 R24 K32 ["View"]
      271 DUPTABLE                         R25 K82 [{["tag"] = "auto-xy", ["testId"] = "input-duplicate-warning"}]
      272 DUPTABLE                         R26 K84 [{"Icon"}]
      273 GETUPVAL                         R27 1
      274 GETTABLEKS                       R27 R27 K31 ["createElement"]
      276 GETUPVAL                         R28 4
      277 GETTABLEKS                       R28 R28 K83 ["Icon"]
      279 DUPTABLE                         R29 K88 [{["name"] = "triangle-exclamation", ["size"], ["variant"]}]
      280 GETUPVAL                         R30 4
      281 GETTABLEKS                       R30 R30 K75 ["Enums"]
      283 GETTABLEKS                       R30 R30 K89 ["IconSize"]
      285 GETTABLEKS                       R30 R30 K90 ["XSmall"]
      287 SETTABLEKS                       R30 R29 K86 ["size"]
      289 GETUPVAL                         R30 4
      290 GETTABLEKS                       R30 R30 K75 ["Enums"]
      292 GETTABLEKS                       R30 R30 K91 ["IconVariant"]
      294 GETTABLEKS                       R30 R30 K92 ["Regular"]
      296 SETTABLEKS                       R30 R29 K87 ["variant"]
      298 CALL                             R27 2 1
      299 SETTABLEKS                       R27 R26 K83 ["Icon"]
      301 CALL                             R23 3 -1
      302 CALL                             R20 -1 1
      303 JUMP                             ; [+1]
      304 LOADNIL                          R20
      305 SETTABLEKS                       R20 R19 K43 ["DuplicateWarning"]
      307 JUMPIFNOT                        R12 ; [+15]
      308 GETUPVAL                         R20 1
      309 GETTABLEKS                       R20 R20 K31 ["createElement"]
      311 GETUPVAL                         R21 10
      312 DUPTABLE                         R22 K93 [{"LayoutOrder", "OnDelete"}]
      313 MOVE                             R23 R5
      314 CALL                             R23 0 1
      315 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      317 GETTABLEKS                       R23 R0 K24 ["OnDelete"]
      319 SETTABLEKS                       R23 R22 K24 ["OnDelete"]
      321 CALL                             R20 2 1
      322 JUMP                             ; [+1]
      323 LOADNIL                          R20
      324 SETTABLEKS                       R20 R19 K44 ["InputDelete"]
      326 JUMPIFNOT                        R12 ; [+13]
      327 GETUPVAL                         R20 1
      328 GETTABLEKS                       R20 R20 K31 ["createElement"]
      330 GETUPVAL                         R21 4
      331 GETTABLEKS                       R21 R21 K32 ["View"]
      333 DUPTABLE                         R22 K95 [{["tag"] = "fill auto-y", ["LayoutOrder"]}]
      334 MOVE                             R23 R5
      335 CALL                             R23 0 1
      336 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      338 CALL                             R20 2 1
      339 JUMP                             ; [+1]
      340 LOADNIL                          R20
      341 SETTABLEKS                       R20 R19 K45 ["InputDeleteSpacer"]
      343 GETTABLEKS                       R21 R0 K25 ["HideWeight"]
      345 JUMPIF                           R21 ; [+47]
      346 JUMPIF                           R12 ; [+46]
      347 GETUPVAL                         R20 1
      348 GETTABLEKS                       R20 R20 K31 ["createElement"]
      350 GETUPVAL                         R21 4
      351 GETTABLEKS                       R21 R21 K52 ["Text"]
      353 DUPTABLE                         R22 K97 [{"tag", "Size", "Text", "LayoutOrder"}]
      354 NEWTABLE                         R23 4 0
      356 LOADB                            R24 1
      357 SETTABLEKS                       R24 R23 K98 ["auto-y text-body-small text-align-x-left content-muted"]
      359 GETUPVAL                         R25 8
      360 CALL                             R25 0 1
      361 NOT                              R24 R25
      362 JUMPIFNOT                        R24 ; [+1]
      363 NOT                              R24 R12
      364 SETTABLEKS                       R24 R23 K57 ["fill"]
      366 GETUPVAL                         R24 8
      367 CALL                             R24 0 1
      368 SETTABLEKS                       R24 R23 K99 ["grow"]
      370 SETTABLEKS                       R23 R22 K33 ["tag"]
      372 GETIMPORT                        R23 K102 [UDim2.fromOffset]
      374 LOADN                            R24 30
      375 LOADN                            R25 0
      376 CALL                             R23 2 1
      377 SETTABLEKS                       R23 R22 K96 ["Size"]
      379 LOADK                            R24 K103 ["%*%%"]
      380 MOVE                             R26 R11
      381 NAMECALL                         R24 R24 K104 ["format"]
      383 CALL                             R24 2 1
      384 MOVE                             R23 R24
      385 SETTABLEKS                       R23 R22 K52 ["Text"]
      387 MOVE                             R23 R5
      388 CALL                             R23 0 1
      389 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      391 CALL                             R20 2 1
      392 JUMP                             ; [+1]
      393 LOADNIL                          R20
      394 SETTABLEKS                       R20 R19 K46 ["InputWeight"]
      396 GETUPVAL                         R20 1
      397 GETTABLEKS                       R20 R20 K31 ["createElement"]
      399 GETUPVAL                         R21 4
      400 GETTABLEKS                       R21 R21 K32 ["View"]
      402 DUPTABLE                         R22 K109 [{["tag"] = "auto-xy", ["LayoutOrder"], ["onStateChanged"], ["stateLayer"], ["ref"], ["testId"] = "transition-property-toggle"}]
      403 MOVE                             R23 R5
      404 CALL                             R23 0 1
      405 SETTABLEKS                       R23 R22 K34 ["LayoutOrder"]
      407 SETTABLEKS                       R6 R22 K105 ["onStateChanged"]
      409 DUPTABLE                         R23 K111 [{"affordance"}]
      410 GETUPVAL                         R24 4
      411 GETTABLEKS                       R24 R24 K75 ["Enums"]
      413 GETTABLEKS                       R24 R24 K112 ["StateLayerAffordance"]
      415 GETTABLEKS                       R24 R24 K113 ["None"]
      417 SETTABLEKS                       R24 R23 K110 ["affordance"]
      419 SETTABLEKS                       R23 R22 K106 ["stateLayer"]
      421 SETTABLEKS                       R4 R22 K107 ["ref"]
      423 DUPTABLE                         R23 K84 [{"Icon"}]
      424 GETUPVAL                         R24 1
      425 GETTABLEKS                       R24 R24 K31 ["createElement"]
      427 GETUPVAL                         R25 4
      428 GETTABLEKS                       R25 R25 K83 ["Icon"]
      430 DUPTABLE                         R26 K116 [{["name"] = "arrow-small-right", ["size"], ["variant"], ["style"]}]
      431 GETUPVAL                         R27 4
      432 GETTABLEKS                       R27 R27 K75 ["Enums"]
      434 GETTABLEKS                       R27 R27 K89 ["IconSize"]
      436 GETTABLEKS                       R27 R27 K90 ["XSmall"]
      438 SETTABLEKS                       R27 R26 K86 ["size"]
      440 GETUPVAL                         R27 4
      441 GETTABLEKS                       R27 R27 K75 ["Enums"]
      443 GETTABLEKS                       R27 R27 K91 ["IconVariant"]
      445 GETTABLEKS                       R27 R27 K92 ["Regular"]
      447 SETTABLEKS                       R27 R26 K87 ["variant"]
      449 SETTABLEKS                       R8 R26 K115 ["style"]
      451 CALL                             R24 2 1
      452 SETTABLEKS                       R24 R23 K83 ["Icon"]
      454 CALL                             R20 3 1
      455 SETTABLEKS                       R20 R19 K47 ["TransitionButton"]
      457 GETUPVAL                         R20 1
      458 GETTABLEKS                       R20 R20 K31 ["createElement"]
      460 GETUPVAL                         R21 4
      461 GETTABLEKS                       R21 R21 K48 ["Popover"]
      463 GETTABLEKS                       R21 R21 K117 ["Root"]
      465 DUPTABLE                         R22 K119 [{"isOpen"}]
      466 GETTABLEKS                       R23 R3 K12 ["enabled"]
      468 SETTABLEKS                       R23 R22 K118 ["isOpen"]
      470 DUPTABLE                         R23 K122 [{"Anchor", "Content"}]
      471 GETUPVAL                         R24 1
      472 GETTABLEKS                       R24 R24 K31 ["createElement"]
      474 GETUPVAL                         R25 4
      475 GETTABLEKS                       R25 R25 K48 ["Popover"]
      477 GETTABLEKS                       R25 R25 K120 ["Anchor"]
      479 DUPTABLE                         R26 K124 [{"anchorRef"}]
      480 SETTABLEKS                       R4 R26 K123 ["anchorRef"]
      482 CALL                             R24 2 1
      483 SETTABLEKS                       R24 R23 K120 ["Anchor"]
      485 GETUPVAL                         R24 1
      486 GETTABLEKS                       R24 R24 K31 ["createElement"]
      488 GETUPVAL                         R25 4
      489 GETTABLEKS                       R25 R25 K48 ["Popover"]
      491 GETTABLEKS                       R25 R25 K121 ["Content"]
      493 DUPTABLE                         R26 K126 [{"align", "side", "onPressedOutside"}]
      494 GETUPVAL                         R27 4
      495 GETTABLEKS                       R27 R27 K75 ["Enums"]
      497 GETTABLEKS                       R27 R27 K78 ["PopoverAlign"]
      499 GETTABLEKS                       R27 R27 K79 ["Start"]
      501 SETTABLEKS                       R27 R26 K66 ["align"]
      503 GETUPVAL                         R27 4
      504 GETTABLEKS                       R27 R27 K75 ["Enums"]
      506 GETTABLEKS                       R27 R27 K76 ["PopoverSide"]
      508 GETTABLEKS                       R27 R27 K127 ["Right"]
      510 SETTABLEKS                       R27 R26 K65 ["side"]
      512 GETTABLEKS                       R27 R3 K128 ["disable"]
      514 SETTABLEKS                       R27 R26 K125 ["onPressedOutside"]
      516 JUMPIFNOT                        R9 ; [+63]
      517 GETUPVAL                         R27 1
      518 GETTABLEKS                       R27 R27 K31 ["createElement"]
      520 GETUPVAL                         R28 11
      521 DUPTABLE                         R29 K143 [{["AllowReset"], ["Name"], ["Expanded"] = True, ["IsDefaultValue"], ["TransitionBuilder"], ["Transition"], ["OnChanged"], ["OnClosed"], ["GraphPayload"], ["PropertyLookup"], ["Position"], ["Size"], ["StateLookup"], ["text"] = "", ["editName"] = ""}]
      522 SETTABLEKS                       R7 R29 K10 ["AllowReset"]
      524 GETTABLEKS                       R31 R0 K27 ["Label"]
      526 ORK                              R30 R31 K141 [""]
      527 SETTABLEKS                       R30 R29 K129 ["Name"]
      529 GETTABLEKS                       R30 R0 K13 ["IsDefaultValue"]
      531 SETTABLEKS                       R30 R29 K13 ["IsDefaultValue"]
      533 GETTABLEKS                       R30 R0 K132 ["TransitionBuilder"]
      535 SETTABLEKS                       R30 R29 K132 ["TransitionBuilder"]
      537 GETTABLEKS                       R30 R0 K144 ["Value"]
      539 JUMPIF                           R30 ; [+2]
      540 GETTABLEKS                       R30 R0 K145 ["DefaultValue"]
      542 SETTABLEKS                       R30 R29 K133 ["Transition"]
      544 GETTABLEKS                       R30 R0 K134 ["OnChanged"]
      546 SETTABLEKS                       R30 R29 K134 ["OnChanged"]
      548 GETTABLEKS                       R30 R3 K128 ["disable"]
      550 SETTABLEKS                       R30 R29 K135 ["OnClosed"]
      552 SETTABLEKS                       R9 R29 K136 ["GraphPayload"]
      554 NEWTABLE                         R30 0 0
      556 SETTABLEKS                       R30 R29 K137 ["PropertyLookup"]
      558 JUMPIFNOT                        R10 ; [+3]
      559 GETTABLEKS                       R30 R10 K146 ["position"]
      561 JUMP                             ; [+2]
      562 GETIMPORT                        R30 K149 [Vector2.zero]
      564 SETTABLEKS                       R30 R29 K138 ["Position"]
      566 JUMPIFNOT                        R10 ; [+3]
      567 GETTABLEKS                       R30 R10 K86 ["size"]
      569 JUMP                             ; [+2]
      570 GETIMPORT                        R30 K149 [Vector2.zero]
      572 SETTABLEKS                       R30 R29 K96 ["Size"]
      574 NEWTABLE                         R30 0 0
      576 SETTABLEKS                       R30 R29 K139 ["StateLookup"]
      578 CALL                             R27 2 1
      579 JUMP                             ; [+1]
      580 LOADNIL                          R27
      581 CALL                             R24 3 1
      582 SETTABLEKS                       R24 R23 K121 ["Content"]
      584 CALL                             R20 3 1
      585 SETTABLEKS                       R20 R19 K48 ["Popover"]
      587 CALL                             R16 3 -1
      588 RETURN                           R16 -1

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
