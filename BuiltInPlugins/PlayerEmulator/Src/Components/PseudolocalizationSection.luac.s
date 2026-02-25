PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["PseudolocalizationEnabled"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["TextElongationFactor"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["PlayerEmulationEnabled"]
        3 RETURN                           R0 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Plugin"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K3 ["PSEUDOLOCALIZATION_ENABLED_SETTING_KEY"]
       10 NAMECALL                         R2 R1 K4 ["GetSetting"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETUPVAL                         R3 1
       15 SETTABLEKS                       R2 R3 K5 ["PseudolocalizationEnabled"]
       17 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Plugin"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K3 ["TEXT_ELONGATION_FACTOR_SETTING_KEY"]
       10 NAMECALL                         R2 R1 K4 ["GetSetting"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETUPVAL                         R3 1
       15 SETTABLEKS                       R2 R3 K5 ["TextElongationFactor"]
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["PlayerEmulationEnabled"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 GETTABLEKS                       R2 R0 K1 ["state"]
        6 GETTABLEKS                       R1 R2 K2 ["pseudolocalizationEnabled"]
        8 GETUPVAL                         R2 0
        9 SETTABLEKS                       R1 R2 K3 ["PseudolocalizationEnabled"]
       11 GETTABLEKS                       R3 R0 K1 ["state"]
       13 GETTABLEKS                       R2 R3 K4 ["textElongationFactor"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["PseudolocalizationEnabled"]
        3 DUPTABLE                         R4 K2 [{"pseudolocalizationEnabled"}]
        4 SETTABLEKS                       R1 R4 K1 ["pseudolocalizationEnabled"]
        6 NAMECALL                         R2 R0 K3 ["setState"]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R3 R0 K4 ["props"]
       11 GETTABLEKS                       R2 R3 K5 ["Plugin"]
       13 NAMECALL                         R2 R2 K6 ["get"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K7 ["PSEUDOLOCALIZATION_ENABLED_SETTING_KEY"]
       19 MOVE                             R6 R1
       20 NAMECALL                         R3 R2 K8 ["SetSetting"]
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["TextElongationFactor"]
        3 DUPTABLE                         R4 K2 [{"textElongationFactor"}]
        4 SETTABLEKS                       R1 R4 K1 ["textElongationFactor"]
        6 NAMECALL                         R2 R0 K3 ["setState"]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R3 R0 K4 ["props"]
       11 GETTABLEKS                       R2 R3 K5 ["Plugin"]
       13 NAMECALL                         R2 R2 K6 ["get"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K7 ["TEXT_ELONGATION_FACTOR_SETTING_KEY"]
       19 MOVE                             R6 R1
       20 NAMECALL                         R3 R2 K8 ["SetSetting"]
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"pseudolocalizationEnabled", "textElongationFactor"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["PseudolocalizationEnabled"]
        4 SETTABLEKS                       R2 R1 K0 ["pseudolocalizationEnabled"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["TextElongationFactor"]
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
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R9 R10 K8 ["createElement"]
       19 LOADK                            R10 K9 ["Frame"]
       20 DUPTABLE                         R11 K14 [{"AutomaticSize", "Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
       21 GETIMPORT                        R12 K17 [Enum.AutomaticSize.Y]
       23 SETTABLEKS                       R12 R11 K10 ["AutomaticSize"]
       25 GETIMPORT                        R12 K20 [UDim2.new]
       27 LOADN                            R13 1
       28 LOADN                            R14 0
       29 LOADN                            R15 0
       30 GETTABLEKS                       R16 R6 K21 ["TOGGLE_BUTTON_HEIGHT"]
       32 CALL                             R12 4 1
       33 SETTABLEKS                       R12 R11 K11 ["Size"]
       35 LOADN                            R12 1
       36 SETTABLEKS                       R12 R11 K12 ["BackgroundTransparency"]
       38 LOADN                            R12 0
       39 SETTABLEKS                       R12 R11 K13 ["BorderSizePixel"]
       41 LOADN                            R12 3
       42 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       44 DUPTABLE                         R12 K25 [{"Layout", "Label", "Toggle"}]
       45 GETUPVAL                         R14 0
       46 GETTABLEKS                       R13 R14 K8 ["createElement"]
       48 LOADK                            R14 K26 ["UIListLayout"]
       49 DUPTABLE                         R15 K31 [{"HorizontalFlex", "SortOrder", "FillDirection", "VerticalAlignment"}]
       50 GETIMPORT                        R16 K34 [Enum.UIFlexAlignment.SpaceBetween]
       52 SETTABLEKS                       R16 R15 K27 ["HorizontalFlex"]
       54 GETIMPORT                        R16 K35 [Enum.SortOrder.LayoutOrder]
       56 SETTABLEKS                       R16 R15 K28 ["SortOrder"]
       58 GETIMPORT                        R16 K37 [Enum.FillDirection.Horizontal]
       60 SETTABLEKS                       R16 R15 K29 ["FillDirection"]
       62 GETIMPORT                        R16 K39 [Enum.VerticalAlignment.Center]
       64 SETTABLEKS                       R16 R15 K30 ["VerticalAlignment"]
       66 CALL                             R13 2 1
       67 SETTABLEKS                       R13 R12 K22 ["Layout"]
       69 GETUPVAL                         R14 0
       70 GETTABLEKS                       R13 R14 K8 ["createElement"]
       72 GETUPVAL                         R14 1
       73 DUPTABLE                         R15 K45 [{"AutomaticSize", "Text", "TextXAlignment", "TextWrapped", "TextTruncate", "StyleModifier", "LayoutOrder"}]
       74 GETIMPORT                        R16 K47 [Enum.AutomaticSize.XY]
       76 SETTABLEKS                       R16 R15 K10 ["AutomaticSize"]
       78 LOADK                            R18 K48 ["LanguageSection"]
       79 LOADK                            R19 K49 ["PseudolocalizationLabelText"]
       80 NAMECALL                         R16 R7 K50 ["getText"]
       82 CALL                             R16 3 1
       83 SETTABLEKS                       R16 R15 K40 ["Text"]
       85 GETIMPORT                        R16 K52 [Enum.TextXAlignment.Left]
       87 SETTABLEKS                       R16 R15 K41 ["TextXAlignment"]
       89 LOADB                            R16 1
       90 SETTABLEKS                       R16 R15 K42 ["TextWrapped"]
       92 GETIMPORT                        R16 K54 [Enum.TextTruncate.SplitWord]
       94 SETTABLEKS                       R16 R15 K43 ["TextTruncate"]
       96 JUMPIFNOT                        R3 ; [+2]
       97 LOADNIL                          R16
       98 JUMP                             ; [+3]
       99 GETUPVAL                         R17 2
      100 GETTABLEKS                       R16 R17 K55 ["Disabled"]
      102 SETTABLEKS                       R16 R15 K44 ["StyleModifier"]
      104 LOADN                            R16 1
      105 SETTABLEKS                       R16 R15 K7 ["LayoutOrder"]
      107 DUPTABLE                         R16 K57 [{"FlexItem"}]
      108 GETUPVAL                         R18 0
      109 GETTABLEKS                       R17 R18 K8 ["createElement"]
      111 LOADK                            R18 K58 ["UIFlexItem"]
      112 DUPTABLE                         R19 K60 [{"FlexMode"}]
      113 GETIMPORT                        R20 K63 [Enum.UIFlexMode.Shrink]
      115 SETTABLEKS                       R20 R19 K59 ["FlexMode"]
      117 CALL                             R17 2 1
      118 SETTABLEKS                       R17 R16 K56 ["FlexItem"]
      120 CALL                             R13 3 1
      121 SETTABLEKS                       R13 R12 K23 ["Label"]
      123 GETUPVAL                         R14 0
      124 GETTABLEKS                       R13 R14 K8 ["createElement"]
      126 GETUPVAL                         R14 3
      127 DUPTABLE                         R15 K66 [{"Disabled", "OnClick", "Selected", "LayoutOrder"}]
      128 NOT                              R16 R3
      129 SETTABLEKS                       R16 R15 K55 ["Disabled"]
      131 GETUPVAL                         R16 4
      132 SETTABLEKS                       R16 R15 K64 ["OnClick"]
      134 SETTABLEKS                       R4 R15 K65 ["Selected"]
      136 LOADN                            R16 2
      137 SETTABLEKS                       R16 R15 K7 ["LayoutOrder"]
      139 CALL                             R13 2 1
      140 SETTABLEKS                       R13 R12 K24 ["Toggle"]
      142 CALL                             R9 3 1
      143 GETUPVAL                         R11 0
      144 GETTABLEKS                       R10 R11 K8 ["createElement"]
      146 LOADK                            R11 K9 ["Frame"]
      147 DUPTABLE                         R12 K14 [{"AutomaticSize", "Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
      148 GETIMPORT                        R13 K17 [Enum.AutomaticSize.Y]
      150 SETTABLEKS                       R13 R12 K10 ["AutomaticSize"]
      152 GETIMPORT                        R13 K20 [UDim2.new]
      154 LOADN                            R14 1
      155 LOADN                            R15 0
      156 LOADN                            R16 0
      157 GETTABLEKS                       R17 R6 K21 ["TOGGLE_BUTTON_HEIGHT"]
      159 CALL                             R13 4 1
      160 SETTABLEKS                       R13 R12 K11 ["Size"]
      162 LOADN                            R13 1
      163 SETTABLEKS                       R13 R12 K12 ["BackgroundTransparency"]
      165 LOADN                            R13 0
      166 SETTABLEKS                       R13 R12 K13 ["BorderSizePixel"]
      168 LOADN                            R13 4
      169 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
      171 DUPTABLE                         R13 K68 [{"Layout", "Label", "Slider"}]
      172 GETUPVAL                         R15 0
      173 GETTABLEKS                       R14 R15 K8 ["createElement"]
      175 LOADK                            R15 K26 ["UIListLayout"]
      176 DUPTABLE                         R16 K31 [{"HorizontalFlex", "SortOrder", "FillDirection", "VerticalAlignment"}]
      177 GETIMPORT                        R17 K34 [Enum.UIFlexAlignment.SpaceBetween]
      179 SETTABLEKS                       R17 R16 K27 ["HorizontalFlex"]
      181 GETIMPORT                        R17 K35 [Enum.SortOrder.LayoutOrder]
      183 SETTABLEKS                       R17 R16 K28 ["SortOrder"]
      185 GETIMPORT                        R17 K37 [Enum.FillDirection.Horizontal]
      187 SETTABLEKS                       R17 R16 K29 ["FillDirection"]
      189 GETIMPORT                        R17 K39 [Enum.VerticalAlignment.Center]
      191 SETTABLEKS                       R17 R16 K30 ["VerticalAlignment"]
      193 CALL                             R14 2 1
      194 SETTABLEKS                       R14 R13 K22 ["Layout"]
      196 GETUPVAL                         R15 0
      197 GETTABLEKS                       R14 R15 K8 ["createElement"]
      199 GETUPVAL                         R15 1
      200 DUPTABLE                         R16 K45 [{"AutomaticSize", "Text", "TextXAlignment", "TextWrapped", "TextTruncate", "StyleModifier", "LayoutOrder"}]
      201 GETIMPORT                        R17 K47 [Enum.AutomaticSize.XY]
      203 SETTABLEKS                       R17 R16 K10 ["AutomaticSize"]
      205 LOADK                            R17 K69 ["Elongate"]
      206 SETTABLEKS                       R17 R16 K40 ["Text"]
      208 GETIMPORT                        R17 K52 [Enum.TextXAlignment.Left]
      210 SETTABLEKS                       R17 R16 K41 ["TextXAlignment"]
      212 LOADB                            R17 1
      213 SETTABLEKS                       R17 R16 K42 ["TextWrapped"]
      215 GETIMPORT                        R17 K54 [Enum.TextTruncate.SplitWord]
      217 SETTABLEKS                       R17 R16 K43 ["TextTruncate"]
      219 JUMPIFNOT                        R3 ; [+2]
      220 LOADNIL                          R17
      221 JUMP                             ; [+3]
      222 GETUPVAL                         R18 2
      223 GETTABLEKS                       R17 R18 K55 ["Disabled"]
      225 SETTABLEKS                       R17 R16 K44 ["StyleModifier"]
      227 LOADN                            R17 1
      228 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
      230 DUPTABLE                         R17 K57 [{"FlexItem"}]
      231 GETUPVAL                         R19 0
      232 GETTABLEKS                       R18 R19 K8 ["createElement"]
      234 LOADK                            R19 K58 ["UIFlexItem"]
      235 DUPTABLE                         R20 K60 [{"FlexMode"}]
      236 GETIMPORT                        R21 K63 [Enum.UIFlexMode.Shrink]
      238 SETTABLEKS                       R21 R20 K59 ["FlexMode"]
      240 CALL                             R18 2 1
      241 SETTABLEKS                       R18 R17 K56 ["FlexItem"]
      243 CALL                             R14 3 1
      244 SETTABLEKS                       R14 R13 K23 ["Label"]
      246 GETUPVAL                         R15 0
      247 GETTABLEKS                       R14 R15 K8 ["createElement"]
      249 GETUPVAL                         R15 5
      250 DUPTABLE                         R16 K75 [{"Disabled", "Min", "Max", "Value", "SnapIncrement", "Size", "LayoutOrder", "OnValueChanged"}]
      251 NOT                              R17 R3
      252 SETTABLEKS                       R17 R16 K55 ["Disabled"]
      254 LOADN                            R17 0
      255 SETTABLEKS                       R17 R16 K70 ["Min"]
      257 LOADN                            R17 200
      258 SETTABLEKS                       R17 R16 K71 ["Max"]
      260 SETTABLEKS                       R5 R16 K72 ["Value"]
      262 LOADN                            R17 10
      263 SETTABLEKS                       R17 R16 K73 ["SnapIncrement"]
      265 GETIMPORT                        R17 K20 [UDim2.new]
      267 LOADN                            R18 0
      268 LOADN                            R19 100
      269 LOADN                            R20 0
      270 GETTABLEKS                       R21 R6 K21 ["TOGGLE_BUTTON_HEIGHT"]
      272 CALL                             R17 4 1
      273 SETTABLEKS                       R17 R16 K11 ["Size"]
      275 LOADN                            R17 2
      276 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
      278 DUPCLOSURE                       R17 K76 [PROTO_14]
      279 CAPTURE                          UPVAL U6
      280 SETTABLEKS                       R17 R16 K74 ["OnValueChanged"]
      282 CALL                             R14 2 1
      283 SETTABLEKS                       R14 R13 K67 ["Slider"]
      285 CALL                             R10 3 1
      286 GETUPVAL                         R12 0
      287 GETTABLEKS                       R11 R12 K8 ["createElement"]
      289 LOADK                            R12 K9 ["Frame"]
      290 DUPTABLE                         R13 K77 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
      291 GETIMPORT                        R14 K17 [Enum.AutomaticSize.Y]
      293 SETTABLEKS                       R14 R13 K10 ["AutomaticSize"]
      295 GETIMPORT                        R14 K79 [UDim2.fromScale]
      297 LOADN                            R15 1
      298 LOADN                            R16 0
      299 CALL                             R14 2 1
      300 SETTABLEKS                       R14 R13 K11 ["Size"]
      302 LOADN                            R14 1
      303 SETTABLEKS                       R14 R13 K12 ["BackgroundTransparency"]
      305 SETTABLEKS                       R8 R13 K7 ["LayoutOrder"]
      307 DUPTABLE                         R14 K82 [{"Layout", "PseudolocalizationModule", "ElongateModule"}]
      308 GETUPVAL                         R16 0
      309 GETTABLEKS                       R15 R16 K8 ["createElement"]
      311 LOADK                            R16 K26 ["UIListLayout"]
      312 DUPTABLE                         R17 K84 [{"SortOrder", "FillDirection", "Padding"}]
      313 GETIMPORT                        R18 K35 [Enum.SortOrder.LayoutOrder]
      315 SETTABLEKS                       R18 R17 K28 ["SortOrder"]
      317 GETIMPORT                        R18 K86 [Enum.FillDirection.Vertical]
      319 SETTABLEKS                       R18 R17 K29 ["FillDirection"]
      321 GETTABLEKS                       R18 R6 K87 ["HORIZONTAL_LISTLAYOUT_PADDING"]
      323 SETTABLEKS                       R18 R17 K83 ["Padding"]
      325 CALL                             R15 2 1
      326 SETTABLEKS                       R15 R14 K22 ["Layout"]
      328 SETTABLEKS                       R9 R14 K80 ["PseudolocalizationModule"]
      330 SETTABLEKS                       R10 R14 K81 ["ElongateModule"]
      332 CALL                             R11 3 -1
      333 RETURN                           R11 -1

PROTO_16:
        0 DUPTABLE                         R2 K1 [{"mainSwitchEnabled"}]
        1 GETTABLEKS                       R4 R0 K2 ["MainSwitch"]
        3 GETTABLEKS                       R3 R4 K0 ["mainSwitchEnabled"]
        5 SETTABLEKS                       R3 R2 K0 ["mainSwitchEnabled"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PlayerEmulatorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R6 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R6 K12 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       38 GETTABLEKS                       R6 R5 K14 ["withContext"]
       40 GETIMPORT                        R7 K8 [require]
       42 GETTABLEKS                       R10 R1 K15 ["Src"]
       44 GETTABLEKS                       R9 R10 K16 ["Util"]
       46 GETTABLEKS                       R8 R9 K17 ["Constants"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R4 K18 ["UI"]
       51 GETTABLEKS                       R9 R8 K19 ["ToggleButton"]
       53 GETTABLEKS                       R10 R8 K20 ["Slider"]
       55 GETTABLEKS                       R11 R8 K21 ["TextLabel"]
       57 GETTABLEKS                       R13 R4 K16 ["Util"]
       59 GETTABLEKS                       R12 R13 K22 ["StyleModifier"]
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
