PROTO_0:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K4 ["FoundationInternalInputSelectedStylesAndSpacing"]
        4 JUMPIFNOT                        R2 ; [+12]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K5 ["customVariantProps"]
        8 GETTABLEKS                       R1 R2 K6 ["cursorRadius"]
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
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R4 R5 K10 ["Radius"]
       25 GETTABLEKS                       R3 R4 K11 ["Small"]
       27 CALL                             R1 2 1
       28 JUMP                             ; [+11]
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R2 R3 K5 ["customVariantProps"]
       32 GETTABLEKS                       R1 R2 K6 ["cursorRadius"]
       34 JUMPIF                           R1 ; [+5]
       35 GETIMPORT                        R1 K9 [UDim.new]
       37 LOADN                            R2 0
       38 LOADN                            R3 0
       39 CALL                             R1 2 1
       40 SETTABLEKS                       R1 R0 K0 ["radius"]
       42 GETUPVAL                         R3 3
       43 GETTABLEKS                       R2 R3 K12 ["Size"]
       45 GETTABLEKS                       R1 R2 K13 ["Size_200"]
       47 SETTABLEKS                       R1 R0 K1 ["offset"]
       49 GETUPVAL                         R3 3
       50 GETTABLEKS                       R2 R3 K14 ["Stroke"]
       52 GETTABLEKS                       R1 R2 K15 ["Thicker"]
       54 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       56 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isChecked"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["Checked"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 3
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R1 R2 K2 ["Hover"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 1
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R1 R2 K3 ["Default"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

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
       40 GETUPVAL                         R9 4
       41 MOVE                             R10 R8
       42 GETTABLEKS                       R11 R2 K11 ["size"]
       44 LOADB                            R12 0
       45 GETIMPORT                        R13 K13 [Enum.HorizontalAlignment.Left]
       47 JUMPIFNOTEQ                      R4 R13 ; [+3]
       49 GETTABLEKS                       R12 R2 K14 ["justifyContent"]
       51 CALL                             R9 3 1
       52 GETUPVAL                         R11 2
       53 GETTABLEKS                       R10 R11 K15 ["useMemo"]
       55 NEWCLOSURE                       R11 P0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R8
       60 NEWTABLE                         R12 0 3
       62 MOVE                             R13 R8
       63 MOVE                             R14 R5
       64 GETTABLEKS                       R16 R2 K16 ["customVariantProps"]
       66 GETTABLEKS                       R15 R16 K17 ["cursorRadius"]
       68 SETLIST                          R12 R13 3 [1]
       70 CALL                             R10 2 1
       71 GETUPVAL                         R11 6
       72 MOVE                             R12 R8
       73 GETUPVAL                         R15 5
       74 GETTABLEKS                       R14 R15 K18 ["FoundationToggleVisualUpdate"]
       76 JUMPIFNOT                        R14 ; [+5]
       77 GETTABLEKS                       R14 R2 K16 ["customVariantProps"]
       79 GETTABLEKS                       R13 R14 K19 ["colors"]
       81 JUMP                             ; [+4]
       82 GETTABLEKS                       R14 R2 K16 ["customVariantProps"]
       84 GETTABLEKS                       R13 R14 K20 ["checkedStyle"]
       86 CALL                             R11 2 1
       87 GETUPVAL                         R12 7
       88 GETTABLEKS                       R13 R11 K21 ["Default"]
       90 CALL                             R12 1 2
       91 GETUPVAL                         R15 2
       92 GETTABLEKS                       R14 R15 K22 ["useEffect"]
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
      108 GETUPVAL                         R15 2
      109 GETTABLEKS                       R14 R15 K24 ["useCallback"]
      111 NEWCLOSURE                       R15 P2
      112 CAPTURE                          VAL R7
      113 CAPTURE                          UPVAL U8
      114 NEWTABLE                         R16 0 0
      116 CALL                             R14 2 1
      117 GETUPVAL                         R16 2
      118 GETTABLEKS                       R15 R16 K24 ["useCallback"]
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
      168 GETUPVAL                         R19 9
      169 GETTABLEKS                       R18 R19 K41 ["DISABLED_TRANSPARENCY"]
      171 JUMP                             ; [+1]
      172 LOADN                            R18 0
      173 SETTABLEKS                       R18 R17 K34 ["GroupTransparency"]
      175 SETTABLEKS                       R15 R17 K26 ["onActivated"]
      177 SETTABLEKS                       R14 R17 K35 ["onStateChanged"]
      179 DUPTABLE                         R18 K43 [{"affordance"}]
      180 GETUPVAL                         R20 10
      181 GETTABLEKS                       R19 R20 K44 ["None"]
      183 SETTABLEKS                       R19 R18 K42 ["affordance"]
      185 SETTABLEKS                       R18 R17 K36 ["stateLayer"]
      187 GETUPVAL                         R20 5
      188 GETTABLEKS                       R19 R20 K45 ["FoundationInternalInputSelectedStylesAndSpacing"]
      190 JUMPIFNOT                        R19 ; [+8]
      191 JUMPIFNOT                        R5 ; [+5]
      192 DUPTABLE                         R18 K46 [{"Selectable"}]
      193 LOADB                            R19 0
      194 SETTABLEKS                       R19 R18 K27 ["Selectable"]
      196 JUMP                             ; [+3]
      197 MOVE                             R18 R16
      198 JUMP                             ; [+1]
      199 MOVE                             R18 R16
      200 SETTABLEKS                       R18 R17 K37 ["selection"]
      202 GETUPVAL                         R20 5
      203 GETTABLEKS                       R19 R20 K45 ["FoundationInternalInputSelectedStylesAndSpacing"]
      205 JUMPIFNOT                        R19 ; [+5]
      206 JUMPIFNOT                        R5 ; [+2]
      207 LOADNIL                          R18
      208 JUMP                             ; [+3]
      209 MOVE                             R18 R10
      210 JUMP                             ; [+1]
      211 MOVE                             R18 R10
      212 SETTABLEKS                       R18 R17 K38 ["cursor"]
      214 GETTABLEKS                       R18 R2 K25 ["isDisabled"]
      216 SETTABLEKS                       R18 R17 K25 ["isDisabled"]
      218 SETTABLEKS                       R1 R17 K39 ["ref"]
      220 GETUPVAL                         R20 5
      221 GETTABLEKS                       R19 R20 K18 ["FoundationToggleVisualUpdate"]
      223 JUMPIFNOT                        R19 ; [+20]
      224 GETTABLEKS                       R20 R2 K16 ["customVariantProps"]
      226 GETTABLEKS                       R19 R20 K47 ["stroke"]
      228 JUMPIFNOT                        R19 ; [+15]
      229 GETTABLEKS                       R21 R2 K16 ["customVariantProps"]
      231 GETTABLEKS                       R20 R21 K47 ["stroke"]
      233 GETTABLEKS                       R19 R20 K48 ["thickness"]
      235 JUMPIFEQKNIL                     R19 ; [+8]
      237 GETTABLEKS                       R20 R2 K16 ["customVariantProps"]
      239 GETTABLEKS                       R19 R20 K47 ["stroke"]
      241 GETTABLEKS                       R18 R19 K48 ["thickness"]
      243 JUMP                             ; [+6]
      244 GETTABLEKS                       R20 R9 K49 ["input"]
      246 GETTABLEKS                       R19 R20 K47 ["stroke"]
      248 GETTABLEKS                       R18 R19 K48 ["thickness"]
      250 DUPTABLE                         R19 K55 [{"tag", "Size", "backgroundStyle", "onActivated", "stateLayer", "stroke", "selection", "cursor", "LayoutOrder", "testId"}]
      251 GETTABLEKS                       R21 R2 K16 ["customVariantProps"]
      253 GETTABLEKS                       R20 R21 K50 ["tag"]
      255 SETTABLEKS                       R20 R19 K50 ["tag"]
      257 GETTABLEKS                       R22 R2 K16 ["customVariantProps"]
      259 GETTABLEKS                       R21 R22 K11 ["size"]
      261 GETIMPORT                        R22 K58 [UDim2.fromOffset]
      263 MOVE                             R23 R18
      264 MOVE                             R24 R18
      265 CALL                             R22 2 1
      266 SUB                              R20 R21 R22
      267 SETTABLEKS                       R20 R19 K51 ["Size"]
      269 GETTABLEKS                       R20 R12 K52 ["backgroundStyle"]
      271 SETTABLEKS                       R20 R19 K52 ["backgroundStyle"]
      273 SETTABLEKS                       R15 R19 K26 ["onActivated"]
      275 DUPTABLE                         R20 K43 [{"affordance"}]
      276 GETUPVAL                         R22 10
      277 GETTABLEKS                       R21 R22 K59 ["Background"]
      279 SETTABLEKS                       R21 R20 K42 ["affordance"]
      281 SETTABLEKS                       R20 R19 K36 ["stateLayer"]
      283 DUPTABLE                         R20 K63 [{"Color", "Transparency", "Thickness"}]
      284 GETTABLEKS                       R21 R12 K64 ["strokeStyle"]
      286 DUPCLOSURE                       R23 K65 [PROTO_4]
      287 NAMECALL                         R21 R21 K66 ["map"]
      289 CALL                             R21 2 1
      290 SETTABLEKS                       R21 R20 K60 ["Color"]
      292 GETTABLEKS                       R21 R12 K64 ["strokeStyle"]
      294 NEWCLOSURE                       R23 P5
      295 CAPTURE                          VAL R2
      296 CAPTURE                          VAL R5
      297 CAPTURE                          UPVAL U9
      298 NAMECALL                         R21 R21 K66 ["map"]
      300 CALL                             R21 2 1
      301 SETTABLEKS                       R21 R20 K61 ["Transparency"]
      303 SETTABLEKS                       R18 R20 K62 ["Thickness"]
      305 SETTABLEKS                       R20 R19 K47 ["stroke"]
      307 GETUPVAL                         R22 5
      308 GETTABLEKS                       R21 R22 K45 ["FoundationInternalInputSelectedStylesAndSpacing"]
      310 JUMPIFNOT                        R21 ; [+2]
      311 MOVE                             R20 R16
      312 JUMP                             ; [+7]
      313 JUMPIF                           R5 ; [+2]
      314 MOVE                             R20 R16
      315 JUMP                             ; [+4]
      316 DUPTABLE                         R20 K46 [{"Selectable"}]
      317 LOADB                            R21 0
      318 SETTABLEKS                       R21 R20 K27 ["Selectable"]
      320 SETTABLEKS                       R20 R19 K37 ["selection"]
      322 GETUPVAL                         R22 5
      323 GETTABLEKS                       R21 R22 K45 ["FoundationInternalInputSelectedStylesAndSpacing"]
      325 JUMPIFNOT                        R21 ; [+5]
      326 JUMPIFNOT                        R5 ; [+2]
      327 MOVE                             R20 R10
      328 JUMP                             ; [+3]
      329 LOADNIL                          R20
      330 JUMP                             ; [+1]
      331 LOADNIL                          R20
      332 SETTABLEKS                       R20 R19 K38 ["cursor"]
      334 JUMPIFNOT                        R5 ; [+8]
      335 GETIMPORT                        R21 K13 [Enum.HorizontalAlignment.Left]
      337 JUMPIFNOTEQ                      R4 R21 ; [+3]
      339 LOADN                            R20 1
      340 JUMP                             ; [+3]
      341 LOADN                            R20 255
      342 JUMP                             ; [+1]
      343 LOADNIL                          R20
      344 SETTABLEKS                       R20 R19 K53 ["LayoutOrder"]
      346 LOADK                            R21 K67 ["%*--container"]
      347 GETTABLEKS                       R23 R2 K54 ["testId"]
      349 NAMECALL                         R21 R21 K68 ["format"]
      351 CALL                             R21 2 1
      352 MOVE                             R20 R21
      353 SETTABLEKS                       R20 R19 K54 ["testId"]
      355 JUMPIF                           R5 ; [+30]
      356 GETUPVAL                         R21 2
      357 GETTABLEKS                       R20 R21 K69 ["createElement"]
      359 GETUPVAL                         R21 11
      360 GETUPVAL                         R22 12
      361 MOVE                             R23 R2
      362 GETUPVAL                         R26 5
      363 GETTABLEKS                       R25 R26 K70 ["FoundationMigrateCryoToDash"]
      365 JUMPIFNOT                        R25 ; [+7]
      366 GETUPVAL                         R25 13
      367 GETTABLEKS                       R24 R25 K71 ["union"]
      369 MOVE                             R25 R17
      370 MOVE                             R26 R19
      371 CALL                             R24 2 1
      372 JUMP                             ; [+8]
      373 GETUPVAL                         R26 14
      374 GETTABLEKS                       R25 R26 K72 ["Dictionary"]
      376 GETTABLEKS                       R24 R25 K71 ["union"]
      378 MOVE                             R25 R17
      379 MOVE                             R26 R19
      380 CALL                             R24 2 1
      381 CALL                             R22 2 1
      382 GETTABLEKS                       R23 R2 K73 ["children"]
      384 CALL                             R20 3 -1
      385 RETURN                           R20 -1
      386 DUPTABLE                         R20 K75 [{"tag", "padding"}]
      387 GETTABLEKS                       R22 R9 K76 ["container"]
      389 GETTABLEKS                       R21 R22 K50 ["tag"]
      391 SETTABLEKS                       R21 R20 K50 ["tag"]
      393 DUPTABLE                         R21 K81 [{"top", "bottom", "left", "right"}]
      394 GETTABLEKS                       R23 R9 K76 ["container"]
      396 GETTABLEKS                       R22 R23 K74 ["padding"]
      398 SETTABLEKS                       R22 R21 K77 ["top"]
      400 GETTABLEKS                       R23 R9 K76 ["container"]
      402 GETTABLEKS                       R22 R23 K74 ["padding"]
      404 SETTABLEKS                       R22 R21 K78 ["bottom"]
      406 GETIMPORT                        R23 K6 [Enum.HorizontalAlignment.Right]
      408 JUMPIFNOTEQ                      R4 R23 ; [+6]
      410 GETTABLEKS                       R23 R9 K76 ["container"]
      412 GETTABLEKS                       R22 R23 K74 ["padding"]
      414 JUMP                             ; [+1]
      415 LOADNIL                          R22
      416 SETTABLEKS                       R22 R21 K79 ["left"]
      418 GETIMPORT                        R23 K13 [Enum.HorizontalAlignment.Left]
      420 JUMPIFNOTEQ                      R4 R23 ; [+6]
      422 GETTABLEKS                       R23 R9 K76 ["container"]
      424 GETTABLEKS                       R22 R23 K74 ["padding"]
      426 JUMP                             ; [+1]
      427 LOADNIL                          R22
      428 SETTABLEKS                       R22 R21 K80 ["right"]
      430 SETTABLEKS                       R21 R20 K74 ["padding"]
      432 GETUPVAL                         R22 2
      433 GETTABLEKS                       R21 R22 K69 ["createElement"]
      435 GETUPVAL                         R22 11
      436 GETUPVAL                         R23 12
      437 MOVE                             R24 R2
      438 GETUPVAL                         R27 5
      439 GETTABLEKS                       R26 R27 K70 ["FoundationMigrateCryoToDash"]
      441 JUMPIFNOT                        R26 ; [+7]
      442 GETUPVAL                         R26 13
      443 GETTABLEKS                       R25 R26 K71 ["union"]
      445 MOVE                             R26 R20
      446 MOVE                             R27 R17
      447 CALL                             R25 2 1
      448 JUMP                             ; [+8]
      449 GETUPVAL                         R27 14
      450 GETTABLEKS                       R26 R27 K72 ["Dictionary"]
      452 GETTABLEKS                       R25 R26 K71 ["union"]
      454 MOVE                             R26 R20
      455 MOVE                             R27 R17
      456 CALL                             R25 2 1
      457 CALL                             R23 2 1
      458 DUPTABLE                         R24 K84 [{"Input", "InputLabel"}]
      459 GETUPVAL                         R26 2
      460 GETTABLEKS                       R25 R26 K69 ["createElement"]
      462 GETUPVAL                         R26 11
      463 MOVE                             R27 R19
      464 GETTABLEKS                       R28 R2 K73 ["children"]
      466 CALL                             R25 3 1
      467 SETTABLEKS                       R25 R24 K82 ["Input"]
      469 FASTCALL1                        TYPEOF R3 ; [+3]
      470 MOVE                             R27 R3
      471 GETIMPORT                        R26 K8 [typeof]
      473 CALL                             R26 1 1
      474 JUMPIFNOTEQKS                    R26 K9 ["string"] ; [+29]
      476 GETUPVAL                         R26 2
      477 GETTABLEKS                       R25 R26 K69 ["createElement"]
      479 GETUPVAL                         R26 15
      480 DUPTABLE                         R27 K87 [{"Text", "textStyle", "size", "testId"}]
      481 SETTABLEKS                       R3 R27 K85 ["Text"]
      483 GETTABLEKS                       R28 R12 K88 ["labelStyle"]
      485 SETTABLEKS                       R28 R27 K86 ["textStyle"]
      487 GETUPVAL                         R28 16
      488 GETTABLEKS                       R29 R2 K11 ["size"]
      490 CALL                             R28 1 1
      491 SETTABLEKS                       R28 R27 K11 ["size"]
      493 LOADK                            R29 K89 ["%*--label"]
      494 GETTABLEKS                       R31 R2 K54 ["testId"]
      496 NAMECALL                         R29 R29 K68 ["format"]
      498 CALL                             R29 2 1
      499 MOVE                             R28 R29
      500 SETTABLEKS                       R28 R27 K54 ["testId"]
      502 CALL                             R25 2 1
      503 JUMP                             ; [+1]
      504 MOVE                             R25 R3
      505 SETTABLEKS                       R25 R24 K83 ["InputLabel"]
      507 CALL                             R21 3 -1
      508 RETURN                           R21 -1

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
       57 GETTABLEKS                       R14 R0 K18 ["Enums"]
       59 GETTABLEKS                       R13 R14 K19 ["StateLayerAffordance"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K6 [require]
       64 GETIMPORT                        R16 K1 [script]
       66 GETTABLEKS                       R15 R16 K4 ["Parent"]
       68 GETTABLEKS                       R14 R15 K20 ["useInputVariants"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K6 [require]
       73 GETIMPORT                        R17 K1 [script]
       75 GETTABLEKS                       R16 R17 K4 ["Parent"]
       77 GETTABLEKS                       R15 R16 K21 ["useInputMotionStates"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K6 [require]
       82 GETTABLEKS                       R18 R0 K22 ["Providers"]
       84 GETTABLEKS                       R17 R18 K23 ["Style"]
       86 GETTABLEKS                       R16 R17 K24 ["useTokens"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K6 [require]
       91 GETTABLEKS                       R18 R0 K7 ["Utility"]
       93 GETTABLEKS                       R17 R18 K25 ["withCommonProps"]
       95 CALL                             R16 1 1
       96 GETIMPORT                        R17 K6 [require]
       98 GETTABLEKS                       R19 R0 K7 ["Utility"]
      100 GETTABLEKS                       R18 R19 K26 ["withDefaults"]
      102 CALL                             R17 1 1
      103 GETIMPORT                        R18 K6 [require]
      105 GETTABLEKS                       R20 R0 K7 ["Utility"]
      107 GETTABLEKS                       R19 R20 K27 ["getInputTextSize"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K6 [require]
      112 GETTABLEKS                       R20 R0 K28 ["Constants"]
      114 CALL                             R19 1 1
      115 GETIMPORT                        R20 K6 [require]
      117 GETTABLEKS                       R22 R0 K18 ["Enums"]
      119 GETTABLEKS                       R21 R22 K29 ["ControlState"]
      121 CALL                             R20 1 1
      122 GETIMPORT                        R21 K6 [require]
      124 GETTABLEKS                       R23 R0 K18 ["Enums"]
      126 GETTABLEKS                       R22 R23 K30 ["InputSize"]
      128 CALL                             R21 1 1
      129 GETIMPORT                        R22 K6 [require]
      131 GETTABLEKS                       R24 R0 K18 ["Enums"]
      133 GETTABLEKS                       R23 R24 K31 ["CursorType"]
      135 CALL                             R22 1 1
      136 GETIMPORT                        R23 K6 [require]
      138 GETTABLEKS                       R26 R0 K22 ["Providers"]
      140 GETTABLEKS                       R25 R26 K23 ["Style"]
      142 GETTABLEKS                       R24 R25 K32 ["Tokens"]
      144 CALL                             R23 1 1
      145 DUPTABLE                         R24 K37 [{"size", "Selectable", "justifyContent", "testId"}]
      146 GETTABLEKS                       R25 R21 K38 ["Medium"]
      148 SETTABLEKS                       R25 R24 K33 ["size"]
      150 LOADB                            R25 1
      151 SETTABLEKS                       R25 R24 K34 ["Selectable"]
      153 LOADB                            R25 1
      154 SETTABLEKS                       R25 R24 K35 ["justifyContent"]
      156 LOADK                            R25 K39 ["--foundation-internal-input"]
      157 SETTABLEKS                       R25 R24 K36 ["testId"]
      159 DUPCLOSURE                       R25 K40 [PROTO_6]
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R24
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R6
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R18
      177 GETTABLEKS                       R26 R5 K41 ["memo"]
      179 GETTABLEKS                       R27 R5 K42 ["forwardRef"]
      181 MOVE                             R28 R25
      182 CALL                             R27 1 -1
      183 CALL                             R26 -1 -1
      184 RETURN                           R26 -1
