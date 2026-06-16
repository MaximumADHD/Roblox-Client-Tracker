PROTO_0:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["customVariantProps"]
        4 GETTABLEKS                       R1 R1 K5 ["cursorRadius"]
        6 JUMPIF                           R1 ; [+5]
        7 GETIMPORT                        R1 K8 [UDim.new]
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K0 ["radius"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K9 ["Size"]
       17 GETTABLEKS                       R1 R1 K10 ["Size_200"]
       19 SETTABLEKS                       R1 R0 K1 ["offset"]
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K11 ["Stroke"]
       24 GETTABLEKS                       R1 R1 K12 ["Thicker"]
       26 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       28 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["Checked"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 3
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K1 ["Hover"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 1
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K2 ["Default"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isDisabled"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["onActivated"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["isChecked"]
       11 NOT                              R1 R2
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Color3"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isDisabled"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 JUMPIF                           R1 ; [+4]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["DISABLED_TRANSPARENCY"]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R1 R0 K2 ["Transparency"]
       12 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K0 ["label"]
        6 GETTABLEKS                       R3 R3 K1 ["text"]
        8 GETTABLEKS                       R4 R2 K0 ["label"]
       10 GETTABLEKS                       R4 R4 K2 ["position"]
       12 JUMPIF                           R4 ; [+2]
       13 GETIMPORT                        R4 K6 [Enum.HorizontalAlignment.Right]
       15 FASTCALL1                        TYPEOF R3 ; [+3]
       16 MOVE                             R7 R3
       17 GETIMPORT                        R6 K8 [typeof]
       19 CALL                             R6 1 1
       20 JUMPIFNOTEQKS                    R6 K9 ["string"] ; [+8]
       22 LENGTH                           R6 R3
       23 LOADN                            R7 0
       24 JUMPIFLT                         R7 R6 ; [+2]
       26 LOADB                            R5 0 +1
       27 LOADB                            R5 1
       28 JUMP                             ; [+4]
       29 JUMPIFNOTEQKNIL                  R3 ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K10 ["useState"]
       36 LOADB                            R7 0
       37 CALL                             R6 1 2
       38 GETUPVAL                         R8 3
       39 CALL                             R8 0 1
       40 GETTABLEKS                       R9 R2 K11 ["isChecked"]
       42 JUMPIF                           R9 ; [+2]
       43 GETTABLEKS                       R9 R2 K12 ["isIndeterminate"]
       45 GETUPVAL                         R10 4
       46 MOVE                             R11 R8
       47 GETTABLEKS                       R12 R2 K13 ["size"]
       49 MOVE                             R13 R4
       50 CALL                             R10 3 1
       51 GETUPVAL                         R11 2
       52 GETTABLEKS                       R11 R11 K14 ["useMemo"]
       54 NEWCLOSURE                       R12 P0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R8
       57 NEWTABLE                         R13 0 3
       59 MOVE                             R14 R8
       60 MOVE                             R15 R5
       61 GETTABLEKS                       R16 R2 K15 ["customVariantProps"]
       63 GETTABLEKS                       R16 R16 K16 ["cursorRadius"]
       65 SETLIST                          R13 R14 3 [1]
       67 CALL                             R11 2 1
       68 GETUPVAL                         R12 5
       69 MOVE                             R13 R8
       70 GETUPVAL                         R15 6
       71 GETTABLEKS                       R15 R15 K17 ["FoundationToggleVisualUpdate"]
       73 JUMPIFNOT                        R15 ; [+5]
       74 GETTABLEKS                       R14 R2 K15 ["customVariantProps"]
       76 GETTABLEKS                       R14 R14 K18 ["colors"]
       78 JUMP                             ; [+4]
       79 GETTABLEKS                       R14 R2 K15 ["customVariantProps"]
       81 GETTABLEKS                       R14 R14 K19 ["checkedStyle"]
       83 CALL                             R12 2 1
       84 GETUPVAL                         R13 7
       85 GETTABLEKS                       R14 R12 K20 ["Default"]
       87 CALL                             R13 1 2
       88 GETUPVAL                         R15 2
       89 GETTABLEKS                       R15 R15 K21 ["useEffect"]
       91 NEWCLOSURE                       R16 P1
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R14
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R6
       96 NEWTABLE                         R17 0 3
       98 MOVE                             R18 R9
       99 MOVE                             R19 R6
      100 MOVE                             R20 R12
      101 SETLIST                          R17 R18 3 [1]
      103 CALL                             R15 2 0
      104 GETUPVAL                         R15 2
      105 GETTABLEKS                       R15 R15 K22 ["useCallback"]
      107 NEWCLOSURE                       R16 P2
      108 CAPTURE                          VAL R7
      109 CAPTURE                          UPVAL U8
      110 NEWTABLE                         R17 0 0
      112 CALL                             R15 2 1
      113 GETUPVAL                         R16 2
      114 GETTABLEKS                       R16 R16 K22 ["useCallback"]
      116 NEWCLOSURE                       R17 P3
      117 CAPTURE                          VAL R2
      118 NEWTABLE                         R18 0 3
      120 GETTABLEKS                       R19 R2 K23 ["isDisabled"]
      122 GETTABLEKS                       R20 R2 K11 ["isChecked"]
      124 GETTABLEKS                       R21 R2 K24 ["onActivated"]
      126 SETLIST                          R18 R19 3 [1]
      128 CALL                             R16 2 1
      129 DUPTABLE                         R17 K30 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      130 GETTABLEKS                       R19 R2 K23 ["isDisabled"]
      132 JUMPIFNOT                        R19 ; [+2]
      133 LOADB                            R18 0
      134 JUMP                             ; [+2]
      135 GETTABLEKS                       R18 R2 K25 ["Selectable"]
      137 SETTABLEKS                       R18 R17 K25 ["Selectable"]
      139 GETTABLEKS                       R18 R2 K26 ["NextSelectionUp"]
      141 SETTABLEKS                       R18 R17 K26 ["NextSelectionUp"]
      143 GETTABLEKS                       R18 R2 K27 ["NextSelectionDown"]
      145 SETTABLEKS                       R18 R17 K27 ["NextSelectionDown"]
      147 GETTABLEKS                       R18 R2 K28 ["NextSelectionLeft"]
      149 SETTABLEKS                       R18 R17 K28 ["NextSelectionLeft"]
      151 GETTABLEKS                       R18 R2 K29 ["NextSelectionRight"]
      153 SETTABLEKS                       R18 R17 K29 ["NextSelectionRight"]
      155 DUPTABLE                         R18 K38 [{"Active", "GroupTransparency", "onActivated", "onStateChanged", "stateLayer", "selection", "cursor", "isDisabled", "ref"}]
      156 GETTABLEKS                       R20 R2 K23 ["isDisabled"]
      158 NOT                              R19 R20
      159 SETTABLEKS                       R19 R18 K31 ["Active"]
      161 GETTABLEKS                       R20 R2 K23 ["isDisabled"]
      163 JUMPIFNOT                        R20 ; [+4]
      164 GETUPVAL                         R19 9
      165 GETTABLEKS                       R19 R19 K39 ["DISABLED_TRANSPARENCY"]
      167 JUMP                             ; [+1]
      168 LOADN                            R19 0
      169 SETTABLEKS                       R19 R18 K32 ["GroupTransparency"]
      171 SETTABLEKS                       R16 R18 K24 ["onActivated"]
      173 SETTABLEKS                       R15 R18 K33 ["onStateChanged"]
      175 DUPTABLE                         R19 K41 [{"affordance"}]
      176 GETUPVAL                         R20 10
      177 GETTABLEKS                       R20 R20 K42 ["None"]
      179 SETTABLEKS                       R20 R19 K40 ["affordance"]
      181 SETTABLEKS                       R19 R18 K34 ["stateLayer"]
      183 JUMPIFNOT                        R5 ; [+5]
      184 DUPTABLE                         R19 K43 [{"Selectable"}]
      185 LOADB                            R20 0
      186 SETTABLEKS                       R20 R19 K25 ["Selectable"]
      188 JUMP                             ; [+1]
      189 MOVE                             R19 R17
      190 SETTABLEKS                       R19 R18 K35 ["selection"]
      192 JUMPIFNOT                        R5 ; [+2]
      193 LOADNIL                          R19
      194 JUMP                             ; [+1]
      195 MOVE                             R19 R11
      196 SETTABLEKS                       R19 R18 K36 ["cursor"]
      198 GETTABLEKS                       R19 R2 K23 ["isDisabled"]
      200 SETTABLEKS                       R19 R18 K23 ["isDisabled"]
      202 SETTABLEKS                       R1 R18 K37 ["ref"]
      204 GETUPVAL                         R20 6
      205 GETTABLEKS                       R20 R20 K17 ["FoundationToggleVisualUpdate"]
      207 JUMPIFNOT                        R20 ; [+20]
      208 GETTABLEKS                       R20 R2 K15 ["customVariantProps"]
      210 GETTABLEKS                       R20 R20 K44 ["stroke"]
      212 JUMPIFNOT                        R20 ; [+15]
      213 GETTABLEKS                       R20 R2 K15 ["customVariantProps"]
      215 GETTABLEKS                       R20 R20 K44 ["stroke"]
      217 GETTABLEKS                       R20 R20 K45 ["thickness"]
      219 JUMPIFEQKNIL                     R20 ; [+8]
      221 GETTABLEKS                       R19 R2 K15 ["customVariantProps"]
      223 GETTABLEKS                       R19 R19 K44 ["stroke"]
      225 GETTABLEKS                       R19 R19 K45 ["thickness"]
      227 JUMP                             ; [+6]
      228 GETTABLEKS                       R19 R10 K46 ["input"]
      230 GETTABLEKS                       R19 R19 K44 ["stroke"]
      232 GETTABLEKS                       R19 R19 K45 ["thickness"]
      234 DUPTABLE                         R20 K52 [{"tag", "Size", "backgroundStyle", "onActivated", "stateLayer", "stroke", "selection", "cursor", "LayoutOrder", "testId"}]
      235 GETTABLEKS                       R21 R2 K15 ["customVariantProps"]
      237 GETTABLEKS                       R21 R21 K47 ["tag"]
      239 SETTABLEKS                       R21 R20 K47 ["tag"]
      241 GETTABLEKS                       R22 R2 K15 ["customVariantProps"]
      243 GETTABLEKS                       R22 R22 K13 ["size"]
      245 GETIMPORT                        R23 K55 [UDim2.fromOffset]
      247 MOVE                             R24 R19
      248 MOVE                             R25 R19
      249 CALL                             R23 2 1
      250 SUB                              R21 R22 R23
      251 SETTABLEKS                       R21 R20 K48 ["Size"]
      253 GETTABLEKS                       R21 R13 K49 ["backgroundStyle"]
      255 SETTABLEKS                       R21 R20 K49 ["backgroundStyle"]
      257 SETTABLEKS                       R16 R20 K24 ["onActivated"]
      259 DUPTABLE                         R21 K41 [{"affordance"}]
      260 GETUPVAL                         R22 10
      261 GETTABLEKS                       R22 R22 K56 ["Background"]
      263 SETTABLEKS                       R22 R21 K40 ["affordance"]
      265 SETTABLEKS                       R21 R20 K34 ["stateLayer"]
      267 DUPTABLE                         R21 K61 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      268 GETTABLEKS                       R22 R13 K62 ["strokeStyle"]
      270 DUPCLOSURE                       R24 K63 [PROTO_4]
      271 NAMECALL                         R22 R22 K64 ["map"]
      273 CALL                             R22 2 1
      274 SETTABLEKS                       R22 R21 K57 ["Color"]
      276 GETTABLEKS                       R22 R13 K62 ["strokeStyle"]
      278 NEWCLOSURE                       R24 P5
      279 CAPTURE                          VAL R2
      280 CAPTURE                          VAL R5
      281 CAPTURE                          UPVAL U9
      282 NAMECALL                         R22 R22 K64 ["map"]
      284 CALL                             R22 2 1
      285 SETTABLEKS                       R22 R21 K58 ["Transparency"]
      287 SETTABLEKS                       R19 R21 K59 ["Thickness"]
      289 GETIMPORT                        R22 K66 [Enum.BorderStrokePosition.Inner]
      291 SETTABLEKS                       R22 R21 K60 ["BorderStrokePosition"]
      293 SETTABLEKS                       R21 R20 K44 ["stroke"]
      295 SETTABLEKS                       R17 R20 K35 ["selection"]
      297 JUMPIFNOT                        R5 ; [+2]
      298 MOVE                             R21 R11
      299 JUMP                             ; [+1]
      300 LOADNIL                          R21
      301 SETTABLEKS                       R21 R20 K36 ["cursor"]
      303 JUMPIFNOT                        R5 ; [+8]
      304 GETIMPORT                        R22 K68 [Enum.HorizontalAlignment.Left]
      306 JUMPIFNOTEQ                      R4 R22 ; [+3]
      308 LOADN                            R21 1
      309 JUMP                             ; [+3]
      310 LOADN                            R21 255
      311 JUMP                             ; [+1]
      312 LOADNIL                          R21
      313 SETTABLEKS                       R21 R20 K50 ["LayoutOrder"]
      315 LOADK                            R22 K69 ["%*--container"]
      316 GETTABLEKS                       R24 R2 K51 ["testId"]
      318 NAMECALL                         R22 R22 K70 ["format"]
      320 CALL                             R22 2 1
      321 MOVE                             R21 R22
      322 SETTABLEKS                       R21 R20 K51 ["testId"]
      324 JUMPIF                           R5 ; [+17]
      325 GETUPVAL                         R21 2
      326 GETTABLEKS                       R21 R21 K71 ["createElement"]
      328 GETUPVAL                         R22 11
      329 GETUPVAL                         R23 12
      330 MOVE                             R24 R2
      331 GETUPVAL                         R25 13
      332 GETTABLEKS                       R25 R25 K72 ["union"]
      334 MOVE                             R26 R18
      335 MOVE                             R27 R20
      336 CALL                             R25 2 -1
      337 CALL                             R23 -1 1
      338 GETTABLEKS                       R24 R2 K73 ["children"]
      340 CALL                             R21 3 -1
      341 RETURN                           R21 -1
      342 DUPTABLE                         R21 K75 [{"tag", "padding"}]
      343 GETTABLEKS                       R22 R10 K76 ["container"]
      345 GETTABLEKS                       R22 R22 K47 ["tag"]
      347 SETTABLEKS                       R22 R21 K47 ["tag"]
      349 DUPTABLE                         R22 K81 [{"top", "bottom", "left", "right"}]
      350 GETTABLEKS                       R23 R10 K76 ["container"]
      352 GETTABLEKS                       R23 R23 K74 ["padding"]
      354 SETTABLEKS                       R23 R22 K77 ["top"]
      356 GETTABLEKS                       R23 R10 K76 ["container"]
      358 GETTABLEKS                       R23 R23 K74 ["padding"]
      360 SETTABLEKS                       R23 R22 K78 ["bottom"]
      362 GETIMPORT                        R24 K6 [Enum.HorizontalAlignment.Right]
      364 JUMPIFNOTEQ                      R4 R24 ; [+6]
      366 GETTABLEKS                       R23 R10 K76 ["container"]
      368 GETTABLEKS                       R23 R23 K74 ["padding"]
      370 JUMP                             ; [+1]
      371 LOADNIL                          R23
      372 SETTABLEKS                       R23 R22 K79 ["left"]
      374 GETIMPORT                        R24 K68 [Enum.HorizontalAlignment.Left]
      376 JUMPIFNOTEQ                      R4 R24 ; [+6]
      378 GETTABLEKS                       R23 R10 K76 ["container"]
      380 GETTABLEKS                       R23 R23 K74 ["padding"]
      382 JUMP                             ; [+1]
      383 LOADNIL                          R23
      384 SETTABLEKS                       R23 R22 K80 ["right"]
      386 SETTABLEKS                       R22 R21 K74 ["padding"]
      388 GETUPVAL                         R22 2
      389 GETTABLEKS                       R22 R22 K71 ["createElement"]
      391 GETUPVAL                         R23 11
      392 GETUPVAL                         R24 12
      393 MOVE                             R25 R2
      394 GETUPVAL                         R26 13
      395 GETTABLEKS                       R26 R26 K72 ["union"]
      397 MOVE                             R27 R21
      398 MOVE                             R28 R18
      399 CALL                             R26 2 -1
      400 CALL                             R24 -1 1
      401 DUPTABLE                         R25 K84 [{"Input", "InputLabel"}]
      402 GETUPVAL                         R26 2
      403 GETTABLEKS                       R26 R26 K71 ["createElement"]
      405 GETUPVAL                         R27 11
      406 MOVE                             R28 R20
      407 GETTABLEKS                       R29 R2 K73 ["children"]
      409 CALL                             R26 3 1
      410 SETTABLEKS                       R26 R25 K82 ["Input"]
      412 FASTCALL1                        TYPEOF R3 ; [+3]
      413 MOVE                             R28 R3
      414 GETIMPORT                        R27 K8 [typeof]
      416 CALL                             R27 1 1
      417 JUMPIFNOTEQKS                    R27 K9 ["string"] ; [+29]
      419 GETUPVAL                         R26 2
      420 GETTABLEKS                       R26 R26 K71 ["createElement"]
      422 GETUPVAL                         R27 14
      423 DUPTABLE                         R28 K87 [{"Text", "textStyle", "size", "testId"}]
      424 SETTABLEKS                       R3 R28 K85 ["Text"]
      426 GETTABLEKS                       R29 R13 K88 ["labelStyle"]
      428 SETTABLEKS                       R29 R28 K86 ["textStyle"]
      430 GETUPVAL                         R29 15
      431 GETTABLEKS                       R30 R2 K13 ["size"]
      433 CALL                             R29 1 1
      434 SETTABLEKS                       R29 R28 K13 ["size"]
      436 LOADK                            R30 K89 ["%*--label"]
      437 GETTABLEKS                       R32 R2 K51 ["testId"]
      439 NAMECALL                         R30 R30 K70 ["format"]
      441 CALL                             R30 2 1
      442 MOVE                             R29 R30
      443 SETTABLEKS                       R29 R28 K51 ["testId"]
      445 CALL                             R26 2 1
      446 JUMP                             ; [+1]
      447 MOVE                             R26 R3
      448 SETTABLEKS                       R26 R25 K83 ["InputLabel"]
      450 CALL                             R22 3 -1
      451 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Motion"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K10 ["useMotion"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R1 K11 ["Dash"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R1 K12 ["React"]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R7 R0 K13 ["Components"]
       35 GETIMPORT                        R8 K6 [require]
       37 GETTABLEKS                       R9 R7 K14 ["InputLabel"]
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K6 [require]
       42 GETTABLEKS                       R10 R7 K15 ["Types"]
       44 CALL                             R9 1 1
       45 GETIMPORT                        R10 K6 [require]
       47 GETTABLEKS                       R11 R7 K16 ["View"]
       49 CALL                             R10 1 1
       50 GETIMPORT                        R11 K6 [require]
       52 GETTABLEKS                       R12 R0 K17 ["Enums"]
       54 GETTABLEKS                       R12 R12 K18 ["StateLayerAffordance"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K6 [require]
       59 GETIMPORT                        R13 K1 [script]
       61 GETTABLEKS                       R13 R13 K4 ["Parent"]
       63 GETTABLEKS                       R13 R13 K19 ["useInputMotionStates"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K6 [require]
       68 GETIMPORT                        R14 K1 [script]
       70 GETTABLEKS                       R14 R14 K4 ["Parent"]
       72 GETTABLEKS                       R14 R14 K20 ["useInputVariants"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K6 [require]
       77 GETTABLEKS                       R15 R0 K7 ["Utility"]
       79 GETTABLEKS                       R15 R15 K21 ["getInputTextSize"]
       81 CALL                             R14 1 1
       82 GETIMPORT                        R15 K6 [require]
       84 GETTABLEKS                       R16 R0 K22 ["Providers"]
       86 GETTABLEKS                       R16 R16 K23 ["Style"]
       88 GETTABLEKS                       R16 R16 K24 ["useTokens"]
       90 CALL                             R15 1 1
       91 GETIMPORT                        R16 K6 [require]
       93 GETTABLEKS                       R17 R0 K7 ["Utility"]
       95 GETTABLEKS                       R17 R17 K25 ["withCommonProps"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K6 [require]
      100 GETTABLEKS                       R18 R0 K7 ["Utility"]
      102 GETTABLEKS                       R18 R18 K26 ["withDefaults"]
      104 CALL                             R17 1 1
      105 GETIMPORT                        R18 K6 [require]
      107 GETTABLEKS                       R19 R0 K27 ["Constants"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K6 [require]
      112 GETTABLEKS                       R20 R0 K17 ["Enums"]
      114 GETTABLEKS                       R20 R20 K28 ["ControlState"]
      116 CALL                             R19 1 1
      117 GETIMPORT                        R20 K6 [require]
      119 GETTABLEKS                       R21 R0 K17 ["Enums"]
      121 GETTABLEKS                       R21 R21 K29 ["InputSize"]
      123 CALL                             R20 1 1
      124 GETIMPORT                        R21 K6 [require]
      126 GETTABLEKS                       R22 R0 K17 ["Enums"]
      128 GETTABLEKS                       R22 R22 K30 ["CursorType"]
      130 CALL                             R21 1 1
      131 GETIMPORT                        R22 K6 [require]
      133 GETTABLEKS                       R23 R0 K22 ["Providers"]
      135 GETTABLEKS                       R23 R23 K23 ["Style"]
      137 GETTABLEKS                       R23 R23 K31 ["Tokens"]
      139 CALL                             R22 1 1
      140 DUPTABLE                         R23 K35 [{"size", "Selectable", "testId"}]
      141 GETTABLEKS                       R24 R20 K36 ["Medium"]
      143 SETTABLEKS                       R24 R23 K32 ["size"]
      145 LOADB                            R24 1
      146 SETTABLEKS                       R24 R23 K33 ["Selectable"]
      148 LOADK                            R24 K37 ["--foundation-internal-input"]
      149 SETTABLEKS                       R24 R23 K34 ["testId"]
      151 DUPCLOSURE                       R24 K38 [PROTO_6]
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R23
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R14
      168 GETTABLEKS                       R25 R6 K39 ["memo"]
      170 GETTABLEKS                       R26 R6 K40 ["forwardRef"]
      172 MOVE                             R27 R24
      173 CALL                             R26 1 -1
      174 CALL                             R25 -1 -1
      175 RETURN                           R25 -1
