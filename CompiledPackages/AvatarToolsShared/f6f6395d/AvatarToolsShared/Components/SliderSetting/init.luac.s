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
      203 DUPTABLE                         R32 K71 [{["Disabled"], ["Min"] = 0, ["Max"], ["Value"], ["SnapIncrement"], ["Size"], ["LayoutOrder"], ["OnValueChanged"], ["OnChangeBegan"]}]
      204 SETTABLEKS                       R9 R32 K58 ["Disabled"]
      206 SETTABLEKS                       R5 R32 K69 ["Max"]
      208 SETTABLEKS                       R4 R32 K3 ["Value"]
      210 SETTABLEKS                       R15 R32 K15 ["SnapIncrement"]
      212 GETIMPORT                        R33 K40 [UDim2.new]
      214 LOADN                            R34 0
      215 GETTABLEKS                       R35 R13 K72 ["SliderWidth"]
      217 LOADN                            R36 0
      218 MOVE                             R37 R6
      219 CALL                             R33 4 1
      220 SETTABLEKS                       R33 R32 K31 ["Size"]
      222 NAMECALL                         R33 R12 K61 ["getNextOrder"]
      224 CALL                             R33 1 1
      225 SETTABLEKS                       R33 R32 K8 ["LayoutOrder"]
      227 GETTABLEKS                       R33 R0 K73 ["onValueChanged"]
      229 SETTABLEKS                       R33 R32 K70 ["OnValueChanged"]
      231 SETTABLEKS                       R14 R32 K14 ["OnChangeBegan"]
      233 CALL                             R30 2 1
      234 SETTABLEKS                       R30 R29 K64 ["ValueSlider"]
      236 MOVE                             R30 R10
      237 JUMPIFNOT                        R30 ; [+113]
      238 GETUPVAL                         R30 1
      239 GETTABLEKS                       R30 R30 K30 ["createElement"]
      241 GETUPVAL                         R31 2
      242 DUPTABLE                         R32 K75 [{"LayoutOrder", "Size", "BackgroundColor3", "Layout", "HorizontalAlignment", "Spacing"}]
      243 NAMECALL                         R33 R12 K61 ["getNextOrder"]
      245 CALL                             R33 1 1
      246 SETTABLEKS                       R33 R32 K8 ["LayoutOrder"]
      248 GETIMPORT                        R33 K40 [UDim2.new]
      250 LOADN                            R34 0
      251 MOVE                             R35 R20
      252 LOADN                            R36 1
      253 LOADN                            R37 0
      254 CALL                             R33 4 1
      255 SETTABLEKS                       R33 R32 K31 ["Size"]
      257 GETTABLEKS                       R33 R13 K76 ["BackgroundColor"]
      259 SETTABLEKS                       R33 R32 K74 ["BackgroundColor3"]
      261 GETIMPORT                        R33 K46 [Enum.FillDirection.Horizontal]
      263 SETTABLEKS                       R33 R32 K33 ["Layout"]
      265 GETIMPORT                        R33 K63 [Enum.HorizontalAlignment.Right]
      267 SETTABLEKS                       R33 R32 K34 ["HorizontalAlignment"]
      269 GETTABLEKS                       R33 R13 K28 ["ValueTextBoxPadding"]
      271 SETTABLEKS                       R33 R32 K35 ["Spacing"]
      273 DUPTABLE                         R33 K79 [{"ValueTextBox", "PercentageLabel"}]
      274 GETUPVAL                         R34 1
      275 GETTABLEKS                       R34 R34 K30 ["createElement"]
      277 GETUPVAL                         R35 6
      278 DUPTABLE                         R36 K84 [{["Enabled"], ["LayoutOrder"], ["Text"], ["Size"], ["OnTextChanged"], ["OnFocusLost"], ["Style"] = "FilledRoundedBorder", ["StyleModifier"]}]
      279 NOT                              R37 R9
      280 SETTABLEKS                       R37 R36 K80 ["Enabled"]
      282 NAMECALL                         R37 R12 K61 ["getNextOrder"]
      284 CALL                             R37 1 1
      285 SETTABLEKS                       R37 R36 K8 ["LayoutOrder"]
      287 SETTABLEKS                       R16 R36 K55 ["Text"]
      289 GETIMPORT                        R37 K40 [UDim2.new]
      291 LOADN                            R38 0
      292 MOVE                             R39 R18
      293 LOADN                            R40 0
      294 MOVE                             R41 R19
      295 CALL                             R37 4 1
      296 SETTABLEKS                       R37 R36 K31 ["Size"]
      298 GETTABLEKS                       R37 R0 K85 ["onTextChanged"]
      300 SETTABLEKS                       R37 R36 K81 ["OnTextChanged"]
      302 GETTABLEKS                       R37 R0 K86 ["onTextSubmitted"]
      304 SETTABLEKS                       R37 R36 K82 ["OnFocusLost"]
      306 JUMPIFNOT                        R9 ; [+4]
      307 GETUPVAL                         R37 4
      308 GETTABLEKS                       R37 R37 K58 ["Disabled"]
      310 JUMPIF                           R37 ; [+1]
      311 LOADNIL                          R37
      312 SETTABLEKS                       R37 R36 K56 ["StyleModifier"]
      314 CALL                             R34 2 1
      315 SETTABLEKS                       R34 R33 K77 ["ValueTextBox"]
      317 MOVE                             R34 R7
      318 JUMPIFNOT                        R34 ; [+29]
      319 GETUPVAL                         R34 1
      320 GETTABLEKS                       R34 R34 K30 ["createElement"]
      322 GETUPVAL                         R35 3
      323 DUPTABLE                         R36 K87 [{["Text"] = "%", ["StyleModifier"], ["Size"], ["LayoutOrder"]}]
      324 JUMPIFNOT                        R9 ; [+4]
      325 GETUPVAL                         R37 4
      326 GETTABLEKS                       R37 R37 K58 ["Disabled"]
      328 JUMPIF                           R37 ; [+1]
      329 LOADNIL                          R37
      330 SETTABLEKS                       R37 R36 K56 ["StyleModifier"]
      332 GETIMPORT                        R37 K40 [UDim2.new]
      334 LOADN                            R38 0
      335 GETTABLEKS                       R39 R13 K27 ["PercentageLabelWidth"]
      337 LOADN                            R40 1
      338 LOADN                            R41 0
      339 CALL                             R37 4 1
      340 SETTABLEKS                       R37 R36 K31 ["Size"]
      342 NAMECALL                         R37 R12 K61 ["getNextOrder"]
      344 CALL                             R37 1 1
      345 SETTABLEKS                       R37 R36 K8 ["LayoutOrder"]
      347 CALL                             R34 2 1
      348 SETTABLEKS                       R34 R33 K78 ["PercentageLabel"]
      350 CALL                             R30 3 1
      351 SETTABLEKS                       R30 R29 K65 ["ValueTextBoxFrame"]
      353 CALL                             R26 3 1
      354 SETTABLEKS                       R26 R25 K53 ["SliderContainer"]
      356 CALL                             R22 3 -1
      357 RETURN                           R22 -1

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
       59 DUPTABLE                         R16 K26 [{["ShowInputField"] = True, ["ShowBackground"] = False}]
       60 SETTABLEKS                       R16 R14 K27 ["defaultProps"]
       62 DUPCLOSURE                       R16 K28 [PROTO_4]
       63 SETTABLEKS                       R16 R14 K29 ["init"]
       65 DUPCLOSURE                       R16 K30 [PROTO_5]
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R13
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R8
       73 SETTABLEKS                       R16 R14 K31 ["render"]
       75 MOVE                             R16 R5
       76 DUPTABLE                         R17 K33 [{"Stylizer"}]
       77 GETTABLEKS                       R18 R4 K32 ["Stylizer"]
       79 SETTABLEKS                       R18 R17 K32 ["Stylizer"]
       81 CALL                             R16 1 1
       82 MOVE                             R17 R14
       83 CALL                             R16 1 1
       84 MOVE                             R14 R16
       85 RETURN                           R14 1
