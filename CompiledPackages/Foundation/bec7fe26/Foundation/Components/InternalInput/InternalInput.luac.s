PROTO_0:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K4 ["FoundationInternalInputSelectedStylesAndSpacing"]
        4 JUMPIFNOT                        R2 ; [+12]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K5 ["customVariantProps"]
        8 GETTABLEKS                       R1 R1 K6 ["cursorRadius"]
       10 JUMPIF                           R1 ; [+29]
       11 GETIMPORT                        R1 K9 [UDim.new]
       13 LOADN                            R2 0
       14 LOADN                            R3 0
       15 CALL                             R1 2 1
       16 JUMP                             ; [+23]
       17 GETUPVAL                         R2 2
       18 JUMPIFNOT                        R2 ; [+10]
       19 GETIMPORT                        R1 K9 [UDim.new]
       21 LOADN                            R2 0
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K10 ["Radius"]
       25 GETTABLEKS                       R3 R3 K11 ["Small"]
       27 CALL                             R1 2 1
       28 JUMP                             ; [+11]
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R1 K5 ["customVariantProps"]
       32 GETTABLEKS                       R1 R1 K6 ["cursorRadius"]
       34 JUMPIF                           R1 ; [+5]
       35 GETIMPORT                        R1 K9 [UDim.new]
       37 LOADN                            R2 0
       38 LOADN                            R3 0
       39 CALL                             R1 2 1
       40 SETTABLEKS                       R1 R0 K0 ["radius"]
       42 GETUPVAL                         R1 3
       43 GETTABLEKS                       R1 R1 K12 ["Size"]
       45 GETTABLEKS                       R1 R1 K13 ["Size_200"]
       47 SETTABLEKS                       R1 R0 K1 ["offset"]
       49 GETUPVAL                         R1 3
       50 GETTABLEKS                       R1 R1 K14 ["Stroke"]
       52 GETTABLEKS                       R1 R1 K15 ["Thicker"]
       54 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       56 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isChecked"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["Checked"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 3
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K2 ["Hover"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 1
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K3 ["Default"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

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
       40 GETUPVAL                         R9 4
       41 MOVE                             R10 R8
       42 GETTABLEKS                       R11 R2 K11 ["size"]
       44 LOADB                            R12 0
       45 GETIMPORT                        R13 K13 [Enum.HorizontalAlignment.Left]
       47 JUMPIFNOTEQ                      R4 R13 ; [+3]
       49 GETTABLEKS                       R12 R2 K14 ["justifyContent"]
       51 CALL                             R9 3 1
       52 GETUPVAL                         R10 2
       53 GETTABLEKS                       R10 R10 K15 ["useMemo"]
       55 NEWCLOSURE                       R11 P0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R8
       60 NEWTABLE                         R12 0 3
       62 MOVE                             R13 R8
       63 MOVE                             R14 R5
       64 GETTABLEKS                       R15 R2 K16 ["customVariantProps"]
       66 GETTABLEKS                       R15 R15 K17 ["cursorRadius"]
       68 SETLIST                          R12 R13 3 [1]
       70 CALL                             R10 2 1
       71 GETUPVAL                         R11 6
       72 MOVE                             R12 R8
       73 GETUPVAL                         R14 5
       74 GETTABLEKS                       R14 R14 K18 ["FoundationToggleVisualUpdate"]
       76 JUMPIFNOT                        R14 ; [+5]
       77 GETTABLEKS                       R13 R2 K16 ["customVariantProps"]
       79 GETTABLEKS                       R13 R13 K19 ["colors"]
       81 JUMP                             ; [+4]
       82 GETTABLEKS                       R13 R2 K16 ["customVariantProps"]
       84 GETTABLEKS                       R13 R13 K20 ["checkedStyle"]
       86 CALL                             R11 2 1
       87 GETUPVAL                         R12 7
       88 GETTABLEKS                       R13 R11 K21 ["Default"]
       90 CALL                             R12 1 2
       91 GETUPVAL                         R14 2
       92 GETTABLEKS                       R14 R14 K22 ["useEffect"]
       94 NEWCLOSURE                       R15 P1
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R6
       99 NEWTABLE                         R16 0 3
      101 GETTABLEKS                       R17 R2 K23 ["isChecked"]
      103 MOVE                             R18 R6
      104 MOVE                             R19 R8
      105 SETLIST                          R16 R17 3 [1]
      107 CALL                             R14 2 0
      108 GETUPVAL                         R14 2
      109 GETTABLEKS                       R14 R14 K24 ["useCallback"]
      111 NEWCLOSURE                       R15 P2
      112 CAPTURE                          VAL R7
      113 CAPTURE                          UPVAL U8
      114 NEWTABLE                         R16 0 0
      116 CALL                             R14 2 1
      117 GETUPVAL                         R15 2
      118 GETTABLEKS                       R15 R15 K24 ["useCallback"]
      120 NEWCLOSURE                       R16 P3
      121 CAPTURE                          VAL R2
      122 NEWTABLE                         R17 0 3
      124 GETTABLEKS                       R18 R2 K25 ["isDisabled"]
      126 GETTABLEKS                       R19 R2 K23 ["isChecked"]
      128 GETTABLEKS                       R20 R2 K26 ["onActivated"]
      130 SETLIST                          R17 R18 3 [1]
      132 CALL                             R15 2 1
      133 DUPTABLE                         R16 K32 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      134 GETTABLEKS                       R18 R2 K25 ["isDisabled"]
      136 JUMPIFNOT                        R18 ; [+2]
      137 LOADB                            R17 0
      138 JUMP                             ; [+2]
      139 GETTABLEKS                       R17 R2 K27 ["Selectable"]
      141 SETTABLEKS                       R17 R16 K27 ["Selectable"]
      143 GETTABLEKS                       R17 R2 K28 ["NextSelectionUp"]
      145 SETTABLEKS                       R17 R16 K28 ["NextSelectionUp"]
      147 GETTABLEKS                       R17 R2 K29 ["NextSelectionDown"]
      149 SETTABLEKS                       R17 R16 K29 ["NextSelectionDown"]
      151 GETTABLEKS                       R17 R2 K30 ["NextSelectionLeft"]
      153 SETTABLEKS                       R17 R16 K30 ["NextSelectionLeft"]
      155 GETTABLEKS                       R17 R2 K31 ["NextSelectionRight"]
      157 SETTABLEKS                       R17 R16 K31 ["NextSelectionRight"]
      159 DUPTABLE                         R17 K40 [{"Active", "GroupTransparency", "onActivated", "onStateChanged", "stateLayer", "selection", "cursor", "isDisabled", "ref"}]
      160 GETTABLEKS                       R19 R2 K25 ["isDisabled"]
      162 NOT                              R18 R19
      163 SETTABLEKS                       R18 R17 K33 ["Active"]
      165 GETTABLEKS                       R19 R2 K25 ["isDisabled"]
      167 JUMPIFNOT                        R19 ; [+4]
      168 GETUPVAL                         R18 9
      169 GETTABLEKS                       R18 R18 K41 ["DISABLED_TRANSPARENCY"]
      171 JUMP                             ; [+1]
      172 LOADN                            R18 0
      173 SETTABLEKS                       R18 R17 K34 ["GroupTransparency"]
      175 SETTABLEKS                       R15 R17 K26 ["onActivated"]
      177 SETTABLEKS                       R14 R17 K35 ["onStateChanged"]
      179 DUPTABLE                         R18 K43 [{"affordance"}]
      180 GETUPVAL                         R19 10
      181 GETTABLEKS                       R19 R19 K44 ["None"]
      183 SETTABLEKS                       R19 R18 K42 ["affordance"]
      185 SETTABLEKS                       R18 R17 K36 ["stateLayer"]
      187 GETUPVAL                         R19 5
      188 GETTABLEKS                       R19 R19 K45 ["FoundationInternalInputSelectedStylesAndSpacing"]
      190 JUMPIFNOT                        R19 ; [+5]
      191 JUMPIFNOT                        R5 ; [+2]
      192 DUPTABLE                         R18 K47 [{["Selectable"] = False}]
      193 JUMP                             ; [+3]
      194 MOVE                             R18 R16
      195 JUMP                             ; [+1]
      196 MOVE                             R18 R16
      197 SETTABLEKS                       R18 R17 K37 ["selection"]
      199 GETUPVAL                         R19 5
      200 GETTABLEKS                       R19 R19 K45 ["FoundationInternalInputSelectedStylesAndSpacing"]
      202 JUMPIFNOT                        R19 ; [+5]
      203 JUMPIFNOT                        R5 ; [+2]
      204 LOADNIL                          R18
      205 JUMP                             ; [+3]
      206 MOVE                             R18 R10
      207 JUMP                             ; [+1]
      208 MOVE                             R18 R10
      209 SETTABLEKS                       R18 R17 K38 ["cursor"]
      211 GETTABLEKS                       R18 R2 K25 ["isDisabled"]
      213 SETTABLEKS                       R18 R17 K25 ["isDisabled"]
      215 SETTABLEKS                       R1 R17 K39 ["ref"]
      217 GETUPVAL                         R19 5
      218 GETTABLEKS                       R19 R19 K18 ["FoundationToggleVisualUpdate"]
      220 JUMPIFNOT                        R19 ; [+20]
      221 GETTABLEKS                       R19 R2 K16 ["customVariantProps"]
      223 GETTABLEKS                       R19 R19 K48 ["stroke"]
      225 JUMPIFNOT                        R19 ; [+15]
      226 GETTABLEKS                       R19 R2 K16 ["customVariantProps"]
      228 GETTABLEKS                       R19 R19 K48 ["stroke"]
      230 GETTABLEKS                       R19 R19 K49 ["thickness"]
      232 JUMPIFEQKNIL                     R19 ; [+8]
      234 GETTABLEKS                       R18 R2 K16 ["customVariantProps"]
      236 GETTABLEKS                       R18 R18 K48 ["stroke"]
      238 GETTABLEKS                       R18 R18 K49 ["thickness"]
      240 JUMP                             ; [+6]
      241 GETTABLEKS                       R18 R9 K50 ["input"]
      243 GETTABLEKS                       R18 R18 K48 ["stroke"]
      245 GETTABLEKS                       R18 R18 K49 ["thickness"]
      247 DUPTABLE                         R19 K56 [{"tag", "Size", "backgroundStyle", "onActivated", "stateLayer", "stroke", "selection", "cursor", "LayoutOrder", "testId"}]
      248 GETTABLEKS                       R20 R2 K16 ["customVariantProps"]
      250 GETTABLEKS                       R20 R20 K51 ["tag"]
      252 SETTABLEKS                       R20 R19 K51 ["tag"]
      254 GETTABLEKS                       R21 R2 K16 ["customVariantProps"]
      256 GETTABLEKS                       R21 R21 K11 ["size"]
      258 GETIMPORT                        R22 K59 [UDim2.fromOffset]
      260 MOVE                             R23 R18
      261 MOVE                             R24 R18
      262 CALL                             R22 2 1
      263 SUB                              R20 R21 R22
      264 SETTABLEKS                       R20 R19 K52 ["Size"]
      266 GETTABLEKS                       R20 R12 K53 ["backgroundStyle"]
      268 SETTABLEKS                       R20 R19 K53 ["backgroundStyle"]
      270 SETTABLEKS                       R15 R19 K26 ["onActivated"]
      272 DUPTABLE                         R20 K43 [{"affordance"}]
      273 GETUPVAL                         R21 10
      274 GETTABLEKS                       R21 R21 K60 ["Background"]
      276 SETTABLEKS                       R21 R20 K42 ["affordance"]
      278 SETTABLEKS                       R20 R19 K36 ["stateLayer"]
      280 DUPTABLE                         R20 K64 [{"Color", "Transparency", "Thickness"}]
      281 GETTABLEKS                       R21 R12 K65 ["strokeStyle"]
      283 DUPCLOSURE                       R23 K66 [PROTO_4]
      284 NAMECALL                         R21 R21 K67 ["map"]
      286 CALL                             R21 2 1
      287 SETTABLEKS                       R21 R20 K61 ["Color"]
      289 GETTABLEKS                       R21 R12 K65 ["strokeStyle"]
      291 NEWCLOSURE                       R23 P5
      292 CAPTURE                          VAL R2
      293 CAPTURE                          VAL R5
      294 CAPTURE                          UPVAL U9
      295 NAMECALL                         R21 R21 K67 ["map"]
      297 CALL                             R21 2 1
      298 SETTABLEKS                       R21 R20 K62 ["Transparency"]
      300 SETTABLEKS                       R18 R20 K63 ["Thickness"]
      302 SETTABLEKS                       R20 R19 K48 ["stroke"]
      304 GETUPVAL                         R21 5
      305 GETTABLEKS                       R21 R21 K45 ["FoundationInternalInputSelectedStylesAndSpacing"]
      307 JUMPIFNOT                        R21 ; [+2]
      308 MOVE                             R20 R16
      309 JUMP                             ; [+4]
      310 JUMPIF                           R5 ; [+2]
      311 MOVE                             R20 R16
      312 JUMP                             ; [+1]
      313 DUPTABLE                         R20 K47 [{["Selectable"] = False}]
      314 SETTABLEKS                       R20 R19 K37 ["selection"]
      316 GETUPVAL                         R21 5
      317 GETTABLEKS                       R21 R21 K45 ["FoundationInternalInputSelectedStylesAndSpacing"]
      319 JUMPIFNOT                        R21 ; [+5]
      320 JUMPIFNOT                        R5 ; [+2]
      321 MOVE                             R20 R10
      322 JUMP                             ; [+3]
      323 LOADNIL                          R20
      324 JUMP                             ; [+1]
      325 LOADNIL                          R20
      326 SETTABLEKS                       R20 R19 K38 ["cursor"]
      328 JUMPIFNOT                        R5 ; [+8]
      329 GETIMPORT                        R21 K13 [Enum.HorizontalAlignment.Left]
      331 JUMPIFNOTEQ                      R4 R21 ; [+3]
      333 LOADN                            R20 1
      334 JUMP                             ; [+3]
      335 LOADN                            R20 -1
      336 JUMP                             ; [+1]
      337 LOADNIL                          R20
      338 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      340 LOADK                            R21 K68 ["%*--container"]
      341 GETTABLEKS                       R23 R2 K55 ["testId"]
      343 NAMECALL                         R21 R21 K69 ["format"]
      345 CALL                             R21 2 1
      346 MOVE                             R20 R21
      347 SETTABLEKS                       R20 R19 K55 ["testId"]
      349 JUMPIF                           R5 ; [+30]
      350 GETUPVAL                         R20 2
      351 GETTABLEKS                       R20 R20 K70 ["createElement"]
      353 GETUPVAL                         R21 11
      354 GETUPVAL                         R22 12
      355 MOVE                             R23 R2
      356 GETUPVAL                         R25 5
      357 GETTABLEKS                       R25 R25 K71 ["FoundationMigrateCryoToDash"]
      359 JUMPIFNOT                        R25 ; [+7]
      360 GETUPVAL                         R24 13
      361 GETTABLEKS                       R24 R24 K72 ["union"]
      363 MOVE                             R25 R17
      364 MOVE                             R26 R19
      365 CALL                             R24 2 1
      366 JUMP                             ; [+8]
      367 GETUPVAL                         R24 14
      368 GETTABLEKS                       R24 R24 K73 ["Dictionary"]
      370 GETTABLEKS                       R24 R24 K72 ["union"]
      372 MOVE                             R25 R17
      373 MOVE                             R26 R19
      374 CALL                             R24 2 1
      375 CALL                             R22 2 1
      376 GETTABLEKS                       R23 R2 K74 ["children"]
      378 CALL                             R20 3 -1
      379 RETURN                           R20 -1
      380 DUPTABLE                         R20 K76 [{"tag", "padding"}]
      381 GETTABLEKS                       R21 R9 K77 ["container"]
      383 GETTABLEKS                       R21 R21 K51 ["tag"]
      385 SETTABLEKS                       R21 R20 K51 ["tag"]
      387 DUPTABLE                         R21 K82 [{"top", "bottom", "left", "right"}]
      388 GETTABLEKS                       R22 R9 K77 ["container"]
      390 GETTABLEKS                       R22 R22 K75 ["padding"]
      392 SETTABLEKS                       R22 R21 K78 ["top"]
      394 GETTABLEKS                       R22 R9 K77 ["container"]
      396 GETTABLEKS                       R22 R22 K75 ["padding"]
      398 SETTABLEKS                       R22 R21 K79 ["bottom"]
      400 GETIMPORT                        R23 K6 [Enum.HorizontalAlignment.Right]
      402 JUMPIFNOTEQ                      R4 R23 ; [+6]
      404 GETTABLEKS                       R22 R9 K77 ["container"]
      406 GETTABLEKS                       R22 R22 K75 ["padding"]
      408 JUMP                             ; [+1]
      409 LOADNIL                          R22
      410 SETTABLEKS                       R22 R21 K80 ["left"]
      412 GETIMPORT                        R23 K13 [Enum.HorizontalAlignment.Left]
      414 JUMPIFNOTEQ                      R4 R23 ; [+6]
      416 GETTABLEKS                       R22 R9 K77 ["container"]
      418 GETTABLEKS                       R22 R22 K75 ["padding"]
      420 JUMP                             ; [+1]
      421 LOADNIL                          R22
      422 SETTABLEKS                       R22 R21 K81 ["right"]
      424 SETTABLEKS                       R21 R20 K75 ["padding"]
      426 GETUPVAL                         R21 2
      427 GETTABLEKS                       R21 R21 K70 ["createElement"]
      429 GETUPVAL                         R22 11
      430 GETUPVAL                         R23 12
      431 MOVE                             R24 R2
      432 GETUPVAL                         R26 5
      433 GETTABLEKS                       R26 R26 K71 ["FoundationMigrateCryoToDash"]
      435 JUMPIFNOT                        R26 ; [+7]
      436 GETUPVAL                         R25 13
      437 GETTABLEKS                       R25 R25 K72 ["union"]
      439 MOVE                             R26 R20
      440 MOVE                             R27 R17
      441 CALL                             R25 2 1
      442 JUMP                             ; [+8]
      443 GETUPVAL                         R25 14
      444 GETTABLEKS                       R25 R25 K73 ["Dictionary"]
      446 GETTABLEKS                       R25 R25 K72 ["union"]
      448 MOVE                             R26 R20
      449 MOVE                             R27 R17
      450 CALL                             R25 2 1
      451 CALL                             R23 2 1
      452 DUPTABLE                         R24 K85 [{"Input", "InputLabel"}]
      453 GETUPVAL                         R25 2
      454 GETTABLEKS                       R25 R25 K70 ["createElement"]
      456 GETUPVAL                         R26 11
      457 MOVE                             R27 R19
      458 GETTABLEKS                       R28 R2 K74 ["children"]
      460 CALL                             R25 3 1
      461 SETTABLEKS                       R25 R24 K83 ["Input"]
      463 FASTCALL1                        TYPEOF R3 ; [+3]
      464 MOVE                             R27 R3
      465 GETIMPORT                        R26 K8 [typeof]
      467 CALL                             R26 1 1
      468 JUMPIFNOTEQKS                    R26 K9 ["string"] ; [+29]
      470 GETUPVAL                         R25 2
      471 GETTABLEKS                       R25 R25 K70 ["createElement"]
      473 GETUPVAL                         R26 15
      474 DUPTABLE                         R27 K88 [{"Text", "textStyle", "size", "testId"}]
      475 SETTABLEKS                       R3 R27 K86 ["Text"]
      477 GETTABLEKS                       R28 R12 K89 ["labelStyle"]
      479 SETTABLEKS                       R28 R27 K87 ["textStyle"]
      481 GETUPVAL                         R28 16
      482 GETTABLEKS                       R29 R2 K11 ["size"]
      484 CALL                             R28 1 1
      485 SETTABLEKS                       R28 R27 K11 ["size"]
      487 LOADK                            R29 K90 ["%*--label"]
      488 GETTABLEKS                       R31 R2 K55 ["testId"]
      490 NAMECALL                         R29 R29 K69 ["format"]
      492 CALL                             R29 2 1
      493 MOVE                             R28 R29
      494 SETTABLEKS                       R28 R27 K55 ["testId"]
      496 CALL                             R25 2 1
      497 JUMP                             ; [+1]
      498 MOVE                             R25 R3
      499 SETTABLEKS                       R25 R24 K84 ["InputLabel"]
      501 CALL                             R21 3 -1
      502 RETURN                           R21 -1

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
       25 GETTABLEKS                       R6 R1 K11 ["React"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R1 K12 ["Cryo"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R1 K13 ["Dash"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R0 K14 ["Components"]
       40 GETIMPORT                        R9 K6 [require]
       42 GETTABLEKS                       R10 R8 K15 ["InputLabel"]
       44 CALL                             R9 1 1
       45 GETIMPORT                        R10 K6 [require]
       47 GETTABLEKS                       R11 R8 K16 ["View"]
       49 CALL                             R10 1 1
       50 GETIMPORT                        R11 K6 [require]
       52 GETTABLEKS                       R12 R8 K17 ["Types"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K6 [require]
       57 GETTABLEKS                       R13 R0 K18 ["Enums"]
       59 GETTABLEKS                       R13 R13 K19 ["StateLayerAffordance"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K6 [require]
       64 GETIMPORT                        R14 K1 [script]
       66 GETTABLEKS                       R14 R14 K4 ["Parent"]
       68 GETTABLEKS                       R14 R14 K20 ["useInputVariants"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K6 [require]
       73 GETIMPORT                        R15 K1 [script]
       75 GETTABLEKS                       R15 R15 K4 ["Parent"]
       77 GETTABLEKS                       R15 R15 K21 ["useInputMotionStates"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K6 [require]
       82 GETTABLEKS                       R16 R0 K22 ["Providers"]
       84 GETTABLEKS                       R16 R16 K23 ["Style"]
       86 GETTABLEKS                       R16 R16 K24 ["useTokens"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K6 [require]
       91 GETTABLEKS                       R17 R0 K7 ["Utility"]
       93 GETTABLEKS                       R17 R17 K25 ["withCommonProps"]
       95 CALL                             R16 1 1
       96 GETIMPORT                        R17 K6 [require]
       98 GETTABLEKS                       R18 R0 K7 ["Utility"]
      100 GETTABLEKS                       R18 R18 K26 ["withDefaults"]
      102 CALL                             R17 1 1
      103 GETIMPORT                        R18 K6 [require]
      105 GETTABLEKS                       R19 R0 K7 ["Utility"]
      107 GETTABLEKS                       R19 R19 K27 ["getInputTextSize"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K6 [require]
      112 GETTABLEKS                       R20 R0 K28 ["Constants"]
      114 CALL                             R19 1 1
      115 GETIMPORT                        R20 K6 [require]
      117 GETTABLEKS                       R21 R0 K18 ["Enums"]
      119 GETTABLEKS                       R21 R21 K29 ["ControlState"]
      121 CALL                             R20 1 1
      122 GETIMPORT                        R21 K6 [require]
      124 GETTABLEKS                       R22 R0 K18 ["Enums"]
      126 GETTABLEKS                       R22 R22 K30 ["InputSize"]
      128 CALL                             R21 1 1
      129 GETIMPORT                        R22 K6 [require]
      131 GETTABLEKS                       R23 R0 K18 ["Enums"]
      133 GETTABLEKS                       R23 R23 K31 ["CursorType"]
      135 CALL                             R22 1 1
      136 GETIMPORT                        R23 K6 [require]
      138 GETTABLEKS                       R24 R0 K22 ["Providers"]
      140 GETTABLEKS                       R24 R24 K23 ["Style"]
      142 GETTABLEKS                       R24 R24 K32 ["Tokens"]
      144 CALL                             R23 1 1
      145 DUPTABLE                         R24 K39 [{["size"], ["Selectable"] = True, ["justifyContent"] = True, ["testId"] = "--foundation-internal-input"}]
      146 GETTABLEKS                       R25 R21 K40 ["Medium"]
      148 SETTABLEKS                       R25 R24 K33 ["size"]
      150 DUPCLOSURE                       R25 K41 [PROTO_6]
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R24
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R18
      168 GETTABLEKS                       R26 R5 K42 ["memo"]
      170 GETTABLEKS                       R27 R5 K43 ["forwardRef"]
      172 MOVE                             R28 R25
      173 CALL                             R27 1 -1
      174 CALL                             R26 -1 -1
      175 RETURN                           R26 -1
