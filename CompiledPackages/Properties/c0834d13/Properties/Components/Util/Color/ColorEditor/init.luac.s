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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["beginEditingAsync"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["setPart"]
        7 LOADK                            R2 K2 ["color3"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K3 ["finishEditing"]
       13 GETIMPORT                        R2 K7 [Enum.FinishRecordingOperation.Commit]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["beginEditingAsync"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["setPart"]
        7 LOADK                            R2 K2 ["transparency"]
        8 SUBRK                            R3 R3 K0 ["beginEditingAsync"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K4 ["finishEditing"]
       13 GETIMPORT                        R2 K8 [Enum.FinishRecordingOperation.Commit]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["disable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

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
      107 GETTABLEKS                       R11 R12 K15 ["useCallback"]
      109 NEWCLOSURE                       R12 P2
      110 CAPTURE                          VAL R0
      111 NEWTABLE                         R13 0 3
      113 GETTABLEKS                       R14 R0 K16 ["beginEditingAsync"]
      115 GETTABLEKS                       R15 R0 K17 ["setPart"]
      117 GETTABLEKS                       R16 R0 K18 ["finishEditing"]
      119 SETLIST                          R13 R14 3 [1]
      121 CALL                             R11 2 1
      122 GETUPVAL                         R13 0
      123 GETTABLEKS                       R12 R13 K15 ["useCallback"]
      125 NEWCLOSURE                       R13 P3
      126 CAPTURE                          VAL R0
      127 NEWTABLE                         R14 0 3
      129 GETTABLEKS                       R15 R0 K16 ["beginEditingAsync"]
      131 GETTABLEKS                       R16 R0 K17 ["setPart"]
      133 GETTABLEKS                       R17 R0 K18 ["finishEditing"]
      135 SETLIST                          R14 R15 3 [1]
      137 CALL                             R12 2 1
      138 GETUPVAL                         R14 0
      139 GETTABLEKS                       R13 R14 K15 ["useCallback"]
      141 NEWCLOSURE                       R14 P4
      142 CAPTURE                          VAL R7
      143 NEWTABLE                         R15 0 0
      145 CALL                             R13 2 1
      146 GETUPVAL                         R15 0
      147 GETTABLEKS                       R14 R15 K15 ["useCallback"]
      149 NEWCLOSURE                       R15 P5
      150 CAPTURE                          VAL R6
      151 NEWTABLE                         R16 0 0
      153 CALL                             R14 2 1
      154 GETUPVAL                         R16 0
      155 GETTABLEKS                       R15 R16 K15 ["useCallback"]
      157 NEWCLOSURE                       R16 P6
      158 CAPTURE                          VAL R6
      159 NEWTABLE                         R17 0 0
      161 CALL                             R15 2 1
      162 GETUPVAL                         R16 6
      163 CALL                             R16 0 1
      164 GETUPVAL                         R17 7
      165 CALL                             R17 0 1
      166 GETUPVAL                         R18 8
      167 GETUPVAL                         R19 9
      168 DUPTABLE                         R20 K23 [{"tag", "LayoutOrder", "stateLayer", "onStateChanged"}]
      169 NEWTABLE                         R21 4 0
      171 LOADB                            R22 1
      172 SETTABLEKS                       R22 R21 K24 ["size-full-600 bg-shift-200 row radius-small"]
      174 MOVE                             R22 R3
      175 JUMPIFNOT                        R22 ; [+1]
      176 NOT                              R22 R5
      177 SETTABLEKS                       R22 R21 K25 ["stroke-emphasis"]
      179 SETTABLEKS                       R5 R21 K26 ["stroke-system-emphasis"]
      181 SETTABLEKS                       R21 R20 K19 ["tag"]
      183 GETTABLEKS                       R21 R0 K27 ["layoutOrder"]
      185 SETTABLEKS                       R21 R20 K20 ["LayoutOrder"]
      187 DUPTABLE                         R21 K29 [{"affordance"}]
      188 GETUPVAL                         R25 5
      189 GETTABLEKS                       R24 R25 K30 ["Enums"]
      191 GETTABLEKS                       R23 R24 K31 ["StateLayerAffordance"]
      193 GETTABLEKS                       R22 R23 K32 ["None"]
      195 SETTABLEKS                       R22 R21 K28 ["affordance"]
      197 SETTABLEKS                       R21 R20 K21 ["stateLayer"]
      199 SETTABLEKS                       R9 R20 K22 ["onStateChanged"]
      201 DUPTABLE                         R21 K35 [{"PopoverRoot", "InputContainer"}]
      202 GETUPVAL                         R22 8
      203 GETUPVAL                         R24 10
      204 GETTABLEKS                       R23 R24 K36 ["Root"]
      206 DUPTABLE                         R24 K38 [{"isOpen", "LayoutOrder"}]
      207 GETTABLEKS                       R25 R7 K39 ["enabled"]
      209 SETTABLEKS                       R25 R24 K37 ["isOpen"]
      211 MOVE                             R25 R16
      212 CALL                             R25 0 1
      213 SETTABLEKS                       R25 R24 K20 ["LayoutOrder"]
      215 DUPTABLE                         R25 K42 [{"Anchor", "ColorPicker"}]
      216 GETUPVAL                         R27 0
      217 GETTABLEKS                       R26 R27 K43 ["createElement"]
      219 GETUPVAL                         R28 10
      220 GETTABLEKS                       R27 R28 K40 ["Anchor"]
      222 NEWTABLE                         R28 0 0
      224 DUPTABLE                         R29 K46 [{"ColorPickerButton", "SizeConstraint"}]
      225 GETUPVAL                         R30 8
      226 GETUPVAL                         R31 11
      227 DUPTABLE                         R32 K49 [{"layoutOrder", "swatchColor", "onActivated"}]
      228 MOVE                             R33 R16
      229 CALL                             R33 0 1
      230 SETTABLEKS                       R33 R32 K27 ["layoutOrder"]
      232 SETTABLEKS                       R8 R32 K47 ["swatchColor"]
      234 SETTABLEKS                       R10 R32 K48 ["onActivated"]
      236 CALL                             R30 2 1
      237 SETTABLEKS                       R30 R29 K44 ["ColorPickerButton"]
      239 GETUPVAL                         R30 8
      240 LOADK                            R31 K50 ["UISizeConstraint"]
      241 DUPTABLE                         R32 K52 [{"MaxSize"}]
      242 GETIMPORT                        R33 K55 [Vector2.new]
      244 GETTABLEKS                       R35 R17 K56 ["Size"]
      246 GETTABLEKS                       R34 R35 K57 ["Size_600"]
      248 GETTABLEKS                       R36 R17 K56 ["Size"]
      250 GETTABLEKS                       R35 R36 K57 ["Size_600"]
      252 CALL                             R33 2 1
      253 SETTABLEKS                       R33 R32 K51 ["MaxSize"]
      255 CALL                             R30 2 1
      256 SETTABLEKS                       R30 R29 K45 ["SizeConstraint"]
      258 CALL                             R26 3 1
      259 SETTABLEKS                       R26 R25 K40 ["Anchor"]
      261 GETTABLEKS                       R27 R7 K39 ["enabled"]
      263 JUMPIFNOT                        R27 ; [+117]
      264 GETUPVAL                         R26 8
      265 GETUPVAL                         R28 10
      266 GETTABLEKS                       R27 R28 K58 ["Content"]
      268 DUPTABLE                         R28 K63 [{"hasArrow", "onPressedOutside", "align", "side"}]
      269 LOADB                            R29 0
      270 SETTABLEKS                       R29 R28 K59 ["hasArrow"]
      272 SETTABLEKS                       R13 R28 K60 ["onPressedOutside"]
      274 DUPTABLE                         R29 K66 [{"position", "offset"}]
      275 GETUPVAL                         R33 5
      276 GETTABLEKS                       R32 R33 K30 ["Enums"]
      278 GETTABLEKS                       R31 R32 K67 ["PopoverAlign"]
      280 GETTABLEKS                       R30 R31 K68 ["Start"]
      282 SETTABLEKS                       R30 R29 K64 ["position"]
      284 LOADN                            R30 0
      285 SETTABLEKS                       R30 R29 K65 ["offset"]
      287 SETTABLEKS                       R29 R28 K61 ["align"]
      289 DUPTABLE                         R29 K66 [{"position", "offset"}]
      290 GETUPVAL                         R33 5
      291 GETTABLEKS                       R32 R33 K30 ["Enums"]
      293 GETTABLEKS                       R31 R32 K69 ["PopoverSide"]
      295 GETTABLEKS                       R30 R31 K70 ["Bottom"]
      297 SETTABLEKS                       R30 R29 K64 ["position"]
      299 LOADN                            R30 8
      300 SETTABLEKS                       R30 R29 K65 ["offset"]
      302 SETTABLEKS                       R29 R28 K62 ["side"]
      304 DUPTABLE                         R29 K72 [{"ColorPickerWrapper"}]
      305 GETUPVAL                         R30 8
      306 LOADK                            R31 K73 ["Frame"]
      307 DUPTABLE                         R32 K75 [{"Size", "BackgroundTransparency"}]
      308 GETIMPORT                        R33 K78 [UDim2.fromOffset]
      310 LOADN                            R34 9
      311 LOADN                            R35 58
      312 CALL                             R33 2 1
      313 SETTABLEKS                       R33 R32 K56 ["Size"]
      315 LOADN                            R33 1
      316 SETTABLEKS                       R33 R32 K74 ["BackgroundTransparency"]
      318 DUPTABLE                         R33 K79 [{"ColorPicker"}]
      319 GETUPVAL                         R34 8
      320 GETUPVAL                         R35 12
      321 DUPTABLE                         R36 K84 [{"initialColor", "initialAlpha", "onColorChanged", "onAlphaChanged"}]
      322 GETTABLEKS                       R40 R0 K7 ["combinedColorParts"]
      324 GETTABLEKS                       R39 R40 K11 ["color3"]
      326 GETTABLEKS                       R38 R39 K12 ["multiple"]
      328 JUMPIFNOT                        R38 ; [+2]
      329 LOADNIL                          R37
      330 JUMP                             ; [+6]
      331 GETTABLEKS                       R39 R0 K7 ["combinedColorParts"]
      333 GETTABLEKS                       R38 R39 K11 ["color3"]
      335 GETTABLEKS                       R37 R38 K9 ["value"]
      337 SETTABLEKS                       R37 R36 K80 ["initialColor"]
      339 GETTABLEKS                       R40 R0 K7 ["combinedColorParts"]
      341 GETTABLEKS                       R39 R40 K85 ["transparency"]
      343 GETTABLEKS                       R38 R39 K9 ["value"]
      345 JUMPIFEQKNIL                     R38 ; [+9]
      347 GETTABLEKS                       R40 R0 K7 ["combinedColorParts"]
      349 GETTABLEKS                       R39 R40 K85 ["transparency"]
      351 GETTABLEKS                       R38 R39 K9 ["value"]
      353 SUBRK                            R37 R86 K38 [{"isOpen", "LayoutOrder"}]
      354 JUMP                             ; [+1]
      355 LOADNIL                          R37
      356 SETTABLEKS                       R37 R36 K81 ["initialAlpha"]
      358 SETTABLEKS                       R11 R36 K82 ["onColorChanged"]
      360 GETTABLEKS                       R40 R0 K7 ["combinedColorParts"]
      362 GETTABLEKS                       R39 R40 K85 ["transparency"]
      364 GETTABLEKS                       R38 R39 K9 ["value"]
      366 JUMPIFEQKNIL                     R38 ; [+3]
      368 MOVE                             R37 R12
      369 JUMP                             ; [+1]
      370 LOADNIL                          R37
      371 SETTABLEKS                       R37 R36 K83 ["onAlphaChanged"]
      373 CALL                             R34 2 1
      374 SETTABLEKS                       R34 R33 K41 ["ColorPicker"]
      376 CALL                             R30 3 1
      377 SETTABLEKS                       R30 R29 K71 ["ColorPickerWrapper"]
      379 CALL                             R26 3 1
      380 JUMP                             ; [+1]
      381 LOADNIL                          R26
      382 SETTABLEKS                       R26 R25 K41 ["ColorPicker"]
      384 CALL                             R22 3 1
      385 SETTABLEKS                       R22 R21 K33 ["PopoverRoot"]
      387 GETUPVAL                         R22 8
      388 GETUPVAL                         R23 9
      389 DUPTABLE                         R24 K88 [{"LayoutOrder", "Size", "ClipsDescendants"}]
      390 MOVE                             R25 R16
      391 CALL                             R25 0 1
      392 SETTABLEKS                       R25 R24 K20 ["LayoutOrder"]
      394 GETIMPORT                        R25 K89 [UDim2.new]
      396 LOADN                            R26 1
      397 GETTABLEKS                       R29 R17 K56 ["Size"]
      399 GETTABLEKS                       R28 R29 K57 ["Size_600"]
      401 MINUS                            R27 R28
      402 LOADN                            R28 1
      403 LOADN                            R29 0
      404 CALL                             R25 4 1
      405 SETTABLEKS                       R25 R24 K56 ["Size"]
      407 LOADB                            R25 1
      408 SETTABLEKS                       R25 R24 K87 ["ClipsDescendants"]
      410 DUPTABLE                         R25 K94 [{"HexInput", "RGBInput", "HSVInput", "BrickColorInput"}]
      411 LOADB                            R26 0
      412 JUMPIFNOTEQKS                    R2 K95 ["Hex"] ; [+31]
      414 GETUPVAL                         R26 8
      415 GETUPVAL                         R27 13
      416 DUPTABLE                         R28 K99 [{"layoutOrder", "color3Part", "beginEditingAsync", "setPart", "finishEditing", "onFocused", "onFocusLost"}]
      417 MOVE                             R29 R16
      418 CALL                             R29 0 1
      419 SETTABLEKS                       R29 R28 K27 ["layoutOrder"]
      421 GETTABLEKS                       R30 R0 K7 ["combinedColorParts"]
      423 GETTABLEKS                       R29 R30 K11 ["color3"]
      425 SETTABLEKS                       R29 R28 K96 ["color3Part"]
      427 GETTABLEKS                       R29 R0 K16 ["beginEditingAsync"]
      429 SETTABLEKS                       R29 R28 K16 ["beginEditingAsync"]
      431 GETTABLEKS                       R29 R0 K17 ["setPart"]
      433 SETTABLEKS                       R29 R28 K17 ["setPart"]
      435 GETTABLEKS                       R29 R0 K18 ["finishEditing"]
      437 SETTABLEKS                       R29 R28 K18 ["finishEditing"]
      439 SETTABLEKS                       R14 R28 K97 ["onFocused"]
      441 SETTABLEKS                       R15 R28 K98 ["onFocusLost"]
      443 CALL                             R26 2 1
      444 SETTABLEKS                       R26 R25 K90 ["HexInput"]
      446 LOADB                            R26 0
      447 JUMPIFNOTEQKS                    R2 K10 ["RGB"] ; [+47]
      449 GETUPVAL                         R26 8
      450 GETUPVAL                         R27 14
      451 DUPTABLE                         R28 K104 [{"layoutOrder", "rPart", "gPart", "bPart", "activateCombinedInputSignal", "beginEditingAsync", "setPart", "finishEditing", "onFocused", "onFocusLost"}]
      452 MOVE                             R29 R16
      453 CALL                             R29 0 1
      454 SETTABLEKS                       R29 R28 K27 ["layoutOrder"]
      456 GETTABLEKS                       R30 R0 K7 ["combinedColorParts"]
      458 GETTABLEKS                       R29 R30 K105 ["r"]
      460 SETTABLEKS                       R29 R28 K100 ["rPart"]
      462 GETTABLEKS                       R30 R0 K7 ["combinedColorParts"]
      464 GETTABLEKS                       R29 R30 K106 ["g"]
      466 SETTABLEKS                       R29 R28 K101 ["gPart"]
      468 GETTABLEKS                       R30 R0 K7 ["combinedColorParts"]
      470 GETTABLEKS                       R29 R30 K107 ["b"]
      472 SETTABLEKS                       R29 R28 K102 ["bPart"]
      474 GETTABLEKS                       R29 R0 K103 ["activateCombinedInputSignal"]
      476 SETTABLEKS                       R29 R28 K103 ["activateCombinedInputSignal"]
      478 GETTABLEKS                       R29 R0 K16 ["beginEditingAsync"]
      480 SETTABLEKS                       R29 R28 K16 ["beginEditingAsync"]
      482 GETTABLEKS                       R29 R0 K17 ["setPart"]
      484 SETTABLEKS                       R29 R28 K17 ["setPart"]
      486 GETTABLEKS                       R29 R0 K18 ["finishEditing"]
      488 SETTABLEKS                       R29 R28 K18 ["finishEditing"]
      490 SETTABLEKS                       R14 R28 K97 ["onFocused"]
      492 SETTABLEKS                       R15 R28 K98 ["onFocusLost"]
      494 CALL                             R26 2 1
      495 SETTABLEKS                       R26 R25 K91 ["RGBInput"]
      497 LOADB                            R26 0
      498 JUMPIFNOTEQKS                    R2 K108 ["HSV"] ; [+31]
      500 GETUPVAL                         R26 8
      501 GETUPVAL                         R27 15
      502 DUPTABLE                         R28 K112 [{"layoutOrder", "hPart", "sPart", "vPart", "onFocused", "onFocusLost"}]
      503 MOVE                             R29 R16
      504 CALL                             R29 0 1
      505 SETTABLEKS                       R29 R28 K27 ["layoutOrder"]
      507 GETTABLEKS                       R30 R0 K7 ["combinedColorParts"]
      509 GETTABLEKS                       R29 R30 K113 ["h"]
      511 SETTABLEKS                       R29 R28 K109 ["hPart"]
      513 GETTABLEKS                       R30 R0 K7 ["combinedColorParts"]
      515 GETTABLEKS                       R29 R30 K114 ["s"]
      517 SETTABLEKS                       R29 R28 K110 ["sPart"]
      519 GETTABLEKS                       R30 R0 K7 ["combinedColorParts"]
      521 GETTABLEKS                       R29 R30 K115 ["v"]
      523 SETTABLEKS                       R29 R28 K111 ["vPart"]
      525 SETTABLEKS                       R14 R28 K97 ["onFocused"]
      527 SETTABLEKS                       R15 R28 K98 ["onFocusLost"]
      529 CALL                             R26 2 1
      530 SETTABLEKS                       R26 R25 K92 ["HSVInput"]
      532 LOADB                            R26 0
      533 JUMPIFNOTEQKS                    R2 K6 ["BrickColor"] ; [+19]
      535 GETUPVAL                         R26 8
      536 GETUPVAL                         R27 16
      537 DUPTABLE                         R28 K117 [{"layoutOrder", "brickColorPart", "onFocused", "onFocusLost"}]
      538 MOVE                             R29 R16
      539 CALL                             R29 0 1
      540 SETTABLEKS                       R29 R28 K27 ["layoutOrder"]
      542 GETTABLEKS                       R30 R0 K7 ["combinedColorParts"]
      544 GETTABLEKS                       R29 R30 K8 ["brickColor"]
      546 SETTABLEKS                       R29 R28 K116 ["brickColorPart"]
      548 SETTABLEKS                       R14 R28 K97 ["onFocused"]
      550 SETTABLEKS                       R15 R28 K98 ["onFocusLost"]
      552 CALL                             R26 2 1
      553 SETTABLEKS                       R26 R25 K93 ["BrickColorInput"]
      555 CALL                             R22 3 1
      556 SETTABLEKS                       R22 R21 K34 ["InputContainer"]
      558 CALL                             R18 3 -1
      559 RETURN                           R18 -1

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
      117 DUPCLOSURE                       R22 K31 [PROTO_7]
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
