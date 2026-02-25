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
       44 CALL                             R9 2 1
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R10 R11 K12 ["useMemo"]
       48 NEWCLOSURE                       R11 P0
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R8
       53 NEWTABLE                         R12 0 3
       55 MOVE                             R13 R8
       56 MOVE                             R14 R5
       57 GETTABLEKS                       R16 R2 K13 ["customVariantProps"]
       59 GETTABLEKS                       R15 R16 K14 ["cursorRadius"]
       61 SETLIST                          R12 R13 3 [1]
       63 CALL                             R10 2 1
       64 GETUPVAL                         R11 6
       65 MOVE                             R12 R8
       66 GETTABLEKS                       R14 R2 K13 ["customVariantProps"]
       68 GETTABLEKS                       R13 R14 K15 ["checkedStyle"]
       70 CALL                             R11 2 1
       71 GETUPVAL                         R12 7
       72 GETTABLEKS                       R13 R11 K16 ["Default"]
       74 CALL                             R12 1 2
       75 GETUPVAL                         R15 2
       76 GETTABLEKS                       R14 R15 K17 ["useEffect"]
       78 NEWCLOSURE                       R15 P1
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R6
       83 NEWTABLE                         R16 0 3
       85 GETTABLEKS                       R17 R2 K18 ["isChecked"]
       87 MOVE                             R18 R6
       88 MOVE                             R19 R8
       89 SETLIST                          R16 R17 3 [1]
       91 CALL                             R14 2 0
       92 GETUPVAL                         R15 2
       93 GETTABLEKS                       R14 R15 K19 ["useCallback"]
       95 NEWCLOSURE                       R15 P2
       96 CAPTURE                          VAL R7
       97 CAPTURE                          UPVAL U8
       98 NEWTABLE                         R16 0 0
      100 CALL                             R14 2 1
      101 GETUPVAL                         R16 2
      102 GETTABLEKS                       R15 R16 K19 ["useCallback"]
      104 NEWCLOSURE                       R16 P3
      105 CAPTURE                          VAL R2
      106 NEWTABLE                         R17 0 3
      108 GETTABLEKS                       R18 R2 K20 ["isDisabled"]
      110 GETTABLEKS                       R19 R2 K18 ["isChecked"]
      112 GETTABLEKS                       R20 R2 K21 ["onActivated"]
      114 SETLIST                          R17 R18 3 [1]
      116 CALL                             R15 2 1
      117 DUPTABLE                         R16 K27 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      118 GETTABLEKS                       R18 R2 K20 ["isDisabled"]
      120 JUMPIFNOT                        R18 ; [+2]
      121 LOADB                            R17 0
      122 JUMP                             ; [+2]
      123 GETTABLEKS                       R17 R2 K22 ["Selectable"]
      125 SETTABLEKS                       R17 R16 K22 ["Selectable"]
      127 GETTABLEKS                       R17 R2 K23 ["NextSelectionUp"]
      129 SETTABLEKS                       R17 R16 K23 ["NextSelectionUp"]
      131 GETTABLEKS                       R17 R2 K24 ["NextSelectionDown"]
      133 SETTABLEKS                       R17 R16 K24 ["NextSelectionDown"]
      135 GETTABLEKS                       R17 R2 K25 ["NextSelectionLeft"]
      137 SETTABLEKS                       R17 R16 K25 ["NextSelectionLeft"]
      139 GETTABLEKS                       R17 R2 K26 ["NextSelectionRight"]
      141 SETTABLEKS                       R17 R16 K26 ["NextSelectionRight"]
      143 DUPTABLE                         R17 K35 [{"Active", "GroupTransparency", "onActivated", "onStateChanged", "stateLayer", "selection", "cursor", "isDisabled", "ref"}]
      144 GETTABLEKS                       R19 R2 K20 ["isDisabled"]
      146 NOT                              R18 R19
      147 SETTABLEKS                       R18 R17 K28 ["Active"]
      149 GETTABLEKS                       R19 R2 K20 ["isDisabled"]
      151 JUMPIFNOT                        R19 ; [+4]
      152 GETUPVAL                         R19 9
      153 GETTABLEKS                       R18 R19 K36 ["DISABLED_TRANSPARENCY"]
      155 JUMP                             ; [+1]
      156 LOADN                            R18 0
      157 SETTABLEKS                       R18 R17 K29 ["GroupTransparency"]
      159 SETTABLEKS                       R15 R17 K21 ["onActivated"]
      161 SETTABLEKS                       R14 R17 K30 ["onStateChanged"]
      163 DUPTABLE                         R18 K38 [{"affordance"}]
      164 GETUPVAL                         R20 10
      165 GETTABLEKS                       R19 R20 K39 ["None"]
      167 SETTABLEKS                       R19 R18 K37 ["affordance"]
      169 SETTABLEKS                       R18 R17 K31 ["stateLayer"]
      171 GETUPVAL                         R20 5
      172 GETTABLEKS                       R19 R20 K40 ["FoundationInternalInputSelectedStylesAndSpacing"]
      174 JUMPIFNOT                        R19 ; [+8]
      175 JUMPIFNOT                        R5 ; [+5]
      176 DUPTABLE                         R18 K41 [{"Selectable"}]
      177 LOADB                            R19 0
      178 SETTABLEKS                       R19 R18 K22 ["Selectable"]
      180 JUMP                             ; [+3]
      181 MOVE                             R18 R16
      182 JUMP                             ; [+1]
      183 MOVE                             R18 R16
      184 SETTABLEKS                       R18 R17 K32 ["selection"]
      186 GETUPVAL                         R20 5
      187 GETTABLEKS                       R19 R20 K40 ["FoundationInternalInputSelectedStylesAndSpacing"]
      189 JUMPIFNOT                        R19 ; [+5]
      190 JUMPIFNOT                        R5 ; [+2]
      191 LOADNIL                          R18
      192 JUMP                             ; [+3]
      193 MOVE                             R18 R10
      194 JUMP                             ; [+1]
      195 MOVE                             R18 R10
      196 SETTABLEKS                       R18 R17 K33 ["cursor"]
      198 GETTABLEKS                       R18 R2 K20 ["isDisabled"]
      200 SETTABLEKS                       R18 R17 K20 ["isDisabled"]
      202 SETTABLEKS                       R1 R17 K34 ["ref"]
      204 GETTABLEKS                       R20 R9 K42 ["input"]
      206 GETTABLEKS                       R19 R20 K43 ["stroke"]
      208 GETTABLEKS                       R18 R19 K44 ["thickness"]
      210 DUPTABLE                         R19 K50 [{"tag", "Size", "backgroundStyle", "onActivated", "stateLayer", "stroke", "selection", "cursor", "LayoutOrder", "testId"}]
      211 GETTABLEKS                       R21 R2 K13 ["customVariantProps"]
      213 GETTABLEKS                       R20 R21 K45 ["tag"]
      215 SETTABLEKS                       R20 R19 K45 ["tag"]
      217 GETTABLEKS                       R22 R2 K13 ["customVariantProps"]
      219 GETTABLEKS                       R21 R22 K11 ["size"]
      221 GETIMPORT                        R22 K53 [UDim2.fromOffset]
      223 MOVE                             R23 R18
      224 MOVE                             R24 R18
      225 CALL                             R22 2 1
      226 SUB                              R20 R21 R22
      227 SETTABLEKS                       R20 R19 K46 ["Size"]
      229 GETTABLEKS                       R20 R12 K47 ["backgroundStyle"]
      231 SETTABLEKS                       R20 R19 K47 ["backgroundStyle"]
      233 SETTABLEKS                       R15 R19 K21 ["onActivated"]
      235 DUPTABLE                         R20 K38 [{"affordance"}]
      236 GETUPVAL                         R22 10
      237 GETTABLEKS                       R21 R22 K54 ["Background"]
      239 SETTABLEKS                       R21 R20 K37 ["affordance"]
      241 SETTABLEKS                       R20 R19 K31 ["stateLayer"]
      243 DUPTABLE                         R20 K58 [{"Color", "Transparency", "Thickness"}]
      244 GETTABLEKS                       R21 R12 K59 ["strokeStyle"]
      246 DUPCLOSURE                       R23 K60 [PROTO_4]
      247 NAMECALL                         R21 R21 K61 ["map"]
      249 CALL                             R21 2 1
      250 SETTABLEKS                       R21 R20 K55 ["Color"]
      252 GETTABLEKS                       R21 R12 K59 ["strokeStyle"]
      254 NEWCLOSURE                       R23 P5
      255 CAPTURE                          VAL R2
      256 CAPTURE                          VAL R5
      257 CAPTURE                          UPVAL U9
      258 NAMECALL                         R21 R21 K61 ["map"]
      260 CALL                             R21 2 1
      261 SETTABLEKS                       R21 R20 K56 ["Transparency"]
      263 SETTABLEKS                       R18 R20 K57 ["Thickness"]
      265 SETTABLEKS                       R20 R19 K43 ["stroke"]
      267 GETUPVAL                         R22 5
      268 GETTABLEKS                       R21 R22 K40 ["FoundationInternalInputSelectedStylesAndSpacing"]
      270 JUMPIFNOT                        R21 ; [+2]
      271 MOVE                             R20 R16
      272 JUMP                             ; [+7]
      273 JUMPIF                           R5 ; [+2]
      274 MOVE                             R20 R16
      275 JUMP                             ; [+4]
      276 DUPTABLE                         R20 K41 [{"Selectable"}]
      277 LOADB                            R21 0
      278 SETTABLEKS                       R21 R20 K22 ["Selectable"]
      280 SETTABLEKS                       R20 R19 K32 ["selection"]
      282 GETUPVAL                         R22 5
      283 GETTABLEKS                       R21 R22 K40 ["FoundationInternalInputSelectedStylesAndSpacing"]
      285 JUMPIFNOT                        R21 ; [+5]
      286 JUMPIFNOT                        R5 ; [+2]
      287 MOVE                             R20 R10
      288 JUMP                             ; [+3]
      289 LOADNIL                          R20
      290 JUMP                             ; [+1]
      291 LOADNIL                          R20
      292 SETTABLEKS                       R20 R19 K33 ["cursor"]
      294 JUMPIFNOT                        R5 ; [+8]
      295 GETIMPORT                        R21 K63 [Enum.HorizontalAlignment.Left]
      297 JUMPIFNOTEQ                      R4 R21 ; [+3]
      299 LOADN                            R20 1
      300 JUMP                             ; [+3]
      301 LOADN                            R20 255
      302 JUMP                             ; [+1]
      303 LOADNIL                          R20
      304 SETTABLEKS                       R20 R19 K48 ["LayoutOrder"]
      306 LOADK                            R21 K64 ["%*--container"]
      307 GETTABLEKS                       R23 R2 K49 ["testId"]
      309 NAMECALL                         R21 R21 K65 ["format"]
      311 CALL                             R21 2 1
      312 MOVE                             R20 R21
      313 SETTABLEKS                       R20 R19 K49 ["testId"]
      315 JUMPIF                           R5 ; [+19]
      316 GETUPVAL                         R21 2
      317 GETTABLEKS                       R20 R21 K66 ["createElement"]
      319 GETUPVAL                         R21 11
      320 GETUPVAL                         R22 12
      321 MOVE                             R23 R2
      322 GETUPVAL                         R26 13
      323 GETTABLEKS                       R25 R26 K67 ["Dictionary"]
      325 GETTABLEKS                       R24 R25 K68 ["union"]
      327 MOVE                             R25 R17
      328 MOVE                             R26 R19
      329 CALL                             R24 2 -1
      330 CALL                             R22 -1 1
      331 GETTABLEKS                       R23 R2 K69 ["children"]
      333 CALL                             R20 3 -1
      334 RETURN                           R20 -1
      335 GETUPVAL                         R21 2
      336 GETTABLEKS                       R20 R21 K66 ["createElement"]
      338 GETUPVAL                         R21 11
      339 GETUPVAL                         R22 12
      340 MOVE                             R23 R2
      341 GETUPVAL                         R26 13
      342 GETTABLEKS                       R25 R26 K67 ["Dictionary"]
      344 GETTABLEKS                       R24 R25 K68 ["union"]
      346 DUPTABLE                         R25 K71 [{"tag", "padding"}]
      347 GETTABLEKS                       R27 R9 K72 ["container"]
      349 GETTABLEKS                       R26 R27 K45 ["tag"]
      351 SETTABLEKS                       R26 R25 K45 ["tag"]
      353 DUPTABLE                         R26 K77 [{"top", "bottom", "left", "right"}]
      354 GETTABLEKS                       R28 R9 K72 ["container"]
      356 GETTABLEKS                       R27 R28 K70 ["padding"]
      358 SETTABLEKS                       R27 R26 K73 ["top"]
      360 GETTABLEKS                       R28 R9 K72 ["container"]
      362 GETTABLEKS                       R27 R28 K70 ["padding"]
      364 SETTABLEKS                       R27 R26 K74 ["bottom"]
      366 GETIMPORT                        R28 K6 [Enum.HorizontalAlignment.Right]
      368 JUMPIFNOTEQ                      R4 R28 ; [+6]
      370 GETTABLEKS                       R28 R9 K72 ["container"]
      372 GETTABLEKS                       R27 R28 K70 ["padding"]
      374 JUMP                             ; [+1]
      375 LOADNIL                          R27
      376 SETTABLEKS                       R27 R26 K75 ["left"]
      378 GETIMPORT                        R28 K63 [Enum.HorizontalAlignment.Left]
      380 JUMPIFNOTEQ                      R4 R28 ; [+6]
      382 GETTABLEKS                       R28 R9 K72 ["container"]
      384 GETTABLEKS                       R27 R28 K70 ["padding"]
      386 JUMP                             ; [+1]
      387 LOADNIL                          R27
      388 SETTABLEKS                       R27 R26 K76 ["right"]
      390 SETTABLEKS                       R26 R25 K70 ["padding"]
      392 MOVE                             R26 R17
      393 CALL                             R24 2 -1
      394 CALL                             R22 -1 1
      395 DUPTABLE                         R23 K80 [{"Input", "InputLabel"}]
      396 GETUPVAL                         R25 2
      397 GETTABLEKS                       R24 R25 K66 ["createElement"]
      399 GETUPVAL                         R25 11
      400 MOVE                             R26 R19
      401 GETTABLEKS                       R27 R2 K69 ["children"]
      403 CALL                             R24 3 1
      404 SETTABLEKS                       R24 R23 K78 ["Input"]
      406 FASTCALL1                        TYPEOF R3 ; [+3]
      407 MOVE                             R26 R3
      408 GETIMPORT                        R25 K8 [typeof]
      410 CALL                             R25 1 1
      411 JUMPIFNOTEQKS                    R25 K9 ["string"] ; [+29]
      413 GETUPVAL                         R25 2
      414 GETTABLEKS                       R24 R25 K66 ["createElement"]
      416 GETUPVAL                         R25 14
      417 DUPTABLE                         R26 K83 [{"Text", "textStyle", "size", "testId"}]
      418 SETTABLEKS                       R3 R26 K81 ["Text"]
      420 GETTABLEKS                       R27 R12 K84 ["labelStyle"]
      422 SETTABLEKS                       R27 R26 K82 ["textStyle"]
      424 GETUPVAL                         R27 15
      425 GETTABLEKS                       R28 R2 K11 ["size"]
      427 CALL                             R27 1 1
      428 SETTABLEKS                       R27 R26 K11 ["size"]
      430 LOADK                            R28 K85 ["%*--label"]
      431 GETTABLEKS                       R30 R2 K49 ["testId"]
      433 NAMECALL                         R28 R28 K65 ["format"]
      435 CALL                             R28 2 1
      436 MOVE                             R27 R28
      437 SETTABLEKS                       R27 R26 K49 ["testId"]
      439 CALL                             R24 2 1
      440 JUMP                             ; [+1]
      441 MOVE                             R24 R3
      442 SETTABLEKS                       R24 R23 K79 ["InputLabel"]
      444 CALL                             R20 3 -1
      445 RETURN                           R20 -1

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
       33 GETTABLEKS                       R7 R0 K13 ["Components"]
       35 GETIMPORT                        R8 K6 [require]
       37 GETTABLEKS                       R9 R7 K14 ["InputLabel"]
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K6 [require]
       42 GETTABLEKS                       R10 R7 K15 ["View"]
       44 CALL                             R9 1 1
       45 GETIMPORT                        R10 K6 [require]
       47 GETTABLEKS                       R11 R7 K16 ["Types"]
       49 CALL                             R10 1 1
       50 GETIMPORT                        R11 K6 [require]
       52 GETTABLEKS                       R13 R0 K17 ["Enums"]
       54 GETTABLEKS                       R12 R13 K18 ["StateLayerAffordance"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K6 [require]
       59 GETIMPORT                        R15 K1 [script]
       61 GETTABLEKS                       R14 R15 K4 ["Parent"]
       63 GETTABLEKS                       R13 R14 K19 ["useInputVariants"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K6 [require]
       68 GETIMPORT                        R16 K1 [script]
       70 GETTABLEKS                       R15 R16 K4 ["Parent"]
       72 GETTABLEKS                       R14 R15 K20 ["useInputMotionStates"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K6 [require]
       77 GETTABLEKS                       R17 R0 K21 ["Providers"]
       79 GETTABLEKS                       R16 R17 K22 ["Style"]
       81 GETTABLEKS                       R15 R16 K23 ["useTokens"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K6 [require]
       86 GETTABLEKS                       R17 R0 K7 ["Utility"]
       88 GETTABLEKS                       R16 R17 K24 ["withCommonProps"]
       90 CALL                             R15 1 1
       91 GETIMPORT                        R16 K6 [require]
       93 GETTABLEKS                       R18 R0 K7 ["Utility"]
       95 GETTABLEKS                       R17 R18 K25 ["withDefaults"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K6 [require]
      100 GETTABLEKS                       R19 R0 K7 ["Utility"]
      102 GETTABLEKS                       R18 R19 K26 ["getInputTextSize"]
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
      133 GETTABLEKS                       R25 R0 K21 ["Providers"]
      135 GETTABLEKS                       R24 R25 K22 ["Style"]
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
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R23
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R17
      168 GETTABLEKS                       R25 R5 K39 ["memo"]
      170 GETTABLEKS                       R26 R5 K40 ["forwardRef"]
      172 MOVE                             R27 R24
      173 CALL                             R26 1 -1
      174 CALL                             R25 -1 -1
      175 RETURN                           R25 -1
