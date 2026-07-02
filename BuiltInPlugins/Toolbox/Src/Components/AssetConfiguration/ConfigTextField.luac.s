PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentContent"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentContent"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["props"]
       10 GETTABLEKS                       R1 R1 K4 ["TextChangeCallBack"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+44]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["cursorPosition"]
        4 JUMPIFNOT                        R2 ; [+40]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["textInputRef"]
        8 GETTABLEKS                       R2 R2 K2 ["current"]
       10 JUMPIFNOT                        R2 ; [+34]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["textInputRef"]
       14 GETTABLEKS                       R2 R2 K2 ["current"]
       16 GETTABLEKS                       R2 R2 K3 ["CaptureFocus"]
       18 JUMPIFNOT                        R2 ; [+26]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K1 ["textInputRef"]
       22 GETTABLEKS                       R2 R2 K2 ["current"]
       24 GETTABLEKS                       R2 R2 K4 ["CursorPosition"]
       26 JUMPIFNOT                        R2 ; [+18]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K0 ["cursorPosition"]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K1 ["textInputRef"]
       33 GETTABLEKS                       R3 R3 K2 ["current"]
       35 NAMECALL                         R3 R3 K3 ["CaptureFocus"]
       37 CALL                             R3 1 0
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K1 ["textInputRef"]
       41 GETTABLEKS                       R3 R3 K2 ["current"]
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
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["createRef"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textInputRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+20]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["textInputRef"]
        9 GETTABLEKS                       R0 R0 K1 ["current"]
       11 GETTABLEKS                       R0 R0 K2 ["CursorPosition"]
       13 LOADN                            R1 0
       14 JUMPIFNOTLE                      R1 R0 ; [+11]
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["textInputRef"]
       20 GETTABLEKS                       R1 R1 K1 ["current"]
       22 GETTABLEKS                       R1 R1 K2 ["CursorPosition"]
       24 SETTABLEKS                       R1 R0 K3 ["cursorPosition"]
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+27]
        2 GETTABLEKS                       R1 R0 K0 ["textInputRef"]
        4 GETTABLEKS                       R1 R1 K1 ["current"]
        6 JUMPIFNOT                        R1 ; [+22]
        7 GETTABLEKS                       R1 R0 K0 ["textInputRef"]
        9 GETTABLEKS                       R1 R1 K1 ["current"]
       11 GETTABLEKS                       R1 R1 K2 ["GetPropertyChangedSignal"]
       13 JUMPIFNOT                        R1 ; [+15]
       14 GETTABLEKS                       R1 R0 K0 ["textInputRef"]
       16 GETTABLEKS                       R1 R1 K1 ["current"]
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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
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
       22 GETTABLEKS                       R10 R0 K0 ["props"]
       24 GETTABLEKS                       R10 R10 K10 ["ErrorCallback"]
       26 JUMPIFNOT                        R10 ; [+34]
       27 LENGTH                           R10 R9
       28 GETTABLEKS                       R11 R0 K0 ["props"]
       30 GETTABLEKS                       R11 R11 K6 ["MaxCount"]
       32 JUMPIFNOTLT                      R11 R10 ; [+15]
       34 GETTABLEKS                       R10 R0 K11 ["hasError"]
       36 JUMPIF                           R10 ; [+24]
       37 LOADB                            R10 1
       38 SETTABLEKS                       R10 R0 K11 ["hasError"]
       40 GETTABLEKS                       R10 R0 K0 ["props"]
       42 GETTABLEKS                       R10 R10 K10 ["ErrorCallback"]
       44 GETTABLEKS                       R11 R0 K11 ["hasError"]
       46 CALL                             R10 1 0
       47 JUMP                             ; [+13]
       48 GETTABLEKS                       R10 R0 K11 ["hasError"]
       50 JUMPIFNOT                        R10 ; [+10]
       51 LOADB                            R10 0
       52 SETTABLEKS                       R10 R0 K11 ["hasError"]
       54 GETTABLEKS                       R10 R0 K0 ["props"]
       56 GETTABLEKS                       R10 R10 K10 ["ErrorCallback"]
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
      101 GETUPVAL                         R17 1
      102 GETTABLEKS                       R17 R17 K18 ["new"]
      104 CALL                             R17 0 1
      105 GETTABLEKS                       R18 R1 K19 ["assetConfig"]
      107 GETTABLEKS                       R18 R18 K20 ["inputBottomText"]
      109 GETUPVAL                         R19 2
      110 CALL                             R19 0 1
      111 JUMPIFNOT                        R19 ; [+159]
      112 GETUPVAL                         R19 3
      113 GETTABLEKS                       R19 R19 K21 ["createElement"]
      115 GETUPVAL                         R20 4
      116 DUPTABLE                         R21 K22 [{"LayoutOrder", "Title"}]
      117 SETTABLEKS                       R6 R21 K5 ["LayoutOrder"]
      119 SETTABLEKS                       R4 R21 K3 ["Title"]
      121 DUPTABLE                         R22 K24 [{"TextFieldWrapper"}]
      122 GETUPVAL                         R23 3
      123 GETTABLEKS                       R23 R23 K21 ["createElement"]
      125 GETUPVAL                         R24 5
      126 GETTABLEKS                       R24 R24 K25 ["View"]
      128 DUPTABLE                         R25 K29 [{["tag"] = "size-full-x col align-x-left gap-small auto-y", ["LayoutOrder"], ["Size"]}]
      129 NAMECALL                         R26 R17 K30 ["getNextOrder"]
      131 CALL                             R26 1 1
      132 SETTABLEKS                       R26 R25 K5 ["LayoutOrder"]
      134 GETIMPORT                        R26 K32 [UDim2.new]
      136 LOADN                            R27 1
      137 LOADN                            R28 0
      138 LOADN                            R29 0
      139 MOVE                             R30 R5
      140 CALL                             R26 4 1
      141 SETTABLEKS                       R26 R25 K28 ["Size"]
      143 DUPTABLE                         R26 K35 [{"TextField", "BottomTextWrapper"}]
      144 JUMPIFNOT                        R16 ; [+40]
      145 GETUPVAL                         R27 3
      146 GETTABLEKS                       R27 R27 K21 ["createElement"]
      148 GETUPVAL                         R28 5
      149 GETTABLEKS                       R28 R28 K36 ["TextArea"]
      151 DUPTABLE                         R29 K45 [{["LayoutOrder"], ["text"], ["onChanged"], ["label"] = "", ["hint"], ["hasError"], ["numLines"] = 6, ["size"], ["width"]}]
      152 NAMECALL                         R30 R17 K30 ["getNextOrder"]
      154 CALL                             R30 1 1
      155 SETTABLEKS                       R30 R29 K5 ["LayoutOrder"]
      157 SETTABLEKS                       R9 R29 K37 ["text"]
      159 GETTABLEKS                       R30 R0 K46 ["onTextChanged"]
      161 SETTABLEKS                       R30 R29 K38 ["onChanged"]
      163 SETTABLEKS                       R15 R29 K40 ["hint"]
      165 SETTABLEKS                       R14 R29 K11 ["hasError"]
      167 GETUPVAL                         R30 5
      168 GETTABLEKS                       R30 R30 K47 ["Enums"]
      170 GETTABLEKS                       R30 R30 K48 ["InputSize"]
      172 GETTABLEKS                       R30 R30 K49 ["Small"]
      174 SETTABLEKS                       R30 R29 K43 ["size"]
      176 GETIMPORT                        R30 K51 [UDim.new]
      178 LOADN                            R31 1
      179 LOADN                            R32 0
      180 CALL                             R30 2 1
      181 SETTABLEKS                       R30 R29 K44 ["width"]
      183 CALL                             R27 2 1
      184 JUMP                             ; [+39]
      185 GETUPVAL                         R27 3
      186 GETTABLEKS                       R27 R27 K21 ["createElement"]
      188 GETUPVAL                         R28 5
      189 GETTABLEKS                       R28 R28 K52 ["TextInput"]
      191 DUPTABLE                         R29 K54 [{["LayoutOrder"], ["text"], ["onChanged"], ["label"] = "", ["hint"], ["hasError"], ["numLines"] = 1, ["size"], ["width"]}]
      192 NAMECALL                         R30 R17 K30 ["getNextOrder"]
      194 CALL                             R30 1 1
      195 SETTABLEKS                       R30 R29 K5 ["LayoutOrder"]
      197 SETTABLEKS                       R9 R29 K37 ["text"]
      199 GETTABLEKS                       R30 R0 K46 ["onTextChanged"]
      201 SETTABLEKS                       R30 R29 K38 ["onChanged"]
      203 SETTABLEKS                       R15 R29 K40 ["hint"]
      205 SETTABLEKS                       R14 R29 K11 ["hasError"]
      207 GETUPVAL                         R30 5
      208 GETTABLEKS                       R30 R30 K47 ["Enums"]
      210 GETTABLEKS                       R30 R30 K48 ["InputSize"]
      212 GETTABLEKS                       R30 R30 K49 ["Small"]
      214 SETTABLEKS                       R30 R29 K43 ["size"]
      216 GETIMPORT                        R30 K51 [UDim.new]
      218 LOADN                            R31 1
      219 LOADN                            R32 0
      220 CALL                             R30 2 1
      221 SETTABLEKS                       R30 R29 K44 ["width"]
      223 CALL                             R27 2 1
      224 SETTABLEKS                       R27 R26 K33 ["TextField"]
      226 GETTABLEKS                       R28 R2 K55 ["BottomRightText"]
      228 JUMPIFNOT                        R28 ; [+34]
      229 GETUPVAL                         R27 3
      230 GETTABLEKS                       R27 R27 K21 ["createElement"]
      232 GETUPVAL                         R28 5
      233 GETTABLEKS                       R28 R28 K25 ["View"]
      235 DUPTABLE                         R29 K57 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      236 NAMECALL                         R30 R17 K30 ["getNextOrder"]
      238 CALL                             R30 1 1
      239 SETTABLEKS                       R30 R29 K5 ["LayoutOrder"]
      241 DUPTABLE                         R30 K59 [{"BottomText"}]
      242 GETUPVAL                         R31 3
      243 GETTABLEKS                       R31 R31 K21 ["createElement"]
      245 GETUPVAL                         R32 5
      246 GETTABLEKS                       R32 R32 K60 ["Text"]
      248 DUPTABLE                         R33 K62 [{["tag"] = "size-full-0 auto-y text-caption-small text-align-x-right content-muted", ["Text"], ["LayoutOrder"]}]
      249 GETTABLEKS                       R34 R2 K55 ["BottomRightText"]
      251 SETTABLEKS                       R34 R33 K60 ["Text"]
      253 NAMECALL                         R34 R17 K30 ["getNextOrder"]
      255 CALL                             R34 1 1
      256 SETTABLEKS                       R34 R33 K5 ["LayoutOrder"]
      258 CALL                             R31 2 1
      259 SETTABLEKS                       R31 R30 K58 ["BottomText"]
      261 CALL                             R27 3 1
      262 JUMP                             ; [+1]
      263 LOADNIL                          R27
      264 SETTABLEKS                       R27 R26 K34 ["BottomTextWrapper"]
      266 CALL                             R23 3 1
      267 SETTABLEKS                       R23 R22 K23 ["TextFieldWrapper"]
      269 CALL                             R19 3 -1
      270 RETURN                           R19 -1
      271 GETUPVAL                         R19 6
      272 GETTABLEKS                       R19 R19 K21 ["createElement"]
      274 GETUPVAL                         R20 4
      275 DUPTABLE                         R21 K22 [{"LayoutOrder", "Title"}]
      276 SETTABLEKS                       R6 R21 K5 ["LayoutOrder"]
      278 SETTABLEKS                       R4 R21 K3 ["Title"]
      280 DUPTABLE                         R22 K24 [{"TextFieldWrapper"}]
      281 GETUPVAL                         R23 6
      282 GETTABLEKS                       R23 R23 K21 ["createElement"]
      284 GETUPVAL                         R24 7
      285 DUPTABLE                         R25 K65 [{"AutomaticSize", "LayoutOrder", "Size", "Spacing"}]
      286 GETIMPORT                        R26 K68 [Enum.AutomaticSize.XY]
      288 SETTABLEKS                       R26 R25 K63 ["AutomaticSize"]
      290 NAMECALL                         R26 R17 K30 ["getNextOrder"]
      292 CALL                             R26 1 1
      293 SETTABLEKS                       R26 R25 K5 ["LayoutOrder"]
      295 GETIMPORT                        R26 K32 [UDim2.new]
      297 LOADN                            R27 1
      298 LOADN                            R28 0
      299 LOADN                            R29 0
      300 MOVE                             R30 R5
      301 CALL                             R26 4 1
      302 SETTABLEKS                       R26 R25 K28 ["Size"]
      304 GETTABLEKS                       R26 R18 K69 ["bottomTextSpacing"]
      306 SETTABLEKS                       R26 R25 K64 ["Spacing"]
      308 DUPTABLE                         R26 K71 [{"UIListLayout", "TextField", "BottomTextWrapper"}]
      309 GETUPVAL                         R27 6
      310 GETTABLEKS                       R27 R27 K21 ["createElement"]
      312 LOADK                            R28 K70 ["UIListLayout"]
      313 DUPTABLE                         R29 K76 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      314 GETIMPORT                        R30 K78 [Enum.FillDirection.Vertical]
      316 SETTABLEKS                       R30 R29 K72 ["FillDirection"]
      318 GETIMPORT                        R30 K80 [Enum.HorizontalAlignment.Left]
      320 SETTABLEKS                       R30 R29 K73 ["HorizontalAlignment"]
      322 GETIMPORT                        R30 K82 [Enum.VerticalAlignment.Top]
      324 SETTABLEKS                       R30 R29 K74 ["VerticalAlignment"]
      326 GETIMPORT                        R30 K83 [Enum.SortOrder.LayoutOrder]
      328 SETTABLEKS                       R30 R29 K75 ["SortOrder"]
      330 CALL                             R27 2 1
      331 SETTABLEKS                       R27 R26 K70 ["UIListLayout"]
      333 GETUPVAL                         R27 6
      334 GETTABLEKS                       R27 R27 K21 ["createElement"]
      336 GETUPVAL                         R28 8
      337 DUPTABLE                         R29 K89 [{"BottomText", "LayoutOrder", "MultiLine", "OnTextChanged", "Size", "StyleModifier", "Text", "OnFocusLost", "ForwardRef"}]
      338 GETTABLEKS                       R31 R2 K55 ["BottomRightText"]
      340 JUMPIFNOT                        R31 ; [+2]
      341 LOADNIL                          R30
      342 JUMP                             ; [+1]
      343 MOVE                             R30 R15
      344 SETTABLEKS                       R30 R29 K58 ["BottomText"]
      346 NAMECALL                         R30 R17 K30 ["getNextOrder"]
      348 CALL                             R30 1 1
      349 SETTABLEKS                       R30 R29 K5 ["LayoutOrder"]
      351 SETTABLEKS                       R16 R29 K84 ["MultiLine"]
      353 GETTABLEKS                       R30 R0 K46 ["onTextChanged"]
      355 SETTABLEKS                       R30 R29 K85 ["OnTextChanged"]
      357 GETIMPORT                        R30 K32 [UDim2.new]
      359 LOADN                            R31 1
      360 LOADN                            R32 0
      361 LOADN                            R33 0
      362 SUBK                             R35 R5 K91 [40]
      363 SUBK                             R34 R35 K90 [20]
      364 CALL                             R30 4 1
      365 SETTABLEKS                       R30 R29 K28 ["Size"]
      367 JUMPIFNOT                        R12 ; [+4]
      368 GETUPVAL                         R30 9
      369 GETTABLEKS                       R30 R30 K92 ["Error"]
      371 JUMP                             ; [+1]
      372 LOADNIL                          R30
      373 SETTABLEKS                       R30 R29 K86 ["StyleModifier"]
      375 SETTABLEKS                       R9 R29 K60 ["Text"]
      377 GETUPVAL                         R31 10
      378 JUMPIFNOT                        R31 ; [+3]
      379 GETTABLEKS                       R30 R0 K93 ["onFocusLost"]
      381 JUMP                             ; [+1]
      382 LOADNIL                          R30
      383 SETTABLEKS                       R30 R29 K87 ["OnFocusLost"]
      385 GETUPVAL                         R31 10
      386 JUMPIFNOT                        R31 ; [+3]
      387 GETTABLEKS                       R30 R0 K94 ["textInputRef"]
      389 JUMP                             ; [+1]
      390 LOADNIL                          R30
      391 SETTABLEKS                       R30 R29 K88 ["ForwardRef"]
      393 CALL                             R27 2 1
      394 SETTABLEKS                       R27 R26 K33 ["TextField"]
      396 GETTABLEKS                       R28 R2 K55 ["BottomRightText"]
      398 JUMPIFNOT                        R28 ; [+112]
      399 GETUPVAL                         R27 6
      400 GETTABLEKS                       R27 R27 K21 ["createElement"]
      402 GETUPVAL                         R28 7
      403 DUPTABLE                         R29 K95 [{"AutomaticSize", "LayoutOrder", "Size"}]
      404 GETIMPORT                        R30 K68 [Enum.AutomaticSize.XY]
      406 SETTABLEKS                       R30 R29 K63 ["AutomaticSize"]
      408 NAMECALL                         R30 R17 K30 ["getNextOrder"]
      410 CALL                             R30 1 1
      411 SETTABLEKS                       R30 R29 K5 ["LayoutOrder"]
      413 GETIMPORT                        R30 K32 [UDim2.new]
      415 LOADN                            R31 1
      416 LOADN                            R32 0
      417 LOADN                            R33 0
      418 LOADN                            R34 0
      419 CALL                             R30 4 1
      420 SETTABLEKS                       R30 R29 K28 ["Size"]
      422 DUPTABLE                         R30 K97 [{"CounterText", "BottomText"}]
      423 GETUPVAL                         R31 6
      424 GETTABLEKS                       R31 R31 K21 ["createElement"]
      426 GETUPVAL                         R32 11
      427 DUPTABLE                         R33 K101 [{"AutomaticSize", "LayoutOrder", "Size", "TextXAlignment", "Text", "TextColor", "TextSize"}]
      428 GETIMPORT                        R34 K68 [Enum.AutomaticSize.XY]
      430 SETTABLEKS                       R34 R33 K63 ["AutomaticSize"]
      432 NAMECALL                         R34 R17 K30 ["getNextOrder"]
      434 CALL                             R34 1 1
      435 SETTABLEKS                       R34 R33 K5 ["LayoutOrder"]
      437 GETIMPORT                        R34 K32 [UDim2.new]
      439 LOADN                            R35 1
      440 LOADN                            R36 0
      441 LOADN                            R37 0
      442 LOADN                            R38 0
      443 CALL                             R34 4 1
      444 SETTABLEKS                       R34 R33 K28 ["Size"]
      446 GETIMPORT                        R34 K102 [Enum.TextXAlignment.Left]
      448 SETTABLEKS                       R34 R33 K98 ["TextXAlignment"]
      450 SETTABLEKS                       R15 R33 K60 ["Text"]
      452 JUMPIFNOT                        R12 ; [+3]
      453 GETTABLEKS                       R34 R18 K103 ["textErrorColor"]
      455 JUMP                             ; [+2]
      456 GETTABLEKS                       R34 R18 K104 ["textColor"]
      458 SETTABLEKS                       R34 R33 K99 ["TextColor"]
      460 GETTABLEKS                       R34 R18 K105 ["textSize"]
      462 SETTABLEKS                       R34 R33 K100 ["TextSize"]
      464 CALL                             R31 2 1
      465 SETTABLEKS                       R31 R30 K96 ["CounterText"]
      467 GETUPVAL                         R31 6
      468 GETTABLEKS                       R31 R31 K21 ["createElement"]
      470 GETUPVAL                         R32 11
      471 DUPTABLE                         R33 K106 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment"}]
      472 GETIMPORT                        R34 K108 [Enum.AutomaticSize.Y]
      474 SETTABLEKS                       R34 R33 K63 ["AutomaticSize"]
      476 NAMECALL                         R34 R17 K30 ["getNextOrder"]
      478 CALL                             R34 1 1
      479 SETTABLEKS                       R34 R33 K5 ["LayoutOrder"]
      481 GETIMPORT                        R34 K32 [UDim2.new]
      483 LOADN                            R35 1
      484 LOADN                            R36 0
      485 LOADN                            R37 0
      486 LOADN                            R38 0
      487 CALL                             R34 4 1
      488 SETTABLEKS                       R34 R33 K28 ["Size"]
      490 GETTABLEKS                       R34 R2 K55 ["BottomRightText"]
      492 SETTABLEKS                       R34 R33 K60 ["Text"]
      494 GETTABLEKS                       R34 R18 K104 ["textColor"]
      496 SETTABLEKS                       R34 R33 K99 ["TextColor"]
      498 GETTABLEKS                       R34 R18 K105 ["textSize"]
      500 SETTABLEKS                       R34 R33 K100 ["TextSize"]
      502 GETIMPORT                        R34 K110 [Enum.TextXAlignment.Right]
      504 SETTABLEKS                       R34 R33 K98 ["TextXAlignment"]
      506 CALL                             R31 2 1
      507 SETTABLEKS                       R31 R30 K58 ["BottomText"]
      509 CALL                             R27 3 1
      510 JUMP                             ; [+1]
      511 LOADNIL                          R27
      512 SETTABLEKS                       R27 R26 K34 ["BottomTextWrapper"]
      514 CALL                             R23 3 1
      515 SETTABLEKS                       R23 R22 K23 ["TextFieldWrapper"]
      517 CALL                             R19 3 -1
      518 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       35 GETTABLEKS                       R7 R0 K10 ["Src"]
       37 GETTABLEKS                       R7 R7 K11 ["Flags"]
       39 GETTABLEKS                       R7 R7 K12 ["getFFlagToolboxAssetConfigFoundationMigration"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R4 K13 ["ContextServices"]
       44 GETTABLEKS                       R8 R7 K14 ["withContext"]
       46 GETTABLEKS                       R9 R0 K10 ["Src"]
       48 GETTABLEKS                       R9 R9 K15 ["Util"]
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R11 R9 K16 ["Constants"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R12 R9 K17 ["AssetConfigConstants"]
       59 CALL                             R11 1 1
       60 GETTABLEKS                       R12 R4 K15 ["Util"]
       62 GETTABLEKS                       R12 R12 K18 ["LayoutOrderIterator"]
       64 GETTABLEKS                       R13 R4 K15 ["Util"]
       66 GETTABLEKS                       R13 R13 K19 ["StyleModifier"]
       68 GETTABLEKS                       R14 R4 K20 ["UI"]
       70 GETTABLEKS                       R15 R14 K21 ["Pane"]
       72 GETTABLEKS                       R16 R14 K22 ["TextInput"]
       74 GETTABLEKS                       R17 R14 K23 ["TextLabel"]
       76 GETTABLEKS                       R18 R0 K10 ["Src"]
       78 GETTABLEKS                       R18 R18 K24 ["Components"]
       80 GETTABLEKS                       R18 R18 K25 ["AssetConfiguration"]
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
      102 GETTABLEKS                       R22 R0 K10 ["Src"]
      104 GETTABLEKS                       R22 R22 K11 ["Flags"]
      106 GETTABLEKS                       R22 R22 K32 ["getFFlagAvatarPreviewerUpdateDialogUI"]
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
