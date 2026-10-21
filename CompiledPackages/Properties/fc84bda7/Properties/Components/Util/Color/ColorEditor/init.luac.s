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
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 DUPTABLE                         R2 K4 [{["type"] = "Stage", ["value"]}]
        6 SETTABLEKS                       R0 R2 K3 ["value"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 DUPTABLE                         R2 K6 [{["type"] = "Edit", ["value"]}]
       12 SETTABLEKS                       R0 R2 K3 ["value"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 DUPTABLE                         R2 K4 [{["type"] = "Stage", ["value"]}]
        6 SUBRK                            R3 K5 [1] R0
        7 SETTABLEKS                       R3 R2 K3 ["value"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 DUPTABLE                         R2 K7 [{["type"] = "Edit", ["value"]}]
       13 SUBRK                            R3 K5 [1] R0
       14 SETTABLEKS                       R3 R2 K3 ["value"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 DUPTABLE                         R1 K3 [{["type"] = "Commit"}]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

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
      132 GETUPVAL                         R17 6
      133 GETTABLEKS                       R18 R0 K30 ["editProperty"]
      135 LOADK                            R19 K22 ["color3"]
      136 CALL                             R17 2 1
      137 GETUPVAL                         R18 6
      138 GETTABLEKS                       R19 R0 K30 ["editProperty"]
      140 LOADK                            R20 K31 ["transparency"]
      141 CALL                             R18 2 1
      142 GETUPVAL                         R19 0
      143 GETTABLEKS                       R19 R19 K32 ["useRef"]
      145 LOADB                            R20 0
      146 CALL                             R19 1 1
      147 GETUPVAL                         R20 0
      148 GETTABLEKS                       R20 R20 K29 ["useCallback"]
      150 NEWCLOSURE                       R21 P2
      151 CAPTURE                          VAL R19
      152 NEWTABLE                         R22 0 0
      154 CALL                             R20 2 1
      155 GETUPVAL                         R21 0
      156 GETTABLEKS                       R21 R21 K29 ["useCallback"]
      158 NEWCLOSURE                       R22 P3
      159 CAPTURE                          VAL R19
      160 CAPTURE                          VAL R17
      161 NEWTABLE                         R23 0 1
      163 MOVE                             R24 R17
      164 SETLIST                          R23 R24 1 [1]
      166 CALL                             R21 2 1
      167 GETUPVAL                         R22 0
      168 GETTABLEKS                       R22 R22 K29 ["useCallback"]
      170 NEWCLOSURE                       R23 P4
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R18
      173 NEWTABLE                         R24 0 1
      175 MOVE                             R25 R18
      176 SETLIST                          R24 R25 1 [1]
      178 CALL                             R22 2 1
      179 GETUPVAL                         R23 0
      180 GETTABLEKS                       R23 R23 K29 ["useCallback"]
      182 NEWCLOSURE                       R24 P5
      183 CAPTURE                          VAL R19
      184 CAPTURE                          VAL R17
      185 NEWTABLE                         R25 0 1
      187 MOVE                             R26 R17
      188 SETLIST                          R25 R26 1 [1]
      190 CALL                             R23 2 1
      191 GETUPVAL                         R24 0
      192 GETTABLEKS                       R24 R24 K29 ["useCallback"]
      194 NEWCLOSURE                       R25 P6
      195 CAPTURE                          VAL R13
      196 NEWTABLE                         R26 0 0
      198 CALL                             R24 2 1
      199 GETUPVAL                         R25 0
      200 GETTABLEKS                       R25 R25 K29 ["useCallback"]
      202 NEWCLOSURE                       R26 P7
      203 CAPTURE                          VAL R12
      204 NEWTABLE                         R27 0 0
      206 CALL                             R25 2 1
      207 GETUPVAL                         R26 0
      208 GETTABLEKS                       R26 R26 K29 ["useCallback"]
      210 NEWCLOSURE                       R27 P8
      211 CAPTURE                          VAL R12
      212 NEWTABLE                         R28 0 0
      214 CALL                             R26 2 1
      215 GETUPVAL                         R27 7
      216 CALL                             R27 0 1
      217 GETUPVAL                         R28 8
      218 CALL                             R28 0 1
      219 GETUPVAL                         R29 9
      220 GETUPVAL                         R30 10
      221 DUPTABLE                         R31 K37 [{"tag", "LayoutOrder", "stateLayer", "onStateChanged"}]
      222 NEWTABLE                         R32 4 0
      224 LOADB                            R33 1
      225 SETTABLEKS                       R33 R32 K38 ["row size-full-600 radius-small bg-shift-200"]
      227 MOVE                             R33 R9
      228 JUMPIFNOT                        R33 ; [+1]
      229 NOT                              R33 R11
      230 SETTABLEKS                       R33 R32 K39 ["stroke-emphasis"]
      232 SETTABLEKS                       R11 R32 K40 ["stroke-system-emphasis"]
      234 SETTABLEKS                       R32 R31 K33 ["tag"]
      236 GETTABLEKS                       R32 R0 K34 ["LayoutOrder"]
      238 SETTABLEKS                       R32 R31 K34 ["LayoutOrder"]
      240 DUPTABLE                         R32 K42 [{"affordance"}]
      241 GETUPVAL                         R33 5
      242 GETTABLEKS                       R33 R33 K43 ["Enums"]
      244 GETTABLEKS                       R33 R33 K44 ["StateLayerAffordance"]
      246 GETTABLEKS                       R33 R33 K45 ["None"]
      248 SETTABLEKS                       R33 R32 K41 ["affordance"]
      250 SETTABLEKS                       R32 R31 K35 ["stateLayer"]
      252 SETTABLEKS                       R15 R31 K36 ["onStateChanged"]
      254 DUPTABLE                         R32 K48 [{"PopoverRoot", "InputContainer"}]
      255 GETUPVAL                         R33 9
      256 GETUPVAL                         R34 11
      257 GETTABLEKS                       R34 R34 K49 ["Root"]
      259 DUPTABLE                         R35 K51 [{"isOpen", "LayoutOrder"}]
      260 GETTABLEKS                       R36 R13 K52 ["enabled"]
      262 SETTABLEKS                       R36 R35 K50 ["isOpen"]
      264 MOVE                             R36 R27
      265 CALL                             R36 0 1
      266 SETTABLEKS                       R36 R35 K34 ["LayoutOrder"]
      268 DUPTABLE                         R36 K55 [{"Anchor", "ColorPicker"}]
      269 GETUPVAL                         R37 0
      270 GETTABLEKS                       R37 R37 K56 ["createElement"]
      272 GETUPVAL                         R38 11
      273 GETTABLEKS                       R38 R38 K53 ["Anchor"]
      275 NEWTABLE                         R39 0 0
      277 DUPTABLE                         R40 K59 [{"ColorPickerButton", "SizeConstraint"}]
      278 GETUPVAL                         R41 9
      279 GETUPVAL                         R42 12
      280 DUPTABLE                         R43 K63 [{"layoutOrder", "swatchColor", "onActivated"}]
      281 MOVE                             R44 R27
      282 CALL                             R44 0 1
      283 SETTABLEKS                       R44 R43 K60 ["layoutOrder"]
      285 SETTABLEKS                       R14 R43 K61 ["swatchColor"]
      287 SETTABLEKS                       R16 R43 K62 ["onActivated"]
      289 CALL                             R41 2 1
      290 SETTABLEKS                       R41 R40 K57 ["ColorPickerButton"]
      292 GETUPVAL                         R41 9
      293 LOADK                            R42 K64 ["UISizeConstraint"]
      294 DUPTABLE                         R43 K66 [{"MaxSize"}]
      295 GETIMPORT                        R45 K69 [Vector2.one]
      297 GETTABLEKS                       R46 R28 K70 ["Size"]
      299 GETTABLEKS                       R46 R46 K71 ["Size_600"]
      301 MUL                              R44 R45 R46
      302 SETTABLEKS                       R44 R43 K65 ["MaxSize"]
      304 CALL                             R41 2 1
      305 SETTABLEKS                       R41 R40 K58 ["SizeConstraint"]
      307 CALL                             R37 3 1
      308 SETTABLEKS                       R37 R36 K53 ["Anchor"]
      310 GETTABLEKS                       R38 R13 K52 ["enabled"]
      312 JUMPIFNOT                        R38 ; [+94]
      313 GETUPVAL                         R37 9
      314 GETUPVAL                         R38 11
      315 GETTABLEKS                       R38 R38 K72 ["Content"]
      317 DUPTABLE                         R39 K78 [{["hasArrow"] = False, ["onPressedOutside"], ["align"], ["side"]}]
      318 SETTABLEKS                       R24 R39 K75 ["onPressedOutside"]
      320 DUPTABLE                         R40 K82 [{["position"], ["offset"] = 0}]
      321 GETUPVAL                         R41 5
      322 GETTABLEKS                       R41 R41 K43 ["Enums"]
      324 GETTABLEKS                       R41 R41 K83 ["PopoverAlign"]
      326 GETTABLEKS                       R41 R41 K84 ["Start"]
      328 SETTABLEKS                       R41 R40 K79 ["position"]
      330 SETTABLEKS                       R40 R39 K76 ["align"]
      332 DUPTABLE                         R40 K86 [{["position"], ["offset"] = 8}]
      333 GETUPVAL                         R41 5
      334 GETTABLEKS                       R41 R41 K43 ["Enums"]
      336 GETTABLEKS                       R41 R41 K87 ["PopoverSide"]
      338 GETTABLEKS                       R41 R41 K88 ["Bottom"]
      340 SETTABLEKS                       R41 R40 K79 ["position"]
      342 SETTABLEKS                       R40 R39 K77 ["side"]
      344 DUPTABLE                         R40 K90 [{"ColorPickerWrapper"}]
      345 GETUPVAL                         R41 9
      346 LOADK                            R42 K91 ["Frame"]
      347 DUPTABLE                         R43 K95 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
      348 GETIMPORT                        R44 K98 [UDim2.fromOffset]
      350 LOADN                            R45 208
      351 LOADN                            R46 0
      352 CALL                             R44 2 1
      353 SETTABLEKS                       R44 R43 K70 ["Size"]
      355 GETIMPORT                        R44 K101 [Enum.AutomaticSize.Y]
      357 SETTABLEKS                       R44 R43 K92 ["AutomaticSize"]
      359 DUPTABLE                         R44 K102 [{"ColorPicker"}]
      360 GETUPVAL                         R45 9
      361 GETUPVAL                         R46 13
      362 DUPTABLE                         R47 K109 [{"initialColor", "initialAlpha", "onDragStarted", "onColorChanged", "onAlphaChanged", "onDragEnded"}]
      363 GETTABLEKS                       R48 R2 K22 ["color3"]
      365 GETTABLEKS                       R48 R48 K27 ["value"]
      367 SETTABLEKS                       R48 R47 K103 ["initialColor"]
      369 GETTABLEKS                       R49 R1 K1 ["extra"]
      371 GETTABLEKS                       R49 R49 K110 ["hasTransparency"]
      373 JUMPIFNOT                        R49 ; [+6]
      374 GETTABLEKS                       R49 R2 K31 ["transparency"]
      376 GETTABLEKS                       R49 R49 K27 ["value"]
      378 SUBRK                            R48 K94 [1] R49
      379 JUMP                             ; [+1]
      380 LOADNIL                          R48
      381 SETTABLEKS                       R48 R47 K104 ["initialAlpha"]
      383 SETTABLEKS                       R20 R47 K105 ["onDragStarted"]
      385 SETTABLEKS                       R21 R47 K106 ["onColorChanged"]
      387 GETTABLEKS                       R49 R1 K1 ["extra"]
      389 GETTABLEKS                       R49 R49 K110 ["hasTransparency"]
      391 JUMPIFNOT                        R49 ; [+2]
      392 MOVE                             R48 R22
      393 JUMP                             ; [+1]
      394 LOADNIL                          R48
      395 SETTABLEKS                       R48 R47 K107 ["onAlphaChanged"]
      397 SETTABLEKS                       R23 R47 K108 ["onDragEnded"]
      399 CALL                             R45 2 1
      400 SETTABLEKS                       R45 R44 K54 ["ColorPicker"]
      402 CALL                             R41 3 1
      403 SETTABLEKS                       R41 R40 K89 ["ColorPickerWrapper"]
      405 CALL                             R37 3 1
      406 JUMP                             ; [+1]
      407 LOADNIL                          R37
      408 SETTABLEKS                       R37 R36 K54 ["ColorPicker"]
      410 CALL                             R33 3 1
      411 SETTABLEKS                       R33 R32 K46 ["PopoverRoot"]
      413 GETUPVAL                         R33 9
      414 GETUPVAL                         R34 10
      415 DUPTABLE                         R35 K113 [{["LayoutOrder"], ["Size"], ["ClipsDescendants"] = True}]
      416 MOVE                             R36 R27
      417 CALL                             R36 0 1
      418 SETTABLEKS                       R36 R35 K34 ["LayoutOrder"]
      420 GETIMPORT                        R36 K115 [UDim2.new]
      422 LOADN                            R37 1
      423 GETTABLEKS                       R39 R28 K70 ["Size"]
      425 GETTABLEKS                       R39 R39 K71 ["Size_600"]
      427 MINUS                            R38 R39
      428 LOADN                            R39 1
      429 LOADN                            R40 0
      430 CALL                             R36 4 1
      431 SETTABLEKS                       R36 R35 K70 ["Size"]
      433 DUPTABLE                         R36 K120 [{"HexInput", "RGBInput", "HSVInput", "BrickColorInput"}]
      434 MOVE                             R37 R7
      435 JUMPIFNOT                        R37 ; [+21]
      436 LOADB                            R37 0
      437 JUMPIFNOTEQKS                    R8 K121 ["Hex"] ; [+19]
      439 GETUPVAL                         R37 9
      440 GETUPVAL                         R38 14
      441 DUPTABLE                         R39 K126 [{"layoutOrder", "color3Part", "editColor3", "onFocused", "onFocusLost"}]
      442 MOVE                             R40 R27
      443 CALL                             R40 0 1
      444 SETTABLEKS                       R40 R39 K60 ["layoutOrder"]
      446 GETTABLEKS                       R40 R2 K22 ["color3"]
      448 SETTABLEKS                       R40 R39 K122 ["color3Part"]
      450 SETTABLEKS                       R17 R39 K123 ["editColor3"]
      452 SETTABLEKS                       R25 R39 K124 ["onFocused"]
      454 SETTABLEKS                       R26 R39 K125 ["onFocusLost"]
      456 CALL                             R37 2 1
      457 SETTABLEKS                       R37 R36 K116 ["HexInput"]
      459 MOVE                             R37 R7
      460 JUMPIFNOT                        R37 ; [+35]
      461 LOADB                            R37 0
      462 JUMPIFNOTEQKS                    R8 K127 ["RGB"] ; [+33]
      464 GETUPVAL                         R37 9
      465 GETUPVAL                         R38 15
      466 DUPTABLE                         R39 K132 [{"layoutOrder", "rPart", "gPart", "bPart", "activateCombinedInputSignal", "editProperty", "onFocused", "onFocusLost"}]
      467 MOVE                             R40 R27
      468 CALL                             R40 0 1
      469 SETTABLEKS                       R40 R39 K60 ["layoutOrder"]
      471 GETTABLEKS                       R40 R2 K133 ["r"]
      473 SETTABLEKS                       R40 R39 K128 ["rPart"]
      475 GETTABLEKS                       R40 R2 K134 ["g"]
      477 SETTABLEKS                       R40 R39 K129 ["gPart"]
      479 GETTABLEKS                       R40 R2 K135 ["b"]
      481 SETTABLEKS                       R40 R39 K130 ["bPart"]
      483 GETTABLEKS                       R40 R0 K131 ["activateCombinedInputSignal"]
      485 SETTABLEKS                       R40 R39 K131 ["activateCombinedInputSignal"]
      487 GETTABLEKS                       R40 R0 K30 ["editProperty"]
      489 SETTABLEKS                       R40 R39 K30 ["editProperty"]
      491 SETTABLEKS                       R25 R39 K124 ["onFocused"]
      493 SETTABLEKS                       R26 R39 K125 ["onFocusLost"]
      495 CALL                             R37 2 1
      496 SETTABLEKS                       R37 R36 K117 ["RGBInput"]
      498 MOVE                             R37 R7
      499 JUMPIFNOT                        R37 ; [+27]
      500 LOADB                            R37 0
      501 JUMPIFNOTEQKS                    R8 K136 ["HSV"] ; [+25]
      503 GETUPVAL                         R37 9
      504 GETUPVAL                         R38 16
      505 DUPTABLE                         R39 K140 [{"layoutOrder", "hPart", "sPart", "vPart", "onFocused", "onFocusLost"}]
      506 MOVE                             R40 R27
      507 CALL                             R40 0 1
      508 SETTABLEKS                       R40 R39 K60 ["layoutOrder"]
      510 GETTABLEKS                       R40 R2 K141 ["h"]
      512 SETTABLEKS                       R40 R39 K137 ["hPart"]
      514 GETTABLEKS                       R40 R2 K142 ["s"]
      516 SETTABLEKS                       R40 R39 K138 ["sPart"]
      518 GETTABLEKS                       R40 R2 K143 ["v"]
      520 SETTABLEKS                       R40 R39 K139 ["vPart"]
      522 SETTABLEKS                       R25 R39 K124 ["onFocused"]
      524 SETTABLEKS                       R26 R39 K125 ["onFocusLost"]
      526 CALL                             R37 2 1
      527 SETTABLEKS                       R37 R36 K118 ["HSVInput"]
      529 MOVE                             R37 R6
      530 JUMPIFNOT                        R37 ; [+16]
      531 GETUPVAL                         R37 9
      532 GETUPVAL                         R38 17
      533 DUPTABLE                         R39 K145 [{"layoutOrder", "brickColorPart", "onFocused", "onFocusLost"}]
      534 MOVE                             R40 R27
      535 CALL                             R40 0 1
      536 SETTABLEKS                       R40 R39 K60 ["layoutOrder"]
      538 GETTABLEKS                       R40 R2 K26 ["brickColor"]
      540 SETTABLEKS                       R40 R39 K144 ["brickColorPart"]
      542 SETTABLEKS                       R25 R39 K124 ["onFocused"]
      544 SETTABLEKS                       R26 R39 K125 ["onFocusLost"]
      546 CALL                             R37 2 1
      547 SETTABLEKS                       R37 R36 K119 ["BrickColorInput"]
      549 CALL                             R33 3 1
      550 SETTABLEKS                       R33 R32 K47 ["InputContainer"]
      552 CALL                             R29 3 -1
      553 RETURN                           R29 -1

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
       84 GETTABLEKS                       R14 R0 K19 ["RpcTypes"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R15 R0 K20 ["Components"]
       91 GETTABLEKS                       R15 R15 K21 ["Contexts"]
       93 GETTABLEKS                       R15 R15 K22 ["SettingsContext"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R1 K23 ["Signal"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K6 [require]
      103 GETTABLEKS                       R17 R0 K24 ["Hooks"]
      105 GETTABLEKS                       R17 R17 K25 ["useEditValue"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K6 [require]
      110 GETTABLEKS                       R18 R0 K24 ["Hooks"]
      112 GETTABLEKS                       R18 R18 K26 ["useVisualValues"]
      114 CALL                             R17 1 1
      115 GETTABLEKS                       R18 R4 K27 ["ColorPicker"]
      117 GETTABLEKS                       R19 R4 K28 ["Popover"]
      119 GETTABLEKS                       R20 R4 K29 ["View"]
      121 GETTABLEKS                       R21 R12 K30 ["createNextOrder"]
      123 GETTABLEKS                       R22 R11 K31 ["createElement"]
      125 GETTABLEKS                       R23 R4 K24 ["Hooks"]
      127 GETTABLEKS                       R23 R23 K32 ["useTokens"]
      129 DUPCLOSURE                       R24 K33 [PROTO_9]
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R21
      138 CAPTURE                          VAL R23
      139 CAPTURE                          VAL R22
      140 CAPTURE                          VAL R20
      141 CAPTURE                          VAL R19
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R2
      148 RETURN                           R24 1
