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
        2 GETTABLEKS                       R2 R1 K1 ["extra"]
        4 GETTABLEKS                       R3 R0 K0 ["combinedColorPropertyInfo"]
        6 GETTABLEKS                       R3 R3 K2 ["parts"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["useContext"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K4 ["Context"]
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 2
       16 CALL                             R5 0 1
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R6 R6 K5 ["use"]
       20 GETTABLEKS                       R7 R4 K6 ["colorDisplaySettingObservable"]
       22 CALL                             R6 1 1
       23 LOADB                            R7 1
       24 GETTABLEKS                       R8 R6 K7 ["ColorDisplayType"]
       26 JUMPIFEQKS                       R8 K8 ["ForceBrickColor"] ; [+12]
       28 LOADB                            R7 0
       29 GETTABLEKS                       R8 R6 K7 ["ColorDisplayType"]
       31 JUMPIFNOTEQKS                    R8 K9 ["EngineDefault"] ; [+7]
       33 GETTABLEKS                       R8 R2 K10 ["defaultView"]
       35 JUMPIFEQKS                       R8 K11 ["BrickColor"] ; [+2]
       37 LOADB                            R7 0 +1
       38 LOADB                            R7 1
       39 LOADB                            R8 1
       40 GETTABLEKS                       R9 R6 K7 ["ColorDisplayType"]
       42 JUMPIFEQKS                       R9 K12 ["ForceColor3"] ; [+12]
       44 LOADB                            R8 0
       45 GETTABLEKS                       R9 R6 K7 ["ColorDisplayType"]
       47 JUMPIFNOTEQKS                    R9 K9 ["EngineDefault"] ; [+7]
       49 GETTABLEKS                       R9 R2 K10 ["defaultView"]
       51 JUMPIFEQKS                       R9 K13 ["Color3"] ; [+2]
       53 LOADB                            R8 0 +1
       54 LOADB                            R8 1
       55 GETTABLEKS                       R9 R6 K14 ["Color3DisplayMode"]
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K15 ["useState"]
       60 LOADB                            R11 0
       61 CALL                             R10 1 2
       62 GETUPVAL                         R12 0
       63 GETTABLEKS                       R12 R12 K15 ["useState"]
       65 LOADB                            R13 0
       66 CALL                             R12 1 2
       67 GETUPVAL                         R14 4
       68 GETTABLEKS                       R14 R14 K16 ["useToggleState"]
       70 LOADB                            R15 0
       71 CALL                             R14 1 1
       72 GETTABLEKS                       R16 R3 K17 ["color3"]
       74 GETTABLEKS                       R16 R16 K18 ["multiple"]
       76 JUMPIFNOT                        R16 ; [+5]
       77 GETTABLEKS                       R15 R5 K19 ["ColorSwatch"]
       79 GETTABLEKS                       R15 R15 K20 ["MultipleColor"]
       81 JUMP                             ; [+12]
       82 JUMPIFNOT                        R7 ; [+7]
       83 GETTABLEKS                       R15 R3 K21 ["brickColor"]
       85 GETTABLEKS                       R15 R15 K22 ["value"]
       87 GETTABLEKS                       R15 R15 K23 ["Color"]
       89 JUMP                             ; [+4]
       90 GETTABLEKS                       R15 R3 K17 ["color3"]
       92 GETTABLEKS                       R15 R15 K22 ["value"]
       94 GETUPVAL                         R16 0
       95 GETTABLEKS                       R16 R16 K24 ["useCallback"]
       97 NEWCLOSURE                       R17 P0
       98 CAPTURE                          VAL R11
       99 CAPTURE                          UPVAL U5
      100 NEWTABLE                         R18 0 0
      102 CALL                             R16 2 1
      103 GETUPVAL                         R17 0
      104 GETTABLEKS                       R17 R17 K24 ["useCallback"]
      106 NEWCLOSURE                       R18 P1
      107 CAPTURE                          VAL R14
      108 NEWTABLE                         R19 0 0
      110 CALL                             R17 2 1
      111 GETUPVAL                         R18 0
      112 GETTABLEKS                       R18 R18 K25 ["useRef"]
      114 LOADB                            R19 0
      115 CALL                             R18 1 1
      116 GETUPVAL                         R19 0
      117 GETTABLEKS                       R19 R19 K24 ["useCallback"]
      119 NEWCLOSURE                       R20 P2
      120 CAPTURE                          VAL R18
      121 CAPTURE                          VAL R0
      122 NEWTABLE                         R21 0 1
      124 GETTABLEKS                       R22 R0 K26 ["beginEditingAsync"]
      126 SETLIST                          R21 R22 1 [1]
      128 CALL                             R19 2 1
      129 GETUPVAL                         R20 0
      130 GETTABLEKS                       R20 R20 K24 ["useCallback"]
      132 NEWCLOSURE                       R21 P3
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R0
      135 NEWTABLE                         R22 0 3
      137 GETTABLEKS                       R23 R0 K26 ["beginEditingAsync"]
      139 GETTABLEKS                       R24 R0 K27 ["setPart"]
      141 GETTABLEKS                       R25 R0 K28 ["finishEditing"]
      143 SETLIST                          R22 R23 3 [1]
      145 CALL                             R20 2 1
      146 GETUPVAL                         R21 0
      147 GETTABLEKS                       R21 R21 K24 ["useCallback"]
      149 NEWCLOSURE                       R22 P4
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R0
      152 NEWTABLE                         R23 0 3
      154 GETTABLEKS                       R24 R0 K26 ["beginEditingAsync"]
      156 GETTABLEKS                       R25 R0 K27 ["setPart"]
      158 GETTABLEKS                       R26 R0 K28 ["finishEditing"]
      160 SETLIST                          R23 R24 3 [1]
      162 CALL                             R21 2 1
      163 GETUPVAL                         R22 0
      164 GETTABLEKS                       R22 R22 K24 ["useCallback"]
      166 NEWCLOSURE                       R23 P5
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R0
      169 NEWTABLE                         R24 0 1
      171 GETTABLEKS                       R25 R0 K28 ["finishEditing"]
      173 SETLIST                          R24 R25 1 [1]
      175 CALL                             R22 2 1
      176 GETUPVAL                         R23 0
      177 GETTABLEKS                       R23 R23 K24 ["useCallback"]
      179 NEWCLOSURE                       R24 P6
      180 CAPTURE                          VAL R14
      181 NEWTABLE                         R25 0 0
      183 CALL                             R23 2 1
      184 GETUPVAL                         R24 0
      185 GETTABLEKS                       R24 R24 K24 ["useCallback"]
      187 NEWCLOSURE                       R25 P7
      188 CAPTURE                          VAL R13
      189 NEWTABLE                         R26 0 0
      191 CALL                             R24 2 1
      192 GETUPVAL                         R25 0
      193 GETTABLEKS                       R25 R25 K24 ["useCallback"]
      195 NEWCLOSURE                       R26 P8
      196 CAPTURE                          VAL R13
      197 NEWTABLE                         R27 0 0
      199 CALL                             R25 2 1
      200 GETUPVAL                         R26 6
      201 CALL                             R26 0 1
      202 GETUPVAL                         R27 7
      203 CALL                             R27 0 1
      204 GETUPVAL                         R28 8
      205 GETUPVAL                         R29 9
      206 DUPTABLE                         R30 K33 [{"tag", "LayoutOrder", "stateLayer", "onStateChanged"}]
      207 NEWTABLE                         R31 4 0
      209 LOADB                            R32 1
      210 SETTABLEKS                       R32 R31 K34 ["row size-full-600 radius-small bg-shift-200"]
      212 MOVE                             R32 R10
      213 JUMPIFNOT                        R32 ; [+1]
      214 NOT                              R32 R12
      215 SETTABLEKS                       R32 R31 K35 ["stroke-emphasis"]
      217 SETTABLEKS                       R12 R31 K36 ["stroke-system-emphasis"]
      219 SETTABLEKS                       R31 R30 K29 ["tag"]
      221 GETTABLEKS                       R31 R0 K30 ["LayoutOrder"]
      223 SETTABLEKS                       R31 R30 K30 ["LayoutOrder"]
      225 DUPTABLE                         R31 K38 [{"affordance"}]
      226 GETUPVAL                         R32 5
      227 GETTABLEKS                       R32 R32 K39 ["Enums"]
      229 GETTABLEKS                       R32 R32 K40 ["StateLayerAffordance"]
      231 GETTABLEKS                       R32 R32 K41 ["None"]
      233 SETTABLEKS                       R32 R31 K37 ["affordance"]
      235 SETTABLEKS                       R31 R30 K31 ["stateLayer"]
      237 SETTABLEKS                       R16 R30 K32 ["onStateChanged"]
      239 DUPTABLE                         R31 K44 [{"PopoverRoot", "InputContainer"}]
      240 GETUPVAL                         R32 8
      241 GETUPVAL                         R33 10
      242 GETTABLEKS                       R33 R33 K45 ["Root"]
      244 DUPTABLE                         R34 K47 [{"isOpen", "LayoutOrder"}]
      245 GETTABLEKS                       R35 R14 K48 ["enabled"]
      247 SETTABLEKS                       R35 R34 K46 ["isOpen"]
      249 MOVE                             R35 R26
      250 CALL                             R35 0 1
      251 SETTABLEKS                       R35 R34 K30 ["LayoutOrder"]
      253 DUPTABLE                         R35 K51 [{"Anchor", "ColorPicker"}]
      254 GETUPVAL                         R36 0
      255 GETTABLEKS                       R36 R36 K52 ["createElement"]
      257 GETUPVAL                         R37 10
      258 GETTABLEKS                       R37 R37 K49 ["Anchor"]
      260 NEWTABLE                         R38 0 0
      262 DUPTABLE                         R39 K55 [{"ColorPickerButton", "SizeConstraint"}]
      263 GETUPVAL                         R40 8
      264 GETUPVAL                         R41 11
      265 DUPTABLE                         R42 K59 [{"layoutOrder", "swatchColor", "onActivated"}]
      266 MOVE                             R43 R26
      267 CALL                             R43 0 1
      268 SETTABLEKS                       R43 R42 K56 ["layoutOrder"]
      270 SETTABLEKS                       R15 R42 K57 ["swatchColor"]
      272 SETTABLEKS                       R17 R42 K58 ["onActivated"]
      274 CALL                             R40 2 1
      275 SETTABLEKS                       R40 R39 K53 ["ColorPickerButton"]
      277 GETUPVAL                         R40 8
      278 LOADK                            R41 K60 ["UISizeConstraint"]
      279 DUPTABLE                         R42 K62 [{"MaxSize"}]
      280 GETIMPORT                        R44 K65 [Vector2.one]
      282 GETTABLEKS                       R45 R27 K66 ["Size"]
      284 GETTABLEKS                       R45 R45 K67 ["Size_600"]
      286 MUL                              R43 R44 R45
      287 SETTABLEKS                       R43 R42 K61 ["MaxSize"]
      289 CALL                             R40 2 1
      290 SETTABLEKS                       R40 R39 K54 ["SizeConstraint"]
      292 CALL                             R36 3 1
      293 SETTABLEKS                       R36 R35 K49 ["Anchor"]
      295 GETTABLEKS                       R37 R14 K48 ["enabled"]
      297 JUMPIFNOT                        R37 ; [+90]
      298 GETUPVAL                         R36 8
      299 GETUPVAL                         R37 10
      300 GETTABLEKS                       R37 R37 K68 ["Content"]
      302 DUPTABLE                         R38 K74 [{["hasArrow"] = False, ["onPressedOutside"], ["align"], ["side"]}]
      303 SETTABLEKS                       R23 R38 K71 ["onPressedOutside"]
      305 DUPTABLE                         R39 K78 [{["position"], ["offset"] = 0}]
      306 GETUPVAL                         R40 5
      307 GETTABLEKS                       R40 R40 K39 ["Enums"]
      309 GETTABLEKS                       R40 R40 K79 ["PopoverAlign"]
      311 GETTABLEKS                       R40 R40 K80 ["Start"]
      313 SETTABLEKS                       R40 R39 K75 ["position"]
      315 SETTABLEKS                       R39 R38 K72 ["align"]
      317 DUPTABLE                         R39 K82 [{["position"], ["offset"] = 8}]
      318 GETUPVAL                         R40 5
      319 GETTABLEKS                       R40 R40 K39 ["Enums"]
      321 GETTABLEKS                       R40 R40 K83 ["PopoverSide"]
      323 GETTABLEKS                       R40 R40 K84 ["Bottom"]
      325 SETTABLEKS                       R40 R39 K75 ["position"]
      327 SETTABLEKS                       R39 R38 K73 ["side"]
      329 DUPTABLE                         R39 K86 [{"ColorPickerWrapper"}]
      330 GETUPVAL                         R40 8
      331 LOADK                            R41 K87 ["Frame"]
      332 DUPTABLE                         R42 K91 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
      333 GETIMPORT                        R43 K94 [UDim2.fromOffset]
      335 LOADN                            R44 208
      336 LOADN                            R45 0
      337 CALL                             R43 2 1
      338 SETTABLEKS                       R43 R42 K66 ["Size"]
      340 GETIMPORT                        R43 K97 [Enum.AutomaticSize.Y]
      342 SETTABLEKS                       R43 R42 K88 ["AutomaticSize"]
      344 DUPTABLE                         R43 K98 [{"ColorPicker"}]
      345 GETUPVAL                         R44 8
      346 GETUPVAL                         R45 12
      347 DUPTABLE                         R46 K105 [{"initialColor", "initialAlpha", "onDragStarted", "onColorChanged", "onAlphaChanged", "onDragEnded"}]
      348 GETTABLEKS                       R47 R3 K17 ["color3"]
      350 GETTABLEKS                       R47 R47 K22 ["value"]
      352 SETTABLEKS                       R47 R46 K99 ["initialColor"]
      354 GETTABLEKS                       R48 R2 K106 ["hasTransparency"]
      356 JUMPIFNOT                        R48 ; [+6]
      357 GETTABLEKS                       R48 R3 K107 ["transparency"]
      359 GETTABLEKS                       R48 R48 K22 ["value"]
      361 SUBRK                            R47 K90 [1] R48
      362 JUMP                             ; [+1]
      363 LOADNIL                          R47
      364 SETTABLEKS                       R47 R46 K100 ["initialAlpha"]
      366 SETTABLEKS                       R19 R46 K101 ["onDragStarted"]
      368 SETTABLEKS                       R20 R46 K102 ["onColorChanged"]
      370 GETTABLEKS                       R48 R2 K106 ["hasTransparency"]
      372 JUMPIFNOT                        R48 ; [+2]
      373 MOVE                             R47 R21
      374 JUMP                             ; [+1]
      375 LOADNIL                          R47
      376 SETTABLEKS                       R47 R46 K103 ["onAlphaChanged"]
      378 SETTABLEKS                       R22 R46 K104 ["onDragEnded"]
      380 CALL                             R44 2 1
      381 SETTABLEKS                       R44 R43 K50 ["ColorPicker"]
      383 CALL                             R40 3 1
      384 SETTABLEKS                       R40 R39 K85 ["ColorPickerWrapper"]
      386 CALL                             R36 3 1
      387 JUMP                             ; [+1]
      388 LOADNIL                          R36
      389 SETTABLEKS                       R36 R35 K50 ["ColorPicker"]
      391 CALL                             R32 3 1
      392 SETTABLEKS                       R32 R31 K42 ["PopoverRoot"]
      394 GETUPVAL                         R32 8
      395 GETUPVAL                         R33 9
      396 DUPTABLE                         R34 K110 [{["LayoutOrder"], ["Size"], ["ClipsDescendants"] = True}]
      397 MOVE                             R35 R26
      398 CALL                             R35 0 1
      399 SETTABLEKS                       R35 R34 K30 ["LayoutOrder"]
      401 GETIMPORT                        R35 K112 [UDim2.new]
      403 LOADN                            R36 1
      404 GETTABLEKS                       R38 R27 K66 ["Size"]
      406 GETTABLEKS                       R38 R38 K67 ["Size_600"]
      408 MINUS                            R37 R38
      409 LOADN                            R38 1
      410 LOADN                            R39 0
      411 CALL                             R35 4 1
      412 SETTABLEKS                       R35 R34 K66 ["Size"]
      414 DUPTABLE                         R35 K117 [{"HexInput", "RGBInput", "HSVInput", "BrickColorInput"}]
      415 MOVE                             R36 R8
      416 JUMPIFNOT                        R36 ; [+31]
      417 LOADB                            R36 0
      418 JUMPIFNOTEQKS                    R9 K118 ["Hex"] ; [+29]
      420 GETUPVAL                         R36 8
      421 GETUPVAL                         R37 13
      422 DUPTABLE                         R38 K122 [{"layoutOrder", "color3Part", "beginEditingAsync", "setPart", "finishEditing", "onFocused", "onFocusLost"}]
      423 MOVE                             R39 R26
      424 CALL                             R39 0 1
      425 SETTABLEKS                       R39 R38 K56 ["layoutOrder"]
      427 GETTABLEKS                       R39 R3 K17 ["color3"]
      429 SETTABLEKS                       R39 R38 K119 ["color3Part"]
      431 GETTABLEKS                       R39 R0 K26 ["beginEditingAsync"]
      433 SETTABLEKS                       R39 R38 K26 ["beginEditingAsync"]
      435 GETTABLEKS                       R39 R0 K27 ["setPart"]
      437 SETTABLEKS                       R39 R38 K27 ["setPart"]
      439 GETTABLEKS                       R39 R0 K28 ["finishEditing"]
      441 SETTABLEKS                       R39 R38 K28 ["finishEditing"]
      443 SETTABLEKS                       R24 R38 K120 ["onFocused"]
      445 SETTABLEKS                       R25 R38 K121 ["onFocusLost"]
      447 CALL                             R36 2 1
      448 SETTABLEKS                       R36 R35 K113 ["HexInput"]
      450 MOVE                             R36 R8
      451 JUMPIFNOT                        R36 ; [+43]
      452 LOADB                            R36 0
      453 JUMPIFNOTEQKS                    R9 K123 ["RGB"] ; [+41]
      455 GETUPVAL                         R36 8
      456 GETUPVAL                         R37 14
      457 DUPTABLE                         R38 K128 [{"layoutOrder", "rPart", "gPart", "bPart", "activateCombinedInputSignal", "beginEditingAsync", "setPart", "finishEditing", "onFocused", "onFocusLost"}]
      458 MOVE                             R39 R26
      459 CALL                             R39 0 1
      460 SETTABLEKS                       R39 R38 K56 ["layoutOrder"]
      462 GETTABLEKS                       R39 R3 K129 ["r"]
      464 SETTABLEKS                       R39 R38 K124 ["rPart"]
      466 GETTABLEKS                       R39 R3 K130 ["g"]
      468 SETTABLEKS                       R39 R38 K125 ["gPart"]
      470 GETTABLEKS                       R39 R3 K131 ["b"]
      472 SETTABLEKS                       R39 R38 K126 ["bPart"]
      474 GETTABLEKS                       R39 R0 K127 ["activateCombinedInputSignal"]
      476 SETTABLEKS                       R39 R38 K127 ["activateCombinedInputSignal"]
      478 GETTABLEKS                       R39 R0 K26 ["beginEditingAsync"]
      480 SETTABLEKS                       R39 R38 K26 ["beginEditingAsync"]
      482 GETTABLEKS                       R39 R0 K27 ["setPart"]
      484 SETTABLEKS                       R39 R38 K27 ["setPart"]
      486 GETTABLEKS                       R39 R0 K28 ["finishEditing"]
      488 SETTABLEKS                       R39 R38 K28 ["finishEditing"]
      490 SETTABLEKS                       R24 R38 K120 ["onFocused"]
      492 SETTABLEKS                       R25 R38 K121 ["onFocusLost"]
      494 CALL                             R36 2 1
      495 SETTABLEKS                       R36 R35 K114 ["RGBInput"]
      497 MOVE                             R36 R8
      498 JUMPIFNOT                        R36 ; [+27]
      499 LOADB                            R36 0
      500 JUMPIFNOTEQKS                    R9 K132 ["HSV"] ; [+25]
      502 GETUPVAL                         R36 8
      503 GETUPVAL                         R37 15
      504 DUPTABLE                         R38 K136 [{"layoutOrder", "hPart", "sPart", "vPart", "onFocused", "onFocusLost"}]
      505 MOVE                             R39 R26
      506 CALL                             R39 0 1
      507 SETTABLEKS                       R39 R38 K56 ["layoutOrder"]
      509 GETTABLEKS                       R39 R3 K137 ["h"]
      511 SETTABLEKS                       R39 R38 K133 ["hPart"]
      513 GETTABLEKS                       R39 R3 K138 ["s"]
      515 SETTABLEKS                       R39 R38 K134 ["sPart"]
      517 GETTABLEKS                       R39 R3 K139 ["v"]
      519 SETTABLEKS                       R39 R38 K135 ["vPart"]
      521 SETTABLEKS                       R24 R38 K120 ["onFocused"]
      523 SETTABLEKS                       R25 R38 K121 ["onFocusLost"]
      525 CALL                             R36 2 1
      526 SETTABLEKS                       R36 R35 K115 ["HSVInput"]
      528 MOVE                             R36 R7
      529 JUMPIFNOT                        R36 ; [+16]
      530 GETUPVAL                         R36 8
      531 GETUPVAL                         R37 16
      532 DUPTABLE                         R38 K141 [{"layoutOrder", "brickColorPart", "onFocused", "onFocusLost"}]
      533 MOVE                             R39 R26
      534 CALL                             R39 0 1
      535 SETTABLEKS                       R39 R38 K56 ["layoutOrder"]
      537 GETTABLEKS                       R39 R3 K21 ["brickColor"]
      539 SETTABLEKS                       R39 R38 K140 ["brickColorPart"]
      541 SETTABLEKS                       R24 R38 K120 ["onFocused"]
      543 SETTABLEKS                       R25 R38 K121 ["onFocusLost"]
      545 CALL                             R36 2 1
      546 SETTABLEKS                       R36 R35 K116 ["BrickColorInput"]
      548 CALL                             R32 3 1
      549 SETTABLEKS                       R32 R31 K43 ["InputContainer"]
      551 CALL                             R28 3 -1
      552 RETURN                           R28 -1

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
