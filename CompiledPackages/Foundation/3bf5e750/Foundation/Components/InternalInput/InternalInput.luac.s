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
        1 GETTABLEKS                       R0 R0 K0 ["FoundationCheckboxIndeterminate"]
        3 JUMPIFNOT                        R0 ; [+22]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K1 ["Checked"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 4
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 2
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K2 ["Hover"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 2
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K3 ["Default"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 5
       27 GETTABLEKS                       R0 R0 K4 ["isChecked"]
       29 JUMPIFNOT                        R0 ; [+6]
       30 GETUPVAL                         R0 2
       31 GETUPVAL                         R1 3
       32 GETTABLEKS                       R1 R1 K1 ["Checked"]
       34 CALL                             R0 1 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R0 4
       37 JUMPIFNOT                        R0 ; [+6]
       38 GETUPVAL                         R0 2
       39 GETUPVAL                         R1 3
       40 GETTABLEKS                       R1 R1 K2 ["Hover"]
       42 CALL                             R0 1 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R0 2
       45 GETUPVAL                         R1 3
       46 GETTABLEKS                       R1 R1 K3 ["Default"]
       48 CALL                             R0 1 0
       49 RETURN                           R0 0

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
      108 GETUPVAL                         R15 2
      109 GETTABLEKS                       R15 R15 K22 ["useCallback"]
      111 NEWCLOSURE                       R16 P2
      112 CAPTURE                          VAL R7
      113 CAPTURE                          UPVAL U8
      114 NEWTABLE                         R17 0 0
      116 CALL                             R15 2 1
      117 GETUPVAL                         R16 2
      118 GETTABLEKS                       R16 R16 K22 ["useCallback"]
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
      168 GETUPVAL                         R19 9
      169 GETTABLEKS                       R19 R19 K39 ["DISABLED_TRANSPARENCY"]
      171 JUMP                             ; [+1]
      172 LOADN                            R19 0
      173 SETTABLEKS                       R19 R18 K32 ["GroupTransparency"]
      175 SETTABLEKS                       R16 R18 K24 ["onActivated"]
      177 SETTABLEKS                       R15 R18 K33 ["onStateChanged"]
      179 DUPTABLE                         R19 K41 [{"affordance"}]
      180 GETUPVAL                         R20 10
      181 GETTABLEKS                       R20 R20 K42 ["None"]
      183 SETTABLEKS                       R20 R19 K40 ["affordance"]
      185 SETTABLEKS                       R19 R18 K34 ["stateLayer"]
      187 JUMPIFNOT                        R5 ; [+2]
      188 DUPTABLE                         R19 K44 [{["Selectable"] = False}]
      189 JUMP                             ; [+1]
      190 MOVE                             R19 R17
      191 SETTABLEKS                       R19 R18 K35 ["selection"]
      193 JUMPIFNOT                        R5 ; [+2]
      194 LOADNIL                          R19
      195 JUMP                             ; [+1]
      196 MOVE                             R19 R11
      197 SETTABLEKS                       R19 R18 K36 ["cursor"]
      199 GETTABLEKS                       R19 R2 K23 ["isDisabled"]
      201 SETTABLEKS                       R19 R18 K23 ["isDisabled"]
      203 SETTABLEKS                       R1 R18 K37 ["ref"]
      205 GETUPVAL                         R20 6
      206 GETTABLEKS                       R20 R20 K17 ["FoundationToggleVisualUpdate"]
      208 JUMPIFNOT                        R20 ; [+20]
      209 GETTABLEKS                       R20 R2 K15 ["customVariantProps"]
      211 GETTABLEKS                       R20 R20 K45 ["stroke"]
      213 JUMPIFNOT                        R20 ; [+15]
      214 GETTABLEKS                       R20 R2 K15 ["customVariantProps"]
      216 GETTABLEKS                       R20 R20 K45 ["stroke"]
      218 GETTABLEKS                       R20 R20 K46 ["thickness"]
      220 JUMPIFEQKNIL                     R20 ; [+8]
      222 GETTABLEKS                       R19 R2 K15 ["customVariantProps"]
      224 GETTABLEKS                       R19 R19 K45 ["stroke"]
      226 GETTABLEKS                       R19 R19 K46 ["thickness"]
      228 JUMP                             ; [+6]
      229 GETTABLEKS                       R19 R10 K47 ["input"]
      231 GETTABLEKS                       R19 R19 K45 ["stroke"]
      233 GETTABLEKS                       R19 R19 K46 ["thickness"]
      235 DUPTABLE                         R20 K53 [{"tag", "Size", "backgroundStyle", "onActivated", "stateLayer", "stroke", "selection", "cursor", "LayoutOrder", "testId"}]
      236 GETTABLEKS                       R21 R2 K15 ["customVariantProps"]
      238 GETTABLEKS                       R21 R21 K48 ["tag"]
      240 SETTABLEKS                       R21 R20 K48 ["tag"]
      242 GETTABLEKS                       R22 R2 K15 ["customVariantProps"]
      244 GETTABLEKS                       R22 R22 K13 ["size"]
      246 GETIMPORT                        R23 K56 [UDim2.fromOffset]
      248 MOVE                             R24 R19
      249 MOVE                             R25 R19
      250 CALL                             R23 2 1
      251 SUB                              R21 R22 R23
      252 SETTABLEKS                       R21 R20 K49 ["Size"]
      254 GETTABLEKS                       R21 R13 K50 ["backgroundStyle"]
      256 SETTABLEKS                       R21 R20 K50 ["backgroundStyle"]
      258 SETTABLEKS                       R16 R20 K24 ["onActivated"]
      260 DUPTABLE                         R21 K41 [{"affordance"}]
      261 GETUPVAL                         R22 10
      262 GETTABLEKS                       R22 R22 K57 ["Background"]
      264 SETTABLEKS                       R22 R21 K40 ["affordance"]
      266 SETTABLEKS                       R21 R20 K34 ["stateLayer"]
      268 DUPTABLE                         R21 K62 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      269 GETTABLEKS                       R22 R13 K63 ["strokeStyle"]
      271 DUPCLOSURE                       R24 K64 [PROTO_4]
      272 NAMECALL                         R22 R22 K65 ["map"]
      274 CALL                             R22 2 1
      275 SETTABLEKS                       R22 R21 K58 ["Color"]
      277 GETTABLEKS                       R22 R13 K63 ["strokeStyle"]
      279 NEWCLOSURE                       R24 P5
      280 CAPTURE                          VAL R2
      281 CAPTURE                          VAL R5
      282 CAPTURE                          UPVAL U9
      283 NAMECALL                         R22 R22 K65 ["map"]
      285 CALL                             R22 2 1
      286 SETTABLEKS                       R22 R21 K59 ["Transparency"]
      288 SETTABLEKS                       R19 R21 K60 ["Thickness"]
      290 GETUPVAL                         R23 6
      291 GETTABLEKS                       R23 R23 K66 ["FoundationUIStrokeInner"]
      293 JUMPIFNOT                        R23 ; [+3]
      294 GETIMPORT                        R22 K68 [Enum.BorderStrokePosition.Inner]
      296 JUMP                             ; [+1]
      297 LOADNIL                          R22
      298 SETTABLEKS                       R22 R21 K61 ["BorderStrokePosition"]
      300 SETTABLEKS                       R21 R20 K45 ["stroke"]
      302 SETTABLEKS                       R17 R20 K35 ["selection"]
      304 JUMPIFNOT                        R5 ; [+2]
      305 MOVE                             R21 R11
      306 JUMP                             ; [+1]
      307 LOADNIL                          R21
      308 SETTABLEKS                       R21 R20 K36 ["cursor"]
      310 JUMPIFNOT                        R5 ; [+8]
      311 GETIMPORT                        R22 K70 [Enum.HorizontalAlignment.Left]
      313 JUMPIFNOTEQ                      R4 R22 ; [+3]
      315 LOADN                            R21 1
      316 JUMP                             ; [+3]
      317 LOADN                            R21 -1
      318 JUMP                             ; [+1]
      319 LOADNIL                          R21
      320 SETTABLEKS                       R21 R20 K51 ["LayoutOrder"]
      322 LOADK                            R22 K71 ["%*--container"]
      323 GETTABLEKS                       R24 R2 K52 ["testId"]
      325 NAMECALL                         R22 R22 K72 ["format"]
      327 CALL                             R22 2 1
      328 MOVE                             R21 R22
      329 SETTABLEKS                       R21 R20 K52 ["testId"]
      331 JUMPIF                           R5 ; [+17]
      332 GETUPVAL                         R21 2
      333 GETTABLEKS                       R21 R21 K73 ["createElement"]
      335 GETUPVAL                         R22 11
      336 GETUPVAL                         R23 12
      337 MOVE                             R24 R2
      338 GETUPVAL                         R25 13
      339 GETTABLEKS                       R25 R25 K74 ["union"]
      341 MOVE                             R26 R18
      342 MOVE                             R27 R20
      343 CALL                             R25 2 -1
      344 CALL                             R23 -1 1
      345 GETTABLEKS                       R24 R2 K75 ["children"]
      347 CALL                             R21 3 -1
      348 RETURN                           R21 -1
      349 DUPTABLE                         R21 K77 [{"tag", "padding"}]
      350 GETTABLEKS                       R22 R10 K78 ["container"]
      352 GETTABLEKS                       R22 R22 K48 ["tag"]
      354 SETTABLEKS                       R22 R21 K48 ["tag"]
      356 DUPTABLE                         R22 K83 [{"top", "bottom", "left", "right"}]
      357 GETTABLEKS                       R23 R10 K78 ["container"]
      359 GETTABLEKS                       R23 R23 K76 ["padding"]
      361 SETTABLEKS                       R23 R22 K79 ["top"]
      363 GETTABLEKS                       R23 R10 K78 ["container"]
      365 GETTABLEKS                       R23 R23 K76 ["padding"]
      367 SETTABLEKS                       R23 R22 K80 ["bottom"]
      369 GETIMPORT                        R24 K6 [Enum.HorizontalAlignment.Right]
      371 JUMPIFNOTEQ                      R4 R24 ; [+6]
      373 GETTABLEKS                       R23 R10 K78 ["container"]
      375 GETTABLEKS                       R23 R23 K76 ["padding"]
      377 JUMP                             ; [+1]
      378 LOADNIL                          R23
      379 SETTABLEKS                       R23 R22 K81 ["left"]
      381 GETIMPORT                        R24 K70 [Enum.HorizontalAlignment.Left]
      383 JUMPIFNOTEQ                      R4 R24 ; [+6]
      385 GETTABLEKS                       R23 R10 K78 ["container"]
      387 GETTABLEKS                       R23 R23 K76 ["padding"]
      389 JUMP                             ; [+1]
      390 LOADNIL                          R23
      391 SETTABLEKS                       R23 R22 K82 ["right"]
      393 SETTABLEKS                       R22 R21 K76 ["padding"]
      395 GETUPVAL                         R22 2
      396 GETTABLEKS                       R22 R22 K73 ["createElement"]
      398 GETUPVAL                         R23 11
      399 GETUPVAL                         R24 12
      400 MOVE                             R25 R2
      401 GETUPVAL                         R26 13
      402 GETTABLEKS                       R26 R26 K74 ["union"]
      404 MOVE                             R27 R21
      405 MOVE                             R28 R18
      406 CALL                             R26 2 -1
      407 CALL                             R24 -1 1
      408 DUPTABLE                         R25 K86 [{"Input", "InputLabel"}]
      409 GETUPVAL                         R26 2
      410 GETTABLEKS                       R26 R26 K73 ["createElement"]
      412 GETUPVAL                         R27 11
      413 MOVE                             R28 R20
      414 GETTABLEKS                       R29 R2 K75 ["children"]
      416 CALL                             R26 3 1
      417 SETTABLEKS                       R26 R25 K84 ["Input"]
      419 FASTCALL1                        TYPEOF R3 ; [+3]
      420 MOVE                             R28 R3
      421 GETIMPORT                        R27 K8 [typeof]
      423 CALL                             R27 1 1
      424 JUMPIFNOTEQKS                    R27 K9 ["string"] ; [+29]
      426 GETUPVAL                         R26 2
      427 GETTABLEKS                       R26 R26 K73 ["createElement"]
      429 GETUPVAL                         R27 14
      430 DUPTABLE                         R28 K89 [{"Text", "textStyle", "size", "testId"}]
      431 SETTABLEKS                       R3 R28 K87 ["Text"]
      433 GETTABLEKS                       R29 R13 K90 ["labelStyle"]
      435 SETTABLEKS                       R29 R28 K88 ["textStyle"]
      437 GETUPVAL                         R29 15
      438 GETTABLEKS                       R30 R2 K13 ["size"]
      440 CALL                             R29 1 1
      441 SETTABLEKS                       R29 R28 K13 ["size"]
      443 LOADK                            R30 K91 ["%*--label"]
      444 GETTABLEKS                       R32 R2 K52 ["testId"]
      446 NAMECALL                         R30 R30 K72 ["format"]
      448 CALL                             R30 2 1
      449 MOVE                             R29 R30
      450 SETTABLEKS                       R29 R28 K52 ["testId"]
      452 CALL                             R26 2 1
      453 JUMP                             ; [+1]
      454 MOVE                             R26 R3
      455 SETTABLEKS                       R26 R25 K85 ["InputLabel"]
      457 CALL                             R22 3 -1
      458 RETURN                           R22 -1

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
