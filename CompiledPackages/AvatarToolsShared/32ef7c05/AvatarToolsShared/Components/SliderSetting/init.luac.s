PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["SetValue"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["SetValue"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"valueText"}]
        2 SETTABLEKS                       R0 R3 K0 ["valueText"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["valueText"]
        5 FASTCALL1                        TONUMBER R1 ; [+2]
        6 GETIMPORT                        R0 K3 [tonumber]
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+32]
        6 JUMPIFNOT                        R1 ; [+31]
        7 LOADN                            R4 0
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K2 ["props"]
       11 GETTABLEKS                       R5 R5 K3 ["MaxValue"]
       13 FASTCALL3                        MATH_CLAMP R1 R4 R5
       15 MOVE                             R3 R1
       16 GETIMPORT                        R2 K6 [math.clamp]
       18 CALL                             R2 3 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K7 ["onValueChanged"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 0
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K2 ["props"]
       27 GETTABLEKS                       R3 R3 K8 ["OnTextBoxValueChanged"]
       29 JUMPIFNOT                        R3 ; [+13]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K2 ["props"]
       33 GETTABLEKS                       R3 R3 K8 ["OnTextBoxValueChanged"]
       35 MOVE                             R4 R2
       36 CALL                             R3 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K7 ["onValueChanged"]
       41 LOADN                            R3 0
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"valueText"}]
        1 GETTABLEKS                       R4 R1 K2 ["Value"]
        3 FASTCALL1                        TOSTRING R4 ; [+2]
        4 GETIMPORT                        R3 K4 [tostring]
        6 CALL                             R3 1 1
        7 SETTABLEKS                       R3 R2 K0 ["valueText"]
        9 SETTABLEKS                       R2 R0 K5 ["state"]
       11 GETTABLEKS                       R2 R1 K2 ["Value"]
       13 SETTABLEKS                       R2 R0 K6 ["previoustPropsValue"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K7 ["onValueChanged"]
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K8 ["onTextChanged"]
       23 NEWCLOSURE                       R2 P2
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K9 ["onTextSubmitted"]
       27 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Title"]
        6 GETTABLEKS                       R4 R1 K3 ["Value"]
        8 SETTABLEKS                       R4 R0 K4 ["previoustPropsValue"]
       10 GETTABLEKS                       R5 R1 K5 ["MaxValue"]
       12 GETTABLEKS                       R6 R1 K6 ["Height"]
       14 GETTABLEKS                       R7 R1 K7 ["UsePercentage"]
       16 GETTABLEKS                       R8 R1 K8 ["LayoutOrder"]
       18 GETTABLEKS                       R9 R1 K9 ["IsDisabled"]
       20 GETTABLEKS                       R10 R1 K10 ["ShowInputField"]
       22 GETTABLEKS                       R11 R1 K11 ["ShowBackground"]
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R12 R12 K12 ["new"]
       27 CALL                             R12 0 1
       28 GETTABLEKS                       R13 R1 K13 ["Stylizer"]
       30 GETTABLEKS                       R14 R1 K14 ["OnChangeBegan"]
       32 GETTABLEKS                       R15 R1 K15 ["SnapIncrement"]
       34 JUMPIF                           R15 ; [+2]
       35 GETTABLEKS                       R15 R13 K16 ["DefaultSnap"]
       37 GETTABLEKS                       R17 R0 K4 ["previoustPropsValue"]
       39 JUMPIFNOTEQ                      R17 R4 ; [+4]
       41 GETTABLEKS                       R16 R2 K17 ["value"]
       43 JUMPIF                           R16 ; [+1]
       44 MOVE                             R16 R4
       45 GETTABLEKS                       R17 R13 K16 ["DefaultSnap"]
       47 JUMPIFNOTEQ                      R15 R17 ; [+8]
       49 GETIMPORT                        R17 K20 [string.format]
       51 LOADK                            R18 K21 ["%d"]
       52 MOVE                             R19 R16
       53 CALL                             R17 2 1
       54 MOVE                             R16 R17
       55 JUMP                             ; [+9]
       56 GETIMPORT                        R17 K20 [string.format]
       58 LOADK                            R19 K22 ["%"]
       59 MOVE                             R20 R15
       60 LOADK                            R21 K23 ["f"]
       61 CONCAT                           R18 R19 R21
       62 MOVE                             R19 R16
       63 CALL                             R17 2 1
       64 MOVE                             R16 R17
       65 LOADB                            R17 0
       66 JUMPIFEQKNIL                     R3 ; [+5]
       68 JUMPIFNOTEQKS                    R3 K24 [""] ; [+2]
       70 LOADB                            R17 0 +1
       71 LOADB                            R17 1
       72 GETTABLEKS                       R18 R13 K25 ["InputWidth"]
       74 GETTABLEKS                       R19 R13 K26 ["InputHeight"]
       76 GETTABLEKS                       R22 R13 K27 ["PercentageLabelWidth"]
       78 GETTABLEKS                       R23 R13 K28 ["ValueTextBoxPadding"]
       80 ADD                              R21 R22 R23
       81 GETTABLEKS                       R22 R13 K25 ["InputWidth"]
       83 ADD                              R20 R21 R22
       84 JUMPIFNOT                        R11 ; [+2]
       85 LOADK                            R21 K29 ["RoundBox"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R21
       88 GETUPVAL                         R22 1
       89 GETTABLEKS                       R22 R22 K30 ["createElement"]
       91 GETUPVAL                         R23 2
       92 DUPTABLE                         R24 K38 [{"LayoutOrder", "Size", "AutomaticSize", "Layout", "HorizontalAlignment", "Spacing", "Style", "Padding"}]
       93 SETTABLEKS                       R8 R24 K8 ["LayoutOrder"]
       95 GETIMPORT                        R25 K40 [UDim2.new]
       97 LOADN                            R26 0
       98 LOADN                            R27 0
       99 LOADN                            R28 0
      100 MOVE                             R29 R6
      101 CALL                             R25 4 1
      102 SETTABLEKS                       R25 R24 K31 ["Size"]
      104 GETIMPORT                        R25 K43 [Enum.AutomaticSize.X]
      106 SETTABLEKS                       R25 R24 K32 ["AutomaticSize"]
      108 GETIMPORT                        R25 K46 [Enum.FillDirection.Horizontal]
      110 SETTABLEKS                       R25 R24 K33 ["Layout"]
      112 GETIMPORT                        R25 K48 [Enum.HorizontalAlignment.Left]
      114 SETTABLEKS                       R25 R24 K34 ["HorizontalAlignment"]
      116 GETTABLEKS                       R25 R13 K49 ["SliderContainerPadding"]
      118 SETTABLEKS                       R25 R24 K35 ["Spacing"]
      120 SETTABLEKS                       R21 R24 K36 ["Style"]
      122 DUPTABLE                         R25 K51 [{"Left", "Right"}]
      123 GETTABLEKS                       R26 R13 K49 ["SliderContainerPadding"]
      125 SETTABLEKS                       R26 R25 K47 ["Left"]
      127 GETTABLEKS                       R26 R13 K49 ["SliderContainerPadding"]
      129 SETTABLEKS                       R26 R25 K50 ["Right"]
      131 SETTABLEKS                       R25 R24 K37 ["Padding"]
      133 DUPTABLE                         R25 K54 [{"Label", "SliderContainer"}]
      134 MOVE                             R26 R17
      135 JUMPIFNOT                        R26 ; [+25]
      136 GETUPVAL                         R26 1
      137 GETTABLEKS                       R26 R26 K30 ["createElement"]
      139 GETUPVAL                         R27 3
      140 DUPTABLE                         R28 K57 [{"Text", "StyleModifier", "AutomaticSize", "LayoutOrder"}]
      141 SETTABLEKS                       R3 R28 K55 ["Text"]
      143 JUMPIFNOT                        R9 ; [+4]
      144 GETUPVAL                         R29 4
      145 GETTABLEKS                       R29 R29 K58 ["Disabled"]
      147 JUMPIF                           R29 ; [+1]
      148 LOADNIL                          R29
      149 SETTABLEKS                       R29 R28 K56 ["StyleModifier"]
      151 GETIMPORT                        R29 K60 [Enum.AutomaticSize.XY]
      153 SETTABLEKS                       R29 R28 K32 ["AutomaticSize"]
      155 NAMECALL                         R29 R12 K61 ["getNextOrder"]
      157 CALL                             R29 1 1
      158 SETTABLEKS                       R29 R28 K8 ["LayoutOrder"]
      160 CALL                             R26 2 1
      161 SETTABLEKS                       R26 R25 K52 ["Label"]
      163 GETUPVAL                         R26 1
      164 GETTABLEKS                       R26 R26 K30 ["createElement"]
      166 GETUPVAL                         R27 2
      167 DUPTABLE                         R28 K62 [{"Size", "AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "Spacing"}]
      168 GETIMPORT                        R29 K40 [UDim2.new]
      170 LOADN                            R30 0
      171 LOADN                            R31 0
      172 LOADN                            R32 0
      173 MOVE                             R33 R6
      174 CALL                             R29 4 1
      175 SETTABLEKS                       R29 R28 K31 ["Size"]
      177 GETIMPORT                        R29 K43 [Enum.AutomaticSize.X]
      179 SETTABLEKS                       R29 R28 K32 ["AutomaticSize"]
      181 NAMECALL                         R29 R12 K61 ["getNextOrder"]
      183 CALL                             R29 1 1
      184 SETTABLEKS                       R29 R28 K8 ["LayoutOrder"]
      186 GETIMPORT                        R29 K46 [Enum.FillDirection.Horizontal]
      188 SETTABLEKS                       R29 R28 K33 ["Layout"]
      190 GETIMPORT                        R29 K63 [Enum.HorizontalAlignment.Right]
      192 SETTABLEKS                       R29 R28 K34 ["HorizontalAlignment"]
      194 GETTABLEKS                       R29 R13 K49 ["SliderContainerPadding"]
      196 SETTABLEKS                       R29 R28 K35 ["Spacing"]
      198 DUPTABLE                         R29 K66 [{"ValueSlider", "ValueTextBoxFrame"}]
      199 GETUPVAL                         R30 1
      200 GETTABLEKS                       R30 R30 K30 ["createElement"]
      202 GETUPVAL                         R31 5
      203 DUPTABLE                         R32 K70 [{"Disabled", "Min", "Max", "Value", "SnapIncrement", "Size", "LayoutOrder", "OnValueChanged", "OnChangeBegan"}]
      204 SETTABLEKS                       R9 R32 K58 ["Disabled"]
      206 LOADN                            R33 0
      207 SETTABLEKS                       R33 R32 K67 ["Min"]
      209 SETTABLEKS                       R5 R32 K68 ["Max"]
      211 SETTABLEKS                       R4 R32 K3 ["Value"]
      213 SETTABLEKS                       R15 R32 K15 ["SnapIncrement"]
      215 GETIMPORT                        R33 K40 [UDim2.new]
      217 LOADN                            R34 0
      218 GETTABLEKS                       R35 R13 K71 ["SliderWidth"]
      220 LOADN                            R36 0
      221 MOVE                             R37 R6
      222 CALL                             R33 4 1
      223 SETTABLEKS                       R33 R32 K31 ["Size"]
      225 NAMECALL                         R33 R12 K61 ["getNextOrder"]
      227 CALL                             R33 1 1
      228 SETTABLEKS                       R33 R32 K8 ["LayoutOrder"]
      230 GETTABLEKS                       R33 R0 K72 ["onValueChanged"]
      232 SETTABLEKS                       R33 R32 K69 ["OnValueChanged"]
      234 SETTABLEKS                       R14 R32 K14 ["OnChangeBegan"]
      236 CALL                             R30 2 1
      237 SETTABLEKS                       R30 R29 K64 ["ValueSlider"]
      239 MOVE                             R30 R10
      240 JUMPIFNOT                        R30 ; [+119]
      241 GETUPVAL                         R30 1
      242 GETTABLEKS                       R30 R30 K30 ["createElement"]
      244 GETUPVAL                         R31 2
      245 DUPTABLE                         R32 K74 [{"LayoutOrder", "Size", "BackgroundColor3", "Layout", "HorizontalAlignment", "Spacing"}]
      246 NAMECALL                         R33 R12 K61 ["getNextOrder"]
      248 CALL                             R33 1 1
      249 SETTABLEKS                       R33 R32 K8 ["LayoutOrder"]
      251 GETIMPORT                        R33 K40 [UDim2.new]
      253 LOADN                            R34 0
      254 MOVE                             R35 R20
      255 LOADN                            R36 1
      256 LOADN                            R37 0
      257 CALL                             R33 4 1
      258 SETTABLEKS                       R33 R32 K31 ["Size"]
      260 GETTABLEKS                       R33 R13 K75 ["BackgroundColor"]
      262 SETTABLEKS                       R33 R32 K73 ["BackgroundColor3"]
      264 GETIMPORT                        R33 K46 [Enum.FillDirection.Horizontal]
      266 SETTABLEKS                       R33 R32 K33 ["Layout"]
      268 GETIMPORT                        R33 K63 [Enum.HorizontalAlignment.Right]
      270 SETTABLEKS                       R33 R32 K34 ["HorizontalAlignment"]
      272 GETTABLEKS                       R33 R13 K28 ["ValueTextBoxPadding"]
      274 SETTABLEKS                       R33 R32 K35 ["Spacing"]
      276 DUPTABLE                         R33 K78 [{"ValueTextBox", "PercentageLabel"}]
      277 GETUPVAL                         R34 1
      278 GETTABLEKS                       R34 R34 K30 ["createElement"]
      280 GETUPVAL                         R35 6
      281 DUPTABLE                         R36 K82 [{"Enabled", "LayoutOrder", "Text", "Size", "OnTextChanged", "OnFocusLost", "Style", "StyleModifier"}]
      282 NOT                              R37 R9
      283 SETTABLEKS                       R37 R36 K79 ["Enabled"]
      285 NAMECALL                         R37 R12 K61 ["getNextOrder"]
      287 CALL                             R37 1 1
      288 SETTABLEKS                       R37 R36 K8 ["LayoutOrder"]
      290 SETTABLEKS                       R16 R36 K55 ["Text"]
      292 GETIMPORT                        R37 K40 [UDim2.new]
      294 LOADN                            R38 0
      295 MOVE                             R39 R18
      296 LOADN                            R40 0
      297 MOVE                             R41 R19
      298 CALL                             R37 4 1
      299 SETTABLEKS                       R37 R36 K31 ["Size"]
      301 GETTABLEKS                       R37 R0 K83 ["onTextChanged"]
      303 SETTABLEKS                       R37 R36 K80 ["OnTextChanged"]
      305 GETTABLEKS                       R37 R0 K84 ["onTextSubmitted"]
      307 SETTABLEKS                       R37 R36 K81 ["OnFocusLost"]
      309 LOADK                            R37 K85 ["FilledRoundedBorder"]
      310 SETTABLEKS                       R37 R36 K36 ["Style"]
      312 JUMPIFNOT                        R9 ; [+4]
      313 GETUPVAL                         R37 4
      314 GETTABLEKS                       R37 R37 K58 ["Disabled"]
      316 JUMPIF                           R37 ; [+1]
      317 LOADNIL                          R37
      318 SETTABLEKS                       R37 R36 K56 ["StyleModifier"]
      320 CALL                             R34 2 1
      321 SETTABLEKS                       R34 R33 K76 ["ValueTextBox"]
      323 MOVE                             R34 R7
      324 JUMPIFNOT                        R34 ; [+32]
      325 GETUPVAL                         R34 1
      326 GETTABLEKS                       R34 R34 K30 ["createElement"]
      328 GETUPVAL                         R35 3
      329 DUPTABLE                         R36 K86 [{"Text", "StyleModifier", "Size", "LayoutOrder"}]
      330 LOADK                            R37 K22 ["%"]
      331 SETTABLEKS                       R37 R36 K55 ["Text"]
      333 JUMPIFNOT                        R9 ; [+4]
      334 GETUPVAL                         R37 4
      335 GETTABLEKS                       R37 R37 K58 ["Disabled"]
      337 JUMPIF                           R37 ; [+1]
      338 LOADNIL                          R37
      339 SETTABLEKS                       R37 R36 K56 ["StyleModifier"]
      341 GETIMPORT                        R37 K40 [UDim2.new]
      343 LOADN                            R38 0
      344 GETTABLEKS                       R39 R13 K27 ["PercentageLabelWidth"]
      346 LOADN                            R40 1
      347 LOADN                            R41 0
      348 CALL                             R37 4 1
      349 SETTABLEKS                       R37 R36 K31 ["Size"]
      351 NAMECALL                         R37 R12 K61 ["getNextOrder"]
      353 CALL                             R37 1 1
      354 SETTABLEKS                       R37 R36 K8 ["LayoutOrder"]
      356 CALL                             R34 2 1
      357 SETTABLEKS                       R34 R33 K77 ["PercentageLabel"]
      359 CALL                             R30 3 1
      360 SETTABLEKS                       R30 R29 K65 ["ValueTextBoxFrame"]
      362 CALL                             R26 3 1
      363 SETTABLEKS                       R26 R25 K53 ["SliderContainer"]
      365 CALL                             R22 3 -1
      366 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETIMPORT                        R2 K4 [require]
       17 GETTABLEKS                       R3 R1 K5 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R1 K6 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K7 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K8 ["withContext"]
       29 GETTABLEKS                       R6 R3 K9 ["UI"]
       31 GETTABLEKS                       R7 R6 K10 ["Slider"]
       33 GETTABLEKS                       R8 R6 K11 ["DEPRECATED_TextInput"]
       35 GETTABLEKS                       R9 R6 K12 ["TextLabel"]
       37 GETTABLEKS                       R10 R6 K13 ["Pane"]
       39 GETTABLEKS                       R11 R3 K14 ["Util"]
       41 GETTABLEKS                       R12 R11 K15 ["LayoutOrderIterator"]
       43 GETTABLEKS                       R13 R11 K16 ["StyleModifier"]
       45 GETTABLEKS                       R14 R2 K17 ["PureComponent"]
       47 LOADK                            R16 K18 ["SliderSetting"]
       48 NAMECALL                         R14 R14 K19 ["extend"]
       50 CALL                             R14 2 1
       51 GETTABLEKS                       R15 R11 K20 ["Typecheck"]
       53 GETTABLEKS                       R16 R15 K21 ["wrap"]
       55 MOVE                             R17 R14
       56 GETIMPORT                        R18 K1 [script]
       58 CALL                             R16 2 0
       59 DUPTABLE                         R16 K24 [{"ShowInputField", "ShowBackground"}]
       60 LOADB                            R17 1
       61 SETTABLEKS                       R17 R16 K22 ["ShowInputField"]
       63 LOADB                            R17 0
       64 SETTABLEKS                       R17 R16 K23 ["ShowBackground"]
       66 SETTABLEKS                       R16 R14 K25 ["defaultProps"]
       68 DUPCLOSURE                       R16 K26 [PROTO_4]
       69 SETTABLEKS                       R16 R14 K27 ["init"]
       71 DUPCLOSURE                       R16 K28 [PROTO_5]
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R13
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R8
       79 SETTABLEKS                       R16 R14 K29 ["render"]
       81 MOVE                             R16 R5
       82 DUPTABLE                         R17 K31 [{"Stylizer"}]
       83 GETTABLEKS                       R18 R4 K30 ["Stylizer"]
       85 SETTABLEKS                       R18 R17 K30 ["Stylizer"]
       87 CALL                             R16 1 1
       88 MOVE                             R17 R14
       89 CALL                             R16 1 1
       90 MOVE                             R14 R16
       91 RETURN                           R14 1
