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
      183 JUMPIFNOT                        R5 ; [+2]
      184 DUPTABLE                         R19 K44 [{["Selectable"] = False}]
      185 JUMP                             ; [+1]
      186 MOVE                             R19 R17
      187 SETTABLEKS                       R19 R18 K35 ["selection"]
      189 JUMPIFNOT                        R5 ; [+2]
      190 LOADNIL                          R19
      191 JUMP                             ; [+1]
      192 MOVE                             R19 R11
      193 SETTABLEKS                       R19 R18 K36 ["cursor"]
      195 GETTABLEKS                       R19 R2 K23 ["isDisabled"]
      197 SETTABLEKS                       R19 R18 K23 ["isDisabled"]
      199 SETTABLEKS                       R1 R18 K37 ["ref"]
      201 GETUPVAL                         R20 6
      202 GETTABLEKS                       R20 R20 K17 ["FoundationToggleVisualUpdate"]
      204 JUMPIFNOT                        R20 ; [+20]
      205 GETTABLEKS                       R20 R2 K15 ["customVariantProps"]
      207 GETTABLEKS                       R20 R20 K45 ["stroke"]
      209 JUMPIFNOT                        R20 ; [+15]
      210 GETTABLEKS                       R20 R2 K15 ["customVariantProps"]
      212 GETTABLEKS                       R20 R20 K45 ["stroke"]
      214 GETTABLEKS                       R20 R20 K46 ["thickness"]
      216 JUMPIFEQKNIL                     R20 ; [+8]
      218 GETTABLEKS                       R19 R2 K15 ["customVariantProps"]
      220 GETTABLEKS                       R19 R19 K45 ["stroke"]
      222 GETTABLEKS                       R19 R19 K46 ["thickness"]
      224 JUMP                             ; [+6]
      225 GETTABLEKS                       R19 R10 K47 ["input"]
      227 GETTABLEKS                       R19 R19 K45 ["stroke"]
      229 GETTABLEKS                       R19 R19 K46 ["thickness"]
      231 DUPTABLE                         R20 K53 [{"tag", "Size", "backgroundStyle", "onActivated", "stateLayer", "stroke", "selection", "cursor", "LayoutOrder", "testId"}]
      232 GETTABLEKS                       R21 R2 K15 ["customVariantProps"]
      234 GETTABLEKS                       R21 R21 K48 ["tag"]
      236 SETTABLEKS                       R21 R20 K48 ["tag"]
      238 GETTABLEKS                       R22 R2 K15 ["customVariantProps"]
      240 GETTABLEKS                       R22 R22 K13 ["size"]
      242 GETIMPORT                        R23 K56 [UDim2.fromOffset]
      244 MOVE                             R24 R19
      245 MOVE                             R25 R19
      246 CALL                             R23 2 1
      247 SUB                              R21 R22 R23
      248 SETTABLEKS                       R21 R20 K49 ["Size"]
      250 GETTABLEKS                       R21 R13 K50 ["backgroundStyle"]
      252 SETTABLEKS                       R21 R20 K50 ["backgroundStyle"]
      254 SETTABLEKS                       R16 R20 K24 ["onActivated"]
      256 DUPTABLE                         R21 K41 [{"affordance"}]
      257 GETUPVAL                         R22 10
      258 GETTABLEKS                       R22 R22 K57 ["Background"]
      260 SETTABLEKS                       R22 R21 K40 ["affordance"]
      262 SETTABLEKS                       R21 R20 K34 ["stateLayer"]
      264 DUPTABLE                         R21 K62 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      265 GETTABLEKS                       R22 R13 K63 ["strokeStyle"]
      267 DUPCLOSURE                       R24 K64 [PROTO_4]
      268 NAMECALL                         R22 R22 K65 ["map"]
      270 CALL                             R22 2 1
      271 SETTABLEKS                       R22 R21 K58 ["Color"]
      273 GETTABLEKS                       R22 R13 K63 ["strokeStyle"]
      275 NEWCLOSURE                       R24 P5
      276 CAPTURE                          VAL R2
      277 CAPTURE                          VAL R5
      278 CAPTURE                          UPVAL U9
      279 NAMECALL                         R22 R22 K65 ["map"]
      281 CALL                             R22 2 1
      282 SETTABLEKS                       R22 R21 K59 ["Transparency"]
      284 SETTABLEKS                       R19 R21 K60 ["Thickness"]
      286 GETIMPORT                        R22 K67 [Enum.BorderStrokePosition.Inner]
      288 SETTABLEKS                       R22 R21 K61 ["BorderStrokePosition"]
      290 SETTABLEKS                       R21 R20 K45 ["stroke"]
      292 SETTABLEKS                       R17 R20 K35 ["selection"]
      294 JUMPIFNOT                        R5 ; [+2]
      295 MOVE                             R21 R11
      296 JUMP                             ; [+1]
      297 LOADNIL                          R21
      298 SETTABLEKS                       R21 R20 K36 ["cursor"]
      300 JUMPIFNOT                        R5 ; [+8]
      301 GETIMPORT                        R22 K69 [Enum.HorizontalAlignment.Left]
      303 JUMPIFNOTEQ                      R4 R22 ; [+3]
      305 LOADN                            R21 1
      306 JUMP                             ; [+3]
      307 LOADN                            R21 -1
      308 JUMP                             ; [+1]
      309 LOADNIL                          R21
      310 SETTABLEKS                       R21 R20 K51 ["LayoutOrder"]
      312 LOADK                            R22 K70 ["%*--container"]
      313 GETTABLEKS                       R24 R2 K52 ["testId"]
      315 NAMECALL                         R22 R22 K71 ["format"]
      317 CALL                             R22 2 1
      318 MOVE                             R21 R22
      319 SETTABLEKS                       R21 R20 K52 ["testId"]
      321 JUMPIF                           R5 ; [+17]
      322 GETUPVAL                         R21 2
      323 GETTABLEKS                       R21 R21 K72 ["createElement"]
      325 GETUPVAL                         R22 11
      326 GETUPVAL                         R23 12
      327 MOVE                             R24 R2
      328 GETUPVAL                         R25 13
      329 GETTABLEKS                       R25 R25 K73 ["union"]
      331 MOVE                             R26 R18
      332 MOVE                             R27 R20
      333 CALL                             R25 2 -1
      334 CALL                             R23 -1 1
      335 GETTABLEKS                       R24 R2 K74 ["children"]
      337 CALL                             R21 3 -1
      338 RETURN                           R21 -1
      339 DUPTABLE                         R21 K76 [{"tag", "padding"}]
      340 GETTABLEKS                       R22 R10 K77 ["container"]
      342 GETTABLEKS                       R22 R22 K48 ["tag"]
      344 SETTABLEKS                       R22 R21 K48 ["tag"]
      346 DUPTABLE                         R22 K82 [{"top", "bottom", "left", "right"}]
      347 GETTABLEKS                       R23 R10 K77 ["container"]
      349 GETTABLEKS                       R23 R23 K75 ["padding"]
      351 SETTABLEKS                       R23 R22 K78 ["top"]
      353 GETTABLEKS                       R23 R10 K77 ["container"]
      355 GETTABLEKS                       R23 R23 K75 ["padding"]
      357 SETTABLEKS                       R23 R22 K79 ["bottom"]
      359 GETIMPORT                        R24 K6 [Enum.HorizontalAlignment.Right]
      361 JUMPIFNOTEQ                      R4 R24 ; [+6]
      363 GETTABLEKS                       R23 R10 K77 ["container"]
      365 GETTABLEKS                       R23 R23 K75 ["padding"]
      367 JUMP                             ; [+1]
      368 LOADNIL                          R23
      369 SETTABLEKS                       R23 R22 K80 ["left"]
      371 GETIMPORT                        R24 K69 [Enum.HorizontalAlignment.Left]
      373 JUMPIFNOTEQ                      R4 R24 ; [+6]
      375 GETTABLEKS                       R23 R10 K77 ["container"]
      377 GETTABLEKS                       R23 R23 K75 ["padding"]
      379 JUMP                             ; [+1]
      380 LOADNIL                          R23
      381 SETTABLEKS                       R23 R22 K81 ["right"]
      383 SETTABLEKS                       R22 R21 K75 ["padding"]
      385 GETUPVAL                         R22 2
      386 GETTABLEKS                       R22 R22 K72 ["createElement"]
      388 GETUPVAL                         R23 11
      389 GETUPVAL                         R24 12
      390 MOVE                             R25 R2
      391 GETUPVAL                         R26 13
      392 GETTABLEKS                       R26 R26 K73 ["union"]
      394 MOVE                             R27 R21
      395 MOVE                             R28 R18
      396 CALL                             R26 2 -1
      397 CALL                             R24 -1 1
      398 DUPTABLE                         R25 K85 [{"Input", "InputLabel"}]
      399 GETUPVAL                         R26 2
      400 GETTABLEKS                       R26 R26 K72 ["createElement"]
      402 GETUPVAL                         R27 11
      403 MOVE                             R28 R20
      404 GETTABLEKS                       R29 R2 K74 ["children"]
      406 CALL                             R26 3 1
      407 SETTABLEKS                       R26 R25 K83 ["Input"]
      409 FASTCALL1                        TYPEOF R3 ; [+3]
      410 MOVE                             R28 R3
      411 GETIMPORT                        R27 K8 [typeof]
      413 CALL                             R27 1 1
      414 JUMPIFNOTEQKS                    R27 K9 ["string"] ; [+29]
      416 GETUPVAL                         R26 2
      417 GETTABLEKS                       R26 R26 K72 ["createElement"]
      419 GETUPVAL                         R27 14
      420 DUPTABLE                         R28 K88 [{"Text", "textStyle", "size", "testId"}]
      421 SETTABLEKS                       R3 R28 K86 ["Text"]
      423 GETTABLEKS                       R29 R13 K89 ["labelStyle"]
      425 SETTABLEKS                       R29 R28 K87 ["textStyle"]
      427 GETUPVAL                         R29 15
      428 GETTABLEKS                       R30 R2 K13 ["size"]
      430 CALL                             R29 1 1
      431 SETTABLEKS                       R29 R28 K13 ["size"]
      433 LOADK                            R30 K90 ["%*--label"]
      434 GETTABLEKS                       R32 R2 K52 ["testId"]
      436 NAMECALL                         R30 R30 K71 ["format"]
      438 CALL                             R30 2 1
      439 MOVE                             R29 R30
      440 SETTABLEKS                       R29 R28 K52 ["testId"]
      442 CALL                             R26 2 1
      443 JUMP                             ; [+1]
      444 MOVE                             R26 R3
      445 SETTABLEKS                       R26 R25 K84 ["InputLabel"]
      447 CALL                             R22 3 -1
      448 RETURN                           R22 -1

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
      140 DUPTABLE                         R23 K37 [{["size"], ["Selectable"] = True, ["testId"] = "--foundation-internal-input"}]
      141 GETTABLEKS                       R24 R20 K38 ["Medium"]
      143 SETTABLEKS                       R24 R23 K32 ["size"]
      145 DUPCLOSURE                       R24 K39 [PROTO_6]
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R23
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R14
      162 GETTABLEKS                       R25 R6 K40 ["memo"]
      164 GETTABLEKS                       R26 R6 K41 ["forwardRef"]
      166 MOVE                             R27 R24
      167 CALL                             R26 1 -1
      168 CALL                             R25 -1 -1
      169 RETURN                           R25 -1
