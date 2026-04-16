PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["Enums"]
        4 GETTABLEKS                       R4 R5 K1 ["ControlState"]
        6 GETTABLEKS                       R3 R4 K2 ["Hover"]
        8 JUMPIFEQ                         R0 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["toggle"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["beginEditingAsync"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["setPart"]
        7 LOADK                            R2 K2 ["color3"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K3 ["beginEditingAsync"]
       14 CALL                             R1 0 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K1 ["setPart"]
       18 LOADK                            R2 K2 ["color3"]
       19 MOVE                             R3 R0
       20 CALL                             R1 2 0
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K4 ["finishEditing"]
       24 GETIMPORT                        R2 K8 [Enum.FinishRecordingOperation.Commit]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["setPart"]
        7 LOADK                            R2 K2 ["transparency"]
        8 SUBRK                            R3 R3 K0 ["current"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K4 ["beginEditingAsync"]
       14 CALL                             R1 0 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K1 ["setPart"]
       18 LOADK                            R2 K2 ["transparency"]
       19 SUBRK                            R3 R3 K0 ["current"]
       20 CALL                             R1 2 0
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K5 ["finishEditing"]
       24 GETIMPORT                        R2 K9 [Enum.FinishRecordingOperation.Commit]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["finishEditing"]
        7 GETIMPORT                        R1 K5 [Enum.FinishRecordingOperation.Commit]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["disable"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K2 ["use"]
       10 GETTABLEKS                       R3 R1 K3 ["colorDisplayModeObservable"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K4 ["useState"]
       16 LOADB                            R4 0
       17 CALL                             R3 1 2
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K4 ["useState"]
       21 LOADB                            R6 0
       22 CALL                             R5 1 2
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R7 R8 K5 ["useToggleState"]
       26 LOADB                            R8 0
       27 CALL                             R7 1 1
       28 JUMPIFNOTEQKS                    R2 K6 ["BrickColor"] ; [+11]
       30 GETTABLEKS                       R10 R0 K7 ["combinedColorParts"]
       32 GETTABLEKS                       R9 R10 K8 ["brickColor"]
       34 GETTABLEKS                       R8 R9 K9 ["value"]
       36 JUMPIFNOTEQKNIL                  R8 ; [+12]
       38 LOADK                            R2 K10 ["RGB"]
       39 JUMP                             ; [+9]
       40 GETTABLEKS                       R10 R0 K7 ["combinedColorParts"]
       42 GETTABLEKS                       R9 R10 K11 ["color3"]
       44 GETTABLEKS                       R8 R9 K9 ["value"]
       46 JUMPIFNOTEQKNIL                  R8 ; [+2]
       48 LOADK                            R2 K6 ["BrickColor"]
       49 LOADNIL                          R8
       50 JUMPIFNOTEQKS                    R2 K6 ["BrickColor"] ; [+21]
       52 GETTABLEKS                       R11 R0 K7 ["combinedColorParts"]
       54 GETTABLEKS                       R10 R11 K8 ["brickColor"]
       56 GETTABLEKS                       R9 R10 K12 ["multiple"]
       58 JUMPIFNOT                        R9 ; [+4]
       59 GETUPVAL                         R9 4
       60 GETTABLEKS                       R8 R9 K13 ["multipleSwatchColor"]
       62 JUMP                             ; [+26]
       63 GETTABLEKS                       R11 R0 K7 ["combinedColorParts"]
       65 GETTABLEKS                       R10 R11 K8 ["brickColor"]
       67 GETTABLEKS                       R9 R10 K9 ["value"]
       69 GETTABLEKS                       R8 R9 K14 ["Color"]
       71 JUMP                             ; [+17]
       72 GETTABLEKS                       R11 R0 K7 ["combinedColorParts"]
       74 GETTABLEKS                       R10 R11 K11 ["color3"]
       76 GETTABLEKS                       R9 R10 K12 ["multiple"]
       78 JUMPIFNOT                        R9 ; [+4]
       79 GETUPVAL                         R9 4
       80 GETTABLEKS                       R8 R9 K13 ["multipleSwatchColor"]
       82 JUMP                             ; [+6]
       83 GETTABLEKS                       R10 R0 K7 ["combinedColorParts"]
       85 GETTABLEKS                       R9 R10 K11 ["color3"]
       87 GETTABLEKS                       R8 R9 K9 ["value"]
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R9 R10 K15 ["useCallback"]
       92 NEWCLOSURE                       R10 P0
       93 CAPTURE                          VAL R4
       94 CAPTURE                          UPVAL U5
       95 NEWTABLE                         R11 0 0
       97 CALL                             R9 2 1
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R10 R11 K15 ["useCallback"]
      101 NEWCLOSURE                       R11 P1
      102 CAPTURE                          VAL R7
      103 NEWTABLE                         R12 0 0
      105 CALL                             R10 2 1
      106 GETUPVAL                         R12 0
      107 GETTABLEKS                       R11 R12 K16 ["useRef"]
      109 LOADB                            R12 0
      110 CALL                             R11 1 1
      111 GETUPVAL                         R13 0
      112 GETTABLEKS                       R12 R13 K15 ["useCallback"]
      114 NEWCLOSURE                       R13 P2
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R0
      117 NEWTABLE                         R14 0 1
      119 GETTABLEKS                       R15 R0 K17 ["beginEditingAsync"]
      121 SETLIST                          R14 R15 1 [1]
      123 CALL                             R12 2 1
      124 GETUPVAL                         R14 0
      125 GETTABLEKS                       R13 R14 K15 ["useCallback"]
      127 NEWCLOSURE                       R14 P3
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R0
      130 NEWTABLE                         R15 0 3
      132 GETTABLEKS                       R16 R0 K17 ["beginEditingAsync"]
      134 GETTABLEKS                       R17 R0 K18 ["setPart"]
      136 GETTABLEKS                       R18 R0 K19 ["finishEditing"]
      138 SETLIST                          R15 R16 3 [1]
      140 CALL                             R13 2 1
      141 GETUPVAL                         R15 0
      142 GETTABLEKS                       R14 R15 K15 ["useCallback"]
      144 NEWCLOSURE                       R15 P4
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R0
      147 NEWTABLE                         R16 0 3
      149 GETTABLEKS                       R17 R0 K17 ["beginEditingAsync"]
      151 GETTABLEKS                       R18 R0 K18 ["setPart"]
      153 GETTABLEKS                       R19 R0 K19 ["finishEditing"]
      155 SETLIST                          R16 R17 3 [1]
      157 CALL                             R14 2 1
      158 GETUPVAL                         R16 0
      159 GETTABLEKS                       R15 R16 K15 ["useCallback"]
      161 NEWCLOSURE                       R16 P5
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R0
      164 NEWTABLE                         R17 0 1
      166 GETTABLEKS                       R18 R0 K19 ["finishEditing"]
      168 SETLIST                          R17 R18 1 [1]
      170 CALL                             R15 2 1
      171 GETUPVAL                         R17 0
      172 GETTABLEKS                       R16 R17 K15 ["useCallback"]
      174 NEWCLOSURE                       R17 P6
      175 CAPTURE                          VAL R7
      176 NEWTABLE                         R18 0 0
      178 CALL                             R16 2 1
      179 GETUPVAL                         R18 0
      180 GETTABLEKS                       R17 R18 K15 ["useCallback"]
      182 NEWCLOSURE                       R18 P7
      183 CAPTURE                          VAL R6
      184 NEWTABLE                         R19 0 0
      186 CALL                             R17 2 1
      187 GETUPVAL                         R19 0
      188 GETTABLEKS                       R18 R19 K15 ["useCallback"]
      190 NEWCLOSURE                       R19 P8
      191 CAPTURE                          VAL R6
      192 NEWTABLE                         R20 0 0
      194 CALL                             R18 2 1
      195 GETUPVAL                         R19 6
      196 CALL                             R19 0 1
      197 GETUPVAL                         R20 7
      198 CALL                             R20 0 1
      199 GETUPVAL                         R21 8
      200 GETUPVAL                         R22 9
      201 DUPTABLE                         R23 K24 [{"tag", "LayoutOrder", "stateLayer", "onStateChanged"}]
      202 NEWTABLE                         R24 4 0
      204 LOADB                            R25 1
      205 SETTABLEKS                       R25 R24 K25 ["size-full-600 bg-shift-200 row radius-small"]
      207 MOVE                             R25 R3
      208 JUMPIFNOT                        R25 ; [+1]
      209 NOT                              R25 R5
      210 SETTABLEKS                       R25 R24 K26 ["stroke-emphasis"]
      212 SETTABLEKS                       R5 R24 K27 ["stroke-system-emphasis"]
      214 SETTABLEKS                       R24 R23 K20 ["tag"]
      216 GETTABLEKS                       R24 R0 K28 ["layoutOrder"]
      218 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      220 DUPTABLE                         R24 K30 [{"affordance"}]
      221 GETUPVAL                         R28 5
      222 GETTABLEKS                       R27 R28 K31 ["Enums"]
      224 GETTABLEKS                       R26 R27 K32 ["StateLayerAffordance"]
      226 GETTABLEKS                       R25 R26 K33 ["None"]
      228 SETTABLEKS                       R25 R24 K29 ["affordance"]
      230 SETTABLEKS                       R24 R23 K22 ["stateLayer"]
      232 SETTABLEKS                       R9 R23 K23 ["onStateChanged"]
      234 DUPTABLE                         R24 K36 [{"PopoverRoot", "InputContainer"}]
      235 GETUPVAL                         R25 8
      236 GETUPVAL                         R27 10
      237 GETTABLEKS                       R26 R27 K37 ["Root"]
      239 DUPTABLE                         R27 K39 [{"isOpen", "LayoutOrder"}]
      240 GETTABLEKS                       R28 R7 K40 ["enabled"]
      242 SETTABLEKS                       R28 R27 K38 ["isOpen"]
      244 MOVE                             R28 R19
      245 CALL                             R28 0 1
      246 SETTABLEKS                       R28 R27 K21 ["LayoutOrder"]
      248 DUPTABLE                         R28 K43 [{"Anchor", "ColorPicker"}]
      249 GETUPVAL                         R30 0
      250 GETTABLEKS                       R29 R30 K44 ["createElement"]
      252 GETUPVAL                         R31 10
      253 GETTABLEKS                       R30 R31 K41 ["Anchor"]
      255 NEWTABLE                         R31 0 0
      257 DUPTABLE                         R32 K47 [{"ColorPickerButton", "SizeConstraint"}]
      258 GETUPVAL                         R33 8
      259 GETUPVAL                         R34 11
      260 DUPTABLE                         R35 K50 [{"layoutOrder", "swatchColor", "onActivated"}]
      261 MOVE                             R36 R19
      262 CALL                             R36 0 1
      263 SETTABLEKS                       R36 R35 K28 ["layoutOrder"]
      265 SETTABLEKS                       R8 R35 K48 ["swatchColor"]
      267 SETTABLEKS                       R10 R35 K49 ["onActivated"]
      269 CALL                             R33 2 1
      270 SETTABLEKS                       R33 R32 K45 ["ColorPickerButton"]
      272 GETUPVAL                         R33 8
      273 LOADK                            R34 K51 ["UISizeConstraint"]
      274 DUPTABLE                         R35 K53 [{"MaxSize"}]
      275 GETIMPORT                        R36 K56 [Vector2.new]
      277 GETTABLEKS                       R38 R20 K57 ["Size"]
      279 GETTABLEKS                       R37 R38 K58 ["Size_600"]
      281 GETTABLEKS                       R39 R20 K57 ["Size"]
      283 GETTABLEKS                       R38 R39 K58 ["Size_600"]
      285 CALL                             R36 2 1
      286 SETTABLEKS                       R36 R35 K52 ["MaxSize"]
      288 CALL                             R33 2 1
      289 SETTABLEKS                       R33 R32 K46 ["SizeConstraint"]
      291 CALL                             R29 3 1
      292 SETTABLEKS                       R29 R28 K41 ["Anchor"]
      294 GETTABLEKS                       R30 R7 K40 ["enabled"]
      296 JUMPIFNOT                        R30 ; [+125]
      297 GETUPVAL                         R29 8
      298 GETUPVAL                         R31 10
      299 GETTABLEKS                       R30 R31 K59 ["Content"]
      301 DUPTABLE                         R31 K64 [{"hasArrow", "onPressedOutside", "align", "side"}]
      302 LOADB                            R32 0
      303 SETTABLEKS                       R32 R31 K60 ["hasArrow"]
      305 SETTABLEKS                       R16 R31 K61 ["onPressedOutside"]
      307 DUPTABLE                         R32 K67 [{"position", "offset"}]
      308 GETUPVAL                         R36 5
      309 GETTABLEKS                       R35 R36 K31 ["Enums"]
      311 GETTABLEKS                       R34 R35 K68 ["PopoverAlign"]
      313 GETTABLEKS                       R33 R34 K69 ["Start"]
      315 SETTABLEKS                       R33 R32 K65 ["position"]
      317 LOADN                            R33 0
      318 SETTABLEKS                       R33 R32 K66 ["offset"]
      320 SETTABLEKS                       R32 R31 K62 ["align"]
      322 DUPTABLE                         R32 K67 [{"position", "offset"}]
      323 GETUPVAL                         R36 5
      324 GETTABLEKS                       R35 R36 K31 ["Enums"]
      326 GETTABLEKS                       R34 R35 K70 ["PopoverSide"]
      328 GETTABLEKS                       R33 R34 K71 ["Bottom"]
      330 SETTABLEKS                       R33 R32 K65 ["position"]
      332 LOADN                            R33 8
      333 SETTABLEKS                       R33 R32 K66 ["offset"]
      335 SETTABLEKS                       R32 R31 K63 ["side"]
      337 DUPTABLE                         R32 K73 [{"ColorPickerWrapper"}]
      338 GETUPVAL                         R33 8
      339 LOADK                            R34 K74 ["Frame"]
      340 DUPTABLE                         R35 K77 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
      341 GETIMPORT                        R36 K80 [UDim2.fromOffset]
      343 LOADN                            R37 208
      344 LOADN                            R38 0
      345 CALL                             R36 2 1
      346 SETTABLEKS                       R36 R35 K57 ["Size"]
      348 GETIMPORT                        R36 K83 [Enum.AutomaticSize.Y]
      350 SETTABLEKS                       R36 R35 K75 ["AutomaticSize"]
      352 LOADN                            R36 1
      353 SETTABLEKS                       R36 R35 K76 ["BackgroundTransparency"]
      355 DUPTABLE                         R36 K84 [{"ColorPicker"}]
      356 GETUPVAL                         R37 8
      357 GETUPVAL                         R38 12
      358 DUPTABLE                         R39 K91 [{"initialColor", "initialAlpha", "onDragStarted", "onColorChanged", "onAlphaChanged", "onDragEnded"}]
      359 GETTABLEKS                       R43 R0 K7 ["combinedColorParts"]
      361 GETTABLEKS                       R42 R43 K11 ["color3"]
      363 GETTABLEKS                       R41 R42 K12 ["multiple"]
      365 JUMPIFNOT                        R41 ; [+2]
      366 LOADNIL                          R40
      367 JUMP                             ; [+6]
      368 GETTABLEKS                       R42 R0 K7 ["combinedColorParts"]
      370 GETTABLEKS                       R41 R42 K11 ["color3"]
      372 GETTABLEKS                       R40 R41 K9 ["value"]
      374 SETTABLEKS                       R40 R39 K85 ["initialColor"]
      376 GETTABLEKS                       R43 R0 K7 ["combinedColorParts"]
      378 GETTABLEKS                       R42 R43 K92 ["transparency"]
      380 GETTABLEKS                       R41 R42 K9 ["value"]
      382 JUMPIFEQKNIL                     R41 ; [+9]
      384 GETTABLEKS                       R43 R0 K7 ["combinedColorParts"]
      386 GETTABLEKS                       R42 R43 K92 ["transparency"]
      388 GETTABLEKS                       R41 R42 K9 ["value"]
      390 SUBRK                            R40 R93 K41 ["Anchor"]
      391 JUMP                             ; [+1]
      392 LOADNIL                          R40
      393 SETTABLEKS                       R40 R39 K86 ["initialAlpha"]
      395 SETTABLEKS                       R12 R39 K87 ["onDragStarted"]
      397 SETTABLEKS                       R13 R39 K88 ["onColorChanged"]
      399 GETTABLEKS                       R43 R0 K7 ["combinedColorParts"]
      401 GETTABLEKS                       R42 R43 K92 ["transparency"]
      403 GETTABLEKS                       R41 R42 K9 ["value"]
      405 JUMPIFEQKNIL                     R41 ; [+3]
      407 MOVE                             R40 R14
      408 JUMP                             ; [+1]
      409 LOADNIL                          R40
      410 SETTABLEKS                       R40 R39 K89 ["onAlphaChanged"]
      412 SETTABLEKS                       R15 R39 K90 ["onDragEnded"]
      414 CALL                             R37 2 1
      415 SETTABLEKS                       R37 R36 K42 ["ColorPicker"]
      417 CALL                             R33 3 1
      418 SETTABLEKS                       R33 R32 K72 ["ColorPickerWrapper"]
      420 CALL                             R29 3 1
      421 JUMP                             ; [+1]
      422 LOADNIL                          R29
      423 SETTABLEKS                       R29 R28 K42 ["ColorPicker"]
      425 CALL                             R25 3 1
      426 SETTABLEKS                       R25 R24 K34 ["PopoverRoot"]
      428 GETUPVAL                         R25 8
      429 GETUPVAL                         R26 9
      430 DUPTABLE                         R27 K95 [{"LayoutOrder", "Size", "ClipsDescendants"}]
      431 MOVE                             R28 R19
      432 CALL                             R28 0 1
      433 SETTABLEKS                       R28 R27 K21 ["LayoutOrder"]
      435 GETIMPORT                        R28 K96 [UDim2.new]
      437 LOADN                            R29 1
      438 GETTABLEKS                       R32 R20 K57 ["Size"]
      440 GETTABLEKS                       R31 R32 K58 ["Size_600"]
      442 MINUS                            R30 R31
      443 LOADN                            R31 1
      444 LOADN                            R32 0
      445 CALL                             R28 4 1
      446 SETTABLEKS                       R28 R27 K57 ["Size"]
      448 LOADB                            R28 1
      449 SETTABLEKS                       R28 R27 K94 ["ClipsDescendants"]
      451 DUPTABLE                         R28 K101 [{"HexInput", "RGBInput", "HSVInput", "BrickColorInput"}]
      452 LOADB                            R29 0
      453 JUMPIFNOTEQKS                    R2 K102 ["Hex"] ; [+31]
      455 GETUPVAL                         R29 8
      456 GETUPVAL                         R30 13
      457 DUPTABLE                         R31 K106 [{"layoutOrder", "color3Part", "beginEditingAsync", "setPart", "finishEditing", "onFocused", "onFocusLost"}]
      458 MOVE                             R32 R19
      459 CALL                             R32 0 1
      460 SETTABLEKS                       R32 R31 K28 ["layoutOrder"]
      462 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      464 GETTABLEKS                       R32 R33 K11 ["color3"]
      466 SETTABLEKS                       R32 R31 K103 ["color3Part"]
      468 GETTABLEKS                       R32 R0 K17 ["beginEditingAsync"]
      470 SETTABLEKS                       R32 R31 K17 ["beginEditingAsync"]
      472 GETTABLEKS                       R32 R0 K18 ["setPart"]
      474 SETTABLEKS                       R32 R31 K18 ["setPart"]
      476 GETTABLEKS                       R32 R0 K19 ["finishEditing"]
      478 SETTABLEKS                       R32 R31 K19 ["finishEditing"]
      480 SETTABLEKS                       R17 R31 K104 ["onFocused"]
      482 SETTABLEKS                       R18 R31 K105 ["onFocusLost"]
      484 CALL                             R29 2 1
      485 SETTABLEKS                       R29 R28 K97 ["HexInput"]
      487 LOADB                            R29 0
      488 JUMPIFNOTEQKS                    R2 K10 ["RGB"] ; [+47]
      490 GETUPVAL                         R29 8
      491 GETUPVAL                         R30 14
      492 DUPTABLE                         R31 K111 [{"layoutOrder", "rPart", "gPart", "bPart", "activateCombinedInputSignal", "beginEditingAsync", "setPart", "finishEditing", "onFocused", "onFocusLost"}]
      493 MOVE                             R32 R19
      494 CALL                             R32 0 1
      495 SETTABLEKS                       R32 R31 K28 ["layoutOrder"]
      497 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      499 GETTABLEKS                       R32 R33 K112 ["r"]
      501 SETTABLEKS                       R32 R31 K107 ["rPart"]
      503 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      505 GETTABLEKS                       R32 R33 K113 ["g"]
      507 SETTABLEKS                       R32 R31 K108 ["gPart"]
      509 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      511 GETTABLEKS                       R32 R33 K114 ["b"]
      513 SETTABLEKS                       R32 R31 K109 ["bPart"]
      515 GETTABLEKS                       R32 R0 K110 ["activateCombinedInputSignal"]
      517 SETTABLEKS                       R32 R31 K110 ["activateCombinedInputSignal"]
      519 GETTABLEKS                       R32 R0 K17 ["beginEditingAsync"]
      521 SETTABLEKS                       R32 R31 K17 ["beginEditingAsync"]
      523 GETTABLEKS                       R32 R0 K18 ["setPart"]
      525 SETTABLEKS                       R32 R31 K18 ["setPart"]
      527 GETTABLEKS                       R32 R0 K19 ["finishEditing"]
      529 SETTABLEKS                       R32 R31 K19 ["finishEditing"]
      531 SETTABLEKS                       R17 R31 K104 ["onFocused"]
      533 SETTABLEKS                       R18 R31 K105 ["onFocusLost"]
      535 CALL                             R29 2 1
      536 SETTABLEKS                       R29 R28 K98 ["RGBInput"]
      538 LOADB                            R29 0
      539 JUMPIFNOTEQKS                    R2 K115 ["HSV"] ; [+31]
      541 GETUPVAL                         R29 8
      542 GETUPVAL                         R30 15
      543 DUPTABLE                         R31 K119 [{"layoutOrder", "hPart", "sPart", "vPart", "onFocused", "onFocusLost"}]
      544 MOVE                             R32 R19
      545 CALL                             R32 0 1
      546 SETTABLEKS                       R32 R31 K28 ["layoutOrder"]
      548 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      550 GETTABLEKS                       R32 R33 K120 ["h"]
      552 SETTABLEKS                       R32 R31 K116 ["hPart"]
      554 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      556 GETTABLEKS                       R32 R33 K121 ["s"]
      558 SETTABLEKS                       R32 R31 K117 ["sPart"]
      560 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      562 GETTABLEKS                       R32 R33 K122 ["v"]
      564 SETTABLEKS                       R32 R31 K118 ["vPart"]
      566 SETTABLEKS                       R17 R31 K104 ["onFocused"]
      568 SETTABLEKS                       R18 R31 K105 ["onFocusLost"]
      570 CALL                             R29 2 1
      571 SETTABLEKS                       R29 R28 K99 ["HSVInput"]
      573 LOADB                            R29 0
      574 JUMPIFNOTEQKS                    R2 K6 ["BrickColor"] ; [+19]
      576 GETUPVAL                         R29 8
      577 GETUPVAL                         R30 16
      578 DUPTABLE                         R31 K124 [{"layoutOrder", "brickColorPart", "onFocused", "onFocusLost"}]
      579 MOVE                             R32 R19
      580 CALL                             R32 0 1
      581 SETTABLEKS                       R32 R31 K28 ["layoutOrder"]
      583 GETTABLEKS                       R33 R0 K7 ["combinedColorParts"]
      585 GETTABLEKS                       R32 R33 K8 ["brickColor"]
      587 SETTABLEKS                       R32 R31 K123 ["brickColorPart"]
      589 SETTABLEKS                       R17 R31 K104 ["onFocused"]
      591 SETTABLEKS                       R18 R31 K105 ["onFocusLost"]
      593 CALL                             R29 2 1
      594 SETTABLEKS                       R29 R28 K100 ["BrickColorInput"]
      596 CALL                             R25 3 1
      597 SETTABLEKS                       R25 R24 K35 ["InputContainer"]
      599 CALL                             R21 3 -1
      600 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R4 K1 [script]
       13 GETTABLEKS                       R3 R4 K7 ["BrickColorInput"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R4 R5 K8 ["ColorPickerButton"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K9 ["Util"]
       27 GETTABLEKS                       R5 R6 K10 ["Constants"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K4 ["Parent"]
       34 GETTABLEKS                       R6 R7 K11 ["Foundation"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETIMPORT                        R8 K1 [script]
       41 GETTABLEKS                       R7 R8 K12 ["HSVInput"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETIMPORT                        R9 K1 [script]
       48 GETTABLEKS                       R8 R9 K13 ["HexInput"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K9 ["Util"]
       55 GETTABLEKS                       R9 R10 K14 ["Observable"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K15 ["PropertyEditorTypes"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K16 ["PropertyTypes"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETIMPORT                        R13 K1 [script]
       72 GETTABLEKS                       R12 R13 K17 ["RGBInput"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R14 R0 K4 ["Parent"]
       79 GETTABLEKS                       R13 R14 K18 ["React"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R15 R0 K4 ["Parent"]
       86 GETTABLEKS                       R14 R15 K19 ["ReactUtils"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R17 R0 K20 ["Components"]
       93 GETTABLEKS                       R16 R17 K21 ["Contexts"]
       95 GETTABLEKS                       R15 R16 K22 ["SettingsContext"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R1 K23 ["Signal"]
      102 CALL                             R15 1 1
      103 GETTABLEKS                       R16 R5 K24 ["ColorPicker"]
      105 GETTABLEKS                       R17 R5 K25 ["Popover"]
      107 GETTABLEKS                       R18 R5 K26 ["View"]
      109 GETTABLEKS                       R19 R13 K27 ["createNextOrder"]
      111 GETTABLEKS                       R20 R12 K28 ["createElement"]
      113 GETTABLEKS                       R22 R5 K29 ["Hooks"]
      115 GETTABLEKS                       R21 R22 K30 ["useTokens"]
      117 DUPCLOSURE                       R22 K31 [PROTO_9]
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R19
      125 CAPTURE                          VAL R21
      126 CAPTURE                          VAL R20
      127 CAPTURE                          VAL R18
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R2
      135 RETURN                           R22 1
