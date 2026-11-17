PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetMouseMoveEnabled"]
        5 GETTABLEKS                       R3 R0 K2 ["EnabledMouseMove"]
        7 NOT                              R2 R3
        8 GETTABLEKS                       R3 R0 K3 ["RoduxStoreContext"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetMouseClickEnabled"]
        5 GETTABLEKS                       R3 R0 K2 ["EnabledMouseClick"]
        7 NOT                              R2 R3
        8 GETTABLEKS                       R3 R0 K3 ["RoduxStoreContext"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetKeyboardEnabled"]
        5 GETTABLEKS                       R3 R0 K2 ["EnabledKeyboard"]
        7 NOT                              R2 R3
        8 GETTABLEKS                       R3 R0 K3 ["RoduxStoreContext"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetGamepadEnabled"]
        5 GETTABLEKS                       R3 R0 K2 ["EnabledGamepad"]
        7 NOT                              R2 R3
        8 GETTABLEKS                       R3 R0 K3 ["RoduxStoreContext"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
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
        6 GETTABLEKS                       R4 R0 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K3 ["Disabled"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K4 ["createElement"]
       13 GETUPVAL                         R6 1
       14 DUPTABLE                         R7 K15 [{["LayoutOrder"], ["Style"] = "CornerBox", ["Size"], ["AutomaticSize"], ["Layout"], ["Spacing"], ["Padding"], ["HorizontalAlignment"], ["VerticalAlignment"]}]
       15 GETTABLEKS                       R8 R1 K5 ["LayoutOrder"]
       17 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       19 GETIMPORT                        R8 K18 [UDim2.fromOffset]
       21 GETTABLEKS                       R9 R3 K19 ["UIGroupWidthPx"]
       23 LOADN                            R10 0
       24 CALL                             R8 2 1
       25 SETTABLEKS                       R8 R7 K8 ["Size"]
       27 GETIMPORT                        R8 K22 [Enum.AutomaticSize.Y]
       29 SETTABLEKS                       R8 R7 K9 ["AutomaticSize"]
       31 GETIMPORT                        R8 K25 [Enum.FillDirection.Vertical]
       33 SETTABLEKS                       R8 R7 K10 ["Layout"]
       35 GETIMPORT                        R8 K28 [UDim.new]
       37 LOADN                            R9 0
       38 GETTABLEKS                       R10 R3 K29 ["PaddingPx"]
       40 CALL                             R8 2 1
       41 SETTABLEKS                       R8 R7 K11 ["Spacing"]
       43 GETTABLEKS                       R8 R3 K29 ["PaddingPx"]
       45 SETTABLEKS                       R8 R7 K12 ["Padding"]
       47 GETIMPORT                        R8 K31 [Enum.HorizontalAlignment.Left]
       49 SETTABLEKS                       R8 R7 K13 ["HorizontalAlignment"]
       51 GETIMPORT                        R8 K33 [Enum.VerticalAlignment.Top]
       53 SETTABLEKS                       R8 R7 K14 ["VerticalAlignment"]
       55 DUPTABLE                         R8 K36 [{"Label", "GridLayoutArea"}]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K4 ["createElement"]
       59 GETUPVAL                         R10 2
       60 DUPTABLE                         R11 K41 [{["Text"], ["Size"], ["AutomaticSize"], ["LayoutOrder"] = 0, ["TextXAlignment"], ["TextYAlignment"]}]
       61 LOADK                            R14 K42 ["PlaybackTabView"]
       62 LOADK                            R15 K43 ["FilterEventsLabel"]
       63 NAMECALL                         R12 R2 K44 ["getText"]
       65 CALL                             R12 3 1
       66 SETTABLEKS                       R12 R11 K37 ["Text"]
       68 GETIMPORT                        R12 K46 [UDim2.fromScale]
       70 LOADN                            R13 1
       71 LOADN                            R14 0
       72 CALL                             R12 2 1
       73 SETTABLEKS                       R12 R11 K8 ["Size"]
       75 GETIMPORT                        R12 K22 [Enum.AutomaticSize.Y]
       77 SETTABLEKS                       R12 R11 K9 ["AutomaticSize"]
       79 GETIMPORT                        R12 K47 [Enum.TextXAlignment.Left]
       81 SETTABLEKS                       R12 R11 K39 ["TextXAlignment"]
       83 GETIMPORT                        R12 K48 [Enum.TextYAlignment.Top]
       85 SETTABLEKS                       R12 R11 K40 ["TextYAlignment"]
       87 CALL                             R9 2 1
       88 SETTABLEKS                       R9 R8 K34 ["Label"]
       90 GETUPVAL                         R9 0
       91 GETTABLEKS                       R9 R9 K4 ["createElement"]
       93 GETUPVAL                         R10 1
       94 DUPTABLE                         R11 K50 [{["Size"], ["LayoutOrder"] = 1}]
       95 GETIMPORT                        R12 K51 [UDim2.new]
       97 LOADN                            R13 1
       98 LOADN                            R14 0
       99 LOADN                            R15 0
      100 GETTABLEKS                       R16 R3 K52 ["GridAreaHeightPx"]
      102 CALL                             R12 4 1
      103 SETTABLEKS                       R12 R11 K8 ["Size"]
      105 DUPTABLE                         R12 K58 [{"Layout", "MouseMoveEnabled", "MouseClickEnabled", "KeyboardEnabled", "GamepadEnabled", "TouchEnabled"}]
      106 GETUPVAL                         R13 0
      107 GETTABLEKS                       R13 R13 K4 ["createElement"]
      109 LOADK                            R14 K59 ["UIGridLayout"]
      110 DUPTABLE                         R15 K63 [{"FillDirection", "CellPadding", "SortOrder", "VerticalAlignment", "HorizontalAlignment", "CellSize"}]
      111 GETIMPORT                        R16 K25 [Enum.FillDirection.Vertical]
      113 SETTABLEKS                       R16 R15 K23 ["FillDirection"]
      115 GETIMPORT                        R16 K18 [UDim2.fromOffset]
      117 GETTABLEKS                       R17 R3 K29 ["PaddingPx"]
      119 GETTABLEKS                       R18 R3 K64 ["GridCellPaddingYPx"]
      121 CALL                             R16 2 1
      122 SETTABLEKS                       R16 R15 K60 ["CellPadding"]
      124 GETIMPORT                        R16 K65 [Enum.SortOrder.LayoutOrder]
      126 SETTABLEKS                       R16 R15 K61 ["SortOrder"]
      128 GETIMPORT                        R16 K33 [Enum.VerticalAlignment.Top]
      130 SETTABLEKS                       R16 R15 K14 ["VerticalAlignment"]
      132 GETIMPORT                        R16 K67 [Enum.HorizontalAlignment.Center]
      134 SETTABLEKS                       R16 R15 K13 ["HorizontalAlignment"]
      136 GETTABLEKS                       R16 R3 K68 ["GridLayoutCellSize"]
      138 SETTABLEKS                       R16 R15 K62 ["CellSize"]
      140 CALL                             R13 2 1
      141 SETTABLEKS                       R13 R12 K10 ["Layout"]
      143 GETUPVAL                         R13 0
      144 GETTABLEKS                       R13 R13 K4 ["createElement"]
      146 GETUPVAL                         R14 3
      147 DUPTABLE                         R15 K71 [{"Selected", "OnClick", "Text", "Disabled"}]
      148 GETTABLEKS                       R16 R1 K72 ["EnabledMouseMove"]
      150 SETTABLEKS                       R16 R15 K69 ["Selected"]
      152 GETTABLEKS                       R16 R0 K73 ["toggleMouseMove"]
      154 SETTABLEKS                       R16 R15 K70 ["OnClick"]
      156 LOADK                            R18 K74 ["RecordTabView"]
      157 LOADK                            R19 K75 ["FilterNameMouseMove"]
      158 NAMECALL                         R16 R2 K44 ["getText"]
      160 CALL                             R16 3 1
      161 SETTABLEKS                       R16 R15 K37 ["Text"]
      163 SETTABLEKS                       R4 R15 K3 ["Disabled"]
      165 CALL                             R13 2 1
      166 SETTABLEKS                       R13 R12 K53 ["MouseMoveEnabled"]
      168 GETUPVAL                         R13 0
      169 GETTABLEKS                       R13 R13 K4 ["createElement"]
      171 GETUPVAL                         R14 3
      172 DUPTABLE                         R15 K71 [{"Selected", "OnClick", "Text", "Disabled"}]
      173 GETTABLEKS                       R16 R1 K76 ["EnabledMouseClick"]
      175 SETTABLEKS                       R16 R15 K69 ["Selected"]
      177 GETTABLEKS                       R16 R0 K77 ["toggleMouseClick"]
      179 SETTABLEKS                       R16 R15 K70 ["OnClick"]
      181 LOADK                            R18 K74 ["RecordTabView"]
      182 LOADK                            R19 K78 ["FilterNameMouseClick"]
      183 NAMECALL                         R16 R2 K44 ["getText"]
      185 CALL                             R16 3 1
      186 SETTABLEKS                       R16 R15 K37 ["Text"]
      188 SETTABLEKS                       R4 R15 K3 ["Disabled"]
      190 CALL                             R13 2 1
      191 SETTABLEKS                       R13 R12 K54 ["MouseClickEnabled"]
      193 GETUPVAL                         R13 0
      194 GETTABLEKS                       R13 R13 K4 ["createElement"]
      196 GETUPVAL                         R14 3
      197 DUPTABLE                         R15 K71 [{"Selected", "OnClick", "Text", "Disabled"}]
      198 GETTABLEKS                       R16 R1 K79 ["EnabledKeyboard"]
      200 SETTABLEKS                       R16 R15 K69 ["Selected"]
      202 GETTABLEKS                       R16 R0 K80 ["toggleKeyboard"]
      204 SETTABLEKS                       R16 R15 K70 ["OnClick"]
      206 LOADK                            R18 K74 ["RecordTabView"]
      207 LOADK                            R19 K81 ["FilterNameKeyboard"]
      208 NAMECALL                         R16 R2 K44 ["getText"]
      210 CALL                             R16 3 1
      211 SETTABLEKS                       R16 R15 K37 ["Text"]
      213 SETTABLEKS                       R4 R15 K3 ["Disabled"]
      215 CALL                             R13 2 1
      216 SETTABLEKS                       R13 R12 K55 ["KeyboardEnabled"]
      218 GETUPVAL                         R13 0
      219 GETTABLEKS                       R13 R13 K4 ["createElement"]
      221 GETUPVAL                         R14 3
      222 DUPTABLE                         R15 K71 [{"Selected", "OnClick", "Text", "Disabled"}]
      223 GETTABLEKS                       R16 R1 K82 ["EnabledGamepad"]
      225 SETTABLEKS                       R16 R15 K69 ["Selected"]
      227 GETTABLEKS                       R16 R0 K83 ["toggleGamepad"]
      229 SETTABLEKS                       R16 R15 K70 ["OnClick"]
      231 LOADK                            R18 K74 ["RecordTabView"]
      232 LOADK                            R19 K84 ["FilterNameGamepad"]
      233 NAMECALL                         R16 R2 K44 ["getText"]
      235 CALL                             R16 3 1
      236 SETTABLEKS                       R16 R15 K37 ["Text"]
      238 SETTABLEKS                       R4 R15 K3 ["Disabled"]
      240 CALL                             R13 2 1
      241 SETTABLEKS                       R13 R12 K56 ["GamepadEnabled"]
      243 GETUPVAL                         R13 0
      244 GETTABLEKS                       R13 R13 K4 ["createElement"]
      246 GETUPVAL                         R14 3
      247 DUPTABLE                         R15 K71 [{"Selected", "OnClick", "Text", "Disabled"}]
      248 GETTABLEKS                       R16 R1 K85 ["EnabledTouch"]
      250 SETTABLEKS                       R16 R15 K69 ["Selected"]
      252 GETTABLEKS                       R16 R0 K86 ["toggleTouch"]
      254 SETTABLEKS                       R16 R15 K70 ["OnClick"]
      256 LOADK                            R18 K74 ["RecordTabView"]
      257 LOADK                            R19 K87 ["FilterNameTouch"]
      258 NAMECALL                         R16 R2 K44 ["getText"]
      260 CALL                             R16 3 1
      261 SETTABLEKS                       R16 R15 K37 ["Text"]
      263 SETTABLEKS                       R4 R15 K3 ["Disabled"]
      265 CALL                             R13 2 1
      266 SETTABLEKS                       R13 R12 K57 ["TouchEnabled"]
      268 CALL                             R9 3 1
      269 SETTABLEKS                       R9 R8 K35 ["GridLayoutArea"]
      271 CALL                             R5 3 -1
      272 RETURN                           R5 -1

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R3 K10 ["UI"]
       34 GETTABLEKS                       R6 R5 K11 ["TextLabel"]
       36 GETTABLEKS                       R7 R5 K12 ["Pane"]
       38 GETIMPORT                        R8 K4 [require]
       40 GETTABLEKS                       R9 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R9 K14 ["Components"]
       44 GETTABLEKS                       R9 R9 K15 ["LabeledToggleButton"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Src"]
       51 GETTABLEKS                       R10 R10 K16 ["Actions"]
       53 GETTABLEKS                       R10 R10 K17 ["EventTypeEnabled"]
       55 GETTABLEKS                       R10 R10 K18 ["SetGamepadEnabled"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K4 [require]
       60 GETTABLEKS                       R11 R0 K13 ["Src"]
       62 GETTABLEKS                       R11 R11 K16 ["Actions"]
       64 GETTABLEKS                       R11 R11 K17 ["EventTypeEnabled"]
       66 GETTABLEKS                       R11 R11 K19 ["SetKeyboardEnabled"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K4 [require]
       71 GETTABLEKS                       R12 R0 K13 ["Src"]
       73 GETTABLEKS                       R12 R12 K16 ["Actions"]
       75 GETTABLEKS                       R12 R12 K17 ["EventTypeEnabled"]
       77 GETTABLEKS                       R12 R12 K20 ["SetMouseClickEnabled"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K4 [require]
       82 GETTABLEKS                       R13 R0 K13 ["Src"]
       84 GETTABLEKS                       R13 R13 K16 ["Actions"]
       86 GETTABLEKS                       R13 R13 K17 ["EventTypeEnabled"]
       88 GETTABLEKS                       R13 R13 K21 ["SetMouseMoveEnabled"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K4 [require]
       93 GETTABLEKS                       R14 R0 K13 ["Src"]
       95 GETTABLEKS                       R14 R14 K16 ["Actions"]
       97 GETTABLEKS                       R14 R14 K17 ["EventTypeEnabled"]
       99 GETTABLEKS                       R14 R14 K22 ["SetTouchEnabled"]
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
