PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PseudolocalizationEnabled"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TextElongationFactor"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["PseudolocalizationEnabled"]
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["TextElongationFactor"]
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PlayerEmulationEnabled"]
        3 RETURN                           R0 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["PSEUDOLOCALIZATION_ENABLED_SETTING_KEY"]
       10 NAMECALL                         R2 R1 K4 ["GetSetting"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETUPVAL                         R3 1
       15 SETTABLEKS                       R2 R3 K5 ["PseudolocalizationEnabled"]
       17 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["TEXT_ELONGATION_FACTOR_SETTING_KEY"]
       10 NAMECALL                         R2 R1 K4 ["GetSetting"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETUPVAL                         R3 1
       15 SETTABLEKS                       R2 R3 K5 ["TextElongationFactor"]
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PlayerEmulationEnabled"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 GETTABLEKS                       R1 R0 K1 ["state"]
        6 GETTABLEKS                       R1 R1 K2 ["pseudolocalizationEnabled"]
        8 GETUPVAL                         R2 0
        9 SETTABLEKS                       R1 R2 K3 ["PseudolocalizationEnabled"]
       11 GETTABLEKS                       R2 R0 K1 ["state"]
       13 GETTABLEKS                       R2 R2 K4 ["textElongationFactor"]
       15 GETUPVAL                         R3 0
       16 SETTABLEKS                       R2 R3 K5 ["TextElongationFactor"]
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 0
       20 LOADB                            R2 0
       21 SETTABLEKS                       R2 R1 K3 ["PseudolocalizationEnabled"]
       23 GETUPVAL                         R1 0
       24 LOADN                            R2 0
       25 SETTABLEKS                       R2 R1 K5 ["TextElongationFactor"]
       27 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PseudolocalizationEnabled"]
        3 DUPTABLE                         R4 K2 [{"pseudolocalizationEnabled"}]
        4 SETTABLEKS                       R1 R4 K1 ["pseudolocalizationEnabled"]
        6 NAMECALL                         R2 R0 K3 ["setState"]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R0 K4 ["props"]
       11 GETTABLEKS                       R2 R2 K5 ["Plugin"]
       13 NAMECALL                         R2 R2 K6 ["get"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K7 ["PSEUDOLOCALIZATION_ENABLED_SETTING_KEY"]
       19 MOVE                             R6 R1
       20 NAMECALL                         R3 R2 K8 ["SetSetting"]
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["TextElongationFactor"]
        3 DUPTABLE                         R4 K2 [{"textElongationFactor"}]
        4 SETTABLEKS                       R1 R4 K1 ["textElongationFactor"]
        6 NAMECALL                         R2 R0 K3 ["setState"]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R0 K4 ["props"]
       11 GETTABLEKS                       R2 R2 K5 ["Plugin"]
       13 NAMECALL                         R2 R2 K6 ["get"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K7 ["TEXT_ELONGATION_FACTOR_SETTING_KEY"]
       19 MOVE                             R6 R1
       20 NAMECALL                         R3 R2 K8 ["SetSetting"]
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"pseudolocalizationEnabled", "textElongationFactor"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["PseudolocalizationEnabled"]
        4 SETTABLEKS                       R2 R1 K0 ["pseudolocalizationEnabled"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["TextElongationFactor"]
        9 SETTABLEKS                       R2 R1 K1 ["textElongationFactor"]
       11 SETTABLEKS                       R1 R0 K5 ["state"]
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onPseudolocalizationChanged"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onTextElongationFactorChanged"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["PseudolocalizationEnabled"]
        2 NAMECALL                         R1 R1 K1 ["GetPropertyChangedSignal"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R1 R1 K2 ["Connect"]
        9 CALL                             R1 2 1
       10 NAMECALL                         R2 R0 K3 ["initPseudolocalizationEnabled"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 0
       14 LOADK                            R4 K4 ["TextElongationFactor"]
       15 NAMECALL                         R2 R2 K1 ["GetPropertyChangedSignal"]
       17 CALL                             R2 2 1
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R2 R2 K2 ["Connect"]
       22 CALL                             R2 2 1
       23 NAMECALL                         R3 R0 K5 ["initTextElongationFactor"]
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["TextElongationFactor"]
        3 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["mainSwitchEnabled"]
        6 GETTABLEKS                       R4 R1 K3 ["pseudolocalizationEnabled"]
        8 GETTABLEKS                       R5 R1 K4 ["textElongationFactor"]
       10 GETTABLEKS                       R6 R2 K5 ["Stylizer"]
       12 GETTABLEKS                       R7 R2 K6 ["Localization"]
       14 GETTABLEKS                       R8 R2 K7 ["LayoutOrder"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["createElement"]
       19 LOADK                            R10 K9 ["Frame"]
       20 DUPTABLE                         R11 K17 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 3}]
       21 GETIMPORT                        R12 K20 [Enum.AutomaticSize.Y]
       23 SETTABLEKS                       R12 R11 K10 ["AutomaticSize"]
       25 GETIMPORT                        R12 K23 [UDim2.new]
       27 LOADN                            R13 1
       28 LOADN                            R14 0
       29 LOADN                            R15 0
       30 GETTABLEKS                       R16 R6 K24 ["TOGGLE_BUTTON_HEIGHT"]
       32 CALL                             R12 4 1
       33 SETTABLEKS                       R12 R11 K11 ["Size"]
       35 DUPTABLE                         R12 K28 [{"Layout", "Label", "Toggle"}]
       36 GETUPVAL                         R13 0
       37 GETTABLEKS                       R13 R13 K8 ["createElement"]
       39 LOADK                            R14 K29 ["UIListLayout"]
       40 DUPTABLE                         R15 K34 [{"HorizontalFlex", "SortOrder", "FillDirection", "VerticalAlignment"}]
       41 GETIMPORT                        R16 K37 [Enum.UIFlexAlignment.SpaceBetween]
       43 SETTABLEKS                       R16 R15 K30 ["HorizontalFlex"]
       45 GETIMPORT                        R16 K38 [Enum.SortOrder.LayoutOrder]
       47 SETTABLEKS                       R16 R15 K31 ["SortOrder"]
       49 GETIMPORT                        R16 K40 [Enum.FillDirection.Horizontal]
       51 SETTABLEKS                       R16 R15 K32 ["FillDirection"]
       53 GETIMPORT                        R16 K42 [Enum.VerticalAlignment.Center]
       55 SETTABLEKS                       R16 R15 K33 ["VerticalAlignment"]
       57 CALL                             R13 2 1
       58 SETTABLEKS                       R13 R12 K25 ["Layout"]
       60 GETUPVAL                         R13 0
       61 GETTABLEKS                       R13 R13 K8 ["createElement"]
       63 GETUPVAL                         R14 1
       64 DUPTABLE                         R15 K49 [{["AutomaticSize"], ["Text"], ["TextXAlignment"], ["TextWrapped"] = True, ["TextTruncate"], ["StyleModifier"], ["LayoutOrder"] = 1}]
       65 GETIMPORT                        R16 K51 [Enum.AutomaticSize.XY]
       67 SETTABLEKS                       R16 R15 K10 ["AutomaticSize"]
       69 LOADK                            R18 K52 ["LanguageSection"]
       70 LOADK                            R19 K53 ["PseudolocalizationLabelText"]
       71 NAMECALL                         R16 R7 K54 ["getText"]
       73 CALL                             R16 3 1
       74 SETTABLEKS                       R16 R15 K43 ["Text"]
       76 GETIMPORT                        R16 K56 [Enum.TextXAlignment.Left]
       78 SETTABLEKS                       R16 R15 K44 ["TextXAlignment"]
       80 GETIMPORT                        R16 K58 [Enum.TextTruncate.SplitWord]
       82 SETTABLEKS                       R16 R15 K47 ["TextTruncate"]
       84 JUMPIFNOT                        R3 ; [+2]
       85 LOADNIL                          R16
       86 JUMP                             ; [+3]
       87 GETUPVAL                         R16 2
       88 GETTABLEKS                       R16 R16 K59 ["Disabled"]
       90 SETTABLEKS                       R16 R15 K48 ["StyleModifier"]
       92 DUPTABLE                         R16 K61 [{"FlexItem"}]
       93 GETUPVAL                         R17 0
       94 GETTABLEKS                       R17 R17 K8 ["createElement"]
       96 LOADK                            R18 K62 ["UIFlexItem"]
       97 DUPTABLE                         R19 K64 [{"FlexMode"}]
       98 GETIMPORT                        R20 K67 [Enum.UIFlexMode.Shrink]
      100 SETTABLEKS                       R20 R19 K63 ["FlexMode"]
      102 CALL                             R17 2 1
      103 SETTABLEKS                       R17 R16 K60 ["FlexItem"]
      105 CALL                             R13 3 1
      106 SETTABLEKS                       R13 R12 K26 ["Label"]
      108 GETUPVAL                         R13 0
      109 GETTABLEKS                       R13 R13 K8 ["createElement"]
      111 GETUPVAL                         R14 3
      112 DUPTABLE                         R15 K71 [{["Disabled"], ["OnClick"], ["Selected"], ["LayoutOrder"] = 2}]
      113 NOT                              R16 R3
      114 SETTABLEKS                       R16 R15 K59 ["Disabled"]
      116 GETUPVAL                         R16 4
      117 SETTABLEKS                       R16 R15 K68 ["OnClick"]
      119 SETTABLEKS                       R4 R15 K69 ["Selected"]
      121 CALL                             R13 2 1
      122 SETTABLEKS                       R13 R12 K27 ["Toggle"]
      124 CALL                             R9 3 1
      125 GETUPVAL                         R10 0
      126 GETTABLEKS                       R10 R10 K8 ["createElement"]
      128 LOADK                            R11 K9 ["Frame"]
      129 DUPTABLE                         R12 K73 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 4}]
      130 GETIMPORT                        R13 K20 [Enum.AutomaticSize.Y]
      132 SETTABLEKS                       R13 R12 K10 ["AutomaticSize"]
      134 GETIMPORT                        R13 K23 [UDim2.new]
      136 LOADN                            R14 1
      137 LOADN                            R15 0
      138 LOADN                            R16 0
      139 GETTABLEKS                       R17 R6 K24 ["TOGGLE_BUTTON_HEIGHT"]
      141 CALL                             R13 4 1
      142 SETTABLEKS                       R13 R12 K11 ["Size"]
      144 DUPTABLE                         R13 K75 [{"Layout", "Label", "Slider"}]
      145 GETUPVAL                         R14 0
      146 GETTABLEKS                       R14 R14 K8 ["createElement"]
      148 LOADK                            R15 K29 ["UIListLayout"]
      149 DUPTABLE                         R16 K34 [{"HorizontalFlex", "SortOrder", "FillDirection", "VerticalAlignment"}]
      150 GETIMPORT                        R17 K37 [Enum.UIFlexAlignment.SpaceBetween]
      152 SETTABLEKS                       R17 R16 K30 ["HorizontalFlex"]
      154 GETIMPORT                        R17 K38 [Enum.SortOrder.LayoutOrder]
      156 SETTABLEKS                       R17 R16 K31 ["SortOrder"]
      158 GETIMPORT                        R17 K40 [Enum.FillDirection.Horizontal]
      160 SETTABLEKS                       R17 R16 K32 ["FillDirection"]
      162 GETIMPORT                        R17 K42 [Enum.VerticalAlignment.Center]
      164 SETTABLEKS                       R17 R16 K33 ["VerticalAlignment"]
      166 CALL                             R14 2 1
      167 SETTABLEKS                       R14 R13 K25 ["Layout"]
      169 GETUPVAL                         R14 0
      170 GETTABLEKS                       R14 R14 K8 ["createElement"]
      172 GETUPVAL                         R15 1
      173 DUPTABLE                         R16 K77 [{["AutomaticSize"], ["Text"] = "Elongate", ["TextXAlignment"], ["TextWrapped"] = True, ["TextTruncate"], ["StyleModifier"], ["LayoutOrder"] = 1}]
      174 GETIMPORT                        R17 K51 [Enum.AutomaticSize.XY]
      176 SETTABLEKS                       R17 R16 K10 ["AutomaticSize"]
      178 GETIMPORT                        R17 K56 [Enum.TextXAlignment.Left]
      180 SETTABLEKS                       R17 R16 K44 ["TextXAlignment"]
      182 GETIMPORT                        R17 K58 [Enum.TextTruncate.SplitWord]
      184 SETTABLEKS                       R17 R16 K47 ["TextTruncate"]
      186 JUMPIFNOT                        R3 ; [+2]
      187 LOADNIL                          R17
      188 JUMP                             ; [+3]
      189 GETUPVAL                         R17 2
      190 GETTABLEKS                       R17 R17 K59 ["Disabled"]
      192 SETTABLEKS                       R17 R16 K48 ["StyleModifier"]
      194 DUPTABLE                         R17 K61 [{"FlexItem"}]
      195 GETUPVAL                         R18 0
      196 GETTABLEKS                       R18 R18 K8 ["createElement"]
      198 LOADK                            R19 K62 ["UIFlexItem"]
      199 DUPTABLE                         R20 K64 [{"FlexMode"}]
      200 GETIMPORT                        R21 K67 [Enum.UIFlexMode.Shrink]
      202 SETTABLEKS                       R21 R20 K63 ["FlexMode"]
      204 CALL                             R18 2 1
      205 SETTABLEKS                       R18 R17 K60 ["FlexItem"]
      207 CALL                             R14 3 1
      208 SETTABLEKS                       R14 R13 K26 ["Label"]
      210 GETUPVAL                         R14 0
      211 GETTABLEKS                       R14 R14 K8 ["createElement"]
      213 GETUPVAL                         R15 5
      214 DUPTABLE                         R16 K85 [{["Disabled"], ["Min"] = 0, ["Max"] = 200, ["Value"], ["SnapIncrement"] = 10, ["Size"], ["LayoutOrder"] = 2, ["OnValueChanged"]}]
      215 NOT                              R17 R3
      216 SETTABLEKS                       R17 R16 K59 ["Disabled"]
      218 SETTABLEKS                       R5 R16 K81 ["Value"]
      220 GETIMPORT                        R17 K23 [UDim2.new]
      222 LOADN                            R18 0
      223 LOADN                            R19 100
      224 LOADN                            R20 0
      225 GETTABLEKS                       R21 R6 K24 ["TOGGLE_BUTTON_HEIGHT"]
      227 CALL                             R17 4 1
      228 SETTABLEKS                       R17 R16 K11 ["Size"]
      230 DUPCLOSURE                       R17 K86 [PROTO_14]
      231 CAPTURE                          UPVAL U6
      232 SETTABLEKS                       R17 R16 K84 ["OnValueChanged"]
      234 CALL                             R14 2 1
      235 SETTABLEKS                       R14 R13 K74 ["Slider"]
      237 CALL                             R10 3 1
      238 GETUPVAL                         R11 0
      239 GETTABLEKS                       R11 R11 K8 ["createElement"]
      241 LOADK                            R12 K9 ["Frame"]
      242 DUPTABLE                         R13 K87 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      243 GETIMPORT                        R14 K20 [Enum.AutomaticSize.Y]
      245 SETTABLEKS                       R14 R13 K10 ["AutomaticSize"]
      247 GETIMPORT                        R14 K89 [UDim2.fromScale]
      249 LOADN                            R15 1
      250 LOADN                            R16 0
      251 CALL                             R14 2 1
      252 SETTABLEKS                       R14 R13 K11 ["Size"]
      254 SETTABLEKS                       R8 R13 K7 ["LayoutOrder"]
      256 DUPTABLE                         R14 K92 [{"Layout", "PseudolocalizationModule", "ElongateModule"}]
      257 GETUPVAL                         R15 0
      258 GETTABLEKS                       R15 R15 K8 ["createElement"]
      260 LOADK                            R16 K29 ["UIListLayout"]
      261 DUPTABLE                         R17 K94 [{"SortOrder", "FillDirection", "Padding"}]
      262 GETIMPORT                        R18 K38 [Enum.SortOrder.LayoutOrder]
      264 SETTABLEKS                       R18 R17 K31 ["SortOrder"]
      266 GETIMPORT                        R18 K96 [Enum.FillDirection.Vertical]
      268 SETTABLEKS                       R18 R17 K32 ["FillDirection"]
      270 GETTABLEKS                       R18 R6 K97 ["HORIZONTAL_LISTLAYOUT_PADDING"]
      272 SETTABLEKS                       R18 R17 K93 ["Padding"]
      274 CALL                             R15 2 1
      275 SETTABLEKS                       R15 R14 K25 ["Layout"]
      277 SETTABLEKS                       R9 R14 K90 ["PseudolocalizationModule"]
      279 SETTABLEKS                       R10 R14 K91 ["ElongateModule"]
      281 CALL                             R11 3 -1
      282 RETURN                           R11 -1

PROTO_16:
        0 DUPTABLE                         R2 K1 [{"mainSwitchEnabled"}]
        1 GETTABLEKS                       R3 R0 K2 ["MainSwitch"]
        3 GETTABLEKS                       R3 R3 K0 ["mainSwitchEnabled"]
        5 SETTABLEKS                       R3 R2 K0 ["mainSwitchEnabled"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PlayerEmulatorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R5 K12 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       38 GETTABLEKS                       R6 R5 K14 ["withContext"]
       40 GETIMPORT                        R7 K8 [require]
       42 GETTABLEKS                       R8 R1 K15 ["Src"]
       44 GETTABLEKS                       R8 R8 K16 ["Util"]
       46 GETTABLEKS                       R8 R8 K17 ["Constants"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R4 K18 ["UI"]
       51 GETTABLEKS                       R9 R8 K19 ["ToggleButton"]
       53 GETTABLEKS                       R10 R8 K20 ["Slider"]
       55 GETTABLEKS                       R11 R8 K21 ["TextLabel"]
       57 GETTABLEKS                       R12 R4 K16 ["Util"]
       59 GETTABLEKS                       R12 R12 K22 ["StyleModifier"]
       61 DUPCLOSURE                       R13 K23 [PROTO_0]
       62 CAPTURE                          VAL R0
       63 DUPCLOSURE                       R14 K24 [PROTO_1]
       64 CAPTURE                          VAL R0
       65 DUPCLOSURE                       R15 K25 [PROTO_2]
       66 CAPTURE                          VAL R0
       67 DUPCLOSURE                       R16 K26 [PROTO_3]
       68 CAPTURE                          VAL R0
       69 DUPCLOSURE                       R17 K27 [PROTO_4]
       70 CAPTURE                          VAL R0
       71 GETTABLEKS                       R18 R2 K28 ["PureComponent"]
       73 LOADK                            R20 K29 ["PseudolocalizationSection"]
       74 NAMECALL                         R18 R18 K30 ["extend"]
       76 CALL                             R18 2 1
       77 DUPCLOSURE                       R19 K31 [PROTO_5]
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R19 R18 K32 ["initPseudolocalizationEnabled"]
       82 DUPCLOSURE                       R19 K33 [PROTO_6]
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R19 R18 K34 ["initTextElongationFactor"]
       87 DUPCLOSURE                       R19 K35 [PROTO_7]
       88 CAPTURE                          VAL R0
       89 SETTABLEKS                       R19 R18 K36 ["onPlayerEmulationEnabledChanged"]
       91 DUPCLOSURE                       R19 K37 [PROTO_8]
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R7
       94 SETTABLEKS                       R19 R18 K38 ["onPseudolocalizationChanged"]
       96 DUPCLOSURE                       R19 K39 [PROTO_9]
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R7
       99 SETTABLEKS                       R19 R18 K40 ["onTextElongationFactorChanged"]
      101 DUPCLOSURE                       R19 K41 [PROTO_10]
      102 CAPTURE                          VAL R0
      103 SETTABLEKS                       R19 R18 K42 ["init"]
      105 DUPCLOSURE                       R19 K43 [PROTO_13]
      106 CAPTURE                          VAL R0
      107 SETTABLEKS                       R19 R18 K44 ["didMount"]
      109 DUPCLOSURE                       R19 K45 [PROTO_15]
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R0
      117 SETTABLEKS                       R19 R18 K46 ["render"]
      119 MOVE                             R19 R6
      120 DUPTABLE                         R20 K50 [{"Stylizer", "Localization", "Plugin"}]
      121 GETTABLEKS                       R21 R5 K47 ["Stylizer"]
      123 SETTABLEKS                       R21 R20 K47 ["Stylizer"]
      125 GETTABLEKS                       R21 R5 K48 ["Localization"]
      127 SETTABLEKS                       R21 R20 K48 ["Localization"]
      129 GETTABLEKS                       R21 R5 K49 ["Plugin"]
      131 SETTABLEKS                       R21 R20 K49 ["Plugin"]
      133 CALL                             R19 1 1
      134 MOVE                             R20 R18
      135 CALL                             R19 1 1
      136 MOVE                             R18 R19
      137 DUPCLOSURE                       R19 K51 [PROTO_16]
      138 GETTABLEKS                       R20 R3 K52 ["connect"]
      140 MOVE                             R21 R19
      141 CALL                             R20 1 1
      142 MOVE                             R21 R18
      143 CALL                             R20 1 -1
      144 RETURN                           R20 -1
