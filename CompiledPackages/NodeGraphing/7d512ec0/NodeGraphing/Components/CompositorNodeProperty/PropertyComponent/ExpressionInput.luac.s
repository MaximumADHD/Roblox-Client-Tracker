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
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+3]
        3 GETUPVAL                         R0 0
        4 JUMP                             ; [+5]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["observeZoomRatio"]
        8 LOADB                            R1 0
        9 CALL                             R0 1 1
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K1 ["getFittedTextBoxSize"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K2 ["TextBounds"]
       17 GETUPVAL                         R4 4
       18 GETTABLEKS                       R4 R4 K3 ["AbsoluteSize"]
       20 MOVE                             R5 R0
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K4 ["TextSize"]
       24 CALL                             R2 4 1
       25 SETTABLEKS                       R2 R1 K5 ["Size"]
       27 GETUPVAL                         R1 3
       28 GETTABLEKS                       R1 R1 K6 ["scrollTextBoxCursorIntoView"]
       30 GETUPVAL                         R2 2
       31 GETUPVAL                         R3 4
       32 GETUPVAL                         R4 5
       33 CALL                             R1 3 0
       34 RETURN                           R0 0

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
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R4 0 2
       20 LOADK                            R7 K1 ["TextBounds"]
       21 NAMECALL                         R5 R0 K2 ["GetPropertyChangedSignal"]
       23 CALL                             R5 2 1
       24 MOVE                             R7 R3
       25 NAMECALL                         R5 R5 K3 ["Connect"]
       27 CALL                             R5 2 1
       28 LOADK                            R8 K4 ["AbsoluteSize"]
       29 NAMECALL                         R6 R1 K2 ["GetPropertyChangedSignal"]
       31 CALL                             R6 2 1
       32 MOVE                             R8 R3
       33 NAMECALL                         R6 R6 K3 ["Connect"]
       35 CALL                             R6 2 -1
       36 SETLIST                          R4 R5 -1 [1]
       38 GETUPVAL                         R6 3
       39 JUMPIFEQKNIL                     R6 ; [+3]
       41 GETUPVAL                         R5 3
       42 JUMP                             ; [+5]
       43 GETUPVAL                         R5 4
       44 GETTABLEKS                       R5 R5 K5 ["observeZoomRatio"]
       46 LOADB                            R6 0
       47 CALL                             R5 1 1
       48 GETUPVAL                         R6 5
       49 GETTABLEKS                       R6 R6 K6 ["getFittedTextBoxSize"]
       51 GETTABLEKS                       R7 R0 K1 ["TextBounds"]
       53 GETTABLEKS                       R8 R1 K4 ["AbsoluteSize"]
       55 MOVE                             R9 R5
       56 GETTABLEKS                       R10 R0 K7 ["TextSize"]
       58 CALL                             R6 4 1
       59 SETTABLEKS                       R6 R0 K8 ["Size"]
       61 GETUPVAL                         R6 5
       62 GETTABLEKS                       R6 R6 K9 ["scrollTextBoxCursorIntoView"]
       64 MOVE                             R7 R0
       65 MOVE                             R8 R1
       66 MOVE                             R9 R2
       67 CALL                             R6 3 0
       68 NEWCLOSURE                       R5 P1
       69 CAPTURE                          VAL R4
       70 RETURN                           R5 1

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
      131 GETUPVAL                         R20 5
      132 CALL                             R20 0 1
      133 JUMPIFNOT                        R20 ; [+3]
      134 GETTABLEKS                       R19 R0 K19 ["ZoomRatio"]
      136 JUMP                             ; [+1]
      137 LOADNIL                          R19
      138 NEWTABLE                         R20 0 2
      140 MOVE                             R21 R8
      141 GETTABLEKS                       R22 R3 K20 ["observeZoomRatio"]
      143 SETLIST                          R20 R21 2 [1]
      145 GETUPVAL                         R21 5
      146 CALL                             R21 0 1
      147 JUMPIFNOT                        R21 ; [+7]
      148 FASTCALL2                        TABLE_INSERT R20 R19 ; [+5]
      150 MOVE                             R22 R20
      151 MOVE                             R23 R19
      152 GETIMPORT                        R21 K23 [table.insert]
      154 CALL                             R21 2 0
      155 GETUPVAL                         R21 1
      156 GETTABLEKS                       R21 R21 K7 ["useEffect"]
      158 NEWCLOSURE                       R22 P6
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R3
      164 CAPTURE                          UPVAL U4
      165 MOVE                             R23 R20
      166 CALL                             R21 2 0
      167 GETUPVAL                         R21 1
      168 GETTABLEKS                       R21 R21 K7 ["useEffect"]
      170 DUPCLOSURE                       R22 K24 [PROTO_9]
      171 CAPTURE                          UPVAL U6
      172 NEWTABLE                         R23 0 1
      174 GETTABLEKS                       R24 R2 K25 ["themeTextColors"]
      176 SETLIST                          R23 R24 1 [1]
      178 CALL                             R21 2 0
      179 GETUPVAL                         R21 1
      180 GETTABLEKS                       R21 R21 K7 ["useEffect"]
      182 NEWCLOSURE                       R22 P8
      183 CAPTURE                          VAL R8
      184 CAPTURE                          UPVAL U6
      185 NEWTABLE                         R23 0 1
      187 MOVE                             R24 R8
      188 SETLIST                          R23 R24 1 [1]
      190 CALL                             R21 2 0
      191 JUMPIFNOT                        R6 ; [+7]
      192 GETTABLEKS                       R21 R1 K26 ["Color"]
      194 GETTABLEKS                       R21 R21 K27 ["System"]
      196 GETTABLEKS                       R21 R21 K28 ["Emphasis"]
      198 JUMP                             ; [+6]
      199 GETTABLEKS                       R21 R1 K26 ["Color"]
      201 GETTABLEKS                       R21 R21 K29 ["Stroke"]
      203 GETTABLEKS                       R21 R21 K28 ["Emphasis"]
      205 GETUPVAL                         R22 0
      206 GETTABLEKS                       R22 R22 K0 ["Hooks"]
      208 GETTABLEKS                       R22 R22 K30 ["useDefaultTags"]
      210 GETTABLEKS                       R23 R0 K31 ["tags"]
      212 LOADK                            R24 K32 ["size-full padding-xsmall"]
      213 CALL                             R22 2 1
      214 GETUPVAL                         R23 1
      215 GETTABLEKS                       R23 R23 K33 ["createElement"]
      217 GETUPVAL                         R24 0
      218 GETTABLEKS                       R24 R24 K34 ["View"]
      220 DUPTABLE                         R25 K38 [{"tag", "LayoutOrder", "testId"}]
      221 SETTABLEKS                       R22 R25 K35 ["tag"]
      223 GETTABLEKS                       R26 R0 K36 ["LayoutOrder"]
      225 SETTABLEKS                       R26 R25 K36 ["LayoutOrder"]
      227 GETTABLEKS                       R26 R0 K37 ["testId"]
      229 SETTABLEKS                       R26 R25 K37 ["testId"]
      231 DUPTABLE                         R26 K40 [{"Field"}]
      232 GETUPVAL                         R27 1
      233 GETTABLEKS                       R27 R27 K33 ["createElement"]
      235 GETUPVAL                         R28 0
      236 GETTABLEKS                       R28 R28 K34 ["View"]
      238 DUPTABLE                         R29 K46 [{["tag"] = "size-full padding-xsmall radius-small", ["stroke"], ["onActivated"], ["stateLayer"], ["testId"] = "ExpressionInput"}]
      239 DUPTABLE                         R30 K49 [{"Color", "Transparency", "Thickness"}]
      240 GETTABLEKS                       R31 R21 K50 ["Color3"]
      242 SETTABLEKS                       R31 R30 K26 ["Color"]
      244 GETTABLEKS                       R31 R21 K47 ["Transparency"]
      246 SETTABLEKS                       R31 R30 K47 ["Transparency"]
      248 JUMPIFNOT                        R6 ; [+6]
      249 GETTABLEKS                       R32 R1 K29 ["Stroke"]
      251 GETTABLEKS                       R32 R32 K52 ["Standard"]
      253 MULK                             R31 R32 K51 [2]
      254 JUMP                             ; [+4]
      255 GETTABLEKS                       R31 R1 K29 ["Stroke"]
      257 GETTABLEKS                       R31 R31 K52 ["Standard"]
      259 SETTABLEKS                       R31 R30 K48 ["Thickness"]
      261 SETTABLEKS                       R30 R29 K42 ["stroke"]
      263 GETTABLEKS                       R31 R0 K53 ["IsDisabled"]
      265 JUMPIFNOT                        R31 ; [+2]
      266 LOADNIL                          R30
      267 JUMP                             ; [+1]
      268 MOVE                             R30 R18
      269 SETTABLEKS                       R30 R29 K43 ["onActivated"]
      271 DUPTABLE                         R30 K55 [{"affordance"}]
      272 GETUPVAL                         R31 0
      273 GETTABLEKS                       R31 R31 K56 ["Enums"]
      275 GETTABLEKS                       R31 R31 K57 ["StateLayerAffordance"]
      277 GETTABLEKS                       R31 R31 K58 ["None"]
      279 SETTABLEKS                       R31 R30 K54 ["affordance"]
      281 SETTABLEKS                       R30 R29 K44 ["stateLayer"]
      283 DUPTABLE                         R30 K60 [{"ScrollView"}]
      284 GETUPVAL                         R31 1
      285 GETTABLEKS                       R31 R31 K33 ["createElement"]
      287 GETUPVAL                         R32 0
      288 GETTABLEKS                       R32 R32 K59 ["ScrollView"]
      290 DUPTABLE                         R33 K64 [{["tag"] = "size-full", ["scroll"], ["scrollingFrameRef"]}]
      291 DUPTABLE                         R34 K70 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset", "HorizontalScrollBarInset"}]
      292 GETIMPORT                        R35 K74 [Enum.AutomaticSize.XY]
      294 SETTABLEKS                       R35 R34 K65 ["AutomaticCanvasSize"]
      296 GETIMPORT                        R35 K77 [UDim2.new]
      298 CALL                             R35 0 1
      299 SETTABLEKS                       R35 R34 K66 ["CanvasSize"]
      301 GETIMPORT                        R35 K79 [Enum.ScrollingDirection.Y]
      303 SETTABLEKS                       R35 R34 K67 ["ScrollingDirection"]
      305 GETIMPORT                        R35 K81 [Enum.ScrollBarInset.None]
      307 SETTABLEKS                       R35 R34 K68 ["VerticalScrollBarInset"]
      309 GETIMPORT                        R35 K81 [Enum.ScrollBarInset.None]
      311 SETTABLEKS                       R35 R34 K69 ["HorizontalScrollBarInset"]
      313 SETTABLEKS                       R34 R33 K62 ["scroll"]
      315 SETTABLEKS                       R10 R33 K63 ["scrollingFrameRef"]
      317 DUPTABLE                         R34 K84 [{"TextBox", "CursorMeasure"}]
      318 GETUPVAL                         R35 1
      319 GETTABLEKS                       R35 R35 K33 ["createElement"]
      321 LOADK                            R36 K82 ["TextBox"]
      322 NEWTABLE                         R37 32 0
      324 SETTABLEKS                       R4 R37 K85 ["Text"]
      326 JUMPIFNOT                        R6 ; [+2]
      327 LOADK                            R38 K5 [""]
      328 JUMP                             ; [+3]
      329 GETTABLEKS                       R39 R0 K86 ["Placeholder"]
      331 ORK                              R38 R39 K5 [""]
      332 SETTABLEKS                       R38 R37 K87 ["PlaceholderText"]
      334 GETTABLEKS                       R38 R1 K26 ["Color"]
      336 GETTABLEKS                       R38 R38 K88 ["Content"]
      338 GETTABLEKS                       R38 R38 K89 ["Muted"]
      340 GETTABLEKS                       R38 R38 K50 ["Color3"]
      342 SETTABLEKS                       R38 R37 K90 ["PlaceholderColor3"]
      344 SETTABLEKS                       R13 R37 K91 ["FontFace"]
      346 GETTABLEKS                       R38 R12 K92 ["FontSize"]
      348 SETTABLEKS                       R38 R37 K93 ["TextSize"]
      350 LOADN                            R38 1
      351 SETTABLEKS                       R38 R37 K94 ["LineHeight"]
      353 GETIMPORT                        R38 K97 [Enum.TextXAlignment.Left]
      355 SETTABLEKS                       R38 R37 K95 ["TextXAlignment"]
      357 GETIMPORT                        R38 K100 [Enum.TextYAlignment.Top]
      359 SETTABLEKS                       R38 R37 K98 ["TextYAlignment"]
      361 LOADB                            R38 1
      362 SETTABLEKS                       R38 R37 K101 ["MultiLine"]
      364 LOADB                            R38 0
      365 SETTABLEKS                       R38 R37 K102 ["TextWrapped"]
      367 LOADB                            R38 0
      368 SETTABLEKS                       R38 R37 K103 ["ClearTextOnFocus"]
      370 GETTABLEKS                       R39 R0 K53 ["IsDisabled"]
      372 NOT                              R38 R39
      373 SETTABLEKS                       R38 R37 K104 ["TextEditable"]
      375 LOADB                            R38 0
      376 SETTABLEKS                       R38 R37 K105 ["Selectable"]
      378 LOADN                            R38 1
      379 SETTABLEKS                       R38 R37 K106 ["BackgroundTransparency"]
      381 LOADN                            R38 0
      382 SETTABLEKS                       R38 R37 K107 ["BorderSizePixel"]
      384 SETTABLEKS                       R9 R37 K108 ["ref"]
      386 GETUPVAL                         R38 1
      387 GETTABLEKS                       R38 R38 K109 ["Change"]
      389 GETTABLEKS                       R38 R38 K85 ["Text"]
      391 SETTABLE                         R14 R37 R38
      392 GETUPVAL                         R38 1
      393 GETTABLEKS                       R38 R38 K109 ["Change"]
      395 GETTABLEKS                       R38 R38 K110 ["CursorPosition"]
      397 SETTABLE                         R17 R37 R38
      398 GETUPVAL                         R38 1
      399 GETTABLEKS                       R38 R38 K111 ["Event"]
      401 GETTABLEKS                       R38 R38 K112 ["Focused"]
      403 SETTABLE                         R15 R37 R38
      404 GETUPVAL                         R38 1
      405 GETTABLEKS                       R38 R38 K111 ["Event"]
      407 GETTABLEKS                       R38 R38 K113 ["FocusLost"]
      409 SETTABLE                         R16 R37 R38
      410 CALL                             R35 2 1
      411 SETTABLEKS                       R35 R34 K82 ["TextBox"]
      413 GETUPVAL                         R35 1
      414 GETTABLEKS                       R35 R35 K33 ["createElement"]
      416 LOADK                            R36 K114 ["TextLabel"]
      417 DUPTABLE                         R37 K119 [{["Visible"] = False, ["Text"] = "", ["FontFace"], ["TextSize"], ["TextWrapped"] = False, ["RichText"] = False, ["Size"], ["ref"]}]
      418 SETTABLEKS                       R13 R37 K91 ["FontFace"]
      420 GETTABLEKS                       R38 R12 K92 ["FontSize"]
      422 SETTABLEKS                       R38 R37 K93 ["TextSize"]
      424 GETIMPORT                        R38 K121 [UDim2.fromScale]
      426 LOADN                            R39 1
      427 LOADN                            R40 1
      428 CALL                             R38 2 1
      429 SETTABLEKS                       R38 R37 K118 ["Size"]
      431 SETTABLEKS                       R11 R37 K108 ["ref"]
      433 CALL                             R35 2 1
      434 SETTABLEKS                       R35 R34 K83 ["CursorMeasure"]
      436 CALL                             R31 3 1
      437 SETTABLEKS                       R31 R30 K59 ["ScrollView"]
      439 CALL                             R27 3 1
      440 SETTABLEKS                       R27 R26 K39 ["Field"]
      442 CALL                             R23 3 -1
      443 RETURN                           R23 -1

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
       88 GETTABLEKS                       R13 R13 K22 ["getFFlagAnimGraphUI_UnifyExpressionEditors"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K21 ["Flags"]
       95 GETTABLEKS                       R14 R14 K23 ["getFFlagEnableExpressionSyntaxHighlighting"]
       97 CALL                             R13 1 1
       98 DUPCLOSURE                       R14 K24 [PROTO_13]
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R5
      106 DUPCLOSURE                       R15 K25 [PROTO_19]
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R4
      113 MOVE                             R17 R13
      114 CALL                             R17 0 1
      115 JUMPIFNOT                        R17 ; [+2]
      116 MOVE                             R16 R14
      117 RETURN                           R16 1
      118 MOVE                             R16 R15
      119 RETURN                           R16 1
