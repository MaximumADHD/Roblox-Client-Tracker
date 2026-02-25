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
       73 JUMPIFNOT                        R7 ; [+5]
       74 MOVE                             R14 R11
       75 LOADK                            R15 K16 ["/"]
       76 MOVE                             R16 R7
       77 CONCAT                           R13 R14 R16
       78 JUMPIF                           R13 ; [+1]
       79 LOADK                            R13 K7 [""]
       80 MOVE                             R14 R7
       81 JUMPIFNOT                        R14 ; [+5]
       82 LOADN                            R15 50
       83 JUMPIFLT                         R15 R7 ; [+2]
       85 LOADB                            R14 0 +1
       86 LOADB                            R14 1
       87 GETUPVAL                         R16 0
       88 GETTABLEKS                       R15 R16 K17 ["new"]
       90 CALL                             R15 0 1
       91 GETTABLEKS                       R17 R1 K18 ["assetConfig"]
       93 GETTABLEKS                       R16 R17 K19 ["inputBottomText"]
       95 GETUPVAL                         R18 1
       96 GETTABLEKS                       R17 R18 K20 ["createElement"]
       98 GETUPVAL                         R18 2
       99 DUPTABLE                         R19 K21 [{"LayoutOrder", "Title"}]
      100 SETTABLEKS                       R6 R19 K5 ["LayoutOrder"]
      102 SETTABLEKS                       R4 R19 K3 ["Title"]
      104 DUPTABLE                         R20 K23 [{"TextFieldWrapper"}]
      105 GETUPVAL                         R22 1
      106 GETTABLEKS                       R21 R22 K20 ["createElement"]
      108 GETUPVAL                         R22 3
      109 DUPTABLE                         R23 K27 [{"AutomaticSize", "LayoutOrder", "Size", "Spacing"}]
      110 GETIMPORT                        R24 K30 [Enum.AutomaticSize.XY]
      112 SETTABLEKS                       R24 R23 K24 ["AutomaticSize"]
      114 NAMECALL                         R24 R15 K31 ["getNextOrder"]
      116 CALL                             R24 1 1
      117 SETTABLEKS                       R24 R23 K5 ["LayoutOrder"]
      119 GETIMPORT                        R24 K33 [UDim2.new]
      121 LOADN                            R25 1
      122 LOADN                            R26 0
      123 LOADN                            R27 0
      124 MOVE                             R28 R5
      125 CALL                             R24 4 1
      126 SETTABLEKS                       R24 R23 K25 ["Size"]
      128 GETTABLEKS                       R24 R16 K34 ["bottomTextSpacing"]
      130 SETTABLEKS                       R24 R23 K26 ["Spacing"]
      132 DUPTABLE                         R24 K38 [{"UIListLayout", "TextField", "BottomTextWrapper"}]
      133 GETUPVAL                         R26 1
      134 GETTABLEKS                       R25 R26 K20 ["createElement"]
      136 LOADK                            R26 K35 ["UIListLayout"]
      137 DUPTABLE                         R27 K43 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      138 GETIMPORT                        R28 K45 [Enum.FillDirection.Vertical]
      140 SETTABLEKS                       R28 R27 K39 ["FillDirection"]
      142 GETIMPORT                        R28 K47 [Enum.HorizontalAlignment.Left]
      144 SETTABLEKS                       R28 R27 K40 ["HorizontalAlignment"]
      146 GETIMPORT                        R28 K49 [Enum.VerticalAlignment.Top]
      148 SETTABLEKS                       R28 R27 K41 ["VerticalAlignment"]
      150 GETIMPORT                        R28 K50 [Enum.SortOrder.LayoutOrder]
      152 SETTABLEKS                       R28 R27 K42 ["SortOrder"]
      154 CALL                             R25 2 1
      155 SETTABLEKS                       R25 R24 K35 ["UIListLayout"]
      157 GETUPVAL                         R26 1
      158 GETTABLEKS                       R25 R26 K20 ["createElement"]
      160 GETUPVAL                         R26 4
      161 DUPTABLE                         R27 K58 [{"BottomText", "LayoutOrder", "MultiLine", "OnTextChanged", "Size", "StyleModifier", "Text", "OnFocusLost", "ForwardRef"}]
      162 GETTABLEKS                       R29 R2 K59 ["BottomRightText"]
      164 JUMPIFNOT                        R29 ; [+2]
      165 LOADNIL                          R28
      166 JUMP                             ; [+1]
      167 MOVE                             R28 R13
      168 SETTABLEKS                       R28 R27 K51 ["BottomText"]
      170 NAMECALL                         R28 R15 K31 ["getNextOrder"]
      172 CALL                             R28 1 1
      173 SETTABLEKS                       R28 R27 K5 ["LayoutOrder"]
      175 SETTABLEKS                       R14 R27 K52 ["MultiLine"]
      177 GETTABLEKS                       R28 R0 K60 ["onTextChanged"]
      179 SETTABLEKS                       R28 R27 K53 ["OnTextChanged"]
      181 GETIMPORT                        R28 K33 [UDim2.new]
      183 LOADN                            R29 1
      184 LOADN                            R30 0
      185 LOADN                            R31 0
      186 SUBK                             R33 R5 K62 [40]
      187 SUBK                             R32 R33 K61 [20]
      188 CALL                             R28 4 1
      189 SETTABLEKS                       R28 R27 K25 ["Size"]
      191 JUMPIFNOT                        R12 ; [+4]
      192 GETUPVAL                         R29 5
      193 GETTABLEKS                       R28 R29 K63 ["Error"]
      195 JUMP                             ; [+1]
      196 LOADNIL                          R28
      197 SETTABLEKS                       R28 R27 K54 ["StyleModifier"]
      199 SETTABLEKS                       R9 R27 K55 ["Text"]
      201 GETUPVAL                         R29 6
      202 JUMPIFNOT                        R29 ; [+3]
      203 GETTABLEKS                       R28 R0 K64 ["onFocusLost"]
      205 JUMP                             ; [+1]
      206 LOADNIL                          R28
      207 SETTABLEKS                       R28 R27 K56 ["OnFocusLost"]
      209 GETUPVAL                         R29 6
      210 JUMPIFNOT                        R29 ; [+3]
      211 GETTABLEKS                       R28 R0 K65 ["textInputRef"]
      213 JUMP                             ; [+1]
      214 LOADNIL                          R28
      215 SETTABLEKS                       R28 R27 K57 ["ForwardRef"]
      217 CALL                             R25 2 1
      218 SETTABLEKS                       R25 R24 K36 ["TextField"]
      220 GETTABLEKS                       R26 R2 K59 ["BottomRightText"]
      222 JUMPIFNOT                        R26 ; [+112]
      223 GETUPVAL                         R26 1
      224 GETTABLEKS                       R25 R26 K20 ["createElement"]
      226 GETUPVAL                         R26 3
      227 DUPTABLE                         R27 K66 [{"AutomaticSize", "LayoutOrder", "Size"}]
      228 GETIMPORT                        R28 K30 [Enum.AutomaticSize.XY]
      230 SETTABLEKS                       R28 R27 K24 ["AutomaticSize"]
      232 NAMECALL                         R28 R15 K31 ["getNextOrder"]
      234 CALL                             R28 1 1
      235 SETTABLEKS                       R28 R27 K5 ["LayoutOrder"]
      237 GETIMPORT                        R28 K33 [UDim2.new]
      239 LOADN                            R29 1
      240 LOADN                            R30 0
      241 LOADN                            R31 0
      242 LOADN                            R32 0
      243 CALL                             R28 4 1
      244 SETTABLEKS                       R28 R27 K25 ["Size"]
      246 DUPTABLE                         R28 K68 [{"CounterText", "BottomText"}]
      247 GETUPVAL                         R30 1
      248 GETTABLEKS                       R29 R30 K20 ["createElement"]
      250 GETUPVAL                         R30 7
      251 DUPTABLE                         R31 K72 [{"AutomaticSize", "LayoutOrder", "Size", "TextXAlignment", "Text", "TextColor", "TextSize"}]
      252 GETIMPORT                        R32 K30 [Enum.AutomaticSize.XY]
      254 SETTABLEKS                       R32 R31 K24 ["AutomaticSize"]
      256 NAMECALL                         R32 R15 K31 ["getNextOrder"]
      258 CALL                             R32 1 1
      259 SETTABLEKS                       R32 R31 K5 ["LayoutOrder"]
      261 GETIMPORT                        R32 K33 [UDim2.new]
      263 LOADN                            R33 1
      264 LOADN                            R34 0
      265 LOADN                            R35 0
      266 LOADN                            R36 0
      267 CALL                             R32 4 1
      268 SETTABLEKS                       R32 R31 K25 ["Size"]
      270 GETIMPORT                        R32 K73 [Enum.TextXAlignment.Left]
      272 SETTABLEKS                       R32 R31 K69 ["TextXAlignment"]
      274 SETTABLEKS                       R13 R31 K55 ["Text"]
      276 JUMPIFNOT                        R12 ; [+3]
      277 GETTABLEKS                       R32 R16 K74 ["textErrorColor"]
      279 JUMP                             ; [+2]
      280 GETTABLEKS                       R32 R16 K75 ["textColor"]
      282 SETTABLEKS                       R32 R31 K70 ["TextColor"]
      284 GETTABLEKS                       R32 R16 K76 ["textSize"]
      286 SETTABLEKS                       R32 R31 K71 ["TextSize"]
      288 CALL                             R29 2 1
      289 SETTABLEKS                       R29 R28 K67 ["CounterText"]
      291 GETUPVAL                         R30 1
      292 GETTABLEKS                       R29 R30 K20 ["createElement"]
      294 GETUPVAL                         R30 7
      295 DUPTABLE                         R31 K77 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment"}]
      296 GETIMPORT                        R32 K79 [Enum.AutomaticSize.Y]
      298 SETTABLEKS                       R32 R31 K24 ["AutomaticSize"]
      300 NAMECALL                         R32 R15 K31 ["getNextOrder"]
      302 CALL                             R32 1 1
      303 SETTABLEKS                       R32 R31 K5 ["LayoutOrder"]
      305 GETIMPORT                        R32 K33 [UDim2.new]
      307 LOADN                            R33 1
      308 LOADN                            R34 0
      309 LOADN                            R35 0
      310 LOADN                            R36 0
      311 CALL                             R32 4 1
      312 SETTABLEKS                       R32 R31 K25 ["Size"]
      314 GETTABLEKS                       R32 R2 K59 ["BottomRightText"]
      316 SETTABLEKS                       R32 R31 K55 ["Text"]
      318 GETTABLEKS                       R32 R16 K75 ["textColor"]
      320 SETTABLEKS                       R32 R31 K70 ["TextColor"]
      322 GETTABLEKS                       R32 R16 K76 ["textSize"]
      324 SETTABLEKS                       R32 R31 K71 ["TextSize"]
      326 GETIMPORT                        R32 K81 [Enum.TextXAlignment.Right]
      328 SETTABLEKS                       R32 R31 K69 ["TextXAlignment"]
      330 CALL                             R29 2 1
      331 SETTABLEKS                       R29 R28 K51 ["BottomText"]
      333 CALL                             R25 3 1
      334 JUMP                             ; [+1]
      335 LOADNIL                          R25
      336 SETTABLEKS                       R25 R24 K37 ["BottomTextWrapper"]
      338 CALL                             R21 3 1
      339 SETTABLEKS                       R21 R20 K22 ["TextFieldWrapper"]
      341 CALL                             R17 3 -1
      342 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       25 GETTABLEKS                       R5 R4 K9 ["withContext"]
       27 GETTABLEKS                       R7 R0 K10 ["Src"]
       29 GETTABLEKS                       R6 R7 K11 ["Util"]
       31 GETIMPORT                        R7 K5 [require]
       33 GETTABLEKS                       R8 R6 K12 ["Constants"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R9 R6 K13 ["AssetConfigConstants"]
       40 CALL                             R8 1 1
       41 GETTABLEKS                       R10 R3 K11 ["Util"]
       43 GETTABLEKS                       R9 R10 K14 ["LayoutOrderIterator"]
       45 GETTABLEKS                       R11 R3 K11 ["Util"]
       47 GETTABLEKS                       R10 R11 K15 ["StyleModifier"]
       49 GETTABLEKS                       R11 R3 K16 ["UI"]
       51 GETTABLEKS                       R12 R11 K17 ["Pane"]
       53 GETTABLEKS                       R13 R11 K18 ["TextInput"]
       55 GETTABLEKS                       R14 R11 K19 ["TextLabel"]
       57 GETTABLEKS                       R17 R0 K10 ["Src"]
       59 GETTABLEKS                       R16 R17 K20 ["Components"]
       61 GETTABLEKS                       R15 R16 K21 ["AssetConfiguration"]
       63 GETIMPORT                        R16 K5 [require]
       65 GETTABLEKS                       R17 R15 K22 ["ConfigSectionWrapper"]
       67 CALL                             R16 1 1
       68 GETIMPORT                        R17 K24 [game]
       70 LOADK                            R19 K25 ["AssetConfigurationFixConfigTextFieldEnterLosingFocus"]
       71 LOADB                            R20 0
       72 NAMECALL                         R17 R17 K26 ["DefineFastFlag"]
       74 CALL                             R17 3 0
       75 GETIMPORT                        R17 K24 [game]
       77 LOADK                            R19 K25 ["AssetConfigurationFixConfigTextFieldEnterLosingFocus"]
       78 NAMECALL                         R17 R17 K27 ["GetFastFlag"]
       80 CALL                             R17 2 1
       81 GETTABLEKS                       R18 R2 K28 ["PureComponent"]
       83 LOADK                            R20 K29 ["ConfigTextField"]
       84 NAMECALL                         R18 R18 K30 ["extend"]
       86 CALL                             R18 2 1
       87 DUPCLOSURE                       R19 K31 [PROTO_2]
       88 CAPTURE                          VAL R17
       89 CAPTURE                          VAL R2
       90 SETTABLEKS                       R19 R18 K32 ["init"]
       92 DUPCLOSURE                       R19 K33 [PROTO_4]
       93 CAPTURE                          VAL R17
       94 SETTABLEKS                       R19 R18 K34 ["didMount"]
       96 DUPCLOSURE                       R19 K35 [PROTO_5]
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R14
      105 SETTABLEKS                       R19 R18 K36 ["render"]
      107 MOVE                             R19 R5
      108 DUPTABLE                         R20 K38 [{"Stylizer"}]
      109 GETTABLEKS                       R21 R4 K37 ["Stylizer"]
      111 SETTABLEKS                       R21 R20 K37 ["Stylizer"]
      113 CALL                             R19 1 1
      114 MOVE                             R20 R18
      115 CALL                             R19 1 1
      116 MOVE                             R18 R19
      117 RETURN                           R18 1
