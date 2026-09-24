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
        8 SUBRK                            R3 K3 [1] R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K4 ["beginEditingAsync"]
       14 CALL                             R1 0 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K1 ["setPart"]
       18 LOADK                            R2 K2 ["transparency"]
       19 SUBRK                            R3 K3 [1] R0
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
        0 GETTABLEKS                       R1 R0 K0 ["combinedColorPropertyInfo"]
        2 LOADB                            R3 0
        3 GETTABLEKS                       R4 R1 K1 ["extra"]
        5 JUMPIFEQKNIL                     R4 ; [+9]
        7 GETTABLEKS                       R4 R1 K1 ["extra"]
        9 GETTABLEKS                       R4 R4 K2 ["type"]
       11 JUMPIFEQKS                       R4 K3 ["combinedColor"] ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       17 LOADK                            R4 K4 ["Did not contain CombinedColorExtra"]
       18 GETIMPORT                        R2 K6 [assert]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R2 R0 K0 ["combinedColorPropertyInfo"]
       23 GETTABLEKS                       R2 R2 K7 ["parts"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K8 ["useContext"]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K9 ["Context"]
       31 CALL                             R3 1 1
       32 GETUPVAL                         R4 2
       33 CALL                             R4 0 1
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R5 R5 K10 ["use"]
       37 GETTABLEKS                       R6 R3 K11 ["colorDisplaySettingObservable"]
       39 CALL                             R5 1 1
       40 LOADB                            R6 1
       41 GETTABLEKS                       R7 R5 K12 ["ColorDisplayType"]
       43 JUMPIFEQKS                       R7 K13 ["ForceBrickColor"] ; [+14]
       45 LOADB                            R6 0
       46 GETTABLEKS                       R7 R5 K12 ["ColorDisplayType"]
       48 JUMPIFNOTEQKS                    R7 K14 ["EngineDefault"] ; [+9]
       50 GETTABLEKS                       R7 R1 K1 ["extra"]
       52 GETTABLEKS                       R7 R7 K15 ["defaultView"]
       54 JUMPIFEQKS                       R7 K16 ["BrickColor"] ; [+2]
       56 LOADB                            R6 0 +1
       57 LOADB                            R6 1
       58 LOADB                            R7 1
       59 GETTABLEKS                       R8 R5 K12 ["ColorDisplayType"]
       61 JUMPIFEQKS                       R8 K17 ["ForceColor3"] ; [+14]
       63 LOADB                            R7 0
       64 GETTABLEKS                       R8 R5 K12 ["ColorDisplayType"]
       66 JUMPIFNOTEQKS                    R8 K14 ["EngineDefault"] ; [+9]
       68 GETTABLEKS                       R8 R1 K1 ["extra"]
       70 GETTABLEKS                       R8 R8 K15 ["defaultView"]
       72 JUMPIFEQKS                       R8 K18 ["Color3"] ; [+2]
       74 LOADB                            R7 0 +1
       75 LOADB                            R7 1
       76 GETTABLEKS                       R8 R5 K19 ["Color3DisplayMode"]
       78 GETUPVAL                         R9 0
       79 GETTABLEKS                       R9 R9 K20 ["useState"]
       81 LOADB                            R10 0
       82 CALL                             R9 1 2
       83 GETUPVAL                         R11 0
       84 GETTABLEKS                       R11 R11 K20 ["useState"]
       86 LOADB                            R12 0
       87 CALL                             R11 1 2
       88 GETUPVAL                         R13 4
       89 GETTABLEKS                       R13 R13 K21 ["useToggleState"]
       91 LOADB                            R14 0
       92 CALL                             R13 1 1
       93 GETTABLEKS                       R15 R2 K22 ["color3"]
       95 GETTABLEKS                       R15 R15 K23 ["multiple"]
       97 JUMPIFNOT                        R15 ; [+5]
       98 GETTABLEKS                       R14 R4 K24 ["ColorSwatch"]
      100 GETTABLEKS                       R14 R14 K25 ["MultipleColor"]
      102 JUMP                             ; [+12]
      103 JUMPIFNOT                        R6 ; [+7]
      104 GETTABLEKS                       R14 R2 K26 ["brickColor"]
      106 GETTABLEKS                       R14 R14 K27 ["value"]
      108 GETTABLEKS                       R14 R14 K28 ["Color"]
      110 JUMP                             ; [+4]
      111 GETTABLEKS                       R14 R2 K22 ["color3"]
      113 GETTABLEKS                       R14 R14 K27 ["value"]
      115 GETUPVAL                         R15 0
      116 GETTABLEKS                       R15 R15 K29 ["useCallback"]
      118 NEWCLOSURE                       R16 P0
      119 CAPTURE                          VAL R10
      120 CAPTURE                          UPVAL U5
      121 NEWTABLE                         R17 0 0
      123 CALL                             R15 2 1
      124 GETUPVAL                         R16 0
      125 GETTABLEKS                       R16 R16 K29 ["useCallback"]
      127 NEWCLOSURE                       R17 P1
      128 CAPTURE                          VAL R13
      129 NEWTABLE                         R18 0 0
      131 CALL                             R16 2 1
      132 GETUPVAL                         R17 0
      133 GETTABLEKS                       R17 R17 K30 ["useRef"]
      135 LOADB                            R18 0
      136 CALL                             R17 1 1
      137 GETUPVAL                         R18 0
      138 GETTABLEKS                       R18 R18 K29 ["useCallback"]
      140 NEWCLOSURE                       R19 P2
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R0
      143 NEWTABLE                         R20 0 1
      145 GETTABLEKS                       R21 R0 K31 ["beginEditingAsync"]
      147 SETLIST                          R20 R21 1 [1]
      149 CALL                             R18 2 1
      150 GETUPVAL                         R19 0
      151 GETTABLEKS                       R19 R19 K29 ["useCallback"]
      153 NEWCLOSURE                       R20 P3
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R0
      156 NEWTABLE                         R21 0 3
      158 GETTABLEKS                       R22 R0 K31 ["beginEditingAsync"]
      160 GETTABLEKS                       R23 R0 K32 ["setPart"]
      162 GETTABLEKS                       R24 R0 K33 ["finishEditing"]
      164 SETLIST                          R21 R22 3 [1]
      166 CALL                             R19 2 1
      167 GETUPVAL                         R20 0
      168 GETTABLEKS                       R20 R20 K29 ["useCallback"]
      170 NEWCLOSURE                       R21 P4
      171 CAPTURE                          VAL R17
      172 CAPTURE                          VAL R0
      173 NEWTABLE                         R22 0 3
      175 GETTABLEKS                       R23 R0 K31 ["beginEditingAsync"]
      177 GETTABLEKS                       R24 R0 K32 ["setPart"]
      179 GETTABLEKS                       R25 R0 K33 ["finishEditing"]
      181 SETLIST                          R22 R23 3 [1]
      183 CALL                             R20 2 1
      184 GETUPVAL                         R21 0
      185 GETTABLEKS                       R21 R21 K29 ["useCallback"]
      187 NEWCLOSURE                       R22 P5
      188 CAPTURE                          VAL R17
      189 CAPTURE                          VAL R0
      190 NEWTABLE                         R23 0 1
      192 GETTABLEKS                       R24 R0 K33 ["finishEditing"]
      194 SETLIST                          R23 R24 1 [1]
      196 CALL                             R21 2 1
      197 GETUPVAL                         R22 0
      198 GETTABLEKS                       R22 R22 K29 ["useCallback"]
      200 NEWCLOSURE                       R23 P6
      201 CAPTURE                          VAL R13
      202 NEWTABLE                         R24 0 0
      204 CALL                             R22 2 1
      205 GETUPVAL                         R23 0
      206 GETTABLEKS                       R23 R23 K29 ["useCallback"]
      208 NEWCLOSURE                       R24 P7
      209 CAPTURE                          VAL R12
      210 NEWTABLE                         R25 0 0
      212 CALL                             R23 2 1
      213 GETUPVAL                         R24 0
      214 GETTABLEKS                       R24 R24 K29 ["useCallback"]
      216 NEWCLOSURE                       R25 P8
      217 CAPTURE                          VAL R12
      218 NEWTABLE                         R26 0 0
      220 CALL                             R24 2 1
      221 GETUPVAL                         R25 6
      222 CALL                             R25 0 1
      223 GETUPVAL                         R26 7
      224 CALL                             R26 0 1
      225 GETUPVAL                         R27 8
      226 GETUPVAL                         R28 9
      227 DUPTABLE                         R29 K38 [{"tag", "LayoutOrder", "stateLayer", "onStateChanged"}]
      228 NEWTABLE                         R30 4 0
      230 LOADB                            R31 1
      231 SETTABLEKS                       R31 R30 K39 ["row size-full-600 radius-small bg-shift-200"]
      233 MOVE                             R31 R9
      234 JUMPIFNOT                        R31 ; [+1]
      235 NOT                              R31 R11
      236 SETTABLEKS                       R31 R30 K40 ["stroke-emphasis"]
      238 SETTABLEKS                       R11 R30 K41 ["stroke-system-emphasis"]
      240 SETTABLEKS                       R30 R29 K34 ["tag"]
      242 GETTABLEKS                       R30 R0 K35 ["LayoutOrder"]
      244 SETTABLEKS                       R30 R29 K35 ["LayoutOrder"]
      246 DUPTABLE                         R30 K43 [{"affordance"}]
      247 GETUPVAL                         R31 5
      248 GETTABLEKS                       R31 R31 K44 ["Enums"]
      250 GETTABLEKS                       R31 R31 K45 ["StateLayerAffordance"]
      252 GETTABLEKS                       R31 R31 K46 ["None"]
      254 SETTABLEKS                       R31 R30 K42 ["affordance"]
      256 SETTABLEKS                       R30 R29 K36 ["stateLayer"]
      258 SETTABLEKS                       R15 R29 K37 ["onStateChanged"]
      260 DUPTABLE                         R30 K49 [{"PopoverRoot", "InputContainer"}]
      261 GETUPVAL                         R31 8
      262 GETUPVAL                         R32 10
      263 GETTABLEKS                       R32 R32 K50 ["Root"]
      265 DUPTABLE                         R33 K52 [{"isOpen", "LayoutOrder"}]
      266 GETTABLEKS                       R34 R13 K53 ["enabled"]
      268 SETTABLEKS                       R34 R33 K51 ["isOpen"]
      270 MOVE                             R34 R25
      271 CALL                             R34 0 1
      272 SETTABLEKS                       R34 R33 K35 ["LayoutOrder"]
      274 DUPTABLE                         R34 K56 [{"Anchor", "ColorPicker"}]
      275 GETUPVAL                         R35 0
      276 GETTABLEKS                       R35 R35 K57 ["createElement"]
      278 GETUPVAL                         R36 10
      279 GETTABLEKS                       R36 R36 K54 ["Anchor"]
      281 NEWTABLE                         R37 0 0
      283 DUPTABLE                         R38 K60 [{"ColorPickerButton", "SizeConstraint"}]
      284 GETUPVAL                         R39 8
      285 GETUPVAL                         R40 11
      286 DUPTABLE                         R41 K64 [{"layoutOrder", "swatchColor", "onActivated"}]
      287 MOVE                             R42 R25
      288 CALL                             R42 0 1
      289 SETTABLEKS                       R42 R41 K61 ["layoutOrder"]
      291 SETTABLEKS                       R14 R41 K62 ["swatchColor"]
      293 SETTABLEKS                       R16 R41 K63 ["onActivated"]
      295 CALL                             R39 2 1
      296 SETTABLEKS                       R39 R38 K58 ["ColorPickerButton"]
      298 GETUPVAL                         R39 8
      299 LOADK                            R40 K65 ["UISizeConstraint"]
      300 DUPTABLE                         R41 K67 [{"MaxSize"}]
      301 GETIMPORT                        R43 K70 [Vector2.one]
      303 GETTABLEKS                       R44 R26 K71 ["Size"]
      305 GETTABLEKS                       R44 R44 K72 ["Size_600"]
      307 MUL                              R42 R43 R44
      308 SETTABLEKS                       R42 R41 K66 ["MaxSize"]
      310 CALL                             R39 2 1
      311 SETTABLEKS                       R39 R38 K59 ["SizeConstraint"]
      313 CALL                             R35 3 1
      314 SETTABLEKS                       R35 R34 K54 ["Anchor"]
      316 GETTABLEKS                       R36 R13 K53 ["enabled"]
      318 JUMPIFNOT                        R36 ; [+94]
      319 GETUPVAL                         R35 8
      320 GETUPVAL                         R36 10
      321 GETTABLEKS                       R36 R36 K73 ["Content"]
      323 DUPTABLE                         R37 K79 [{["hasArrow"] = False, ["onPressedOutside"], ["align"], ["side"]}]
      324 SETTABLEKS                       R22 R37 K76 ["onPressedOutside"]
      326 DUPTABLE                         R38 K83 [{["position"], ["offset"] = 0}]
      327 GETUPVAL                         R39 5
      328 GETTABLEKS                       R39 R39 K44 ["Enums"]
      330 GETTABLEKS                       R39 R39 K84 ["PopoverAlign"]
      332 GETTABLEKS                       R39 R39 K85 ["Start"]
      334 SETTABLEKS                       R39 R38 K80 ["position"]
      336 SETTABLEKS                       R38 R37 K77 ["align"]
      338 DUPTABLE                         R38 K87 [{["position"], ["offset"] = 8}]
      339 GETUPVAL                         R39 5
      340 GETTABLEKS                       R39 R39 K44 ["Enums"]
      342 GETTABLEKS                       R39 R39 K88 ["PopoverSide"]
      344 GETTABLEKS                       R39 R39 K89 ["Bottom"]
      346 SETTABLEKS                       R39 R38 K80 ["position"]
      348 SETTABLEKS                       R38 R37 K78 ["side"]
      350 DUPTABLE                         R38 K91 [{"ColorPickerWrapper"}]
      351 GETUPVAL                         R39 8
      352 LOADK                            R40 K92 ["Frame"]
      353 DUPTABLE                         R41 K96 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
      354 GETIMPORT                        R42 K99 [UDim2.fromOffset]
      356 LOADN                            R43 208
      357 LOADN                            R44 0
      358 CALL                             R42 2 1
      359 SETTABLEKS                       R42 R41 K71 ["Size"]
      361 GETIMPORT                        R42 K102 [Enum.AutomaticSize.Y]
      363 SETTABLEKS                       R42 R41 K93 ["AutomaticSize"]
      365 DUPTABLE                         R42 K103 [{"ColorPicker"}]
      366 GETUPVAL                         R43 8
      367 GETUPVAL                         R44 12
      368 DUPTABLE                         R45 K110 [{"initialColor", "initialAlpha", "onDragStarted", "onColorChanged", "onAlphaChanged", "onDragEnded"}]
      369 GETTABLEKS                       R46 R2 K22 ["color3"]
      371 GETTABLEKS                       R46 R46 K27 ["value"]
      373 SETTABLEKS                       R46 R45 K104 ["initialColor"]
      375 GETTABLEKS                       R47 R1 K1 ["extra"]
      377 GETTABLEKS                       R47 R47 K111 ["hasTransparency"]
      379 JUMPIFNOT                        R47 ; [+6]
      380 GETTABLEKS                       R47 R2 K112 ["transparency"]
      382 GETTABLEKS                       R47 R47 K27 ["value"]
      384 SUBRK                            R46 K95 [1] R47
      385 JUMP                             ; [+1]
      386 LOADNIL                          R46
      387 SETTABLEKS                       R46 R45 K105 ["initialAlpha"]
      389 SETTABLEKS                       R18 R45 K106 ["onDragStarted"]
      391 SETTABLEKS                       R19 R45 K107 ["onColorChanged"]
      393 GETTABLEKS                       R47 R1 K1 ["extra"]
      395 GETTABLEKS                       R47 R47 K111 ["hasTransparency"]
      397 JUMPIFNOT                        R47 ; [+2]
      398 MOVE                             R46 R20
      399 JUMP                             ; [+1]
      400 LOADNIL                          R46
      401 SETTABLEKS                       R46 R45 K108 ["onAlphaChanged"]
      403 SETTABLEKS                       R21 R45 K109 ["onDragEnded"]
      405 CALL                             R43 2 1
      406 SETTABLEKS                       R43 R42 K55 ["ColorPicker"]
      408 CALL                             R39 3 1
      409 SETTABLEKS                       R39 R38 K90 ["ColorPickerWrapper"]
      411 CALL                             R35 3 1
      412 JUMP                             ; [+1]
      413 LOADNIL                          R35
      414 SETTABLEKS                       R35 R34 K55 ["ColorPicker"]
      416 CALL                             R31 3 1
      417 SETTABLEKS                       R31 R30 K47 ["PopoverRoot"]
      419 GETUPVAL                         R31 8
      420 GETUPVAL                         R32 9
      421 DUPTABLE                         R33 K115 [{["LayoutOrder"], ["Size"], ["ClipsDescendants"] = True}]
      422 MOVE                             R34 R25
      423 CALL                             R34 0 1
      424 SETTABLEKS                       R34 R33 K35 ["LayoutOrder"]
      426 GETIMPORT                        R34 K117 [UDim2.new]
      428 LOADN                            R35 1
      429 GETTABLEKS                       R37 R26 K71 ["Size"]
      431 GETTABLEKS                       R37 R37 K72 ["Size_600"]
      433 MINUS                            R36 R37
      434 LOADN                            R37 1
      435 LOADN                            R38 0
      436 CALL                             R34 4 1
      437 SETTABLEKS                       R34 R33 K71 ["Size"]
      439 DUPTABLE                         R34 K122 [{"HexInput", "RGBInput", "HSVInput", "BrickColorInput"}]
      440 MOVE                             R35 R7
      441 JUMPIFNOT                        R35 ; [+31]
      442 LOADB                            R35 0
      443 JUMPIFNOTEQKS                    R8 K123 ["Hex"] ; [+29]
      445 GETUPVAL                         R35 8
      446 GETUPVAL                         R36 13
      447 DUPTABLE                         R37 K127 [{"layoutOrder", "color3Part", "beginEditingAsync", "setPart", "finishEditing", "onFocused", "onFocusLost"}]
      448 MOVE                             R38 R25
      449 CALL                             R38 0 1
      450 SETTABLEKS                       R38 R37 K61 ["layoutOrder"]
      452 GETTABLEKS                       R38 R2 K22 ["color3"]
      454 SETTABLEKS                       R38 R37 K124 ["color3Part"]
      456 GETTABLEKS                       R38 R0 K31 ["beginEditingAsync"]
      458 SETTABLEKS                       R38 R37 K31 ["beginEditingAsync"]
      460 GETTABLEKS                       R38 R0 K32 ["setPart"]
      462 SETTABLEKS                       R38 R37 K32 ["setPart"]
      464 GETTABLEKS                       R38 R0 K33 ["finishEditing"]
      466 SETTABLEKS                       R38 R37 K33 ["finishEditing"]
      468 SETTABLEKS                       R23 R37 K125 ["onFocused"]
      470 SETTABLEKS                       R24 R37 K126 ["onFocusLost"]
      472 CALL                             R35 2 1
      473 SETTABLEKS                       R35 R34 K118 ["HexInput"]
      475 MOVE                             R35 R7
      476 JUMPIFNOT                        R35 ; [+43]
      477 LOADB                            R35 0
      478 JUMPIFNOTEQKS                    R8 K128 ["RGB"] ; [+41]
      480 GETUPVAL                         R35 8
      481 GETUPVAL                         R36 14
      482 DUPTABLE                         R37 K133 [{"layoutOrder", "rPart", "gPart", "bPart", "activateCombinedInputSignal", "beginEditingAsync", "setPart", "finishEditing", "onFocused", "onFocusLost"}]
      483 MOVE                             R38 R25
      484 CALL                             R38 0 1
      485 SETTABLEKS                       R38 R37 K61 ["layoutOrder"]
      487 GETTABLEKS                       R38 R2 K134 ["r"]
      489 SETTABLEKS                       R38 R37 K129 ["rPart"]
      491 GETTABLEKS                       R38 R2 K135 ["g"]
      493 SETTABLEKS                       R38 R37 K130 ["gPart"]
      495 GETTABLEKS                       R38 R2 K136 ["b"]
      497 SETTABLEKS                       R38 R37 K131 ["bPart"]
      499 GETTABLEKS                       R38 R0 K132 ["activateCombinedInputSignal"]
      501 SETTABLEKS                       R38 R37 K132 ["activateCombinedInputSignal"]
      503 GETTABLEKS                       R38 R0 K31 ["beginEditingAsync"]
      505 SETTABLEKS                       R38 R37 K31 ["beginEditingAsync"]
      507 GETTABLEKS                       R38 R0 K32 ["setPart"]
      509 SETTABLEKS                       R38 R37 K32 ["setPart"]
      511 GETTABLEKS                       R38 R0 K33 ["finishEditing"]
      513 SETTABLEKS                       R38 R37 K33 ["finishEditing"]
      515 SETTABLEKS                       R23 R37 K125 ["onFocused"]
      517 SETTABLEKS                       R24 R37 K126 ["onFocusLost"]
      519 CALL                             R35 2 1
      520 SETTABLEKS                       R35 R34 K119 ["RGBInput"]
      522 MOVE                             R35 R7
      523 JUMPIFNOT                        R35 ; [+27]
      524 LOADB                            R35 0
      525 JUMPIFNOTEQKS                    R8 K137 ["HSV"] ; [+25]
      527 GETUPVAL                         R35 8
      528 GETUPVAL                         R36 15
      529 DUPTABLE                         R37 K141 [{"layoutOrder", "hPart", "sPart", "vPart", "onFocused", "onFocusLost"}]
      530 MOVE                             R38 R25
      531 CALL                             R38 0 1
      532 SETTABLEKS                       R38 R37 K61 ["layoutOrder"]
      534 GETTABLEKS                       R38 R2 K142 ["h"]
      536 SETTABLEKS                       R38 R37 K138 ["hPart"]
      538 GETTABLEKS                       R38 R2 K143 ["s"]
      540 SETTABLEKS                       R38 R37 K139 ["sPart"]
      542 GETTABLEKS                       R38 R2 K144 ["v"]
      544 SETTABLEKS                       R38 R37 K140 ["vPart"]
      546 SETTABLEKS                       R23 R37 K125 ["onFocused"]
      548 SETTABLEKS                       R24 R37 K126 ["onFocusLost"]
      550 CALL                             R35 2 1
      551 SETTABLEKS                       R35 R34 K120 ["HSVInput"]
      553 MOVE                             R35 R6
      554 JUMPIFNOT                        R35 ; [+16]
      555 GETUPVAL                         R35 8
      556 GETUPVAL                         R36 16
      557 DUPTABLE                         R37 K146 [{"layoutOrder", "brickColorPart", "onFocused", "onFocusLost"}]
      558 MOVE                             R38 R25
      559 CALL                             R38 0 1
      560 SETTABLEKS                       R38 R37 K61 ["layoutOrder"]
      562 GETTABLEKS                       R38 R2 K26 ["brickColor"]
      564 SETTABLEKS                       R38 R37 K145 ["brickColorPart"]
      566 SETTABLEKS                       R23 R37 K125 ["onFocused"]
      568 SETTABLEKS                       R24 R37 K126 ["onFocusLost"]
      570 CALL                             R35 2 1
      571 SETTABLEKS                       R35 R34 K121 ["BrickColorInput"]
      573 CALL                             R31 3 1
      574 SETTABLEKS                       R31 R30 K48 ["InputContainer"]
      576 CALL                             R27 3 -1
      577 RETURN                           R27 -1

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
