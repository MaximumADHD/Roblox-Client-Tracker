PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onItemChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["onCloseMenu"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onOpenActivated"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCloseMenu"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onOpenActivated"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+13]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["binding"]
        6 JUMPIFNOT                        R0 ; [+9]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["binding"]
       10 GETTABLEKS                       R0 R0 K1 ["defaultPlayerScript"]
       12 JUMPIFNOT                        R0 ; [+3]
       13 NEWTABLE                         R0 0 0
       15 RETURN                           R0 1
       16 GETUPVAL                         R0 2
       17 CALL                             R0 0 1
       18 JUMPIFNOT                        R0 ; [+4]
       19 GETUPVAL                         R0 1
       20 GETTABLEKS                       R0 R0 K0 ["binding"]
       22 JUMPIF                           R0 ; [+3]
       23 NEWTABLE                         R0 0 0
       25 RETURN                           R0 1
       26 GETUPVAL                         R0 3
       27 GETUPVAL                         R1 4
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K2 ["action"]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K0 ["binding"]
       34 CALL                             R0 3 -1
       35 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected binding menu item ID to be a string"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 LOADB                            R2 0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K6 ["binding"]
       21 JUMPIFNOT                        R1 ; [+18]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K7 ["BINDING_CLAMP_MAGNITUDE_TO_ONE"]
       25 JUMPIFNOTEQ                      R0 R2 ; [+14]
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K8 ["updateBinding"]
       30 GETTABLEKS                       R3 R1 K9 ["uuid"]
       32 DUPTABLE                         R4 K11 [{"clampMagnitudeToOne"}]
       33 GETTABLEKS                       R6 R1 K10 ["clampMagnitudeToOne"]
       35 NOT                              R5 R6
       36 SETTABLEKS                       R5 R4 K10 ["clampMagnitudeToOne"]
       38 CALL                             R2 2 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R2 4
       41 MOVE                             R3 R0
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["disabled"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["Context"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R4 R0 K3 ["property"]
       16 JUMPIFNOTEQKS                    R4 K4 ["keyCode"] ; [+6]
       18 GETTABLEKS                       R3 R0 K5 ["action"]
       20 GETTABLEKS                       R3 R3 K6 ["type"]
       22 JUMP                             ; [+2]
       23 GETIMPORT                        R3 K10 [Enum.InputActionType.Bool]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R5 R0 K3 ["property"]
       28 GETTABLEKS                       R6 R0 K11 ["schema"]
       30 MOVE                             R7 R3
       31 GETTABLEKS                       R8 R0 K12 ["binding"]
       33 CALL                             R4 4 1
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K1 ["useContext"]
       37 GETUPVAL                         R6 4
       38 GETTABLEKS                       R6 R6 K2 ["Context"]
       40 CALL                             R5 1 1
       41 GETUPVAL                         R6 5
       42 GETTABLEKS                       R6 R6 K13 ["createNextOrder"]
       44 CALL                             R6 0 1
       45 GETUPVAL                         R7 6
       46 GETTABLEKS                       R8 R0 K5 ["action"]
       48 GETTABLEKS                       R8 R8 K14 ["parentUuid"]
       50 GETTABLEKS                       R9 R0 K12 ["binding"]
       52 GETTABLEKS                       R10 R0 K3 ["property"]
       54 GETTABLEKS                       R11 R0 K11 ["schema"]
       56 GETTABLEKS                       R12 R0 K5 ["action"]
       58 GETTABLEKS                       R12 R12 K6 ["type"]
       60 GETTABLEKS                       R13 R0 K15 ["index"]
       62 GETTABLEKS                       R14 R0 K16 ["validBinding"]
       64 CALL                             R7 7 3
       65 GETUPVAL                         R10 7
       66 MOVE                             R11 R0
       67 CALL                             R10 1 1
       68 GETUPVAL                         R11 8
       69 MOVE                             R12 R0
       70 MOVE                             R13 R3
       71 CALL                             R11 2 1
       72 GETUPVAL                         R12 5
       73 GETTABLEKS                       R12 R12 K17 ["useEventCallback"]
       75 NEWCLOSURE                       R13 P0
       76 CAPTURE                          VAL R11
       77 CALL                             R12 1 1
       78 GETUPVAL                         R13 5
       79 GETTABLEKS                       R13 R13 K17 ["useEventCallback"]
       81 NEWCLOSURE                       R14 P1
       82 CAPTURE                          VAL R11
       83 CALL                             R13 1 1
       84 GETUPVAL                         R14 5
       85 GETTABLEKS                       R14 R14 K17 ["useEventCallback"]
       87 NEWCLOSURE                       R15 P2
       88 CAPTURE                          VAL R11
       89 CALL                             R14 1 1
       90 GETUPVAL                         R15 5
       91 GETTABLEKS                       R15 R15 K17 ["useEventCallback"]
       93 NEWCLOSURE                       R16 P3
       94 CAPTURE                          VAL R11
       95 CALL                             R15 1 1
       96 GETUPVAL                         R16 1
       97 GETTABLEKS                       R16 R16 K18 ["useMemo"]
       99 NEWCLOSURE                       R17 P4
      100 CAPTURE                          UPVAL U9
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U10
      103 CAPTURE                          UPVAL U11
      104 CAPTURE                          VAL R5
      105 NEWTABLE                         R18 0 3
      107 MOVE                             R19 R5
      108 GETTABLEKS                       R20 R0 K5 ["action"]
      110 GETTABLEKS                       R21 R0 K12 ["binding"]
      112 SETLIST                          R18 R19 3 [1]
      114 CALL                             R16 2 1
      115 GETUPVAL                         R17 5
      116 GETTABLEKS                       R17 R17 K19 ["useStagnatingState"]
      118 LOADB                            R18 0
      119 NEWTABLE                         R19 0 1
      121 MOVE                             R20 R16
      122 SETLIST                          R19 R20 1 [1]
      124 CALL                             R17 2 2
      125 GETUPVAL                         R19 1
      126 GETTABLEKS                       R19 R19 K20 ["useState"]
      128 LOADNIL                          R20
      129 CALL                             R19 1 2
      130 GETUPVAL                         R21 5
      131 GETTABLEKS                       R21 R21 K17 ["useEventCallback"]
      133 NEWCLOSURE                       R22 P5
      134 CAPTURE                          VAL R18
      135 CALL                             R21 1 1
      136 GETUPVAL                         R22 5
      137 GETTABLEKS                       R22 R22 K17 ["useEventCallback"]
      139 NEWCLOSURE                       R23 P6
      140 CAPTURE                          VAL R18
      141 CALL                             R22 1 1
      142 GETUPVAL                         R23 5
      143 GETTABLEKS                       R23 R23 K17 ["useEventCallback"]
      145 NEWCLOSURE                       R24 P7
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R0
      148 CAPTURE                          UPVAL U12
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R20
      151 CALL                             R23 1 1
      152 GETUPVAL                         R24 5
      153 GETTABLEKS                       R24 R24 K17 ["useEventCallback"]
      155 NEWCLOSURE                       R25 P8
      156 CAPTURE                          VAL R20
      157 CALL                             R24 1 1
      158 GETTABLEKS                       R26 R0 K3 ["property"]
      160 JUMPIFNOTEQKS                    R26 K21 ["primaryModifier"] ; [+9]
      162 GETTABLEKS                       R25 R0 K12 ["binding"]
      164 JUMPIFNOT                        R25 ; [+18]
      165 GETTABLEKS                       R25 R0 K12 ["binding"]
      167 GETTABLEKS                       R25 R25 K22 ["uiModifier"]
      169 JUMP                             ; [+13]
      170 GETTABLEKS                       R26 R0 K3 ["property"]
      172 JUMPIFNOTEQKS                    R26 K4 ["keyCode"] ; [+9]
      174 GETTABLEKS                       R25 R0 K12 ["binding"]
      176 JUMPIFNOT                        R25 ; [+6]
      177 GETTABLEKS                       R25 R0 K12 ["binding"]
      179 GETTABLEKS                       R25 R25 K23 ["uiButton"]
      181 JUMP                             ; [+1]
      182 LOADNIL                          R25
      183 GETUPVAL                         R26 13
      184 JUMPIFNOT                        R25 ; [+3]
      185 GETTABLEKS                       R27 R25 K6 ["type"]
      187 JUMP                             ; [+1]
      188 LOADK                            R27 K24 ["ImageButton"]
      189 CALL                             R26 1 1
      190 MOVE                             R27 R25
      191 JUMPIFNOT                        R27 ; [+2]
      192 GETTABLEKS                       R27 R25 K25 ["name"]
      194 GETUPVAL                         R28 14
      195 MOVE                             R29 R4
      196 GETTABLEKS                       R30 R0 K12 ["binding"]
      198 GETTABLEKS                       R31 R0 K3 ["property"]
      200 MOVE                             R32 R27
      201 CALL                             R28 4 1
      202 GETUPVAL                         R29 1
      203 GETTABLEKS                       R29 R29 K26 ["createElement"]
      205 GETUPVAL                         R30 15
      206 DUPTABLE                         R31 K41 [{"disabled", "icon", "inputRef", "isHovered", "isOpen", "filterText", "onActivated", "onFilterTextChanged", "onOpenActivated", "onRemoveActivated", "onSecondaryActivated", "onStateChanged", "property", "schema", "selected", "cellType", "text"}]
      207 SETTABLEKS                       R1 R31 K0 ["disabled"]
      209 DUPTABLE                         R32 K47 [{"buttonIcon", "cellType", "currentIcon", "message", "severity", "title"}]
      210 SETTABLEKS                       R26 R32 K42 ["buttonIcon"]
      212 SETTABLEKS                       R4 R32 K39 ["cellType"]
      214 GETTABLEKS                       R33 R11 K43 ["currentIcon"]
      216 SETTABLEKS                       R33 R32 K43 ["currentIcon"]
      218 SETTABLEKS                       R9 R32 K44 ["message"]
      220 SETTABLEKS                       R7 R32 K45 ["severity"]
      222 SETTABLEKS                       R8 R32 K46 ["title"]
      224 SETTABLEKS                       R32 R31 K27 ["icon"]
      226 GETTABLEKS                       R32 R11 K28 ["inputRef"]
      228 SETTABLEKS                       R32 R31 K28 ["inputRef"]
      230 GETTABLEKS                       R32 R10 K29 ["isHovered"]
      232 SETTABLEKS                       R32 R31 K29 ["isHovered"]
      234 GETTABLEKS                       R32 R11 K30 ["isOpen"]
      236 SETTABLEKS                       R32 R31 K30 ["isOpen"]
      238 GETTABLEKS                       R32 R11 K31 ["filterText"]
      240 SETTABLEKS                       R32 R31 K31 ["filterText"]
      242 JUMPIFNOTEQKS                    R4 K48 ["Instance"] ; [+4]
      244 GETTABLEKS                       R32 R10 K49 ["onButtonSelectorActivated"]
      246 JUMP                             ; [+8]
      247 JUMPIFNOTEQKS                    R4 K50 ["Dropdown"] ; [+6]
      249 GETTABLEKS                       R33 R11 K30 ["isOpen"]
      251 JUMPIF                           R33 ; [+2]
      252 MOVE                             R32 R15
      253 JUMP                             ; [+1]
      254 LOADNIL                          R32
      255 SETTABLEKS                       R32 R31 K32 ["onActivated"]
      257 GETTABLEKS                       R32 R11 K33 ["onFilterTextChanged"]
      259 SETTABLEKS                       R32 R31 K33 ["onFilterTextChanged"]
      261 SETTABLEKS                       R13 R31 K34 ["onOpenActivated"]
      263 GETTABLEKS                       R33 R0 K12 ["binding"]
      265 JUMPIFEQKNIL                     R33 ; [+4]
      267 GETTABLEKS                       R32 R10 K35 ["onRemoveActivated"]
      269 JUMP                             ; [+1]
      270 LOADNIL                          R32
      271 SETTABLEKS                       R32 R31 K35 ["onRemoveActivated"]
      273 GETUPVAL                         R33 10
      274 CALL                             R33 0 1
      275 JUMPIFNOT                        R33 ; [+6]
      276 LENGTH                           R33 R16
      277 LOADN                            R34 0
      278 JUMPIFNOTLT                      R34 R33 ; [+3]
      280 MOVE                             R32 R21
      281 JUMP                             ; [+1]
      282 LOADNIL                          R32
      283 SETTABLEKS                       R32 R31 K36 ["onSecondaryActivated"]
      285 GETTABLEKS                       R32 R10 K37 ["onStateChanged"]
      287 SETTABLEKS                       R32 R31 K37 ["onStateChanged"]
      289 GETTABLEKS                       R32 R0 K3 ["property"]
      291 SETTABLEKS                       R32 R31 K3 ["property"]
      293 GETTABLEKS                       R32 R0 K11 ["schema"]
      295 SETTABLEKS                       R32 R31 K11 ["schema"]
      297 JUMPIFNOTEQKS                    R4 K48 ["Instance"] ; [+4]
      299 GETTABLEKS                       R32 R10 K38 ["selected"]
      301 JUMP                             ; [+2]
      302 GETTABLEKS                       R32 R11 K30 ["isOpen"]
      304 SETTABLEKS                       R32 R31 K38 ["selected"]
      306 SETTABLEKS                       R4 R31 K39 ["cellType"]
      308 SETTABLEKS                       R28 R31 K40 ["text"]
      310 CALL                             R29 2 1
      311 JUMPIFNOTEQKS                    R4 K50 ["Dropdown"] ; [+35]
      313 GETUPVAL                         R30 1
      314 GETTABLEKS                       R30 R30 K26 ["createElement"]
      316 GETUPVAL                         R31 16
      317 DUPTABLE                         R32 K55 [{"anchorRef", "isOpen", "items", "onCloseMenu", "onItemChanged", "property", "schema"}]
      318 GETTABLEKS                       R33 R11 K28 ["inputRef"]
      320 SETTABLEKS                       R33 R32 K51 ["anchorRef"]
      322 GETTABLEKS                       R33 R11 K30 ["isOpen"]
      324 SETTABLEKS                       R33 R32 K30 ["isOpen"]
      326 GETTABLEKS                       R33 R11 K52 ["items"]
      328 SETTABLEKS                       R33 R32 K52 ["items"]
      330 SETTABLEKS                       R14 R32 K53 ["onCloseMenu"]
      332 SETTABLEKS                       R12 R32 K54 ["onItemChanged"]
      334 GETTABLEKS                       R33 R0 K3 ["property"]
      336 SETTABLEKS                       R33 R32 K3 ["property"]
      338 GETTABLEKS                       R33 R0 K11 ["schema"]
      340 SETTABLEKS                       R33 R32 K11 ["schema"]
      342 DUPTABLE                         R33 K57 [{"Control"}]
      343 SETTABLEKS                       R29 R33 K56 ["Control"]
      345 CALL                             R30 3 1
      346 JUMP                             ; [+1]
      347 MOVE                             R30 R29
      348 GETUPVAL                         R31 1
      349 GETTABLEKS                       R31 R31 K26 ["createElement"]
      351 GETUPVAL                         R32 17
      352 DUPTABLE                         R33 K63 [{["GroupTransparency"], ["LayoutOrder"], ["tag"] = "columns-input col align-y-center size-0-full", ["testId"]}]
      353 JUMPIFNOT                        R1 ; [+2]
      354 LOADK                            R34 K64 [0.5]
      355 JUMP                             ; [+1]
      356 LOADNIL                          R34
      357 SETTABLEKS                       R34 R33 K58 ["GroupTransparency"]
      359 GETTABLEKS                       R34 R0 K59 ["LayoutOrder"]
      361 SETTABLEKS                       R34 R33 K59 ["LayoutOrder"]
      363 LOADK                            R34 K65 ["%*-%*-cell"]
      364 GETTABLEKS                       R36 R0 K3 ["property"]
      366 GETTABLEKS                       R37 R0 K11 ["schema"]
      368 NAMECALL                         R34 R34 K66 ["format"]
      370 CALL                             R34 3 1
      371 SETTABLEKS                       R34 R33 K62 ["testId"]
      373 DUPTABLE                         R34 K71 [{"Container", "Divider", "Menu", "Property"}]
      374 GETUPVAL                         R35 1
      375 GETTABLEKS                       R35 R35 K26 ["createElement"]
      377 GETUPVAL                         R36 17
      378 DUPTABLE                         R37 K73 [{["LayoutOrder"], ["tag"] = "row align-y-center size-full-full"}]
      379 MOVE                             R38 R6
      380 CALL                             R38 0 1
      381 SETTABLEKS                       R38 R37 K59 ["LayoutOrder"]
      383 DUPTABLE                         R38 K75 [{"Content"}]
      384 LOADB                            R39 0
      385 JUMPIFEQKNIL                     R4 ; [+2]
      387 MOVE                             R39 R30
      388 SETTABLEKS                       R39 R38 K74 ["Content"]
      390 CALL                             R35 3 1
      391 SETTABLEKS                       R35 R34 K67 ["Container"]
      393 GETUPVAL                         R35 1
      394 GETTABLEKS                       R35 R35 K26 ["createElement"]
      396 GETUPVAL                         R36 18
      397 DUPTABLE                         R37 K78 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
      398 MOVE                             R38 R6
      399 CALL                             R38 0 1
      400 SETTABLEKS                       R38 R37 K59 ["LayoutOrder"]
      402 GETUPVAL                         R38 19
      403 GETTABLEKS                       R38 R38 K79 ["Horizontal"]
      405 SETTABLEKS                       R38 R37 K76 ["orientation"]
      407 CALL                             R35 2 1
      408 SETTABLEKS                       R35 R34 K68 ["Divider"]
      410 GETUPVAL                         R35 10
      411 CALL                             R35 0 1
      412 JUMPIFNOT                        R35 ; [+33]
      413 GETUPVAL                         R35 1
      414 GETTABLEKS                       R35 R35 K26 ["createElement"]
      416 GETUPVAL                         R36 20
      417 DUPTABLE                         R37 K82 [{"anchorRef", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      418 GETTABLEKS                       R38 R11 K28 ["inputRef"]
      420 SETTABLEKS                       R38 R37 K51 ["anchorRef"]
      422 SETTABLEKS                       R17 R37 K30 ["isOpen"]
      424 SETTABLEKS                       R16 R37 K52 ["items"]
      426 SETTABLEKS                       R23 R37 K32 ["onActivated"]
      428 SETTABLEKS                       R22 R37 K80 ["onPressedOutside"]
      430 GETUPVAL                         R38 21
      431 GETTABLEKS                       R38 R38 K83 ["Right"]
      433 SETTABLEKS                       R38 R37 K81 ["side"]
      435 LOADK                            R38 K84 ["%*-%*-cell-menu"]
      436 GETTABLEKS                       R40 R0 K3 ["property"]
      438 GETTABLEKS                       R41 R0 K11 ["schema"]
      440 NAMECALL                         R38 R38 K66 ["format"]
      442 CALL                             R38 3 1
      443 SETTABLEKS                       R38 R37 K62 ["testId"]
      445 CALL                             R35 2 1
      446 SETTABLEKS                       R35 R34 K69 ["Menu"]
      448 GETUPVAL                         R35 10
      449 CALL                             R35 0 1
      450 JUMPIFNOT                        R35 ; [+23]
      451 GETTABLEKS                       R35 R0 K12 ["binding"]
      453 JUMPIFNOT                        R35 ; [+20]
      454 MOVE                             R35 R19
      455 JUMPIFNOT                        R35 ; [+18]
      456 GETUPVAL                         R35 1
      457 GETTABLEKS                       R35 R35 K26 ["createElement"]
      459 GETUPVAL                         R36 22
      460 DUPTABLE                         R37 K87 [{"anchorRef", "binding", "menuOption", "onClose"}]
      461 GETTABLEKS                       R38 R11 K28 ["inputRef"]
      463 SETTABLEKS                       R38 R37 K51 ["anchorRef"]
      465 GETTABLEKS                       R38 R0 K12 ["binding"]
      467 SETTABLEKS                       R38 R37 K12 ["binding"]
      469 SETTABLEKS                       R19 R37 K85 ["menuOption"]
      471 SETTABLEKS                       R24 R37 K86 ["onClose"]
      473 CALL                             R35 2 1
      474 SETTABLEKS                       R35 R34 K70 ["Property"]
      476 CALL                             R31 3 -1
      477 RETURN                           R31 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R5 R5 K12 ["Localization"]
       39 GETTABLEKS                       R6 R3 K13 ["Divider"]
       41 GETTABLEKS                       R7 R3 K14 ["Menu"]
       43 GETTABLEKS                       R8 R3 K15 ["View"]
       45 GETTABLEKS                       R9 R3 K16 ["Enums"]
       47 GETTABLEKS                       R9 R9 K17 ["Orientation"]
       49 GETTABLEKS                       R10 R3 K16 ["Enums"]
       51 GETTABLEKS                       R10 R10 K18 ["PopoverSide"]
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R12 R0 K19 ["Src"]
       57 GETTABLEKS                       R12 R12 K11 ["Contexts"]
       59 GETTABLEKS                       R12 R12 K20 ["InputConfiguration"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R13 R0 K19 ["Src"]
       66 GETTABLEKS                       R13 R13 K21 ["Types"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K5 [require]
       71 GETTABLEKS                       R14 R0 K19 ["Src"]
       73 GETTABLEKS                       R14 R14 K22 ["Components"]
       75 GETTABLEKS                       R14 R14 K23 ["Property"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K5 [require]
       80 GETTABLEKS                       R15 R0 K19 ["Src"]
       82 GETTABLEKS                       R15 R15 K24 ["Util"]
       84 GETTABLEKS                       R15 R15 K25 ["Menus"]
       86 GETTABLEKS                       R15 R15 K26 ["getBindingMenu"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K5 [require]
       91 GETTABLEKS                       R16 R0 K19 ["Src"]
       93 GETTABLEKS                       R16 R16 K24 ["Util"]
       95 GETTABLEKS                       R16 R16 K27 ["Constants"]
       97 GETTABLEKS                       R16 R16 K28 ["MenuIdentifiers"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K5 [require]
      102 GETTABLEKS                       R17 R0 K19 ["Src"]
      104 GETTABLEKS                       R17 R17 K24 ["Util"]
      106 GETTABLEKS                       R17 R17 K29 ["Cell"]
      108 GETTABLEKS                       R17 R17 K30 ["getCellType"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K5 [require]
      113 GETIMPORT                        R18 K1 [script]
      115 GETTABLEKS                       R18 R18 K31 ["CellControl"]
      117 CALL                             R17 1 1
      118 GETIMPORT                        R18 K5 [require]
      120 GETIMPORT                        R19 K1 [script]
      122 GETTABLEKS                       R19 R19 K32 ["KeycodeDropdown"]
      124 CALL                             R18 1 1
      125 GETIMPORT                        R19 K5 [require]
      127 GETTABLEKS                       R20 R0 K19 ["Src"]
      129 GETTABLEKS                       R20 R20 K33 ["Hooks"]
      131 GETTABLEKS                       R20 R20 K29 ["Cell"]
      133 GETTABLEKS                       R20 R20 K34 ["useCellSelection"]
      135 CALL                             R19 1 1
      136 GETIMPORT                        R20 K5 [require]
      138 GETTABLEKS                       R21 R0 K19 ["Src"]
      140 GETTABLEKS                       R21 R21 K33 ["Hooks"]
      142 GETTABLEKS                       R21 R21 K29 ["Cell"]
      144 GETTABLEKS                       R21 R21 K35 ["useDisplayText"]
      146 CALL                             R20 1 1
      147 GETIMPORT                        R21 K5 [require]
      149 GETTABLEKS                       R22 R0 K19 ["Src"]
      151 GETTABLEKS                       R22 R22 K33 ["Hooks"]
      153 GETTABLEKS                       R22 R22 K36 ["useIcon"]
      155 CALL                             R21 1 1
      156 GETIMPORT                        R22 K5 [require]
      158 GETTABLEKS                       R23 R0 K19 ["Src"]
      160 GETTABLEKS                       R23 R23 K33 ["Hooks"]
      162 GETTABLEKS                       R23 R23 K29 ["Cell"]
      164 GETTABLEKS                       R23 R23 K37 ["useKeycodeDropdown"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K5 [require]
      169 GETTABLEKS                       R24 R0 K19 ["Src"]
      171 GETTABLEKS                       R24 R24 K33 ["Hooks"]
      173 GETTABLEKS                       R24 R24 K38 ["Binding"]
      175 GETTABLEKS                       R24 R24 K39 ["useStatus"]
      177 CALL                             R23 1 1
      178 GETTABLEKS                       R24 R0 K19 ["Src"]
      180 GETTABLEKS                       R24 R24 K40 ["Flags"]
      182 GETIMPORT                        R25 K5 [require]
      184 GETTABLEKS                       R26 R24 K41 ["getFFlagIAMBindingMenu"]
      186 CALL                             R25 1 1
      187 GETIMPORT                        R26 K5 [require]
      189 GETTABLEKS                       R27 R24 K42 ["getFFlagIAMBooleanProperties"]
      191 CALL                             R26 1 1
      192 GETIMPORT                        R27 K5 [require]
      194 GETTABLEKS                       R28 R24 K43 ["getFFlagIAMPlayerScripts"]
      196 CALL                             R27 1 1
      197 DUPCLOSURE                       R28 K44 [PROTO_9]
      198 CAPTURE                          VAL R26
      199 CAPTURE                          VAL R1
      200 CAPTURE                          VAL R11
      201 CAPTURE                          VAL R16
      202 CAPTURE                          VAL R5
      203 CAPTURE                          VAL R2
      204 CAPTURE                          VAL R23
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R22
      207 CAPTURE                          VAL R27
      208 CAPTURE                          VAL R25
      209 CAPTURE                          VAL R14
      210 CAPTURE                          VAL R15
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R20
      213 CAPTURE                          VAL R17
      214 CAPTURE                          VAL R18
      215 CAPTURE                          VAL R8
      216 CAPTURE                          VAL R6
      217 CAPTURE                          VAL R9
      218 CAPTURE                          VAL R7
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R13
      221 RETURN                           R28 1
