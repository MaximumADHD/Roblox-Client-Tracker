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
        1 GETTABLEKS                       R0 R0 K0 ["binding"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["binding"]
        7 GETTABLEKS                       R0 R0 K1 ["defaultPlayerScript"]
        9 JUMPIFNOT                        R0 ; [+3]
       10 NEWTABLE                         R0 0 0
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["binding"]
       16 JUMPIF                           R0 ; [+3]
       17 NEWTABLE                         R0 0 0
       19 RETURN                           R0 1
       20 GETUPVAL                         R0 1
       21 GETUPVAL                         R1 2
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K2 ["action"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K0 ["binding"]
       28 CALL                             R0 3 -1
       29 RETURN                           R0 -1

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
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K7 ["SHOW_IN_EXPLORER"]
       24 JUMPIFNOTEQ                      R0 R2 ; [+9]
       26 JUMPIFNOT                        R1 ; [+7]
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K8 ["showInExplorer"]
       30 GETTABLEKS                       R3 R1 K9 ["uuid"]
       32 CALL                             R2 1 0
       33 RETURN                           R0 0
       34 JUMPIFNOT                        R1 ; [+18]
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R2 K10 ["BINDING_CLAMP_MAGNITUDE_TO_ONE"]
       38 JUMPIFNOTEQ                      R0 R2 ; [+14]
       40 GETUPVAL                         R2 3
       41 GETTABLEKS                       R2 R2 K11 ["updateBinding"]
       43 GETTABLEKS                       R3 R1 K9 ["uuid"]
       45 DUPTABLE                         R4 K13 [{"clampMagnitudeToOne"}]
       46 GETTABLEKS                       R6 R1 K12 ["clampMagnitudeToOne"]
       48 NOT                              R5 R6
       49 SETTABLEKS                       R5 R4 K12 ["clampMagnitudeToOne"]
       51 CALL                             R2 2 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R2 4
       54 MOVE                             R3 R0
       55 CALL                             R2 1 0
       56 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["disabled"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useContext"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R4 R0 K3 ["property"]
       11 JUMPIFNOTEQKS                    R4 K4 ["keyCode"] ; [+6]
       13 GETTABLEKS                       R3 R0 K5 ["action"]
       15 GETTABLEKS                       R3 R3 K6 ["type"]
       17 JUMP                             ; [+2]
       18 GETIMPORT                        R3 K10 [Enum.InputActionType.Bool]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R5 R0 K3 ["property"]
       23 GETTABLEKS                       R6 R0 K11 ["schema"]
       25 MOVE                             R7 R3
       26 GETTABLEKS                       R8 R0 K12 ["binding"]
       28 CALL                             R4 4 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K1 ["useContext"]
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R6 R6 K2 ["Context"]
       35 CALL                             R5 1 1
       36 GETUPVAL                         R6 4
       37 GETTABLEKS                       R6 R6 K13 ["createNextOrder"]
       39 CALL                             R6 0 1
       40 GETUPVAL                         R7 5
       41 GETTABLEKS                       R8 R0 K5 ["action"]
       43 GETTABLEKS                       R8 R8 K14 ["parentUuid"]
       45 GETTABLEKS                       R9 R0 K12 ["binding"]
       47 GETTABLEKS                       R10 R0 K3 ["property"]
       49 GETTABLEKS                       R11 R0 K11 ["schema"]
       51 GETTABLEKS                       R12 R0 K5 ["action"]
       53 GETTABLEKS                       R12 R12 K6 ["type"]
       55 GETTABLEKS                       R13 R0 K15 ["index"]
       57 GETTABLEKS                       R14 R0 K16 ["validBinding"]
       59 CALL                             R7 7 3
       60 GETUPVAL                         R10 6
       61 MOVE                             R11 R0
       62 CALL                             R10 1 1
       63 GETUPVAL                         R11 7
       64 MOVE                             R12 R0
       65 MOVE                             R13 R3
       66 CALL                             R11 2 1
       67 GETUPVAL                         R12 4
       68 GETTABLEKS                       R12 R12 K17 ["useEventCallback"]
       70 NEWCLOSURE                       R13 P0
       71 CAPTURE                          VAL R11
       72 CALL                             R12 1 1
       73 GETUPVAL                         R13 4
       74 GETTABLEKS                       R13 R13 K17 ["useEventCallback"]
       76 NEWCLOSURE                       R14 P1
       77 CAPTURE                          VAL R11
       78 CALL                             R13 1 1
       79 GETUPVAL                         R14 4
       80 GETTABLEKS                       R14 R14 K17 ["useEventCallback"]
       82 NEWCLOSURE                       R15 P2
       83 CAPTURE                          VAL R11
       84 CALL                             R14 1 1
       85 GETUPVAL                         R15 4
       86 GETTABLEKS                       R15 R15 K17 ["useEventCallback"]
       88 NEWCLOSURE                       R16 P3
       89 CAPTURE                          VAL R11
       90 CALL                             R15 1 1
       91 GETUPVAL                         R16 0
       92 GETTABLEKS                       R16 R16 K18 ["useMemo"]
       94 NEWCLOSURE                       R17 P4
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U8
       97 CAPTURE                          VAL R5
       98 NEWTABLE                         R18 0 3
      100 MOVE                             R19 R5
      101 GETTABLEKS                       R20 R0 K5 ["action"]
      103 GETTABLEKS                       R21 R0 K12 ["binding"]
      105 SETLIST                          R18 R19 3 [1]
      107 CALL                             R16 2 1
      108 GETUPVAL                         R17 4
      109 GETTABLEKS                       R17 R17 K19 ["useStagnatingState"]
      111 LOADB                            R18 0
      112 NEWTABLE                         R19 0 1
      114 MOVE                             R20 R16
      115 SETLIST                          R19 R20 1 [1]
      117 CALL                             R17 2 2
      118 GETUPVAL                         R19 0
      119 GETTABLEKS                       R19 R19 K20 ["useState"]
      121 LOADNIL                          R20
      122 CALL                             R19 1 2
      123 GETUPVAL                         R21 4
      124 GETTABLEKS                       R21 R21 K17 ["useEventCallback"]
      126 NEWCLOSURE                       R22 P5
      127 CAPTURE                          VAL R18
      128 CALL                             R21 1 1
      129 GETUPVAL                         R22 4
      130 GETTABLEKS                       R22 R22 K17 ["useEventCallback"]
      132 NEWCLOSURE                       R23 P6
      133 CAPTURE                          VAL R18
      134 CALL                             R22 1 1
      135 GETUPVAL                         R23 4
      136 GETTABLEKS                       R23 R23 K17 ["useEventCallback"]
      138 NEWCLOSURE                       R24 P7
      139 CAPTURE                          VAL R18
      140 CAPTURE                          VAL R0
      141 CAPTURE                          UPVAL U9
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R20
      144 CALL                             R23 1 1
      145 GETUPVAL                         R24 4
      146 GETTABLEKS                       R24 R24 K17 ["useEventCallback"]
      148 NEWCLOSURE                       R25 P8
      149 CAPTURE                          VAL R20
      150 CALL                             R24 1 1
      151 GETTABLEKS                       R26 R0 K3 ["property"]
      153 JUMPIFNOTEQKS                    R26 K21 ["primaryModifier"] ; [+9]
      155 GETTABLEKS                       R25 R0 K12 ["binding"]
      157 JUMPIFNOT                        R25 ; [+18]
      158 GETTABLEKS                       R25 R0 K12 ["binding"]
      160 GETTABLEKS                       R25 R25 K22 ["uiModifier"]
      162 JUMP                             ; [+13]
      163 GETTABLEKS                       R26 R0 K3 ["property"]
      165 JUMPIFNOTEQKS                    R26 K4 ["keyCode"] ; [+9]
      167 GETTABLEKS                       R25 R0 K12 ["binding"]
      169 JUMPIFNOT                        R25 ; [+6]
      170 GETTABLEKS                       R25 R0 K12 ["binding"]
      172 GETTABLEKS                       R25 R25 K23 ["uiButton"]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R25
      176 GETUPVAL                         R26 10
      177 JUMPIFNOT                        R25 ; [+3]
      178 GETTABLEKS                       R27 R25 K6 ["type"]
      180 JUMP                             ; [+1]
      181 LOADK                            R27 K24 ["ImageButton"]
      182 CALL                             R26 1 1
      183 MOVE                             R27 R25
      184 JUMPIFNOT                        R27 ; [+2]
      185 GETTABLEKS                       R27 R25 K25 ["name"]
      187 GETUPVAL                         R28 11
      188 MOVE                             R29 R4
      189 GETTABLEKS                       R30 R0 K12 ["binding"]
      191 GETTABLEKS                       R31 R0 K3 ["property"]
      193 MOVE                             R32 R27
      194 CALL                             R28 4 1
      195 GETUPVAL                         R29 0
      196 GETTABLEKS                       R29 R29 K26 ["createElement"]
      198 GETUPVAL                         R30 12
      199 DUPTABLE                         R31 K42 [{"disabled", "displayImage", "icon", "inputRef", "isHovered", "isOpen", "filterText", "onActivated", "onFilterTextChanged", "onOpenActivated", "onRemoveActivated", "onSecondaryActivated", "onStateChanged", "property", "schema", "selected", "cellType", "text"}]
      200 SETTABLEKS                       R1 R31 K0 ["disabled"]
      202 GETTABLEKS                       R33 R0 K3 ["property"]
      204 JUMPIFNOTEQKS                    R33 K4 ["keyCode"] ; [+16]
      206 GETTABLEKS                       R33 R0 K12 ["binding"]
      208 JUMPIFEQKNIL                     R33 ; [+12]
      210 GETTABLEKS                       R33 R0 K12 ["binding"]
      212 GETTABLEKS                       R33 R33 K27 ["displayImage"]
      214 JUMPIFEQKS                       R33 K43 [""] ; [+6]
      216 GETTABLEKS                       R32 R0 K12 ["binding"]
      218 GETTABLEKS                       R32 R32 K27 ["displayImage"]
      220 JUMP                             ; [+1]
      221 LOADNIL                          R32
      222 SETTABLEKS                       R32 R31 K27 ["displayImage"]
      224 DUPTABLE                         R32 K49 [{"buttonIcon", "cellType", "currentIcon", "message", "severity", "title"}]
      225 SETTABLEKS                       R26 R32 K44 ["buttonIcon"]
      227 SETTABLEKS                       R4 R32 K40 ["cellType"]
      229 GETTABLEKS                       R33 R11 K45 ["currentIcon"]
      231 SETTABLEKS                       R33 R32 K45 ["currentIcon"]
      233 SETTABLEKS                       R9 R32 K46 ["message"]
      235 SETTABLEKS                       R7 R32 K47 ["severity"]
      237 SETTABLEKS                       R8 R32 K48 ["title"]
      239 SETTABLEKS                       R32 R31 K28 ["icon"]
      241 GETTABLEKS                       R32 R11 K29 ["inputRef"]
      243 SETTABLEKS                       R32 R31 K29 ["inputRef"]
      245 GETTABLEKS                       R32 R10 K30 ["isHovered"]
      247 SETTABLEKS                       R32 R31 K30 ["isHovered"]
      249 GETTABLEKS                       R32 R11 K31 ["isOpen"]
      251 SETTABLEKS                       R32 R31 K31 ["isOpen"]
      253 GETTABLEKS                       R32 R11 K32 ["filterText"]
      255 SETTABLEKS                       R32 R31 K32 ["filterText"]
      257 JUMPIFNOTEQKS                    R4 K50 ["Instance"] ; [+4]
      259 GETTABLEKS                       R32 R10 K51 ["onButtonSelectorActivated"]
      261 JUMP                             ; [+8]
      262 JUMPIFNOTEQKS                    R4 K52 ["Dropdown"] ; [+6]
      264 GETTABLEKS                       R33 R11 K31 ["isOpen"]
      266 JUMPIF                           R33 ; [+2]
      267 MOVE                             R32 R15
      268 JUMP                             ; [+1]
      269 LOADNIL                          R32
      270 SETTABLEKS                       R32 R31 K33 ["onActivated"]
      272 GETTABLEKS                       R32 R11 K34 ["onFilterTextChanged"]
      274 SETTABLEKS                       R32 R31 K34 ["onFilterTextChanged"]
      276 SETTABLEKS                       R13 R31 K35 ["onOpenActivated"]
      278 GETTABLEKS                       R33 R0 K12 ["binding"]
      280 JUMPIFEQKNIL                     R33 ; [+4]
      282 GETTABLEKS                       R32 R10 K36 ["onRemoveActivated"]
      284 JUMP                             ; [+1]
      285 LOADNIL                          R32
      286 SETTABLEKS                       R32 R31 K36 ["onRemoveActivated"]
      288 LENGTH                           R33 R16
      289 LOADN                            R34 0
      290 JUMPIFNOTLT                      R34 R33 ; [+3]
      292 MOVE                             R32 R21
      293 JUMP                             ; [+1]
      294 LOADNIL                          R32
      295 SETTABLEKS                       R32 R31 K37 ["onSecondaryActivated"]
      297 GETTABLEKS                       R32 R10 K38 ["onStateChanged"]
      299 SETTABLEKS                       R32 R31 K38 ["onStateChanged"]
      301 GETTABLEKS                       R32 R0 K3 ["property"]
      303 SETTABLEKS                       R32 R31 K3 ["property"]
      305 GETTABLEKS                       R32 R0 K11 ["schema"]
      307 SETTABLEKS                       R32 R31 K11 ["schema"]
      309 JUMPIFNOTEQKS                    R4 K50 ["Instance"] ; [+4]
      311 GETTABLEKS                       R32 R10 K39 ["selected"]
      313 JUMP                             ; [+2]
      314 GETTABLEKS                       R32 R11 K31 ["isOpen"]
      316 SETTABLEKS                       R32 R31 K39 ["selected"]
      318 SETTABLEKS                       R4 R31 K40 ["cellType"]
      320 GETTABLEKS                       R33 R0 K12 ["binding"]
      322 JUMPIFEQKNIL                     R33 ; [+16]
      324 GETTABLEKS                       R33 R0 K12 ["binding"]
      326 GETTABLEKS                       R33 R33 K53 ["displayName"]
      328 JUMPIFEQKS                       R33 K43 [""] ; [+10]
      330 GETTABLEKS                       R33 R0 K3 ["property"]
      332 JUMPIFNOTEQKS                    R33 K4 ["keyCode"] ; [+6]
      334 GETTABLEKS                       R32 R0 K12 ["binding"]
      336 GETTABLEKS                       R32 R32 K53 ["displayName"]
      338 JUMP                             ; [+1]
      339 MOVE                             R32 R28
      340 SETTABLEKS                       R32 R31 K41 ["text"]
      342 CALL                             R29 2 1
      343 JUMPIFNOTEQKS                    R4 K52 ["Dropdown"] ; [+35]
      345 GETUPVAL                         R30 0
      346 GETTABLEKS                       R30 R30 K26 ["createElement"]
      348 GETUPVAL                         R31 13
      349 DUPTABLE                         R32 K58 [{"anchorRef", "isOpen", "items", "onCloseMenu", "onItemChanged", "property", "schema"}]
      350 GETTABLEKS                       R33 R11 K29 ["inputRef"]
      352 SETTABLEKS                       R33 R32 K54 ["anchorRef"]
      354 GETTABLEKS                       R33 R11 K31 ["isOpen"]
      356 SETTABLEKS                       R33 R32 K31 ["isOpen"]
      358 GETTABLEKS                       R33 R11 K55 ["items"]
      360 SETTABLEKS                       R33 R32 K55 ["items"]
      362 SETTABLEKS                       R14 R32 K56 ["onCloseMenu"]
      364 SETTABLEKS                       R12 R32 K57 ["onItemChanged"]
      366 GETTABLEKS                       R33 R0 K3 ["property"]
      368 SETTABLEKS                       R33 R32 K3 ["property"]
      370 GETTABLEKS                       R33 R0 K11 ["schema"]
      372 SETTABLEKS                       R33 R32 K11 ["schema"]
      374 DUPTABLE                         R33 K60 [{"Control"}]
      375 SETTABLEKS                       R29 R33 K59 ["Control"]
      377 CALL                             R30 3 1
      378 JUMP                             ; [+1]
      379 MOVE                             R30 R29
      380 GETUPVAL                         R31 0
      381 GETTABLEKS                       R31 R31 K26 ["createElement"]
      383 GETUPVAL                         R32 14
      384 DUPTABLE                         R33 K66 [{["GroupTransparency"], ["LayoutOrder"], ["tag"] = "columns-input col align-y-center size-0-full", ["testId"]}]
      385 JUMPIFNOT                        R1 ; [+2]
      386 LOADK                            R34 K67 [0.5]
      387 JUMP                             ; [+1]
      388 LOADNIL                          R34
      389 SETTABLEKS                       R34 R33 K61 ["GroupTransparency"]
      391 GETTABLEKS                       R34 R0 K62 ["LayoutOrder"]
      393 SETTABLEKS                       R34 R33 K62 ["LayoutOrder"]
      395 LOADK                            R34 K68 ["%*-%*-cell"]
      396 GETTABLEKS                       R36 R0 K3 ["property"]
      398 GETTABLEKS                       R37 R0 K11 ["schema"]
      400 NAMECALL                         R34 R34 K69 ["format"]
      402 CALL                             R34 3 1
      403 SETTABLEKS                       R34 R33 K65 ["testId"]
      405 DUPTABLE                         R34 K74 [{"Container", "Divider", "Menu", "Property"}]
      406 GETUPVAL                         R35 0
      407 GETTABLEKS                       R35 R35 K26 ["createElement"]
      409 GETUPVAL                         R36 14
      410 DUPTABLE                         R37 K76 [{["LayoutOrder"], ["tag"] = "row align-y-center size-full-full"}]
      411 MOVE                             R38 R6
      412 CALL                             R38 0 1
      413 SETTABLEKS                       R38 R37 K62 ["LayoutOrder"]
      415 DUPTABLE                         R38 K78 [{"Content"}]
      416 LOADB                            R39 0
      417 JUMPIFEQKNIL                     R4 ; [+2]
      419 MOVE                             R39 R30
      420 SETTABLEKS                       R39 R38 K77 ["Content"]
      422 CALL                             R35 3 1
      423 SETTABLEKS                       R35 R34 K70 ["Container"]
      425 GETUPVAL                         R35 0
      426 GETTABLEKS                       R35 R35 K26 ["createElement"]
      428 GETUPVAL                         R36 15
      429 DUPTABLE                         R37 K81 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
      430 MOVE                             R38 R6
      431 CALL                             R38 0 1
      432 SETTABLEKS                       R38 R37 K62 ["LayoutOrder"]
      434 GETUPVAL                         R38 16
      435 GETTABLEKS                       R38 R38 K82 ["Horizontal"]
      437 SETTABLEKS                       R38 R37 K79 ["orientation"]
      439 CALL                             R35 2 1
      440 SETTABLEKS                       R35 R34 K71 ["Divider"]
      442 GETUPVAL                         R35 0
      443 GETTABLEKS                       R35 R35 K26 ["createElement"]
      445 GETUPVAL                         R36 17
      446 DUPTABLE                         R37 K85 [{"anchorRef", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      447 GETTABLEKS                       R38 R11 K29 ["inputRef"]
      449 SETTABLEKS                       R38 R37 K54 ["anchorRef"]
      451 SETTABLEKS                       R17 R37 K31 ["isOpen"]
      453 SETTABLEKS                       R16 R37 K55 ["items"]
      455 SETTABLEKS                       R23 R37 K33 ["onActivated"]
      457 SETTABLEKS                       R22 R37 K83 ["onPressedOutside"]
      459 GETUPVAL                         R38 18
      460 GETTABLEKS                       R38 R38 K86 ["Right"]
      462 SETTABLEKS                       R38 R37 K84 ["side"]
      464 LOADK                            R38 K87 ["%*-%*-cell-menu"]
      465 GETTABLEKS                       R40 R0 K3 ["property"]
      467 GETTABLEKS                       R41 R0 K11 ["schema"]
      469 NAMECALL                         R38 R38 K69 ["format"]
      471 CALL                             R38 3 1
      472 SETTABLEKS                       R38 R37 K65 ["testId"]
      474 CALL                             R35 2 1
      475 SETTABLEKS                       R35 R34 K72 ["Menu"]
      477 GETTABLEKS                       R35 R0 K12 ["binding"]
      479 JUMPIFNOT                        R35 ; [+20]
      480 MOVE                             R35 R19
      481 JUMPIFNOT                        R35 ; [+18]
      482 GETUPVAL                         R35 0
      483 GETTABLEKS                       R35 R35 K26 ["createElement"]
      485 GETUPVAL                         R36 19
      486 DUPTABLE                         R37 K90 [{"anchorRef", "binding", "menuOption", "onClose"}]
      487 GETTABLEKS                       R38 R11 K29 ["inputRef"]
      489 SETTABLEKS                       R38 R37 K54 ["anchorRef"]
      491 GETTABLEKS                       R38 R0 K12 ["binding"]
      493 SETTABLEKS                       R38 R37 K12 ["binding"]
      495 SETTABLEKS                       R19 R37 K88 ["menuOption"]
      497 SETTABLEKS                       R24 R37 K89 ["onClose"]
      499 CALL                             R35 2 1
      500 SETTABLEKS                       R35 R34 K73 ["Property"]
      502 CALL                             R31 3 -1
      503 RETURN                           R31 -1

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
      178 DUPCLOSURE                       R24 K40 [PROTO_9]
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R11
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R23
      185 CAPTURE                          VAL R19
      186 CAPTURE                          VAL R22
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R21
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R17
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R6
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R7
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R13
      199 RETURN                           R24 1
