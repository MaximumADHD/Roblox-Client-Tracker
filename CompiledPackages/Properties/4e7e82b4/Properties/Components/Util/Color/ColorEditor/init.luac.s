PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggle"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["beginEditingAsync"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["setPart"]
        7 LOADK                            R2 K2 ["color3"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["beginEditingAsync"]
       14 CALL                             R1 0 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K1 ["setPart"]
       18 LOADK                            R2 K2 ["color3"]
       19 MOVE                             R3 R0
       20 CALL                             R1 2 0
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K4 ["finishEditing"]
       24 GETIMPORT                        R2 K8 [Enum.FinishRecordingOperation.Commit]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["setPart"]
        7 LOADK                            R2 K2 ["transparency"]
        8 SUBRK                            R3 R3 K0 ["current"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K4 ["beginEditingAsync"]
       14 CALL                             R1 0 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K1 ["setPart"]
       18 LOADK                            R2 K2 ["transparency"]
       19 SUBRK                            R3 R3 K0 ["current"]
       20 CALL                             R1 2 0
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K5 ["finishEditing"]
       24 GETIMPORT                        R2 K9 [Enum.FinishRecordingOperation.Commit]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["finishEditing"]
        7 GETIMPORT                        R1 K5 [Enum.FinishRecordingOperation.Commit]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K2 ["use"]
       12 GETTABLEKS                       R4 R1 K3 ["colorDisplayModeObservable"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K4 ["useState"]
       18 LOADB                            R5 0
       19 CALL                             R4 1 2
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K4 ["useState"]
       23 LOADB                            R7 0
       24 CALL                             R6 1 2
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R8 R8 K5 ["useToggleState"]
       28 LOADB                            R9 0
       29 CALL                             R8 1 1
       30 JUMPIFNOTEQKS                    R3 K6 ["BrickColor"] ; [+11]
       32 GETTABLEKS                       R9 R0 K7 ["combinedColorParts"]
       34 GETTABLEKS                       R9 R9 K8 ["brickColor"]
       36 GETTABLEKS                       R9 R9 K9 ["value"]
       38 JUMPIFNOTEQKNIL                  R9 ; [+12]
       40 LOADK                            R3 K10 ["RGB"]
       41 JUMP                             ; [+9]
       42 GETTABLEKS                       R9 R0 K7 ["combinedColorParts"]
       44 GETTABLEKS                       R9 R9 K11 ["color3"]
       46 GETTABLEKS                       R9 R9 K9 ["value"]
       48 JUMPIFNOTEQKNIL                  R9 ; [+2]
       50 LOADK                            R3 K6 ["BrickColor"]
       51 LOADNIL                          R9
       52 JUMPIFNOTEQKS                    R3 K6 ["BrickColor"] ; [+22]
       54 GETTABLEKS                       R10 R0 K7 ["combinedColorParts"]
       56 GETTABLEKS                       R10 R10 K8 ["brickColor"]
       58 GETTABLEKS                       R10 R10 K12 ["multiple"]
       60 JUMPIFNOT                        R10 ; [+5]
       61 GETTABLEKS                       R10 R2 K13 ["ColorSwatch"]
       63 GETTABLEKS                       R9 R10 K14 ["MultipleColor"]
       65 JUMP                             ; [+27]
       66 GETTABLEKS                       R10 R0 K7 ["combinedColorParts"]
       68 GETTABLEKS                       R10 R10 K8 ["brickColor"]
       70 GETTABLEKS                       R10 R10 K9 ["value"]
       72 GETTABLEKS                       R9 R10 K15 ["Color"]
       74 JUMP                             ; [+18]
       75 GETTABLEKS                       R10 R0 K7 ["combinedColorParts"]
       77 GETTABLEKS                       R10 R10 K11 ["color3"]
       79 GETTABLEKS                       R10 R10 K12 ["multiple"]
       81 JUMPIFNOT                        R10 ; [+5]
       82 GETTABLEKS                       R10 R2 K13 ["ColorSwatch"]
       84 GETTABLEKS                       R9 R10 K14 ["MultipleColor"]
       86 JUMP                             ; [+6]
       87 GETTABLEKS                       R10 R0 K7 ["combinedColorParts"]
       89 GETTABLEKS                       R10 R10 K11 ["color3"]
       91 GETTABLEKS                       R9 R10 K9 ["value"]
       93 GETUPVAL                         R10 0
       94 GETTABLEKS                       R10 R10 K16 ["useCallback"]
       96 NEWCLOSURE                       R11 P0
       97 CAPTURE                          VAL R5
       98 CAPTURE                          UPVAL U5
       99 NEWTABLE                         R12 0 0
      101 CALL                             R10 2 1
      102 GETUPVAL                         R11 0
      103 GETTABLEKS                       R11 R11 K16 ["useCallback"]
      105 NEWCLOSURE                       R12 P1
      106 CAPTURE                          VAL R8
      107 NEWTABLE                         R13 0 0
      109 CALL                             R11 2 1
      110 GETUPVAL                         R12 0
      111 GETTABLEKS                       R12 R12 K17 ["useRef"]
      113 LOADB                            R13 0
      114 CALL                             R12 1 1
      115 GETUPVAL                         R13 0
      116 GETTABLEKS                       R13 R13 K16 ["useCallback"]
      118 NEWCLOSURE                       R14 P2
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R0
      121 NEWTABLE                         R15 0 1
      123 GETTABLEKS                       R16 R0 K18 ["beginEditingAsync"]
      125 SETLIST                          R15 R16 1 [1]
      127 CALL                             R13 2 1
      128 GETUPVAL                         R14 0
      129 GETTABLEKS                       R14 R14 K16 ["useCallback"]
      131 NEWCLOSURE                       R15 P3
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R0
      134 NEWTABLE                         R16 0 3
      136 GETTABLEKS                       R17 R0 K18 ["beginEditingAsync"]
      138 GETTABLEKS                       R18 R0 K19 ["setPart"]
      140 GETTABLEKS                       R19 R0 K20 ["finishEditing"]
      142 SETLIST                          R16 R17 3 [1]
      144 CALL                             R14 2 1
      145 GETUPVAL                         R15 0
      146 GETTABLEKS                       R15 R15 K16 ["useCallback"]
      148 NEWCLOSURE                       R16 P4
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R0
      151 NEWTABLE                         R17 0 3
      153 GETTABLEKS                       R18 R0 K18 ["beginEditingAsync"]
      155 GETTABLEKS                       R19 R0 K19 ["setPart"]
      157 GETTABLEKS                       R20 R0 K20 ["finishEditing"]
      159 SETLIST                          R17 R18 3 [1]
      161 CALL                             R15 2 1
      162 GETUPVAL                         R16 0
      163 GETTABLEKS                       R16 R16 K16 ["useCallback"]
      165 NEWCLOSURE                       R17 P5
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R0
      168 NEWTABLE                         R18 0 1
      170 GETTABLEKS                       R19 R0 K20 ["finishEditing"]
      172 SETLIST                          R18 R19 1 [1]
      174 CALL                             R16 2 1
      175 GETUPVAL                         R17 0
      176 GETTABLEKS                       R17 R17 K16 ["useCallback"]
      178 NEWCLOSURE                       R18 P6
      179 CAPTURE                          VAL R8
      180 NEWTABLE                         R19 0 0
      182 CALL                             R17 2 1
      183 GETUPVAL                         R18 0
      184 GETTABLEKS                       R18 R18 K16 ["useCallback"]
      186 NEWCLOSURE                       R19 P7
      187 CAPTURE                          VAL R7
      188 NEWTABLE                         R20 0 0
      190 CALL                             R18 2 1
      191 GETUPVAL                         R19 0
      192 GETTABLEKS                       R19 R19 K16 ["useCallback"]
      194 NEWCLOSURE                       R20 P8
      195 CAPTURE                          VAL R7
      196 NEWTABLE                         R21 0 0
      198 CALL                             R19 2 1
      199 GETUPVAL                         R20 6
      200 CALL                             R20 0 1
      201 GETUPVAL                         R21 7
      202 CALL                             R21 0 1
      203 GETUPVAL                         R22 8
      204 GETUPVAL                         R23 9
      205 DUPTABLE                         R24 K25 [{"tag", "LayoutOrder", "stateLayer", "onStateChanged"}]
      206 NEWTABLE                         R25 4 0
      208 LOADB                            R26 1
      209 SETTABLEKS                       R26 R25 K26 ["size-full-600 bg-shift-200 row radius-small"]
      211 MOVE                             R26 R4
      212 JUMPIFNOT                        R26 ; [+1]
      213 NOT                              R26 R6
      214 SETTABLEKS                       R26 R25 K27 ["stroke-emphasis"]
      216 SETTABLEKS                       R6 R25 K28 ["stroke-system-emphasis"]
      218 SETTABLEKS                       R25 R24 K21 ["tag"]
      220 GETTABLEKS                       R25 R0 K29 ["layoutOrder"]
      222 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      224 DUPTABLE                         R25 K31 [{"affordance"}]
      225 GETUPVAL                         R26 5
      226 GETTABLEKS                       R26 R26 K32 ["Enums"]
      228 GETTABLEKS                       R26 R26 K33 ["StateLayerAffordance"]
      230 GETTABLEKS                       R26 R26 K34 ["None"]
      232 SETTABLEKS                       R26 R25 K30 ["affordance"]
      234 SETTABLEKS                       R25 R24 K23 ["stateLayer"]
      236 SETTABLEKS                       R10 R24 K24 ["onStateChanged"]
      238 DUPTABLE                         R25 K37 [{"PopoverRoot", "InputContainer"}]
      239 GETUPVAL                         R26 8
      240 GETUPVAL                         R27 10
      241 GETTABLEKS                       R27 R27 K38 ["Root"]
      243 DUPTABLE                         R28 K40 [{"isOpen", "LayoutOrder"}]
      244 GETTABLEKS                       R29 R8 K41 ["enabled"]
      246 SETTABLEKS                       R29 R28 K39 ["isOpen"]
      248 MOVE                             R29 R20
      249 CALL                             R29 0 1
      250 SETTABLEKS                       R29 R28 K22 ["LayoutOrder"]
      252 DUPTABLE                         R29 K44 [{"Anchor", "ColorPicker"}]
      253 GETUPVAL                         R30 0
      254 GETTABLEKS                       R30 R30 K45 ["createElement"]
      256 GETUPVAL                         R31 10
      257 GETTABLEKS                       R31 R31 K42 ["Anchor"]
      259 NEWTABLE                         R32 0 0
      261 DUPTABLE                         R33 K48 [{"ColorPickerButton", "SizeConstraint"}]
      262 GETUPVAL                         R34 8
      263 GETUPVAL                         R35 11
      264 DUPTABLE                         R36 K51 [{"layoutOrder", "swatchColor", "onActivated"}]
      265 MOVE                             R37 R20
      266 CALL                             R37 0 1
      267 SETTABLEKS                       R37 R36 K29 ["layoutOrder"]
      269 SETTABLEKS                       R9 R36 K49 ["swatchColor"]
      271 SETTABLEKS                       R11 R36 K50 ["onActivated"]
      273 CALL                             R34 2 1
      274 SETTABLEKS                       R34 R33 K46 ["ColorPickerButton"]
      276 GETUPVAL                         R34 8
      277 LOADK                            R35 K52 ["UISizeConstraint"]
      278 DUPTABLE                         R36 K54 [{"MaxSize"}]
      279 GETIMPORT                        R38 K57 [Vector2.one]
      281 GETTABLEKS                       R39 R21 K58 ["Size"]
      283 GETTABLEKS                       R39 R39 K59 ["Size_600"]
      285 MUL                              R37 R38 R39
      286 SETTABLEKS                       R37 R36 K53 ["MaxSize"]
      288 CALL                             R34 2 1
      289 SETTABLEKS                       R34 R33 K47 ["SizeConstraint"]
      291 CALL                             R30 3 1
      292 SETTABLEKS                       R30 R29 K42 ["Anchor"]
      294 GETTABLEKS                       R31 R8 K41 ["enabled"]
      296 JUMPIFNOT                        R31 ; [+125]
      297 GETUPVAL                         R30 8
      298 GETUPVAL                         R31 10
      299 GETTABLEKS                       R31 R31 K60 ["Content"]
      301 DUPTABLE                         R32 K65 [{"hasArrow", "onPressedOutside", "align", "side"}]
      302 LOADB                            R33 0
      303 SETTABLEKS                       R33 R32 K61 ["hasArrow"]
      305 SETTABLEKS                       R17 R32 K62 ["onPressedOutside"]
      307 DUPTABLE                         R33 K68 [{"position", "offset"}]
      308 GETUPVAL                         R34 5
      309 GETTABLEKS                       R34 R34 K32 ["Enums"]
      311 GETTABLEKS                       R34 R34 K69 ["PopoverAlign"]
      313 GETTABLEKS                       R34 R34 K70 ["Start"]
      315 SETTABLEKS                       R34 R33 K66 ["position"]
      317 LOADN                            R34 0
      318 SETTABLEKS                       R34 R33 K67 ["offset"]
      320 SETTABLEKS                       R33 R32 K63 ["align"]
      322 DUPTABLE                         R33 K68 [{"position", "offset"}]
      323 GETUPVAL                         R34 5
      324 GETTABLEKS                       R34 R34 K32 ["Enums"]
      326 GETTABLEKS                       R34 R34 K71 ["PopoverSide"]
      328 GETTABLEKS                       R34 R34 K72 ["Bottom"]
      330 SETTABLEKS                       R34 R33 K66 ["position"]
      332 LOADN                            R34 8
      333 SETTABLEKS                       R34 R33 K67 ["offset"]
      335 SETTABLEKS                       R33 R32 K64 ["side"]
      337 DUPTABLE                         R33 K74 [{"ColorPickerWrapper"}]
      338 GETUPVAL                         R34 8
      339 LOADK                            R35 K75 ["Frame"]
      340 DUPTABLE                         R36 K78 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
      341 GETIMPORT                        R37 K81 [UDim2.fromOffset]
      343 LOADN                            R38 208
      344 LOADN                            R39 0
      345 CALL                             R37 2 1
      346 SETTABLEKS                       R37 R36 K58 ["Size"]
      348 GETIMPORT                        R37 K84 [Enum.AutomaticSize.Y]
      350 SETTABLEKS                       R37 R36 K76 ["AutomaticSize"]
      352 LOADN                            R37 1
      353 SETTABLEKS                       R37 R36 K77 ["BackgroundTransparency"]
      355 DUPTABLE                         R37 K85 [{"ColorPicker"}]
      356 GETUPVAL                         R38 8
      357 GETUPVAL                         R39 12
      358 DUPTABLE                         R40 K92 [{"initialColor", "initialAlpha", "onDragStarted", "onColorChanged", "onAlphaChanged", "onDragEnded"}]
      359 GETTABLEKS                       R42 R0 K7 ["combinedColorParts"]
      361 GETTABLEKS                       R42 R42 K11 ["color3"]
      363 GETTABLEKS                       R42 R42 K12 ["multiple"]
      365 JUMPIFNOT                        R42 ; [+2]
      366 LOADNIL                          R41
      367 JUMP                             ; [+6]
      368 GETTABLEKS                       R41 R0 K7 ["combinedColorParts"]
      370 GETTABLEKS                       R41 R41 K11 ["color3"]
      372 GETTABLEKS                       R41 R41 K9 ["value"]
      374 SETTABLEKS                       R41 R40 K86 ["initialColor"]
      376 GETTABLEKS                       R42 R0 K7 ["combinedColorParts"]
      378 GETTABLEKS                       R42 R42 K93 ["transparency"]
      380 GETTABLEKS                       R42 R42 K9 ["value"]
      382 JUMPIFEQKNIL                     R42 ; [+9]
      384 GETTABLEKS                       R42 R0 K7 ["combinedColorParts"]
      386 GETTABLEKS                       R42 R42 K93 ["transparency"]
      388 GETTABLEKS                       R42 R42 K9 ["value"]
      390 SUBRK                            R41 R94 K42 ["Anchor"]
      391 JUMP                             ; [+1]
      392 LOADNIL                          R41
      393 SETTABLEKS                       R41 R40 K87 ["initialAlpha"]
      395 SETTABLEKS                       R13 R40 K88 ["onDragStarted"]
      397 SETTABLEKS                       R14 R40 K89 ["onColorChanged"]
      399 GETTABLEKS                       R42 R0 K7 ["combinedColorParts"]
      401 GETTABLEKS                       R42 R42 K93 ["transparency"]
      403 GETTABLEKS                       R42 R42 K9 ["value"]
      405 JUMPIFEQKNIL                     R42 ; [+3]
      407 MOVE                             R41 R15
      408 JUMP                             ; [+1]
      409 LOADNIL                          R41
      410 SETTABLEKS                       R41 R40 K90 ["onAlphaChanged"]
      412 SETTABLEKS                       R16 R40 K91 ["onDragEnded"]
      414 CALL                             R38 2 1
      415 SETTABLEKS                       R38 R37 K43 ["ColorPicker"]
      417 CALL                             R34 3 1
      418 SETTABLEKS                       R34 R33 K73 ["ColorPickerWrapper"]
      420 CALL                             R30 3 1
      421 JUMP                             ; [+1]
      422 LOADNIL                          R30
      423 SETTABLEKS                       R30 R29 K43 ["ColorPicker"]
      425 CALL                             R26 3 1
      426 SETTABLEKS                       R26 R25 K35 ["PopoverRoot"]
      428 GETUPVAL                         R26 8
      429 GETUPVAL                         R27 9
      430 DUPTABLE                         R28 K96 [{"LayoutOrder", "Size", "ClipsDescendants"}]
      431 MOVE                             R29 R20
      432 CALL                             R29 0 1
      433 SETTABLEKS                       R29 R28 K22 ["LayoutOrder"]
      435 GETIMPORT                        R29 K98 [UDim2.new]
      437 LOADN                            R30 1
      438 GETTABLEKS                       R32 R21 K58 ["Size"]
      440 GETTABLEKS                       R32 R32 K59 ["Size_600"]
      442 MINUS                            R31 R32
      443 LOADN                            R32 1
      444 LOADN                            R33 0
      445 CALL                             R29 4 1
      446 SETTABLEKS                       R29 R28 K58 ["Size"]
      448 LOADB                            R29 1
      449 SETTABLEKS                       R29 R28 K95 ["ClipsDescendants"]
      451 DUPTABLE                         R29 K103 [{"HexInput", "RGBInput", "HSVInput", "BrickColorInput"}]
      452 LOADB                            R30 0
      453 JUMPIFNOTEQKS                    R3 K104 ["Hex"] ; [+31]
      455 GETUPVAL                         R30 8
      456 GETUPVAL                         R31 13
      457 DUPTABLE                         R32 K108 [{"layoutOrder", "color3Part", "beginEditingAsync", "setPart", "finishEditing", "onFocused", "onFocusLost"}]
      458 MOVE                             R33 R20
      459 CALL                             R33 0 1
      460 SETTABLEKS                       R33 R32 K29 ["layoutOrder"]
      462 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      464 GETTABLEKS                       R33 R33 K11 ["color3"]
      466 SETTABLEKS                       R33 R32 K105 ["color3Part"]
      468 GETTABLEKS                       R33 R0 K18 ["beginEditingAsync"]
      470 SETTABLEKS                       R33 R32 K18 ["beginEditingAsync"]
      472 GETTABLEKS                       R33 R0 K19 ["setPart"]
      474 SETTABLEKS                       R33 R32 K19 ["setPart"]
      476 GETTABLEKS                       R33 R0 K20 ["finishEditing"]
      478 SETTABLEKS                       R33 R32 K20 ["finishEditing"]
      480 SETTABLEKS                       R18 R32 K106 ["onFocused"]
      482 SETTABLEKS                       R19 R32 K107 ["onFocusLost"]
      484 CALL                             R30 2 1
      485 SETTABLEKS                       R30 R29 K99 ["HexInput"]
      487 LOADB                            R30 0
      488 JUMPIFNOTEQKS                    R3 K10 ["RGB"] ; [+47]
      490 GETUPVAL                         R30 8
      491 GETUPVAL                         R31 14
      492 DUPTABLE                         R32 K113 [{"layoutOrder", "rPart", "gPart", "bPart", "activateCombinedInputSignal", "beginEditingAsync", "setPart", "finishEditing", "onFocused", "onFocusLost"}]
      493 MOVE                             R33 R20
      494 CALL                             R33 0 1
      495 SETTABLEKS                       R33 R32 K29 ["layoutOrder"]
      497 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      499 GETTABLEKS                       R33 R33 K114 ["r"]
      501 SETTABLEKS                       R33 R32 K109 ["rPart"]
      503 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      505 GETTABLEKS                       R33 R33 K115 ["g"]
      507 SETTABLEKS                       R33 R32 K110 ["gPart"]
      509 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      511 GETTABLEKS                       R33 R33 K116 ["b"]
      513 SETTABLEKS                       R33 R32 K111 ["bPart"]
      515 GETTABLEKS                       R33 R0 K112 ["activateCombinedInputSignal"]
      517 SETTABLEKS                       R33 R32 K112 ["activateCombinedInputSignal"]
      519 GETTABLEKS                       R33 R0 K18 ["beginEditingAsync"]
      521 SETTABLEKS                       R33 R32 K18 ["beginEditingAsync"]
      523 GETTABLEKS                       R33 R0 K19 ["setPart"]
      525 SETTABLEKS                       R33 R32 K19 ["setPart"]
      527 GETTABLEKS                       R33 R0 K20 ["finishEditing"]
      529 SETTABLEKS                       R33 R32 K20 ["finishEditing"]
      531 SETTABLEKS                       R18 R32 K106 ["onFocused"]
      533 SETTABLEKS                       R19 R32 K107 ["onFocusLost"]
      535 CALL                             R30 2 1
      536 SETTABLEKS                       R30 R29 K100 ["RGBInput"]
      538 LOADB                            R30 0
      539 JUMPIFNOTEQKS                    R3 K117 ["HSV"] ; [+31]
      541 GETUPVAL                         R30 8
      542 GETUPVAL                         R31 15
      543 DUPTABLE                         R32 K121 [{"layoutOrder", "hPart", "sPart", "vPart", "onFocused", "onFocusLost"}]
      544 MOVE                             R33 R20
      545 CALL                             R33 0 1
      546 SETTABLEKS                       R33 R32 K29 ["layoutOrder"]
      548 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      550 GETTABLEKS                       R33 R33 K122 ["h"]
      552 SETTABLEKS                       R33 R32 K118 ["hPart"]
      554 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      556 GETTABLEKS                       R33 R33 K123 ["s"]
      558 SETTABLEKS                       R33 R32 K119 ["sPart"]
      560 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      562 GETTABLEKS                       R33 R33 K124 ["v"]
      564 SETTABLEKS                       R33 R32 K120 ["vPart"]
      566 SETTABLEKS                       R18 R32 K106 ["onFocused"]
      568 SETTABLEKS                       R19 R32 K107 ["onFocusLost"]
      570 CALL                             R30 2 1
      571 SETTABLEKS                       R30 R29 K101 ["HSVInput"]
      573 LOADB                            R30 0
      574 JUMPIFNOTEQKS                    R3 K6 ["BrickColor"] ; [+19]
      576 GETUPVAL                         R30 8
      577 GETUPVAL                         R31 16
      578 DUPTABLE                         R32 K126 [{"layoutOrder", "brickColorPart", "onFocused", "onFocusLost"}]
      579 MOVE                             R33 R20
      580 CALL                             R33 0 1
      581 SETTABLEKS                       R33 R32 K29 ["layoutOrder"]
      583 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      585 GETTABLEKS                       R33 R33 K8 ["brickColor"]
      587 SETTABLEKS                       R33 R32 K125 ["brickColorPart"]
      589 SETTABLEKS                       R18 R32 K106 ["onFocused"]
      591 SETTABLEKS                       R19 R32 K107 ["onFocusLost"]
      593 CALL                             R30 2 1
      594 SETTABLEKS                       R30 R29 K102 ["BrickColorInput"]
      596 CALL                             R26 3 1
      597 SETTABLEKS                       R26 R25 K36 ["InputContainer"]
      599 CALL                             R22 3 -1
      600 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R3 R3 K7 ["BrickColorInput"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R4 R4 K8 ["ColorPickerButton"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 GETTABLEKS                       R5 R5 K9 ["Foundation"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETIMPORT                        R6 K1 [script]
       34 GETTABLEKS                       R6 R6 K10 ["HSVInput"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETIMPORT                        R7 K1 [script]
       41 GETTABLEKS                       R7 R7 K11 ["HexInput"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K12 ["Util"]
       48 GETTABLEKS                       R8 R8 K13 ["Observable"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K14 ["PropertyEditorTypes"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K15 ["PropertyTypes"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETIMPORT                        R11 K1 [script]
       65 GETTABLEKS                       R11 R11 K16 ["RGBInput"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K4 ["Parent"]
       72 GETTABLEKS                       R12 R12 K17 ["React"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K4 ["Parent"]
       79 GETTABLEKS                       R13 R13 K18 ["ReactUtils"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K19 ["Components"]
       86 GETTABLEKS                       R14 R14 K20 ["Contexts"]
       88 GETTABLEKS                       R14 R14 K21 ["SettingsContext"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R1 K22 ["Signal"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R0 K23 ["Hooks"]
      100 GETTABLEKS                       R16 R16 K24 ["useVisualValues"]
      102 CALL                             R15 1 1
      103 GETTABLEKS                       R16 R4 K25 ["ColorPicker"]
      105 GETTABLEKS                       R17 R4 K26 ["Popover"]
      107 GETTABLEKS                       R18 R4 K27 ["View"]
      109 GETTABLEKS                       R19 R12 K28 ["createNextOrder"]
      111 GETTABLEKS                       R20 R11 K29 ["createElement"]
      113 GETTABLEKS                       R21 R4 K23 ["Hooks"]
      115 GETTABLEKS                       R21 R21 K30 ["useTokens"]
      117 DUPCLOSURE                       R22 K31 [PROTO_9]
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R19
      125 CAPTURE                          VAL R21
      126 CAPTURE                          VAL R20
      127 CAPTURE                          VAL R18
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R2
      135 RETURN                           R22 1
