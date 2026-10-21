PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K1 ["Value"]
        3 ORK                              R0 R1 K0 [""]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOTEQ                      R0 R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K1 ["Value"]
       12 ORK                              R1 R2 K0 [""]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Text"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onExpressionChanged"]
        6 GETTABLEKS                       R2 R0 K1 ["Text"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["current"]
        6 JUMPIFNOT                        R1 ; [+8]
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["scrollTextBoxCursorIntoView"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 CALL                             R3 3 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["IsFocused"]
        5 CALL                             R0 1 1
        6 JUMPIF                           R0 ; [+4]
        7 GETUPVAL                         R0 0
        8 NAMECALL                         R0 R0 K1 ["CaptureFocus"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeZoomRatio"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["getFittedTextBoxSize"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["TextBounds"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["AbsoluteSize"]
       15 MOVE                             R5 R0
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K4 ["TextSize"]
       19 CALL                             R2 4 1
       20 SETTABLEKS                       R2 R1 K5 ["Size"]
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K6 ["scrollTextBoxCursorIntoView"]
       25 GETUPVAL                         R2 1
       26 GETUPVAL                         R3 3
       27 GETUPVAL                         R4 4
       28 CALL                             R1 3 0
       29 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+2]
        8 JUMPIFNOT                        R1 ; [+1]
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 NEWTABLE                         R4 0 2
       19 LOADK                            R7 K1 ["TextBounds"]
       20 NAMECALL                         R5 R0 K2 ["GetPropertyChangedSignal"]
       22 CALL                             R5 2 1
       23 MOVE                             R7 R3
       24 NAMECALL                         R5 R5 K3 ["Connect"]
       26 CALL                             R5 2 1
       27 LOADK                            R8 K4 ["AbsoluteSize"]
       28 NAMECALL                         R6 R1 K2 ["GetPropertyChangedSignal"]
       30 CALL                             R6 2 1
       31 MOVE                             R8 R3
       32 NAMECALL                         R6 R6 K3 ["Connect"]
       34 CALL                             R6 2 -1
       35 SETLIST                          R4 R5 -1 [1]
       37 GETUPVAL                         R5 3
       38 GETTABLEKS                       R5 R5 K5 ["observeZoomRatio"]
       40 LOADB                            R6 0
       41 CALL                             R5 1 1
       42 GETUPVAL                         R6 4
       43 GETTABLEKS                       R6 R6 K6 ["getFittedTextBoxSize"]
       45 GETTABLEKS                       R7 R0 K1 ["TextBounds"]
       47 GETTABLEKS                       R8 R1 K4 ["AbsoluteSize"]
       49 MOVE                             R9 R5
       50 GETTABLEKS                       R10 R0 K7 ["TextSize"]
       52 CALL                             R6 4 1
       53 SETTABLEKS                       R6 R0 K8 ["Size"]
       55 GETUPVAL                         R6 4
       56 GETTABLEKS                       R6 R6 K9 ["scrollTextBoxCursorIntoView"]
       58 MOVE                             R7 R0
       59 MOVE                             R8 R1
       60 MOVE                             R9 R2
       61 CALL                             R6 3 0
       62 NEWCLOSURE                       R5 P1
       63 CAPTURE                          VAL R4
       64 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["matchStudioSettings"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["highlight"]
        3 DUPTABLE                         R1 K2 [{"textObject"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["textObject"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["highlight"]
        6 DUPTABLE                         R1 K2 [{"textObject"}]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K1 ["textObject"]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R1 0
       12 LOADK                            R3 K3 ["Text"]
       13 NAMECALL                         R1 R1 K4 ["GetPropertyChangedSignal"]
       15 CALL                             R1 2 1
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U0
       19 NAMECALL                         R1 R1 K5 ["Connect"]
       21 CALL                             R1 2 1
       22 NEWCLOSURE                       R2 P1
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useContext"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["Context"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K2 ["useContext"]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K3 ["Context"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K4 ["useState"]
       23 GETTABLEKS                       R6 R0 K6 ["Value"]
       25 ORK                              R5 R6 K5 [""]
       26 CALL                             R4 1 2
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K7 ["useEffect"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R5
       34 NEWTABLE                         R8 0 1
       36 GETTABLEKS                       R9 R0 K6 ["Value"]
       38 SETLIST                          R8 R9 1 [1]
       40 CALL                             R6 2 0
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K4 ["useState"]
       44 LOADB                            R7 0
       45 CALL                             R6 1 2
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R8 R8 K4 ["useState"]
       49 LOADNIL                          R9
       50 CALL                             R8 1 2
       51 GETUPVAL                         R10 1
       52 GETTABLEKS                       R10 R10 K8 ["useRef"]
       54 LOADNIL                          R11
       55 CALL                             R10 1 1
       56 GETUPVAL                         R11 1
       57 GETTABLEKS                       R11 R11 K8 ["useRef"]
       59 LOADNIL                          R12
       60 CALL                             R11 1 1
       61 GETTABLEKS                       R12 R1 K9 ["Typography"]
       63 GETTABLEKS                       R12 R12 K10 ["BodySmall"]
       65 GETTABLEKS                       R15 R12 K11 ["Font"]
       67 FASTCALL1                        TYPEOF R15 ; [+2]
       68 GETIMPORT                        R14 K13 [typeof]
       70 CALL                             R14 1 1
       71 JUMPIFNOTEQKS                    R14 K14 ["EnumItem"] ; [+7]
       73 GETIMPORT                        R13 K16 [Font.fromEnum]
       75 GETTABLEKS                       R14 R12 K11 ["Font"]
       77 CALL                             R13 1 1
       78 JUMP                             ; [+2]
       79 GETTABLEKS                       R13 R12 K11 ["Font"]
       81 GETUPVAL                         R14 1
       82 GETTABLEKS                       R14 R14 K17 ["useCallback"]
       84 NEWCLOSURE                       R15 P1
       85 CAPTURE                          VAL R5
       86 NEWTABLE                         R16 0 0
       88 CALL                             R14 2 1
       89 GETUPVAL                         R15 1
       90 GETTABLEKS                       R15 R15 K17 ["useCallback"]
       92 NEWCLOSURE                       R16 P2
       93 CAPTURE                          VAL R7
       94 NEWTABLE                         R17 0 0
       96 CALL                             R15 2 1
       97 GETUPVAL                         R16 1
       98 GETTABLEKS                       R16 R16 K17 ["useCallback"]
      100 NEWCLOSURE                       R17 P3
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R0
      103 NEWTABLE                         R18 0 1
      105 GETTABLEKS                       R19 R0 K18 ["onExpressionChanged"]
      107 SETLIST                          R18 R19 1 [1]
      109 CALL                             R16 2 1
      110 GETUPVAL                         R17 1
      111 GETTABLEKS                       R17 R17 K17 ["useCallback"]
      113 NEWCLOSURE                       R18 P4
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R11
      116 CAPTURE                          UPVAL U4
      117 NEWTABLE                         R19 0 0
      119 CALL                             R17 2 1
      120 GETUPVAL                         R18 1
      121 GETTABLEKS                       R18 R18 K17 ["useCallback"]
      123 NEWCLOSURE                       R19 P5
      124 CAPTURE                          VAL R8
      125 NEWTABLE                         R20 0 1
      127 MOVE                             R21 R8
      128 SETLIST                          R20 R21 1 [1]
      130 CALL                             R18 2 1
      131 GETUPVAL                         R19 1
      132 GETTABLEKS                       R19 R19 K7 ["useEffect"]
      134 NEWCLOSURE                       R20 P6
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R3
      139 CAPTURE                          UPVAL U4
      140 NEWTABLE                         R21 0 2
      142 MOVE                             R22 R8
      143 GETTABLEKS                       R23 R3 K19 ["observeZoomRatio"]
      145 SETLIST                          R21 R22 2 [1]
      147 CALL                             R19 2 0
      148 GETUPVAL                         R19 1
      149 GETTABLEKS                       R19 R19 K7 ["useEffect"]
      151 DUPCLOSURE                       R20 K20 [PROTO_9]
      152 CAPTURE                          UPVAL U5
      153 NEWTABLE                         R21 0 1
      155 GETTABLEKS                       R22 R2 K21 ["themeTextColors"]
      157 SETLIST                          R21 R22 1 [1]
      159 CALL                             R19 2 0
      160 GETUPVAL                         R19 1
      161 GETTABLEKS                       R19 R19 K7 ["useEffect"]
      163 NEWCLOSURE                       R20 P8
      164 CAPTURE                          VAL R8
      165 CAPTURE                          UPVAL U5
      166 NEWTABLE                         R21 0 1
      168 MOVE                             R22 R8
      169 SETLIST                          R21 R22 1 [1]
      171 CALL                             R19 2 0
      172 JUMPIFNOT                        R6 ; [+7]
      173 GETTABLEKS                       R19 R1 K22 ["Color"]
      175 GETTABLEKS                       R19 R19 K23 ["System"]
      177 GETTABLEKS                       R19 R19 K24 ["Emphasis"]
      179 JUMP                             ; [+6]
      180 GETTABLEKS                       R19 R1 K22 ["Color"]
      182 GETTABLEKS                       R19 R19 K25 ["Stroke"]
      184 GETTABLEKS                       R19 R19 K24 ["Emphasis"]
      186 GETUPVAL                         R20 0
      187 GETTABLEKS                       R20 R20 K0 ["Hooks"]
      189 GETTABLEKS                       R20 R20 K26 ["useDefaultTags"]
      191 GETTABLEKS                       R21 R0 K27 ["tags"]
      193 LOADK                            R22 K28 ["size-full padding-xsmall"]
      194 CALL                             R20 2 1
      195 GETUPVAL                         R21 1
      196 GETTABLEKS                       R21 R21 K29 ["createElement"]
      198 GETUPVAL                         R22 0
      199 GETTABLEKS                       R22 R22 K30 ["View"]
      201 DUPTABLE                         R23 K34 [{"tag", "LayoutOrder", "testId"}]
      202 SETTABLEKS                       R20 R23 K31 ["tag"]
      204 GETTABLEKS                       R24 R0 K32 ["LayoutOrder"]
      206 SETTABLEKS                       R24 R23 K32 ["LayoutOrder"]
      208 GETTABLEKS                       R24 R0 K33 ["testId"]
      210 SETTABLEKS                       R24 R23 K33 ["testId"]
      212 DUPTABLE                         R24 K36 [{"Field"}]
      213 GETUPVAL                         R25 1
      214 GETTABLEKS                       R25 R25 K29 ["createElement"]
      216 GETUPVAL                         R26 0
      217 GETTABLEKS                       R26 R26 K30 ["View"]
      219 DUPTABLE                         R27 K42 [{["tag"] = "size-full padding-xsmall radius-small", ["stroke"], ["onActivated"], ["stateLayer"], ["testId"] = "ExpressionInput"}]
      220 DUPTABLE                         R28 K45 [{"Color", "Transparency", "Thickness"}]
      221 GETTABLEKS                       R29 R19 K46 ["Color3"]
      223 SETTABLEKS                       R29 R28 K22 ["Color"]
      225 GETTABLEKS                       R29 R19 K43 ["Transparency"]
      227 SETTABLEKS                       R29 R28 K43 ["Transparency"]
      229 JUMPIFNOT                        R6 ; [+6]
      230 GETTABLEKS                       R30 R1 K25 ["Stroke"]
      232 GETTABLEKS                       R30 R30 K48 ["Standard"]
      234 MULK                             R29 R30 K47 [2]
      235 JUMP                             ; [+4]
      236 GETTABLEKS                       R29 R1 K25 ["Stroke"]
      238 GETTABLEKS                       R29 R29 K48 ["Standard"]
      240 SETTABLEKS                       R29 R28 K44 ["Thickness"]
      242 SETTABLEKS                       R28 R27 K38 ["stroke"]
      244 GETTABLEKS                       R29 R0 K49 ["IsDisabled"]
      246 JUMPIFNOT                        R29 ; [+2]
      247 LOADNIL                          R28
      248 JUMP                             ; [+1]
      249 MOVE                             R28 R18
      250 SETTABLEKS                       R28 R27 K39 ["onActivated"]
      252 DUPTABLE                         R28 K51 [{"affordance"}]
      253 GETUPVAL                         R29 0
      254 GETTABLEKS                       R29 R29 K52 ["Enums"]
      256 GETTABLEKS                       R29 R29 K53 ["StateLayerAffordance"]
      258 GETTABLEKS                       R29 R29 K54 ["None"]
      260 SETTABLEKS                       R29 R28 K50 ["affordance"]
      262 SETTABLEKS                       R28 R27 K40 ["stateLayer"]
      264 DUPTABLE                         R28 K56 [{"ScrollView"}]
      265 GETUPVAL                         R29 1
      266 GETTABLEKS                       R29 R29 K29 ["createElement"]
      268 GETUPVAL                         R30 0
      269 GETTABLEKS                       R30 R30 K55 ["ScrollView"]
      271 DUPTABLE                         R31 K60 [{["tag"] = "size-full", ["scroll"], ["scrollingFrameRef"]}]
      272 DUPTABLE                         R32 K66 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset", "HorizontalScrollBarInset"}]
      273 GETIMPORT                        R33 K70 [Enum.AutomaticSize.XY]
      275 SETTABLEKS                       R33 R32 K61 ["AutomaticCanvasSize"]
      277 GETIMPORT                        R33 K73 [UDim2.new]
      279 CALL                             R33 0 1
      280 SETTABLEKS                       R33 R32 K62 ["CanvasSize"]
      282 GETIMPORT                        R33 K75 [Enum.ScrollingDirection.Y]
      284 SETTABLEKS                       R33 R32 K63 ["ScrollingDirection"]
      286 GETIMPORT                        R33 K77 [Enum.ScrollBarInset.None]
      288 SETTABLEKS                       R33 R32 K64 ["VerticalScrollBarInset"]
      290 GETIMPORT                        R33 K77 [Enum.ScrollBarInset.None]
      292 SETTABLEKS                       R33 R32 K65 ["HorizontalScrollBarInset"]
      294 SETTABLEKS                       R32 R31 K58 ["scroll"]
      296 SETTABLEKS                       R10 R31 K59 ["scrollingFrameRef"]
      298 DUPTABLE                         R32 K80 [{"TextBox", "CursorMeasure"}]
      299 GETUPVAL                         R33 1
      300 GETTABLEKS                       R33 R33 K29 ["createElement"]
      302 LOADK                            R34 K78 ["TextBox"]
      303 NEWTABLE                         R35 32 0
      305 SETTABLEKS                       R4 R35 K81 ["Text"]
      307 JUMPIFNOT                        R6 ; [+2]
      308 LOADK                            R36 K5 [""]
      309 JUMP                             ; [+3]
      310 GETTABLEKS                       R37 R0 K82 ["Placeholder"]
      312 ORK                              R36 R37 K5 [""]
      313 SETTABLEKS                       R36 R35 K83 ["PlaceholderText"]
      315 GETTABLEKS                       R36 R1 K22 ["Color"]
      317 GETTABLEKS                       R36 R36 K84 ["Content"]
      319 GETTABLEKS                       R36 R36 K85 ["Muted"]
      321 GETTABLEKS                       R36 R36 K46 ["Color3"]
      323 SETTABLEKS                       R36 R35 K86 ["PlaceholderColor3"]
      325 SETTABLEKS                       R13 R35 K87 ["FontFace"]
      327 GETTABLEKS                       R36 R12 K88 ["FontSize"]
      329 SETTABLEKS                       R36 R35 K89 ["TextSize"]
      331 LOADN                            R36 1
      332 SETTABLEKS                       R36 R35 K90 ["LineHeight"]
      334 GETIMPORT                        R36 K93 [Enum.TextXAlignment.Left]
      336 SETTABLEKS                       R36 R35 K91 ["TextXAlignment"]
      338 GETIMPORT                        R36 K96 [Enum.TextYAlignment.Top]
      340 SETTABLEKS                       R36 R35 K94 ["TextYAlignment"]
      342 LOADB                            R36 1
      343 SETTABLEKS                       R36 R35 K97 ["MultiLine"]
      345 LOADB                            R36 0
      346 SETTABLEKS                       R36 R35 K98 ["TextWrapped"]
      348 LOADB                            R36 0
      349 SETTABLEKS                       R36 R35 K99 ["ClearTextOnFocus"]
      351 GETTABLEKS                       R37 R0 K49 ["IsDisabled"]
      353 NOT                              R36 R37
      354 SETTABLEKS                       R36 R35 K100 ["TextEditable"]
      356 LOADB                            R36 0
      357 SETTABLEKS                       R36 R35 K101 ["Selectable"]
      359 LOADN                            R36 1
      360 SETTABLEKS                       R36 R35 K102 ["BackgroundTransparency"]
      362 LOADN                            R36 0
      363 SETTABLEKS                       R36 R35 K103 ["BorderSizePixel"]
      365 SETTABLEKS                       R9 R35 K104 ["ref"]
      367 GETUPVAL                         R36 1
      368 GETTABLEKS                       R36 R36 K105 ["Change"]
      370 GETTABLEKS                       R36 R36 K81 ["Text"]
      372 SETTABLE                         R14 R35 R36
      373 GETUPVAL                         R36 1
      374 GETTABLEKS                       R36 R36 K105 ["Change"]
      376 GETTABLEKS                       R36 R36 K106 ["CursorPosition"]
      378 SETTABLE                         R17 R35 R36
      379 GETUPVAL                         R36 1
      380 GETTABLEKS                       R36 R36 K107 ["Event"]
      382 GETTABLEKS                       R36 R36 K108 ["Focused"]
      384 SETTABLE                         R15 R35 R36
      385 GETUPVAL                         R36 1
      386 GETTABLEKS                       R36 R36 K107 ["Event"]
      388 GETTABLEKS                       R36 R36 K109 ["FocusLost"]
      390 SETTABLE                         R16 R35 R36
      391 CALL                             R33 2 1
      392 SETTABLEKS                       R33 R32 K78 ["TextBox"]
      394 GETUPVAL                         R33 1
      395 GETTABLEKS                       R33 R33 K29 ["createElement"]
      397 LOADK                            R34 K110 ["TextLabel"]
      398 DUPTABLE                         R35 K115 [{["Visible"] = False, ["Text"] = "", ["FontFace"], ["TextSize"], ["TextWrapped"] = False, ["RichText"] = False, ["Size"], ["ref"]}]
      399 SETTABLEKS                       R13 R35 K87 ["FontFace"]
      401 GETTABLEKS                       R36 R12 K88 ["FontSize"]
      403 SETTABLEKS                       R36 R35 K89 ["TextSize"]
      405 GETIMPORT                        R36 K117 [UDim2.fromScale]
      407 LOADN                            R37 1
      408 LOADN                            R38 1
      409 CALL                             R36 2 1
      410 SETTABLEKS                       R36 R35 K114 ["Size"]
      412 SETTABLEKS                       R11 R35 K104 ["ref"]
      414 CALL                             R33 2 1
      415 SETTABLEKS                       R33 R32 K79 ["CursorMeasure"]
      417 CALL                             R29 3 1
      418 SETTABLEKS                       R29 R28 K55 ["ScrollView"]
      420 CALL                             R25 3 1
      421 SETTABLEKS                       R25 R24 K35 ["Field"]
      423 CALL                             R21 3 -1
      424 RETURN                           R21 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K1 ["Value"]
        3 ORK                              R0 R1 K0 [""]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOTEQ                      R0 R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K1 ["Value"]
       12 ORK                              R1 R2 K0 [""]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onExpressionChanged"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["NODE_EXPRESSION_MIN_NUM_LINES"]
        8 RETURN                           R2 1
        9 LOADN                            R3 0
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K1 ["NODE_VIEW_CHILD_HEIGHT"]
       13 SUB                              R4 R1 R5
       14 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       16 GETIMPORT                        R2 K4 [math.max]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K0 ["NODE_EXPRESSION_MIN_NUM_LINES"]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K5 ["NODE_EXPRESSION_LINE_HEIGHT"]
       25 DIV                              R6 R2 R7
       26 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       27 GETIMPORT                        R5 K7 [math.floor]
       29 CALL                             R5 1 1
       30 ADD                              R3 R4 R5
       31 RETURN                           R3 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeControlledHeight"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 GETTABLEKS                       R4 R0 K3 ["Value"]
        9 ORK                              R3 R4 K2 [""]
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K1 ["useState"]
       14 LOADB                            R5 0
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R3
       23 NEWTABLE                         R8 0 1
       25 GETTABLEKS                       R9 R0 K3 ["Value"]
       27 SETLIST                          R8 R9 1 [1]
       29 CALL                             R6 2 0
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R8 0 2
       39 MOVE                             R9 R2
       40 GETTABLEKS                       R10 R0 K6 ["onExpressionChanged"]
       42 SETLIST                          R8 R9 2 [1]
       44 CALL                             R6 2 1
       45 GETUPVAL                         R7 1
       46 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       48 NEWCLOSURE                       R8 P2
       49 CAPTURE                          VAL R5
       50 NEWTABLE                         R9 0 0
       52 CALL                             R7 2 1
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K7 ["useContext"]
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R9 R9 K8 ["Context"]
       59 CALL                             R8 1 1
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R9 R9 K9 ["useMemo"]
       63 NEWCLOSURE                       R10 P3
       64 CAPTURE                          VAL R8
       65 CAPTURE                          UPVAL U3
       66 NEWTABLE                         R11 0 1
       68 GETTABLEKS                       R12 R8 K10 ["observeControlledHeight"]
       70 SETLIST                          R11 R12 1 [1]
       72 CALL                             R9 2 1
       73 GETUPVAL                         R10 4
       74 GETTABLEKS                       R10 R10 K11 ["useSignalState"]
       76 MOVE                             R11 R9
       77 CALL                             R10 1 1
       78 GETUPVAL                         R11 1
       79 GETTABLEKS                       R11 R11 K12 ["createElement"]
       81 GETUPVAL                         R12 5
       82 GETTABLEKS                       R12 R12 K13 ["View"]
       84 DUPTABLE                         R13 K17 [{"tag", "LayoutOrder", "testId"}]
       85 GETUPVAL                         R14 5
       86 GETTABLEKS                       R14 R14 K18 ["Hooks"]
       88 GETTABLEKS                       R14 R14 K19 ["useDefaultTags"]
       90 GETTABLEKS                       R15 R0 K20 ["tags"]
       92 LOADK                            R16 K21 ["col auto-y gap-small size-full-700 padding-xsmall"]
       93 CALL                             R14 2 1
       94 SETTABLEKS                       R14 R13 K14 ["tag"]
       96 GETTABLEKS                       R14 R0 K15 ["LayoutOrder"]
       98 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
      100 GETTABLEKS                       R14 R0 K16 ["testId"]
      102 SETTABLEKS                       R14 R13 K16 ["testId"]
      104 DUPTABLE                         R14 K23 [{"ExpressionTextInput"}]
      105 GETUPVAL                         R15 1
      106 GETTABLEKS                       R15 R15 K12 ["createElement"]
      108 GETUPVAL                         R16 5
      109 GETTABLEKS                       R16 R16 K24 ["TextArea"]
      111 DUPTABLE                         R17 K35 [{["LayoutOrder"], ["label"] = "", ["testId"] = "ExpressionInput", ["text"], ["placeholder"], ["width"], ["numLines"], ["size"], ["onFocusLost"], ["onFocusGained"], ["onChanged"]}]
      112 MOVE                             R18 R1
      113 CALL                             R18 0 1
      114 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      116 SETTABLEKS                       R2 R17 K27 ["text"]
      118 JUMPIFNOT                        R4 ; [+2]
      119 LOADK                            R18 K2 [""]
      120 JUMP                             ; [+3]
      121 GETTABLEKS                       R19 R0 K36 ["Placeholder"]
      123 ORK                              R18 R19 K2 [""]
      124 SETTABLEKS                       R18 R17 K28 ["placeholder"]
      126 GETIMPORT                        R18 K39 [UDim.new]
      128 LOADN                            R19 1
      129 LOADN                            R20 0
      130 CALL                             R18 2 1
      131 SETTABLEKS                       R18 R17 K29 ["width"]
      133 SETTABLEKS                       R10 R17 K30 ["numLines"]
      135 GETUPVAL                         R18 5
      136 GETTABLEKS                       R18 R18 K40 ["Enums"]
      138 GETTABLEKS                       R18 R18 K41 ["InputSize"]
      140 GETTABLEKS                       R18 R18 K42 ["XSmall"]
      142 SETTABLEKS                       R18 R17 K31 ["size"]
      144 SETTABLEKS                       R6 R17 K32 ["onFocusLost"]
      146 SETTABLEKS                       R7 R17 K33 ["onFocusGained"]
      148 SETTABLEKS                       R3 R17 K34 ["onChanged"]
      150 CALL                             R15 2 1
      151 SETTABLEKS                       R15 R14 K22 ["ExpressionTextInput"]
      153 CALL                             R11 3 -1
      154 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CompositorNode"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeComponentContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Constants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["ExpressionInputUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Parent"]
       32 GETTABLEKS                       R5 R5 K13 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Parent"]
       39 GETTABLEKS                       R6 R6 K14 ["Highlighter"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Parent"]
       46 GETTABLEKS                       R7 R7 K15 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K12 ["Parent"]
       53 GETTABLEKS                       R8 R8 K16 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K12 ["Parent"]
       60 GETTABLEKS                       R9 R9 K17 ["Signals"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K12 ["Parent"]
       67 GETTABLEKS                       R10 R10 K18 ["SignalsReact"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["Components"]
       74 GETTABLEKS                       R11 R11 K19 ["StudioThemeTextColorsContext"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Components"]
       81 GETTABLEKS                       R12 R12 K20 ["ViewportRectContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K21 ["Flags"]
       88 GETTABLEKS                       R13 R13 K22 ["getFFlagEnableExpressionSyntaxHighlighting"]
       90 CALL                             R12 1 1
       91 DUPCLOSURE                       R13 K23 [PROTO_13]
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R5
       98 DUPCLOSURE                       R14 K24 [PROTO_19]
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R4
      105 MOVE                             R16 R12
      106 CALL                             R16 0 1
      107 JUMPIFNOT                        R16 ; [+2]
      108 MOVE                             R15 R13
      109 RETURN                           R15 1
      110 MOVE                             R15 R14
      111 RETURN                           R15 1
