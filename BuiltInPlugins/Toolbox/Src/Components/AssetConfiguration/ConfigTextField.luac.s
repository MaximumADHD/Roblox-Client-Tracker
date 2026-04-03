PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentContent"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentContent"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["props"]
       10 GETTABLEKS                       R1 R2 K4 ["TextChangeCallBack"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+44]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["cursorPosition"]
        4 JUMPIFNOT                        R2 ; [+40]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["textInputRef"]
        8 GETTABLEKS                       R2 R3 K2 ["current"]
       10 JUMPIFNOT                        R2 ; [+34]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K1 ["textInputRef"]
       14 GETTABLEKS                       R3 R4 K2 ["current"]
       16 GETTABLEKS                       R2 R3 K3 ["CaptureFocus"]
       18 JUMPIFNOT                        R2 ; [+26]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K1 ["textInputRef"]
       22 GETTABLEKS                       R3 R4 K2 ["current"]
       24 GETTABLEKS                       R2 R3 K4 ["CursorPosition"]
       26 JUMPIFNOT                        R2 ; [+18]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K0 ["cursorPosition"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K1 ["textInputRef"]
       33 GETTABLEKS                       R3 R4 K2 ["current"]
       35 NAMECALL                         R3 R3 K3 ["CaptureFocus"]
       37 CALL                             R3 1 0
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R4 R5 K1 ["textInputRef"]
       41 GETTABLEKS                       R3 R4 K2 ["current"]
       43 SETTABLEKS                       R2 R3 K4 ["CursorPosition"]
       45 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["state"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R0 K1 ["hasError"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K2 ["onTextChanged"]
       11 GETUPVAL                         R3 0
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K3 ["createRef"]
       16 CALL                             R2 0 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R0 K4 ["textInputRef"]
       21 GETUPVAL                         R2 0
       22 JUMPIFNOT                        R2 ; [+4]
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K5 ["onFocusLost"]
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["textInputRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+20]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["textInputRef"]
        9 GETTABLEKS                       R1 R2 K1 ["current"]
       11 GETTABLEKS                       R0 R1 K2 ["CursorPosition"]
       13 LOADN                            R1 0
       14 JUMPIFNOTLE                      R1 R0 ; [+11]
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K0 ["textInputRef"]
       20 GETTABLEKS                       R2 R3 K1 ["current"]
       22 GETTABLEKS                       R1 R2 K2 ["CursorPosition"]
       24 SETTABLEKS                       R1 R0 K3 ["cursorPosition"]
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+27]
        2 GETTABLEKS                       R2 R0 K0 ["textInputRef"]
        4 GETTABLEKS                       R1 R2 K1 ["current"]
        6 JUMPIFNOT                        R1 ; [+22]
        7 GETTABLEKS                       R3 R0 K0 ["textInputRef"]
        9 GETTABLEKS                       R2 R3 K1 ["current"]
       11 GETTABLEKS                       R1 R2 K2 ["GetPropertyChangedSignal"]
       13 JUMPIFNOT                        R1 ; [+15]
       14 GETTABLEKS                       R2 R0 K0 ["textInputRef"]
       16 GETTABLEKS                       R1 R2 K1 ["current"]
       18 LOADK                            R3 K3 ["CursorPosition"]
       19 NAMECALL                         R1 R1 K2 ["GetPropertyChangedSignal"]
       21 CALL                             R1 2 1
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R0
       24 NAMECALL                         R1 R1 K4 ["Connect"]
       26 CALL                             R1 2 1
       27 SETTABLEKS                       R1 R0 K5 ["textInputRefCursorPositionChanged"]
       29 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R0 K2 ["state"]
        8 GETTABLEKS                       R4 R2 K3 ["Title"]
       10 GETTABLEKS                       R5 R2 K4 ["TotalHeight"]
       12 GETTABLEKS                       R6 R2 K5 ["LayoutOrder"]
       14 GETTABLEKS                       R7 R2 K6 ["MaxCount"]
       16 GETTABLEKS                       R9 R2 K8 ["TextContent"]
       18 ORK                              R8 R9 K7 [""]
       19 GETTABLEKS                       R10 R3 K9 ["currentContent"]
       21 OR                               R9 R10 R8
       22 GETTABLEKS                       R11 R0 K0 ["props"]
       24 GETTABLEKS                       R10 R11 K10 ["ErrorCallback"]
       26 JUMPIFNOT                        R10 ; [+34]
       27 LENGTH                           R10 R9
       28 GETTABLEKS                       R12 R0 K0 ["props"]
       30 GETTABLEKS                       R11 R12 K6 ["MaxCount"]
       32 JUMPIFNOTLT                      R11 R10 ; [+15]
       34 GETTABLEKS                       R10 R0 K11 ["hasError"]
       36 JUMPIF                           R10 ; [+24]
       37 LOADB                            R10 1
       38 SETTABLEKS                       R10 R0 K11 ["hasError"]
       40 GETTABLEKS                       R11 R0 K0 ["props"]
       42 GETTABLEKS                       R10 R11 K10 ["ErrorCallback"]
       44 GETTABLEKS                       R11 R0 K11 ["hasError"]
       46 CALL                             R10 1 0
       47 JUMP                             ; [+13]
       48 GETTABLEKS                       R10 R0 K11 ["hasError"]
       50 JUMPIFNOT                        R10 ; [+10]
       51 LOADB                            R10 0
       52 SETTABLEKS                       R10 R0 K11 ["hasError"]
       54 GETTABLEKS                       R11 R0 K0 ["props"]
       56 GETTABLEKS                       R10 R11 K10 ["ErrorCallback"]
       58 GETTABLEKS                       R11 R0 K11 ["hasError"]
       60 CALL                             R10 1 0
       61 GETTABLEKS                       R10 R1 K12 ["publishAsset"]
       63 GETIMPORT                        R11 K15 [utf8.len]
       65 MOVE                             R12 R9
       66 CALL                             R11 1 1
       67 MOVE                             R12 R7
       68 JUMPIFNOT                        R12 ; [+4]
       69 JUMPIFLT                         R7 R11 ; [+2]
       71 LOADB                            R12 0 +1
       72 LOADB                            R12 1
       73 GETTABLEKS                       R14 R2 K16 ["showRequiredError"]
       75 JUMPIFEQKB                       R14 TRUE ; [+2]
       77 LOADB                            R13 0 +1
       78 LOADB                            R13 1
       79 MOVE                             R14 R12
       80 JUMPIF                           R14 ; [+6]
       81 GETUPVAL                         R15 0
       82 CALL                             R15 0 1
       83 JUMPIFNOT                        R15 ; [+2]
       84 MOVE                             R14 R13
       85 JUMP                             ; [+1]
       86 LOADNIL                          R14
       87 JUMPIFNOT                        R7 ; [+5]
       88 MOVE                             R16 R11
       89 LOADK                            R17 K17 ["/"]
       90 MOVE                             R18 R7
       91 CONCAT                           R15 R16 R18
       92 JUMPIF                           R15 ; [+1]
       93 LOADK                            R15 K7 [""]
       94 MOVE                             R16 R7
       95 JUMPIFNOT                        R16 ; [+5]
       96 LOADN                            R17 50
       97 JUMPIFLT                         R17 R7 ; [+2]
       99 LOADB                            R16 0 +1
      100 LOADB                            R16 1
      101 GETUPVAL                         R18 1
      102 GETTABLEKS                       R17 R18 K18 ["new"]
      104 CALL                             R17 0 1
      105 GETTABLEKS                       R19 R1 K19 ["assetConfig"]
      107 GETTABLEKS                       R18 R19 K20 ["inputBottomText"]
      109 GETUPVAL                         R19 2
      110 CALL                             R19 0 1
      111 JUMPIFNOT                        R19 ; [+180]
      112 GETUPVAL                         R20 3
      113 GETTABLEKS                       R19 R20 K21 ["createElement"]
      115 GETUPVAL                         R20 4
      116 DUPTABLE                         R21 K22 [{"LayoutOrder", "Title"}]
      117 SETTABLEKS                       R6 R21 K5 ["LayoutOrder"]
      119 SETTABLEKS                       R4 R21 K3 ["Title"]
      121 DUPTABLE                         R22 K24 [{"TextFieldWrapper"}]
      122 GETUPVAL                         R24 3
      123 GETTABLEKS                       R23 R24 K21 ["createElement"]
      125 GETUPVAL                         R25 5
      126 GETTABLEKS                       R24 R25 K25 ["View"]
      128 DUPTABLE                         R25 K28 [{"tag", "LayoutOrder", "Size"}]
      129 LOADK                            R26 K29 ["col align-x-left auto-y size-full-x gap-small"]
      130 SETTABLEKS                       R26 R25 K26 ["tag"]
      132 NAMECALL                         R26 R17 K30 ["getNextOrder"]
      134 CALL                             R26 1 1
      135 SETTABLEKS                       R26 R25 K5 ["LayoutOrder"]
      137 GETIMPORT                        R26 K32 [UDim2.new]
      139 LOADN                            R27 1
      140 LOADN                            R28 0
      141 LOADN                            R29 0
      142 MOVE                             R30 R5
      143 CALL                             R26 4 1
      144 SETTABLEKS                       R26 R25 K27 ["Size"]
      146 DUPTABLE                         R26 K35 [{"TextField", "BottomTextWrapper"}]
      147 JUMPIFNOT                        R16 ; [+46]
      148 GETUPVAL                         R28 3
      149 GETTABLEKS                       R27 R28 K21 ["createElement"]
      151 GETUPVAL                         R29 5
      152 GETTABLEKS                       R28 R29 K36 ["TextArea"]
      154 DUPTABLE                         R29 K44 [{"LayoutOrder", "text", "onChanged", "label", "hint", "hasError", "numLines", "size", "width"}]
      155 NAMECALL                         R30 R17 K30 ["getNextOrder"]
      157 CALL                             R30 1 1
      158 SETTABLEKS                       R30 R29 K5 ["LayoutOrder"]
      160 SETTABLEKS                       R9 R29 K37 ["text"]
      162 GETTABLEKS                       R30 R0 K45 ["onTextChanged"]
      164 SETTABLEKS                       R30 R29 K38 ["onChanged"]
      166 LOADK                            R30 K7 [""]
      167 SETTABLEKS                       R30 R29 K39 ["label"]
      169 SETTABLEKS                       R15 R29 K40 ["hint"]
      171 SETTABLEKS                       R14 R29 K11 ["hasError"]
      173 LOADN                            R30 6
      174 SETTABLEKS                       R30 R29 K41 ["numLines"]
      176 GETUPVAL                         R33 5
      177 GETTABLEKS                       R32 R33 K46 ["Enums"]
      179 GETTABLEKS                       R31 R32 K47 ["InputSize"]
      181 GETTABLEKS                       R30 R31 K48 ["Small"]
      183 SETTABLEKS                       R30 R29 K42 ["size"]
      185 GETIMPORT                        R30 K50 [UDim.new]
      187 LOADN                            R31 1
      188 LOADN                            R32 0
      189 CALL                             R30 2 1
      190 SETTABLEKS                       R30 R29 K43 ["width"]
      192 CALL                             R27 2 1
      193 JUMP                             ; [+45]
      194 GETUPVAL                         R28 3
      195 GETTABLEKS                       R27 R28 K21 ["createElement"]
      197 GETUPVAL                         R29 5
      198 GETTABLEKS                       R28 R29 K51 ["TextInput"]
      200 DUPTABLE                         R29 K44 [{"LayoutOrder", "text", "onChanged", "label", "hint", "hasError", "numLines", "size", "width"}]
      201 NAMECALL                         R30 R17 K30 ["getNextOrder"]
      203 CALL                             R30 1 1
      204 SETTABLEKS                       R30 R29 K5 ["LayoutOrder"]
      206 SETTABLEKS                       R9 R29 K37 ["text"]
      208 GETTABLEKS                       R30 R0 K45 ["onTextChanged"]
      210 SETTABLEKS                       R30 R29 K38 ["onChanged"]
      212 LOADK                            R30 K7 [""]
      213 SETTABLEKS                       R30 R29 K39 ["label"]
      215 SETTABLEKS                       R15 R29 K40 ["hint"]
      217 SETTABLEKS                       R14 R29 K11 ["hasError"]
      219 LOADN                            R30 1
      220 SETTABLEKS                       R30 R29 K41 ["numLines"]
      222 GETUPVAL                         R33 5
      223 GETTABLEKS                       R32 R33 K46 ["Enums"]
      225 GETTABLEKS                       R31 R32 K47 ["InputSize"]
      227 GETTABLEKS                       R30 R31 K48 ["Small"]
      229 SETTABLEKS                       R30 R29 K42 ["size"]
      231 GETIMPORT                        R30 K50 [UDim.new]
      233 LOADN                            R31 1
      234 LOADN                            R32 0
      235 CALL                             R30 2 1
      236 SETTABLEKS                       R30 R29 K43 ["width"]
      238 CALL                             R27 2 1
      239 SETTABLEKS                       R27 R26 K33 ["TextField"]
      241 GETTABLEKS                       R28 R2 K52 ["BottomRightText"]
      243 JUMPIFNOT                        R28 ; [+40]
      244 GETUPVAL                         R28 3
      245 GETTABLEKS                       R27 R28 K21 ["createElement"]
      247 GETUPVAL                         R29 5
      248 GETTABLEKS                       R28 R29 K25 ["View"]
      250 DUPTABLE                         R29 K53 [{"tag", "LayoutOrder"}]
      251 LOADK                            R30 K54 ["size-full-0 auto-y"]
      252 SETTABLEKS                       R30 R29 K26 ["tag"]
      254 NAMECALL                         R30 R17 K30 ["getNextOrder"]
      256 CALL                             R30 1 1
      257 SETTABLEKS                       R30 R29 K5 ["LayoutOrder"]
      259 DUPTABLE                         R30 K56 [{"BottomText"}]
      260 GETUPVAL                         R32 3
      261 GETTABLEKS                       R31 R32 K21 ["createElement"]
      263 GETUPVAL                         R33 5
      264 GETTABLEKS                       R32 R33 K57 ["Text"]
      266 DUPTABLE                         R33 K58 [{"tag", "Text", "LayoutOrder"}]
      267 LOADK                            R34 K59 ["size-full-0 auto-y text-caption-small content-muted text-align-x-right"]
      268 SETTABLEKS                       R34 R33 K26 ["tag"]
      270 GETTABLEKS                       R34 R2 K52 ["BottomRightText"]
      272 SETTABLEKS                       R34 R33 K57 ["Text"]
      274 NAMECALL                         R34 R17 K30 ["getNextOrder"]
      276 CALL                             R34 1 1
      277 SETTABLEKS                       R34 R33 K5 ["LayoutOrder"]
      279 CALL                             R31 2 1
      280 SETTABLEKS                       R31 R30 K55 ["BottomText"]
      282 CALL                             R27 3 1
      283 JUMP                             ; [+1]
      284 LOADNIL                          R27
      285 SETTABLEKS                       R27 R26 K34 ["BottomTextWrapper"]
      287 CALL                             R23 3 1
      288 SETTABLEKS                       R23 R22 K23 ["TextFieldWrapper"]
      290 CALL                             R19 3 -1
      291 RETURN                           R19 -1
      292 GETUPVAL                         R20 6
      293 GETTABLEKS                       R19 R20 K21 ["createElement"]
      295 GETUPVAL                         R20 4
      296 DUPTABLE                         R21 K22 [{"LayoutOrder", "Title"}]
      297 SETTABLEKS                       R6 R21 K5 ["LayoutOrder"]
      299 SETTABLEKS                       R4 R21 K3 ["Title"]
      301 DUPTABLE                         R22 K24 [{"TextFieldWrapper"}]
      302 GETUPVAL                         R24 6
      303 GETTABLEKS                       R23 R24 K21 ["createElement"]
      305 GETUPVAL                         R24 7
      306 DUPTABLE                         R25 K62 [{"AutomaticSize", "LayoutOrder", "Size", "Spacing"}]
      307 GETIMPORT                        R26 K65 [Enum.AutomaticSize.XY]
      309 SETTABLEKS                       R26 R25 K60 ["AutomaticSize"]
      311 NAMECALL                         R26 R17 K30 ["getNextOrder"]
      313 CALL                             R26 1 1
      314 SETTABLEKS                       R26 R25 K5 ["LayoutOrder"]
      316 GETIMPORT                        R26 K32 [UDim2.new]
      318 LOADN                            R27 1
      319 LOADN                            R28 0
      320 LOADN                            R29 0
      321 MOVE                             R30 R5
      322 CALL                             R26 4 1
      323 SETTABLEKS                       R26 R25 K27 ["Size"]
      325 GETTABLEKS                       R26 R18 K66 ["bottomTextSpacing"]
      327 SETTABLEKS                       R26 R25 K61 ["Spacing"]
      329 DUPTABLE                         R26 K68 [{"UIListLayout", "TextField", "BottomTextWrapper"}]
      330 GETUPVAL                         R28 6
      331 GETTABLEKS                       R27 R28 K21 ["createElement"]
      333 LOADK                            R28 K67 ["UIListLayout"]
      334 DUPTABLE                         R29 K73 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      335 GETIMPORT                        R30 K75 [Enum.FillDirection.Vertical]
      337 SETTABLEKS                       R30 R29 K69 ["FillDirection"]
      339 GETIMPORT                        R30 K77 [Enum.HorizontalAlignment.Left]
      341 SETTABLEKS                       R30 R29 K70 ["HorizontalAlignment"]
      343 GETIMPORT                        R30 K79 [Enum.VerticalAlignment.Top]
      345 SETTABLEKS                       R30 R29 K71 ["VerticalAlignment"]
      347 GETIMPORT                        R30 K80 [Enum.SortOrder.LayoutOrder]
      349 SETTABLEKS                       R30 R29 K72 ["SortOrder"]
      351 CALL                             R27 2 1
      352 SETTABLEKS                       R27 R26 K67 ["UIListLayout"]
      354 GETUPVAL                         R28 6
      355 GETTABLEKS                       R27 R28 K21 ["createElement"]
      357 GETUPVAL                         R28 8
      358 DUPTABLE                         R29 K86 [{"BottomText", "LayoutOrder", "MultiLine", "OnTextChanged", "Size", "StyleModifier", "Text", "OnFocusLost", "ForwardRef"}]
      359 GETTABLEKS                       R31 R2 K52 ["BottomRightText"]
      361 JUMPIFNOT                        R31 ; [+2]
      362 LOADNIL                          R30
      363 JUMP                             ; [+1]
      364 MOVE                             R30 R15
      365 SETTABLEKS                       R30 R29 K55 ["BottomText"]
      367 NAMECALL                         R30 R17 K30 ["getNextOrder"]
      369 CALL                             R30 1 1
      370 SETTABLEKS                       R30 R29 K5 ["LayoutOrder"]
      372 SETTABLEKS                       R16 R29 K81 ["MultiLine"]
      374 GETTABLEKS                       R30 R0 K45 ["onTextChanged"]
      376 SETTABLEKS                       R30 R29 K82 ["OnTextChanged"]
      378 GETIMPORT                        R30 K32 [UDim2.new]
      380 LOADN                            R31 1
      381 LOADN                            R32 0
      382 LOADN                            R33 0
      383 SUBK                             R35 R5 K88 [40]
      384 SUBK                             R34 R35 K87 [20]
      385 CALL                             R30 4 1
      386 SETTABLEKS                       R30 R29 K27 ["Size"]
      388 JUMPIFNOT                        R12 ; [+4]
      389 GETUPVAL                         R31 9
      390 GETTABLEKS                       R30 R31 K89 ["Error"]
      392 JUMP                             ; [+1]
      393 LOADNIL                          R30
      394 SETTABLEKS                       R30 R29 K83 ["StyleModifier"]
      396 SETTABLEKS                       R9 R29 K57 ["Text"]
      398 GETUPVAL                         R31 10
      399 JUMPIFNOT                        R31 ; [+3]
      400 GETTABLEKS                       R30 R0 K90 ["onFocusLost"]
      402 JUMP                             ; [+1]
      403 LOADNIL                          R30
      404 SETTABLEKS                       R30 R29 K84 ["OnFocusLost"]
      406 GETUPVAL                         R31 10
      407 JUMPIFNOT                        R31 ; [+3]
      408 GETTABLEKS                       R30 R0 K91 ["textInputRef"]
      410 JUMP                             ; [+1]
      411 LOADNIL                          R30
      412 SETTABLEKS                       R30 R29 K85 ["ForwardRef"]
      414 CALL                             R27 2 1
      415 SETTABLEKS                       R27 R26 K33 ["TextField"]
      417 GETTABLEKS                       R28 R2 K52 ["BottomRightText"]
      419 JUMPIFNOT                        R28 ; [+112]
      420 GETUPVAL                         R28 6
      421 GETTABLEKS                       R27 R28 K21 ["createElement"]
      423 GETUPVAL                         R28 7
      424 DUPTABLE                         R29 K92 [{"AutomaticSize", "LayoutOrder", "Size"}]
      425 GETIMPORT                        R30 K65 [Enum.AutomaticSize.XY]
      427 SETTABLEKS                       R30 R29 K60 ["AutomaticSize"]
      429 NAMECALL                         R30 R17 K30 ["getNextOrder"]
      431 CALL                             R30 1 1
      432 SETTABLEKS                       R30 R29 K5 ["LayoutOrder"]
      434 GETIMPORT                        R30 K32 [UDim2.new]
      436 LOADN                            R31 1
      437 LOADN                            R32 0
      438 LOADN                            R33 0
      439 LOADN                            R34 0
      440 CALL                             R30 4 1
      441 SETTABLEKS                       R30 R29 K27 ["Size"]
      443 DUPTABLE                         R30 K94 [{"CounterText", "BottomText"}]
      444 GETUPVAL                         R32 6
      445 GETTABLEKS                       R31 R32 K21 ["createElement"]
      447 GETUPVAL                         R32 11
      448 DUPTABLE                         R33 K98 [{"AutomaticSize", "LayoutOrder", "Size", "TextXAlignment", "Text", "TextColor", "TextSize"}]
      449 GETIMPORT                        R34 K65 [Enum.AutomaticSize.XY]
      451 SETTABLEKS                       R34 R33 K60 ["AutomaticSize"]
      453 NAMECALL                         R34 R17 K30 ["getNextOrder"]
      455 CALL                             R34 1 1
      456 SETTABLEKS                       R34 R33 K5 ["LayoutOrder"]
      458 GETIMPORT                        R34 K32 [UDim2.new]
      460 LOADN                            R35 1
      461 LOADN                            R36 0
      462 LOADN                            R37 0
      463 LOADN                            R38 0
      464 CALL                             R34 4 1
      465 SETTABLEKS                       R34 R33 K27 ["Size"]
      467 GETIMPORT                        R34 K99 [Enum.TextXAlignment.Left]
      469 SETTABLEKS                       R34 R33 K95 ["TextXAlignment"]
      471 SETTABLEKS                       R15 R33 K57 ["Text"]
      473 JUMPIFNOT                        R12 ; [+3]
      474 GETTABLEKS                       R34 R18 K100 ["textErrorColor"]
      476 JUMP                             ; [+2]
      477 GETTABLEKS                       R34 R18 K101 ["textColor"]
      479 SETTABLEKS                       R34 R33 K96 ["TextColor"]
      481 GETTABLEKS                       R34 R18 K102 ["textSize"]
      483 SETTABLEKS                       R34 R33 K97 ["TextSize"]
      485 CALL                             R31 2 1
      486 SETTABLEKS                       R31 R30 K93 ["CounterText"]
      488 GETUPVAL                         R32 6
      489 GETTABLEKS                       R31 R32 K21 ["createElement"]
      491 GETUPVAL                         R32 11
      492 DUPTABLE                         R33 K103 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment"}]
      493 GETIMPORT                        R34 K105 [Enum.AutomaticSize.Y]
      495 SETTABLEKS                       R34 R33 K60 ["AutomaticSize"]
      497 NAMECALL                         R34 R17 K30 ["getNextOrder"]
      499 CALL                             R34 1 1
      500 SETTABLEKS                       R34 R33 K5 ["LayoutOrder"]
      502 GETIMPORT                        R34 K32 [UDim2.new]
      504 LOADN                            R35 1
      505 LOADN                            R36 0
      506 LOADN                            R37 0
      507 LOADN                            R38 0
      508 CALL                             R34 4 1
      509 SETTABLEKS                       R34 R33 K27 ["Size"]
      511 GETTABLEKS                       R34 R2 K52 ["BottomRightText"]
      513 SETTABLEKS                       R34 R33 K57 ["Text"]
      515 GETTABLEKS                       R34 R18 K101 ["textColor"]
      517 SETTABLEKS                       R34 R33 K96 ["TextColor"]
      519 GETTABLEKS                       R34 R18 K102 ["textSize"]
      521 SETTABLEKS                       R34 R33 K97 ["TextSize"]
      523 GETIMPORT                        R34 K107 [Enum.TextXAlignment.Right]
      525 SETTABLEKS                       R34 R33 K95 ["TextXAlignment"]
      527 CALL                             R31 2 1
      528 SETTABLEKS                       R31 R30 K55 ["BottomText"]
      530 CALL                             R27 3 1
      531 JUMP                             ; [+1]
      532 LOADNIL                          R27
      533 SETTABLEKS                       R27 R26 K34 ["BottomTextWrapper"]
      535 CALL                             R23 3 1
      536 SETTABLEKS                       R23 R22 K23 ["TextFieldWrapper"]
      538 CALL                             R19 3 -1
      539 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["React"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Roact"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R1 K9 ["Foundation"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K5 [require]
       35 GETTABLEKS                       R9 R0 K10 ["Src"]
       37 GETTABLEKS                       R8 R9 K11 ["Flags"]
       39 GETTABLEKS                       R7 R8 K12 ["getFFlagToolboxAssetConfigFoundationMigration"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R4 K13 ["ContextServices"]
       44 GETTABLEKS                       R8 R7 K14 ["withContext"]
       46 GETTABLEKS                       R10 R0 K10 ["Src"]
       48 GETTABLEKS                       R9 R10 K15 ["Util"]
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R11 R9 K16 ["Constants"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R12 R9 K17 ["AssetConfigConstants"]
       59 CALL                             R11 1 1
       60 GETTABLEKS                       R13 R4 K15 ["Util"]
       62 GETTABLEKS                       R12 R13 K18 ["LayoutOrderIterator"]
       64 GETTABLEKS                       R14 R4 K15 ["Util"]
       66 GETTABLEKS                       R13 R14 K19 ["StyleModifier"]
       68 GETTABLEKS                       R14 R4 K20 ["UI"]
       70 GETTABLEKS                       R15 R14 K21 ["Pane"]
       72 GETTABLEKS                       R16 R14 K22 ["TextInput"]
       74 GETTABLEKS                       R17 R14 K23 ["TextLabel"]
       76 GETTABLEKS                       R20 R0 K10 ["Src"]
       78 GETTABLEKS                       R19 R20 K24 ["Components"]
       80 GETTABLEKS                       R18 R19 K25 ["AssetConfiguration"]
       82 GETIMPORT                        R19 K5 [require]
       84 GETTABLEKS                       R20 R18 K26 ["ConfigSectionWrapper"]
       86 CALL                             R19 1 1
       87 GETIMPORT                        R20 K28 [game]
       89 LOADK                            R22 K29 ["AssetConfigurationFixConfigTextFieldEnterLosingFocus"]
       90 LOADB                            R23 0
       91 NAMECALL                         R20 R20 K30 ["DefineFastFlag"]
       93 CALL                             R20 3 0
       94 GETIMPORT                        R20 K28 [game]
       96 LOADK                            R22 K29 ["AssetConfigurationFixConfigTextFieldEnterLosingFocus"]
       97 NAMECALL                         R20 R20 K31 ["GetFastFlag"]
       99 CALL                             R20 2 1
      100 GETIMPORT                        R21 K5 [require]
      102 GETTABLEKS                       R24 R0 K10 ["Src"]
      104 GETTABLEKS                       R23 R24 K11 ["Flags"]
      106 GETTABLEKS                       R22 R23 K32 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      108 CALL                             R21 1 1
      109 GETTABLEKS                       R22 R3 K33 ["PureComponent"]
      111 LOADK                            R24 K34 ["ConfigTextField"]
      112 NAMECALL                         R22 R22 K35 ["extend"]
      114 CALL                             R22 2 1
      115 DUPCLOSURE                       R23 K36 [PROTO_2]
      116 CAPTURE                          VAL R20
      117 CAPTURE                          VAL R3
      118 SETTABLEKS                       R23 R22 K37 ["init"]
      120 DUPCLOSURE                       R23 K38 [PROTO_4]
      121 CAPTURE                          VAL R20
      122 SETTABLEKS                       R23 R22 K39 ["didMount"]
      124 DUPCLOSURE                       R23 K40 [PROTO_5]
      125 CAPTURE                          VAL R21
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R19
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R20
      136 CAPTURE                          VAL R17
      137 SETTABLEKS                       R23 R22 K41 ["render"]
      139 MOVE                             R23 R8
      140 DUPTABLE                         R24 K43 [{"Stylizer"}]
      141 GETTABLEKS                       R25 R7 K42 ["Stylizer"]
      143 SETTABLEKS                       R25 R24 K42 ["Stylizer"]
      145 CALL                             R23 1 1
      146 MOVE                             R24 R22
      147 CALL                             R23 1 1
      148 MOVE                             R22 R23
      149 RETURN                           R22 1
