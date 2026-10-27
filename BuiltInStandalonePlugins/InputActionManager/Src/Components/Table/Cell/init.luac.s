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
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+13]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K7 ["SHOW_IN_EXPLORER"]
       27 JUMPIFNOTEQ                      R0 R2 ; [+9]
       29 JUMPIFNOT                        R1 ; [+7]
       30 GETUPVAL                         R2 4
       31 GETTABLEKS                       R2 R2 K8 ["showInExplorer"]
       33 GETTABLEKS                       R3 R1 K9 ["uuid"]
       35 CALL                             R2 1 0
       36 RETURN                           R0 0
       37 JUMPIFNOT                        R1 ; [+18]
       38 GETUPVAL                         R2 3
       39 GETTABLEKS                       R2 R2 K10 ["BINDING_CLAMP_MAGNITUDE_TO_ONE"]
       41 JUMPIFNOTEQ                      R0 R2 ; [+14]
       43 GETUPVAL                         R2 4
       44 GETTABLEKS                       R2 R2 K11 ["updateBinding"]
       46 GETTABLEKS                       R3 R1 K9 ["uuid"]
       48 DUPTABLE                         R4 K13 [{"clampMagnitudeToOne"}]
       49 GETTABLEKS                       R6 R1 K12 ["clampMagnitudeToOne"]
       51 NOT                              R5 R6
       52 SETTABLEKS                       R5 R4 K12 ["clampMagnitudeToOne"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0
       56 GETUPVAL                         R2 5
       57 MOVE                             R3 R0
       58 CALL                             R2 1 0
       59 RETURN                           R0 0

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
      142 CAPTURE                          UPVAL U10
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R20
      145 CALL                             R23 1 1
      146 GETUPVAL                         R24 4
      147 GETTABLEKS                       R24 R24 K17 ["useEventCallback"]
      149 NEWCLOSURE                       R25 P8
      150 CAPTURE                          VAL R20
      151 CALL                             R24 1 1
      152 GETTABLEKS                       R26 R0 K3 ["property"]
      154 JUMPIFNOTEQKS                    R26 K21 ["primaryModifier"] ; [+9]
      156 GETTABLEKS                       R25 R0 K12 ["binding"]
      158 JUMPIFNOT                        R25 ; [+18]
      159 GETTABLEKS                       R25 R0 K12 ["binding"]
      161 GETTABLEKS                       R25 R25 K22 ["uiModifier"]
      163 JUMP                             ; [+13]
      164 GETTABLEKS                       R26 R0 K3 ["property"]
      166 JUMPIFNOTEQKS                    R26 K4 ["keyCode"] ; [+9]
      168 GETTABLEKS                       R25 R0 K12 ["binding"]
      170 JUMPIFNOT                        R25 ; [+6]
      171 GETTABLEKS                       R25 R0 K12 ["binding"]
      173 GETTABLEKS                       R25 R25 K23 ["uiButton"]
      175 JUMP                             ; [+1]
      176 LOADNIL                          R25
      177 GETUPVAL                         R26 11
      178 JUMPIFNOT                        R25 ; [+3]
      179 GETTABLEKS                       R27 R25 K6 ["type"]
      181 JUMP                             ; [+1]
      182 LOADK                            R27 K24 ["ImageButton"]
      183 CALL                             R26 1 1
      184 MOVE                             R27 R25
      185 JUMPIFNOT                        R27 ; [+2]
      186 GETTABLEKS                       R27 R25 K25 ["name"]
      188 GETUPVAL                         R28 12
      189 MOVE                             R29 R4
      190 GETTABLEKS                       R30 R0 K12 ["binding"]
      192 GETTABLEKS                       R31 R0 K3 ["property"]
      194 MOVE                             R32 R27
      195 CALL                             R28 4 1
      196 GETUPVAL                         R29 0
      197 GETTABLEKS                       R29 R29 K26 ["createElement"]
      199 GETUPVAL                         R30 13
      200 DUPTABLE                         R31 K42 [{"disabled", "displayImage", "icon", "inputRef", "isHovered", "isOpen", "filterText", "onActivated", "onFilterTextChanged", "onOpenActivated", "onRemoveActivated", "onSecondaryActivated", "onStateChanged", "property", "schema", "selected", "cellType", "text"}]
      201 SETTABLEKS                       R1 R31 K0 ["disabled"]
      203 GETUPVAL                         R33 14
      204 CALL                             R33 0 1
      205 JUMPIFNOT                        R33 ; [+19]
      206 GETTABLEKS                       R33 R0 K3 ["property"]
      208 JUMPIFNOTEQKS                    R33 K4 ["keyCode"] ; [+16]
      210 GETTABLEKS                       R33 R0 K12 ["binding"]
      212 JUMPIFEQKNIL                     R33 ; [+12]
      214 GETTABLEKS                       R33 R0 K12 ["binding"]
      216 GETTABLEKS                       R33 R33 K27 ["displayImage"]
      218 JUMPIFEQKS                       R33 K43 [""] ; [+6]
      220 GETTABLEKS                       R32 R0 K12 ["binding"]
      222 GETTABLEKS                       R32 R32 K27 ["displayImage"]
      224 JUMP                             ; [+1]
      225 LOADNIL                          R32
      226 SETTABLEKS                       R32 R31 K27 ["displayImage"]
      228 DUPTABLE                         R32 K49 [{"buttonIcon", "cellType", "currentIcon", "message", "severity", "title"}]
      229 SETTABLEKS                       R26 R32 K44 ["buttonIcon"]
      231 SETTABLEKS                       R4 R32 K40 ["cellType"]
      233 GETTABLEKS                       R33 R11 K45 ["currentIcon"]
      235 SETTABLEKS                       R33 R32 K45 ["currentIcon"]
      237 SETTABLEKS                       R9 R32 K46 ["message"]
      239 SETTABLEKS                       R7 R32 K47 ["severity"]
      241 SETTABLEKS                       R8 R32 K48 ["title"]
      243 SETTABLEKS                       R32 R31 K28 ["icon"]
      245 GETTABLEKS                       R32 R11 K29 ["inputRef"]
      247 SETTABLEKS                       R32 R31 K29 ["inputRef"]
      249 GETTABLEKS                       R32 R10 K30 ["isHovered"]
      251 SETTABLEKS                       R32 R31 K30 ["isHovered"]
      253 GETTABLEKS                       R32 R11 K31 ["isOpen"]
      255 SETTABLEKS                       R32 R31 K31 ["isOpen"]
      257 GETTABLEKS                       R32 R11 K32 ["filterText"]
      259 SETTABLEKS                       R32 R31 K32 ["filterText"]
      261 JUMPIFNOTEQKS                    R4 K50 ["Instance"] ; [+4]
      263 GETTABLEKS                       R32 R10 K51 ["onButtonSelectorActivated"]
      265 JUMP                             ; [+8]
      266 JUMPIFNOTEQKS                    R4 K52 ["Dropdown"] ; [+6]
      268 GETTABLEKS                       R33 R11 K31 ["isOpen"]
      270 JUMPIF                           R33 ; [+2]
      271 MOVE                             R32 R15
      272 JUMP                             ; [+1]
      273 LOADNIL                          R32
      274 SETTABLEKS                       R32 R31 K33 ["onActivated"]
      276 GETTABLEKS                       R32 R11 K34 ["onFilterTextChanged"]
      278 SETTABLEKS                       R32 R31 K34 ["onFilterTextChanged"]
      280 SETTABLEKS                       R13 R31 K35 ["onOpenActivated"]
      282 GETTABLEKS                       R33 R0 K12 ["binding"]
      284 JUMPIFEQKNIL                     R33 ; [+4]
      286 GETTABLEKS                       R32 R10 K36 ["onRemoveActivated"]
      288 JUMP                             ; [+1]
      289 LOADNIL                          R32
      290 SETTABLEKS                       R32 R31 K36 ["onRemoveActivated"]
      292 LENGTH                           R33 R16
      293 LOADN                            R34 0
      294 JUMPIFNOTLT                      R34 R33 ; [+3]
      296 MOVE                             R32 R21
      297 JUMP                             ; [+1]
      298 LOADNIL                          R32
      299 SETTABLEKS                       R32 R31 K37 ["onSecondaryActivated"]
      301 GETTABLEKS                       R32 R10 K38 ["onStateChanged"]
      303 SETTABLEKS                       R32 R31 K38 ["onStateChanged"]
      305 GETTABLEKS                       R32 R0 K3 ["property"]
      307 SETTABLEKS                       R32 R31 K3 ["property"]
      309 GETTABLEKS                       R32 R0 K11 ["schema"]
      311 SETTABLEKS                       R32 R31 K11 ["schema"]
      313 JUMPIFNOTEQKS                    R4 K50 ["Instance"] ; [+4]
      315 GETTABLEKS                       R32 R10 K39 ["selected"]
      317 JUMP                             ; [+2]
      318 GETTABLEKS                       R32 R11 K31 ["isOpen"]
      320 SETTABLEKS                       R32 R31 K39 ["selected"]
      322 SETTABLEKS                       R4 R31 K40 ["cellType"]
      324 GETUPVAL                         R33 14
      325 CALL                             R33 0 1
      326 JUMPIFNOT                        R33 ; [+19]
      327 GETTABLEKS                       R33 R0 K12 ["binding"]
      329 JUMPIFEQKNIL                     R33 ; [+16]
      331 GETTABLEKS                       R33 R0 K12 ["binding"]
      333 GETTABLEKS                       R33 R33 K53 ["displayName"]
      335 JUMPIFEQKS                       R33 K43 [""] ; [+10]
      337 GETTABLEKS                       R33 R0 K3 ["property"]
      339 JUMPIFNOTEQKS                    R33 K4 ["keyCode"] ; [+6]
      341 GETTABLEKS                       R32 R0 K12 ["binding"]
      343 GETTABLEKS                       R32 R32 K53 ["displayName"]
      345 JUMP                             ; [+1]
      346 MOVE                             R32 R28
      347 SETTABLEKS                       R32 R31 K41 ["text"]
      349 CALL                             R29 2 1
      350 JUMPIFNOTEQKS                    R4 K52 ["Dropdown"] ; [+35]
      352 GETUPVAL                         R30 0
      353 GETTABLEKS                       R30 R30 K26 ["createElement"]
      355 GETUPVAL                         R31 15
      356 DUPTABLE                         R32 K58 [{"anchorRef", "isOpen", "items", "onCloseMenu", "onItemChanged", "property", "schema"}]
      357 GETTABLEKS                       R33 R11 K29 ["inputRef"]
      359 SETTABLEKS                       R33 R32 K54 ["anchorRef"]
      361 GETTABLEKS                       R33 R11 K31 ["isOpen"]
      363 SETTABLEKS                       R33 R32 K31 ["isOpen"]
      365 GETTABLEKS                       R33 R11 K55 ["items"]
      367 SETTABLEKS                       R33 R32 K55 ["items"]
      369 SETTABLEKS                       R14 R32 K56 ["onCloseMenu"]
      371 SETTABLEKS                       R12 R32 K57 ["onItemChanged"]
      373 GETTABLEKS                       R33 R0 K3 ["property"]
      375 SETTABLEKS                       R33 R32 K3 ["property"]
      377 GETTABLEKS                       R33 R0 K11 ["schema"]
      379 SETTABLEKS                       R33 R32 K11 ["schema"]
      381 DUPTABLE                         R33 K60 [{"Control"}]
      382 SETTABLEKS                       R29 R33 K59 ["Control"]
      384 CALL                             R30 3 1
      385 JUMP                             ; [+1]
      386 MOVE                             R30 R29
      387 GETUPVAL                         R31 0
      388 GETTABLEKS                       R31 R31 K26 ["createElement"]
      390 GETUPVAL                         R32 16
      391 DUPTABLE                         R33 K66 [{["GroupTransparency"], ["LayoutOrder"], ["tag"] = "columns-input col align-y-center size-0-full", ["testId"]}]
      392 JUMPIFNOT                        R1 ; [+2]
      393 LOADK                            R34 K67 [0.5]
      394 JUMP                             ; [+1]
      395 LOADNIL                          R34
      396 SETTABLEKS                       R34 R33 K61 ["GroupTransparency"]
      398 GETTABLEKS                       R34 R0 K62 ["LayoutOrder"]
      400 SETTABLEKS                       R34 R33 K62 ["LayoutOrder"]
      402 LOADK                            R34 K68 ["%*-%*-cell"]
      403 GETTABLEKS                       R36 R0 K3 ["property"]
      405 GETTABLEKS                       R37 R0 K11 ["schema"]
      407 NAMECALL                         R34 R34 K69 ["format"]
      409 CALL                             R34 3 1
      410 SETTABLEKS                       R34 R33 K65 ["testId"]
      412 DUPTABLE                         R34 K74 [{"Container", "Divider", "Menu", "Property"}]
      413 GETUPVAL                         R35 0
      414 GETTABLEKS                       R35 R35 K26 ["createElement"]
      416 GETUPVAL                         R36 16
      417 DUPTABLE                         R37 K76 [{["LayoutOrder"], ["tag"] = "row align-y-center size-full-full"}]
      418 MOVE                             R38 R6
      419 CALL                             R38 0 1
      420 SETTABLEKS                       R38 R37 K62 ["LayoutOrder"]
      422 DUPTABLE                         R38 K78 [{"Content"}]
      423 LOADB                            R39 0
      424 JUMPIFEQKNIL                     R4 ; [+2]
      426 MOVE                             R39 R30
      427 SETTABLEKS                       R39 R38 K77 ["Content"]
      429 CALL                             R35 3 1
      430 SETTABLEKS                       R35 R34 K70 ["Container"]
      432 GETUPVAL                         R35 0
      433 GETTABLEKS                       R35 R35 K26 ["createElement"]
      435 GETUPVAL                         R36 17
      436 DUPTABLE                         R37 K81 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
      437 MOVE                             R38 R6
      438 CALL                             R38 0 1
      439 SETTABLEKS                       R38 R37 K62 ["LayoutOrder"]
      441 GETUPVAL                         R38 18
      442 GETTABLEKS                       R38 R38 K82 ["Horizontal"]
      444 SETTABLEKS                       R38 R37 K79 ["orientation"]
      446 CALL                             R35 2 1
      447 SETTABLEKS                       R35 R34 K71 ["Divider"]
      449 GETUPVAL                         R35 0
      450 GETTABLEKS                       R35 R35 K26 ["createElement"]
      452 GETUPVAL                         R36 19
      453 DUPTABLE                         R37 K85 [{"anchorRef", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      454 GETTABLEKS                       R38 R11 K29 ["inputRef"]
      456 SETTABLEKS                       R38 R37 K54 ["anchorRef"]
      458 SETTABLEKS                       R17 R37 K31 ["isOpen"]
      460 SETTABLEKS                       R16 R37 K55 ["items"]
      462 SETTABLEKS                       R23 R37 K33 ["onActivated"]
      464 SETTABLEKS                       R22 R37 K83 ["onPressedOutside"]
      466 GETUPVAL                         R38 20
      467 GETTABLEKS                       R38 R38 K86 ["Right"]
      469 SETTABLEKS                       R38 R37 K84 ["side"]
      471 LOADK                            R38 K87 ["%*-%*-cell-menu"]
      472 GETTABLEKS                       R40 R0 K3 ["property"]
      474 GETTABLEKS                       R41 R0 K11 ["schema"]
      476 NAMECALL                         R38 R38 K69 ["format"]
      478 CALL                             R38 3 1
      479 SETTABLEKS                       R38 R37 K65 ["testId"]
      481 CALL                             R35 2 1
      482 SETTABLEKS                       R35 R34 K72 ["Menu"]
      484 GETTABLEKS                       R35 R0 K12 ["binding"]
      486 JUMPIFNOT                        R35 ; [+20]
      487 MOVE                             R35 R19
      488 JUMPIFNOT                        R35 ; [+18]
      489 GETUPVAL                         R35 0
      490 GETTABLEKS                       R35 R35 K26 ["createElement"]
      492 GETUPVAL                         R36 21
      493 DUPTABLE                         R37 K90 [{"anchorRef", "binding", "menuOption", "onClose"}]
      494 GETTABLEKS                       R38 R11 K29 ["inputRef"]
      496 SETTABLEKS                       R38 R37 K54 ["anchorRef"]
      498 GETTABLEKS                       R38 R0 K12 ["binding"]
      500 SETTABLEKS                       R38 R37 K12 ["binding"]
      502 SETTABLEKS                       R19 R37 K88 ["menuOption"]
      504 SETTABLEKS                       R24 R37 K89 ["onClose"]
      506 CALL                             R35 2 1
      507 SETTABLEKS                       R35 R34 K73 ["Property"]
      509 CALL                             R31 3 -1
      510 RETURN                           R31 -1

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
      184 GETTABLEKS                       R26 R24 K41 ["getFFlagIAMShowInExplorer"]
      186 CALL                             R25 1 1
      187 GETIMPORT                        R26 K5 [require]
      189 GETTABLEKS                       R27 R24 K42 ["getFFlagIAMUseDisplayImageName"]
      191 CALL                             R26 1 1
      192 DUPCLOSURE                       R27 K43 [PROTO_9]
      193 CAPTURE                          VAL R1
      194 CAPTURE                          VAL R11
      195 CAPTURE                          VAL R16
      196 CAPTURE                          VAL R5
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R23
      199 CAPTURE                          VAL R19
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R25
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R21
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R17
      207 CAPTURE                          VAL R26
      208 CAPTURE                          VAL R18
      209 CAPTURE                          VAL R8
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R7
      213 CAPTURE                          VAL R10
      214 CAPTURE                          VAL R13
      215 RETURN                           R27 1
