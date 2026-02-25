PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetMouseMoveEnabled"]
        5 GETTABLEKS                       R3 R0 K2 ["EnabledMouseMove"]
        7 NOT                              R2 R3
        8 GETTABLEKS                       R3 R0 K3 ["RoduxStoreContext"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetMouseClickEnabled"]
        5 GETTABLEKS                       R3 R0 K2 ["EnabledMouseClick"]
        7 NOT                              R2 R3
        8 GETTABLEKS                       R3 R0 K3 ["RoduxStoreContext"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetKeyboardEnabled"]
        5 GETTABLEKS                       R3 R0 K2 ["EnabledKeyboard"]
        7 NOT                              R2 R3
        8 GETTABLEKS                       R3 R0 K3 ["RoduxStoreContext"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetGamepadEnabled"]
        5 GETTABLEKS                       R3 R0 K2 ["EnabledGamepad"]
        7 NOT                              R2 R3
        8 GETTABLEKS                       R3 R0 K3 ["RoduxStoreContext"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetTouchEnabled"]
        5 GETTABLEKS                       R3 R0 K2 ["EnabledTouch"]
        7 NOT                              R2 R3
        8 GETTABLEKS                       R3 R0 K3 ["RoduxStoreContext"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R1 K0 ["RoduxStoreContext"]
        2 FASTCALL1                        ASSERT R3 ; [+2]
        3 GETIMPORT                        R2 K2 [assert]
        5 CALL                             R2 1 0
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K3 ["toggleMouseMove"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K4 ["toggleMouseClick"]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K5 ["toggleKeyboard"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K6 ["toggleGamepad"]
       22 NEWCLOSURE                       R2 P4
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K7 ["toggleTouch"]
       26 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R5 R0 K0 ["props"]
        8 GETTABLEKS                       R4 R5 K3 ["Disabled"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K4 ["createElement"]
       13 GETUPVAL                         R6 1
       14 DUPTABLE                         R7 K14 [{"LayoutOrder", "Style", "Size", "AutomaticSize", "Layout", "Spacing", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       15 GETTABLEKS                       R8 R1 K5 ["LayoutOrder"]
       17 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       19 LOADK                            R8 K15 ["CornerBox"]
       20 SETTABLEKS                       R8 R7 K6 ["Style"]
       22 GETIMPORT                        R8 K18 [UDim2.fromOffset]
       24 GETTABLEKS                       R9 R3 K19 ["UIGroupWidthPx"]
       26 LOADN                            R10 0
       27 CALL                             R8 2 1
       28 SETTABLEKS                       R8 R7 K7 ["Size"]
       30 GETIMPORT                        R8 K22 [Enum.AutomaticSize.Y]
       32 SETTABLEKS                       R8 R7 K8 ["AutomaticSize"]
       34 GETIMPORT                        R8 K25 [Enum.FillDirection.Vertical]
       36 SETTABLEKS                       R8 R7 K9 ["Layout"]
       38 GETIMPORT                        R8 K28 [UDim.new]
       40 LOADN                            R9 0
       41 GETTABLEKS                       R10 R3 K29 ["PaddingPx"]
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K10 ["Spacing"]
       46 GETTABLEKS                       R8 R3 K29 ["PaddingPx"]
       48 SETTABLEKS                       R8 R7 K11 ["Padding"]
       50 GETIMPORT                        R8 K31 [Enum.HorizontalAlignment.Left]
       52 SETTABLEKS                       R8 R7 K12 ["HorizontalAlignment"]
       54 GETIMPORT                        R8 K33 [Enum.VerticalAlignment.Top]
       56 SETTABLEKS                       R8 R7 K13 ["VerticalAlignment"]
       58 DUPTABLE                         R8 K36 [{"Label", "GridLayoutArea"}]
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R9 R10 K4 ["createElement"]
       62 GETUPVAL                         R10 2
       63 DUPTABLE                         R11 K40 [{"Text", "Size", "AutomaticSize", "LayoutOrder", "TextXAlignment", "TextYAlignment"}]
       64 LOADK                            R14 K41 ["PlaybackTabView"]
       65 LOADK                            R15 K42 ["FilterEventsLabel"]
       66 NAMECALL                         R12 R2 K43 ["getText"]
       68 CALL                             R12 3 1
       69 SETTABLEKS                       R12 R11 K37 ["Text"]
       71 GETIMPORT                        R12 K45 [UDim2.fromScale]
       73 LOADN                            R13 1
       74 LOADN                            R14 0
       75 CALL                             R12 2 1
       76 SETTABLEKS                       R12 R11 K7 ["Size"]
       78 GETIMPORT                        R12 K22 [Enum.AutomaticSize.Y]
       80 SETTABLEKS                       R12 R11 K8 ["AutomaticSize"]
       82 LOADN                            R12 0
       83 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       85 GETIMPORT                        R12 K46 [Enum.TextXAlignment.Left]
       87 SETTABLEKS                       R12 R11 K38 ["TextXAlignment"]
       89 GETIMPORT                        R12 K47 [Enum.TextYAlignment.Top]
       91 SETTABLEKS                       R12 R11 K39 ["TextYAlignment"]
       93 CALL                             R9 2 1
       94 SETTABLEKS                       R9 R8 K34 ["Label"]
       96 GETUPVAL                         R10 0
       97 GETTABLEKS                       R9 R10 K4 ["createElement"]
       99 GETUPVAL                         R10 1
      100 DUPTABLE                         R11 K48 [{"Size", "LayoutOrder"}]
      101 GETIMPORT                        R12 K49 [UDim2.new]
      103 LOADN                            R13 1
      104 LOADN                            R14 0
      105 LOADN                            R15 0
      106 GETTABLEKS                       R16 R3 K50 ["GridAreaHeightPx"]
      108 CALL                             R12 4 1
      109 SETTABLEKS                       R12 R11 K7 ["Size"]
      111 LOADN                            R12 1
      112 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
      114 DUPTABLE                         R12 K56 [{"Layout", "MouseMoveEnabled", "MouseClickEnabled", "KeyboardEnabled", "GamepadEnabled", "TouchEnabled"}]
      115 GETUPVAL                         R14 0
      116 GETTABLEKS                       R13 R14 K4 ["createElement"]
      118 LOADK                            R14 K57 ["UIGridLayout"]
      119 DUPTABLE                         R15 K61 [{"FillDirection", "CellPadding", "SortOrder", "VerticalAlignment", "HorizontalAlignment", "CellSize"}]
      120 GETIMPORT                        R16 K25 [Enum.FillDirection.Vertical]
      122 SETTABLEKS                       R16 R15 K23 ["FillDirection"]
      124 GETIMPORT                        R16 K18 [UDim2.fromOffset]
      126 GETTABLEKS                       R17 R3 K29 ["PaddingPx"]
      128 GETTABLEKS                       R18 R3 K62 ["GridCellPaddingYPx"]
      130 CALL                             R16 2 1
      131 SETTABLEKS                       R16 R15 K58 ["CellPadding"]
      133 GETIMPORT                        R16 K63 [Enum.SortOrder.LayoutOrder]
      135 SETTABLEKS                       R16 R15 K59 ["SortOrder"]
      137 GETIMPORT                        R16 K33 [Enum.VerticalAlignment.Top]
      139 SETTABLEKS                       R16 R15 K13 ["VerticalAlignment"]
      141 GETIMPORT                        R16 K65 [Enum.HorizontalAlignment.Center]
      143 SETTABLEKS                       R16 R15 K12 ["HorizontalAlignment"]
      145 GETTABLEKS                       R16 R3 K66 ["GridLayoutCellSize"]
      147 SETTABLEKS                       R16 R15 K60 ["CellSize"]
      149 CALL                             R13 2 1
      150 SETTABLEKS                       R13 R12 K9 ["Layout"]
      152 GETUPVAL                         R14 0
      153 GETTABLEKS                       R13 R14 K4 ["createElement"]
      155 GETUPVAL                         R14 3
      156 DUPTABLE                         R15 K69 [{"Selected", "OnClick", "Text", "Disabled"}]
      157 GETTABLEKS                       R16 R1 K70 ["EnabledMouseMove"]
      159 SETTABLEKS                       R16 R15 K67 ["Selected"]
      161 GETTABLEKS                       R16 R0 K71 ["toggleMouseMove"]
      163 SETTABLEKS                       R16 R15 K68 ["OnClick"]
      165 LOADK                            R18 K72 ["RecordTabView"]
      166 LOADK                            R19 K73 ["FilterNameMouseMove"]
      167 NAMECALL                         R16 R2 K43 ["getText"]
      169 CALL                             R16 3 1
      170 SETTABLEKS                       R16 R15 K37 ["Text"]
      172 SETTABLEKS                       R4 R15 K3 ["Disabled"]
      174 CALL                             R13 2 1
      175 SETTABLEKS                       R13 R12 K51 ["MouseMoveEnabled"]
      177 GETUPVAL                         R14 0
      178 GETTABLEKS                       R13 R14 K4 ["createElement"]
      180 GETUPVAL                         R14 3
      181 DUPTABLE                         R15 K69 [{"Selected", "OnClick", "Text", "Disabled"}]
      182 GETTABLEKS                       R16 R1 K74 ["EnabledMouseClick"]
      184 SETTABLEKS                       R16 R15 K67 ["Selected"]
      186 GETTABLEKS                       R16 R0 K75 ["toggleMouseClick"]
      188 SETTABLEKS                       R16 R15 K68 ["OnClick"]
      190 LOADK                            R18 K72 ["RecordTabView"]
      191 LOADK                            R19 K76 ["FilterNameMouseClick"]
      192 NAMECALL                         R16 R2 K43 ["getText"]
      194 CALL                             R16 3 1
      195 SETTABLEKS                       R16 R15 K37 ["Text"]
      197 SETTABLEKS                       R4 R15 K3 ["Disabled"]
      199 CALL                             R13 2 1
      200 SETTABLEKS                       R13 R12 K52 ["MouseClickEnabled"]
      202 GETUPVAL                         R14 0
      203 GETTABLEKS                       R13 R14 K4 ["createElement"]
      205 GETUPVAL                         R14 3
      206 DUPTABLE                         R15 K69 [{"Selected", "OnClick", "Text", "Disabled"}]
      207 GETTABLEKS                       R16 R1 K77 ["EnabledKeyboard"]
      209 SETTABLEKS                       R16 R15 K67 ["Selected"]
      211 GETTABLEKS                       R16 R0 K78 ["toggleKeyboard"]
      213 SETTABLEKS                       R16 R15 K68 ["OnClick"]
      215 LOADK                            R18 K72 ["RecordTabView"]
      216 LOADK                            R19 K79 ["FilterNameKeyboard"]
      217 NAMECALL                         R16 R2 K43 ["getText"]
      219 CALL                             R16 3 1
      220 SETTABLEKS                       R16 R15 K37 ["Text"]
      222 SETTABLEKS                       R4 R15 K3 ["Disabled"]
      224 CALL                             R13 2 1
      225 SETTABLEKS                       R13 R12 K53 ["KeyboardEnabled"]
      227 GETUPVAL                         R14 0
      228 GETTABLEKS                       R13 R14 K4 ["createElement"]
      230 GETUPVAL                         R14 3
      231 DUPTABLE                         R15 K69 [{"Selected", "OnClick", "Text", "Disabled"}]
      232 GETTABLEKS                       R16 R1 K80 ["EnabledGamepad"]
      234 SETTABLEKS                       R16 R15 K67 ["Selected"]
      236 GETTABLEKS                       R16 R0 K81 ["toggleGamepad"]
      238 SETTABLEKS                       R16 R15 K68 ["OnClick"]
      240 LOADK                            R18 K72 ["RecordTabView"]
      241 LOADK                            R19 K82 ["FilterNameGamepad"]
      242 NAMECALL                         R16 R2 K43 ["getText"]
      244 CALL                             R16 3 1
      245 SETTABLEKS                       R16 R15 K37 ["Text"]
      247 SETTABLEKS                       R4 R15 K3 ["Disabled"]
      249 CALL                             R13 2 1
      250 SETTABLEKS                       R13 R12 K54 ["GamepadEnabled"]
      252 GETUPVAL                         R14 0
      253 GETTABLEKS                       R13 R14 K4 ["createElement"]
      255 GETUPVAL                         R14 3
      256 DUPTABLE                         R15 K69 [{"Selected", "OnClick", "Text", "Disabled"}]
      257 GETTABLEKS                       R16 R1 K83 ["EnabledTouch"]
      259 SETTABLEKS                       R16 R15 K67 ["Selected"]
      261 GETTABLEKS                       R16 R0 K84 ["toggleTouch"]
      263 SETTABLEKS                       R16 R15 K68 ["OnClick"]
      265 LOADK                            R18 K72 ["RecordTabView"]
      266 LOADK                            R19 K85 ["FilterNameTouch"]
      267 NAMECALL                         R16 R2 K43 ["getText"]
      269 CALL                             R16 3 1
      270 SETTABLEKS                       R16 R15 K37 ["Text"]
      272 SETTABLEKS                       R4 R15 K3 ["Disabled"]
      274 CALL                             R13 2 1
      275 SETTABLEKS                       R13 R12 K55 ["TouchEnabled"]
      277 CALL                             R9 3 1
      278 SETTABLEKS                       R9 R8 K35 ["GridLayoutArea"]
      280 CALL                             R5 3 -1
      281 RETURN                           R5 -1

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["RoduxStoreContext"]
        2 GETTABLE                         R3 R0 R2
        3 DUPTABLE                         R4 K6 [{"EnabledMouseMove", "EnabledMouseClick", "EnabledKeyboard", "EnabledGamepad", "EnabledTouch"}]
        4 GETTABLEKS                       R5 R3 K7 ["mouseMove"]
        6 SETTABLEKS                       R5 R4 K1 ["EnabledMouseMove"]
        8 GETTABLEKS                       R5 R3 K8 ["mouseClick"]
       10 SETTABLEKS                       R5 R4 K2 ["EnabledMouseClick"]
       12 GETTABLEKS                       R5 R3 K9 ["keyboard"]
       14 SETTABLEKS                       R5 R4 K3 ["EnabledKeyboard"]
       16 GETTABLEKS                       R5 R3 K10 ["gamepad"]
       18 SETTABLEKS                       R5 R4 K4 ["EnabledGamepad"]
       20 GETTABLEKS                       R5 R3 K11 ["touch"]
       22 SETTABLEKS                       R5 R4 K5 ["EnabledTouch"]
       24 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K5 [{"SetMouseMoveEnabled", "SetMouseClickEnabled", "SetKeyboardEnabled", "SetGamepadEnabled", "SetTouchEnabled"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetMouseMoveEnabled"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetMouseClickEnabled"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetKeyboardEnabled"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SetGamepadEnabled"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["SetTouchEnabled"]
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R3 K10 ["UI"]
       34 GETTABLEKS                       R6 R5 K11 ["TextLabel"]
       36 GETTABLEKS                       R7 R5 K12 ["Pane"]
       38 GETIMPORT                        R8 K4 [require]
       40 GETTABLEKS                       R11 R0 K13 ["Src"]
       42 GETTABLEKS                       R10 R11 K14 ["Components"]
       44 GETTABLEKS                       R9 R10 K15 ["LabeledToggleButton"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R13 R0 K13 ["Src"]
       51 GETTABLEKS                       R12 R13 K16 ["Actions"]
       53 GETTABLEKS                       R11 R12 K17 ["EventTypeEnabled"]
       55 GETTABLEKS                       R10 R11 K18 ["SetGamepadEnabled"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K4 [require]
       60 GETTABLEKS                       R14 R0 K13 ["Src"]
       62 GETTABLEKS                       R13 R14 K16 ["Actions"]
       64 GETTABLEKS                       R12 R13 K17 ["EventTypeEnabled"]
       66 GETTABLEKS                       R11 R12 K19 ["SetKeyboardEnabled"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K4 [require]
       71 GETTABLEKS                       R15 R0 K13 ["Src"]
       73 GETTABLEKS                       R14 R15 K16 ["Actions"]
       75 GETTABLEKS                       R13 R14 K17 ["EventTypeEnabled"]
       77 GETTABLEKS                       R12 R13 K20 ["SetMouseClickEnabled"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K4 [require]
       82 GETTABLEKS                       R16 R0 K13 ["Src"]
       84 GETTABLEKS                       R15 R16 K16 ["Actions"]
       86 GETTABLEKS                       R14 R15 K17 ["EventTypeEnabled"]
       88 GETTABLEKS                       R13 R14 K21 ["SetMouseMoveEnabled"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K4 [require]
       93 GETTABLEKS                       R17 R0 K13 ["Src"]
       95 GETTABLEKS                       R16 R17 K16 ["Actions"]
       97 GETTABLEKS                       R15 R16 K17 ["EventTypeEnabled"]
       99 GETTABLEKS                       R14 R15 K22 ["SetTouchEnabled"]
      101 CALL                             R13 1 1
      102 GETTABLEKS                       R14 R1 K23 ["PureComponent"]
      104 LOADK                            R16 K24 ["FilterSettingsUIGroup"]
      105 NAMECALL                         R14 R14 K25 ["extend"]
      107 CALL                             R14 2 1
      108 DUPCLOSURE                       R15 K26 [PROTO_5]
      109 SETTABLEKS                       R15 R14 K27 ["init"]
      111 DUPCLOSURE                       R15 K28 [PROTO_6]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R8
      116 SETTABLEKS                       R15 R14 K29 ["render"]
      118 GETTABLEKS                       R15 R4 K30 ["withContext"]
      120 DUPTABLE                         R16 K33 [{"Stylizer", "Localization"}]
      121 GETTABLEKS                       R17 R4 K31 ["Stylizer"]
      123 SETTABLEKS                       R17 R16 K31 ["Stylizer"]
      125 GETTABLEKS                       R17 R4 K32 ["Localization"]
      127 SETTABLEKS                       R17 R16 K32 ["Localization"]
      129 CALL                             R15 1 1
      130 MOVE                             R16 R14
      131 CALL                             R15 1 1
      132 MOVE                             R14 R15
      133 DUPCLOSURE                       R15 K34 [PROTO_7]
      134 DUPCLOSURE                       R16 K35 [PROTO_13]
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R13
      140 GETTABLEKS                       R17 R2 K36 ["connect"]
      142 MOVE                             R18 R15
      143 MOVE                             R19 R16
      144 CALL                             R17 2 1
      145 MOVE                             R18 R14
      146 CALL                             R17 1 -1
      147 RETURN                           R17 -1
