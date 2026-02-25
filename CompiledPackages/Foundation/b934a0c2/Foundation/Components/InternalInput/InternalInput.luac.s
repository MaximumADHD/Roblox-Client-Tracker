PROTO_0:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K4 ["customVariantProps"]
        4 GETTABLEKS                       R1 R2 K5 ["cursorRadius"]
        6 JUMPIF                           R1 ; [+5]
        7 GETIMPORT                        R1 K8 [UDim.new]
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K0 ["radius"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K9 ["Size"]
       17 GETTABLEKS                       R1 R2 K10 ["Size_200"]
       19 SETTABLEKS                       R1 R0 K1 ["offset"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K11 ["Stroke"]
       24 GETTABLEKS                       R1 R2 K12 ["Thicker"]
       26 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       28 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FoundationCheckboxIndeterminate"]
        3 JUMPIFNOT                        R0 ; [+22]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R1 R2 K1 ["Checked"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 4
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 2
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R1 R2 K2 ["Hover"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 2
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R1 R2 K3 ["Default"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 5
       27 GETTABLEKS                       R0 R1 K4 ["isChecked"]
       29 JUMPIFNOT                        R0 ; [+6]
       30 GETUPVAL                         R0 2
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R1 R2 K1 ["Checked"]
       34 CALL                             R0 1 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R0 4
       37 JUMPIFNOT                        R0 ; [+6]
       38 GETUPVAL                         R0 2
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R1 R2 K2 ["Hover"]
       42 CALL                             R0 1 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R0 2
       45 GETUPVAL                         R2 3
       46 GETTABLEKS                       R1 R2 K3 ["Default"]
       48 CALL                             R0 1 0
       49 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isDisabled"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K1 ["onActivated"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["isChecked"]
       11 NOT                              R1 R2
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Color3"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isDisabled"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 JUMPIF                           R1 ; [+4]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["DISABLED_TRANSPARENCY"]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R1 R0 K2 ["Transparency"]
       12 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R5 R2 K0 ["label"]
        6 GETTABLEKS                       R3 R5 K1 ["text"]
        8 GETTABLEKS                       R5 R2 K0 ["label"]
       10 GETTABLEKS                       R4 R5 K2 ["position"]
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
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R6 R7 K10 ["useState"]
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
       51 GETUPVAL                         R12 2
       52 GETTABLEKS                       R11 R12 K14 ["useMemo"]
       54 NEWCLOSURE                       R12 P0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R8
       57 NEWTABLE                         R13 0 3
       59 MOVE                             R14 R8
       60 MOVE                             R15 R5
       61 GETTABLEKS                       R17 R2 K15 ["customVariantProps"]
       63 GETTABLEKS                       R16 R17 K16 ["cursorRadius"]
       65 SETLIST                          R13 R14 3 [1]
       67 CALL                             R11 2 1
       68 GETUPVAL                         R12 5
       69 MOVE                             R13 R8
       70 GETUPVAL                         R16 6
       71 GETTABLEKS                       R15 R16 K17 ["FoundationToggleVisualUpdate"]
       73 JUMPIFNOT                        R15 ; [+5]
       74 GETTABLEKS                       R15 R2 K15 ["customVariantProps"]
       76 GETTABLEKS                       R14 R15 K18 ["colors"]
       78 JUMP                             ; [+4]
       79 GETTABLEKS                       R15 R2 K15 ["customVariantProps"]
       81 GETTABLEKS                       R14 R15 K19 ["checkedStyle"]
       83 CALL                             R12 2 1
       84 GETUPVAL                         R13 7
       85 GETTABLEKS                       R14 R12 K20 ["Default"]
       87 CALL                             R13 1 2
       88 GETUPVAL                         R16 2
       89 GETTABLEKS                       R15 R16 K21 ["useEffect"]
       91 NEWCLOSURE                       R16 P1
       92 CAPTURE                          UPVAL U6
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R2
       98 NEWTABLE                         R17 0 4
      100 MOVE                             R18 R9
      101 GETTABLEKS                       R19 R2 K11 ["isChecked"]
      103 MOVE                             R20 R6
      104 MOVE                             R21 R12
      105 SETLIST                          R17 R18 4 [1]
      107 CALL                             R15 2 0
      108 GETUPVAL                         R16 2
      109 GETTABLEKS                       R15 R16 K22 ["useCallback"]
      111 NEWCLOSURE                       R16 P2
      112 CAPTURE                          VAL R7
      113 CAPTURE                          UPVAL U8
      114 NEWTABLE                         R17 0 0
      116 CALL                             R15 2 1
      117 GETUPVAL                         R17 2
      118 GETTABLEKS                       R16 R17 K22 ["useCallback"]
      120 NEWCLOSURE                       R17 P3
      121 CAPTURE                          VAL R2
      122 NEWTABLE                         R18 0 3
      124 GETTABLEKS                       R19 R2 K23 ["isDisabled"]
      126 GETTABLEKS                       R20 R2 K11 ["isChecked"]
      128 GETTABLEKS                       R21 R2 K24 ["onActivated"]
      130 SETLIST                          R18 R19 3 [1]
      132 CALL                             R16 2 1
      133 DUPTABLE                         R17 K30 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      134 GETTABLEKS                       R19 R2 K23 ["isDisabled"]
      136 JUMPIFNOT                        R19 ; [+2]
      137 LOADB                            R18 0
      138 JUMP                             ; [+2]
      139 GETTABLEKS                       R18 R2 K25 ["Selectable"]
      141 SETTABLEKS                       R18 R17 K25 ["Selectable"]
      143 GETTABLEKS                       R18 R2 K26 ["NextSelectionUp"]
      145 SETTABLEKS                       R18 R17 K26 ["NextSelectionUp"]
      147 GETTABLEKS                       R18 R2 K27 ["NextSelectionDown"]
      149 SETTABLEKS                       R18 R17 K27 ["NextSelectionDown"]
      151 GETTABLEKS                       R18 R2 K28 ["NextSelectionLeft"]
      153 SETTABLEKS                       R18 R17 K28 ["NextSelectionLeft"]
      155 GETTABLEKS                       R18 R2 K29 ["NextSelectionRight"]
      157 SETTABLEKS                       R18 R17 K29 ["NextSelectionRight"]
      159 DUPTABLE                         R18 K38 [{"Active", "GroupTransparency", "onActivated", "onStateChanged", "stateLayer", "selection", "cursor", "isDisabled", "ref"}]
      160 GETTABLEKS                       R20 R2 K23 ["isDisabled"]
      162 NOT                              R19 R20
      163 SETTABLEKS                       R19 R18 K31 ["Active"]
      165 GETTABLEKS                       R20 R2 K23 ["isDisabled"]
      167 JUMPIFNOT                        R20 ; [+4]
      168 GETUPVAL                         R20 9
      169 GETTABLEKS                       R19 R20 K39 ["DISABLED_TRANSPARENCY"]
      171 JUMP                             ; [+1]
      172 LOADN                            R19 0
      173 SETTABLEKS                       R19 R18 K32 ["GroupTransparency"]
      175 SETTABLEKS                       R16 R18 K24 ["onActivated"]
      177 SETTABLEKS                       R15 R18 K33 ["onStateChanged"]
      179 DUPTABLE                         R19 K41 [{"affordance"}]
      180 GETUPVAL                         R21 10
      181 GETTABLEKS                       R20 R21 K42 ["None"]
      183 SETTABLEKS                       R20 R19 K40 ["affordance"]
      185 SETTABLEKS                       R19 R18 K34 ["stateLayer"]
      187 JUMPIFNOT                        R5 ; [+5]
      188 DUPTABLE                         R19 K43 [{"Selectable"}]
      189 LOADB                            R20 0
      190 SETTABLEKS                       R20 R19 K25 ["Selectable"]
      192 JUMP                             ; [+1]
      193 MOVE                             R19 R17
      194 SETTABLEKS                       R19 R18 K35 ["selection"]
      196 JUMPIFNOT                        R5 ; [+2]
      197 LOADNIL                          R19
      198 JUMP                             ; [+1]
      199 MOVE                             R19 R11
      200 SETTABLEKS                       R19 R18 K36 ["cursor"]
      202 GETTABLEKS                       R19 R2 K23 ["isDisabled"]
      204 SETTABLEKS                       R19 R18 K23 ["isDisabled"]
      206 SETTABLEKS                       R1 R18 K37 ["ref"]
      208 GETUPVAL                         R21 6
      209 GETTABLEKS                       R20 R21 K17 ["FoundationToggleVisualUpdate"]
      211 JUMPIFNOT                        R20 ; [+20]
      212 GETTABLEKS                       R21 R2 K15 ["customVariantProps"]
      214 GETTABLEKS                       R20 R21 K44 ["stroke"]
      216 JUMPIFNOT                        R20 ; [+15]
      217 GETTABLEKS                       R22 R2 K15 ["customVariantProps"]
      219 GETTABLEKS                       R21 R22 K44 ["stroke"]
      221 GETTABLEKS                       R20 R21 K45 ["thickness"]
      223 JUMPIFEQKNIL                     R20 ; [+8]
      225 GETTABLEKS                       R21 R2 K15 ["customVariantProps"]
      227 GETTABLEKS                       R20 R21 K44 ["stroke"]
      229 GETTABLEKS                       R19 R20 K45 ["thickness"]
      231 JUMP                             ; [+6]
      232 GETTABLEKS                       R21 R10 K46 ["input"]
      234 GETTABLEKS                       R20 R21 K44 ["stroke"]
      236 GETTABLEKS                       R19 R20 K45 ["thickness"]
      238 DUPTABLE                         R20 K52 [{"tag", "Size", "backgroundStyle", "onActivated", "stateLayer", "stroke", "selection", "cursor", "LayoutOrder", "testId"}]
      239 GETTABLEKS                       R22 R2 K15 ["customVariantProps"]
      241 GETTABLEKS                       R21 R22 K47 ["tag"]
      243 SETTABLEKS                       R21 R20 K47 ["tag"]
      245 GETTABLEKS                       R23 R2 K15 ["customVariantProps"]
      247 GETTABLEKS                       R22 R23 K13 ["size"]
      249 GETIMPORT                        R23 K55 [UDim2.fromOffset]
      251 MOVE                             R24 R19
      252 MOVE                             R25 R19
      253 CALL                             R23 2 1
      254 SUB                              R21 R22 R23
      255 SETTABLEKS                       R21 R20 K48 ["Size"]
      257 GETTABLEKS                       R21 R13 K49 ["backgroundStyle"]
      259 SETTABLEKS                       R21 R20 K49 ["backgroundStyle"]
      261 SETTABLEKS                       R16 R20 K24 ["onActivated"]
      263 DUPTABLE                         R21 K41 [{"affordance"}]
      264 GETUPVAL                         R23 10
      265 GETTABLEKS                       R22 R23 K56 ["Background"]
      267 SETTABLEKS                       R22 R21 K40 ["affordance"]
      269 SETTABLEKS                       R21 R20 K34 ["stateLayer"]
      271 DUPTABLE                         R21 K61 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      272 GETTABLEKS                       R22 R13 K62 ["strokeStyle"]
      274 DUPCLOSURE                       R24 K63 [PROTO_4]
      275 NAMECALL                         R22 R22 K64 ["map"]
      277 CALL                             R22 2 1
      278 SETTABLEKS                       R22 R21 K57 ["Color"]
      280 GETTABLEKS                       R22 R13 K62 ["strokeStyle"]
      282 NEWCLOSURE                       R24 P5
      283 CAPTURE                          VAL R2
      284 CAPTURE                          VAL R5
      285 CAPTURE                          UPVAL U9
      286 NAMECALL                         R22 R22 K64 ["map"]
      288 CALL                             R22 2 1
      289 SETTABLEKS                       R22 R21 K58 ["Transparency"]
      291 SETTABLEKS                       R19 R21 K59 ["Thickness"]
      293 GETUPVAL                         R24 6
      294 GETTABLEKS                       R23 R24 K65 ["FoundationUIStrokeInner"]
      296 JUMPIFNOT                        R23 ; [+3]
      297 GETIMPORT                        R22 K67 [Enum.BorderStrokePosition.Inner]
      299 JUMP                             ; [+1]
      300 LOADNIL                          R22
      301 SETTABLEKS                       R22 R21 K60 ["BorderStrokePosition"]
      303 SETTABLEKS                       R21 R20 K44 ["stroke"]
      305 SETTABLEKS                       R17 R20 K35 ["selection"]
      307 JUMPIFNOT                        R5 ; [+2]
      308 MOVE                             R21 R11
      309 JUMP                             ; [+1]
      310 LOADNIL                          R21
      311 SETTABLEKS                       R21 R20 K36 ["cursor"]
      313 JUMPIFNOT                        R5 ; [+8]
      314 GETIMPORT                        R22 K69 [Enum.HorizontalAlignment.Left]
      316 JUMPIFNOTEQ                      R4 R22 ; [+3]
      318 LOADN                            R21 1
      319 JUMP                             ; [+3]
      320 LOADN                            R21 255
      321 JUMP                             ; [+1]
      322 LOADNIL                          R21
      323 SETTABLEKS                       R21 R20 K50 ["LayoutOrder"]
      325 LOADK                            R22 K70 ["%*--container"]
      326 GETTABLEKS                       R24 R2 K51 ["testId"]
      328 NAMECALL                         R22 R22 K71 ["format"]
      330 CALL                             R22 2 1
      331 MOVE                             R21 R22
      332 SETTABLEKS                       R21 R20 K51 ["testId"]
      334 JUMPIF                           R5 ; [+17]
      335 GETUPVAL                         R22 2
      336 GETTABLEKS                       R21 R22 K72 ["createElement"]
      338 GETUPVAL                         R22 11
      339 GETUPVAL                         R23 12
      340 MOVE                             R24 R2
      341 GETUPVAL                         R26 13
      342 GETTABLEKS                       R25 R26 K73 ["union"]
      344 MOVE                             R26 R18
      345 MOVE                             R27 R20
      346 CALL                             R25 2 -1
      347 CALL                             R23 -1 1
      348 GETTABLEKS                       R24 R2 K74 ["children"]
      350 CALL                             R21 3 -1
      351 RETURN                           R21 -1
      352 DUPTABLE                         R21 K76 [{"tag", "padding"}]
      353 GETTABLEKS                       R23 R10 K77 ["container"]
      355 GETTABLEKS                       R22 R23 K47 ["tag"]
      357 SETTABLEKS                       R22 R21 K47 ["tag"]
      359 DUPTABLE                         R22 K82 [{"top", "bottom", "left", "right"}]
      360 GETTABLEKS                       R24 R10 K77 ["container"]
      362 GETTABLEKS                       R23 R24 K75 ["padding"]
      364 SETTABLEKS                       R23 R22 K78 ["top"]
      366 GETTABLEKS                       R24 R10 K77 ["container"]
      368 GETTABLEKS                       R23 R24 K75 ["padding"]
      370 SETTABLEKS                       R23 R22 K79 ["bottom"]
      372 GETIMPORT                        R24 K6 [Enum.HorizontalAlignment.Right]
      374 JUMPIFNOTEQ                      R4 R24 ; [+6]
      376 GETTABLEKS                       R24 R10 K77 ["container"]
      378 GETTABLEKS                       R23 R24 K75 ["padding"]
      380 JUMP                             ; [+1]
      381 LOADNIL                          R23
      382 SETTABLEKS                       R23 R22 K80 ["left"]
      384 GETIMPORT                        R24 K69 [Enum.HorizontalAlignment.Left]
      386 JUMPIFNOTEQ                      R4 R24 ; [+6]
      388 GETTABLEKS                       R24 R10 K77 ["container"]
      390 GETTABLEKS                       R23 R24 K75 ["padding"]
      392 JUMP                             ; [+1]
      393 LOADNIL                          R23
      394 SETTABLEKS                       R23 R22 K81 ["right"]
      396 SETTABLEKS                       R22 R21 K75 ["padding"]
      398 GETUPVAL                         R23 2
      399 GETTABLEKS                       R22 R23 K72 ["createElement"]
      401 GETUPVAL                         R23 11
      402 GETUPVAL                         R24 12
      403 MOVE                             R25 R2
      404 GETUPVAL                         R27 13
      405 GETTABLEKS                       R26 R27 K73 ["union"]
      407 MOVE                             R27 R21
      408 MOVE                             R28 R18
      409 CALL                             R26 2 -1
      410 CALL                             R24 -1 1
      411 DUPTABLE                         R25 K85 [{"Input", "InputLabel"}]
      412 GETUPVAL                         R27 2
      413 GETTABLEKS                       R26 R27 K72 ["createElement"]
      415 GETUPVAL                         R27 11
      416 MOVE                             R28 R20
      417 GETTABLEKS                       R29 R2 K74 ["children"]
      419 CALL                             R26 3 1
      420 SETTABLEKS                       R26 R25 K83 ["Input"]
      422 FASTCALL1                        TYPEOF R3 ; [+3]
      423 MOVE                             R28 R3
      424 GETIMPORT                        R27 K8 [typeof]
      426 CALL                             R27 1 1
      427 JUMPIFNOTEQKS                    R27 K9 ["string"] ; [+29]
      429 GETUPVAL                         R27 2
      430 GETTABLEKS                       R26 R27 K72 ["createElement"]
      432 GETUPVAL                         R27 14
      433 DUPTABLE                         R28 K88 [{"Text", "textStyle", "size", "testId"}]
      434 SETTABLEKS                       R3 R28 K86 ["Text"]
      436 GETTABLEKS                       R29 R13 K89 ["labelStyle"]
      438 SETTABLEKS                       R29 R28 K87 ["textStyle"]
      440 GETUPVAL                         R29 15
      441 GETTABLEKS                       R30 R2 K13 ["size"]
      443 CALL                             R29 1 1
      444 SETTABLEKS                       R29 R28 K13 ["size"]
      446 LOADK                            R30 K90 ["%*--label"]
      447 GETTABLEKS                       R32 R2 K51 ["testId"]
      449 NAMECALL                         R30 R30 K71 ["format"]
      451 CALL                             R30 2 1
      452 MOVE                             R29 R30
      453 SETTABLEKS                       R29 R28 K51 ["testId"]
      455 CALL                             R26 2 1
      456 JUMP                             ; [+1]
      457 MOVE                             R26 R3
      458 SETTABLEKS                       R26 R25 K84 ["InputLabel"]
      460 CALL                             R22 3 -1
      461 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R4 K8 ["Flags"]
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
       52 GETTABLEKS                       R13 R0 K17 ["Enums"]
       54 GETTABLEKS                       R12 R13 K18 ["StateLayerAffordance"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K6 [require]
       59 GETIMPORT                        R15 K1 [script]
       61 GETTABLEKS                       R14 R15 K4 ["Parent"]
       63 GETTABLEKS                       R13 R14 K19 ["useInputMotionStates"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K6 [require]
       68 GETIMPORT                        R16 K1 [script]
       70 GETTABLEKS                       R15 R16 K4 ["Parent"]
       72 GETTABLEKS                       R14 R15 K20 ["useInputVariants"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K6 [require]
       77 GETTABLEKS                       R16 R0 K7 ["Utility"]
       79 GETTABLEKS                       R15 R16 K21 ["getInputTextSize"]
       81 CALL                             R14 1 1
       82 GETIMPORT                        R15 K6 [require]
       84 GETTABLEKS                       R18 R0 K22 ["Providers"]
       86 GETTABLEKS                       R17 R18 K23 ["Style"]
       88 GETTABLEKS                       R16 R17 K24 ["useTokens"]
       90 CALL                             R15 1 1
       91 GETIMPORT                        R16 K6 [require]
       93 GETTABLEKS                       R18 R0 K7 ["Utility"]
       95 GETTABLEKS                       R17 R18 K25 ["withCommonProps"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K6 [require]
      100 GETTABLEKS                       R19 R0 K7 ["Utility"]
      102 GETTABLEKS                       R18 R19 K26 ["withDefaults"]
      104 CALL                             R17 1 1
      105 GETIMPORT                        R18 K6 [require]
      107 GETTABLEKS                       R19 R0 K27 ["Constants"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K6 [require]
      112 GETTABLEKS                       R21 R0 K17 ["Enums"]
      114 GETTABLEKS                       R20 R21 K28 ["ControlState"]
      116 CALL                             R19 1 1
      117 GETIMPORT                        R20 K6 [require]
      119 GETTABLEKS                       R22 R0 K17 ["Enums"]
      121 GETTABLEKS                       R21 R22 K29 ["InputSize"]
      123 CALL                             R20 1 1
      124 GETIMPORT                        R21 K6 [require]
      126 GETTABLEKS                       R23 R0 K17 ["Enums"]
      128 GETTABLEKS                       R22 R23 K30 ["CursorType"]
      130 CALL                             R21 1 1
      131 GETIMPORT                        R22 K6 [require]
      133 GETTABLEKS                       R25 R0 K22 ["Providers"]
      135 GETTABLEKS                       R24 R25 K23 ["Style"]
      137 GETTABLEKS                       R23 R24 K31 ["Tokens"]
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
