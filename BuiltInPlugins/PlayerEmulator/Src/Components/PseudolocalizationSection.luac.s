PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["PseudolocalizationEnabled"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["TextElongationFactor"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["PseudolocalizationEnabled"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["TextElongationFactor"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["PlayerEmulationEnabled"]
  RETURN R0 1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["PSEUDOLOCALIZATION_ENABLED_SETTING_KEY"]
  NAMECALL R2 R1 K4 ["GetSetting"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETUPVAL R3 1
  SETTABLEKS R2 R3 K5 ["PseudolocalizationEnabled"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["TEXT_ELONGATION_FACTOR_SETTING_KEY"]
  NAMECALL R2 R1 K4 ["GetSetting"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETUPVAL R3 1
  SETTABLEKS R2 R3 K5 ["TextElongationFactor"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PlayerEmulationEnabled"]
  JUMPIFNOT R1 [+15]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R1 R2 K2 ["pseudolocalizationEnabled"]
  GETUPVAL R2 0
  SETTABLEKS R1 R2 K3 ["PseudolocalizationEnabled"]
  GETTABLEKS R3 R0 K1 ["state"]
  GETTABLEKS R2 R3 K4 ["textElongationFactor"]
  GETUPVAL R3 0
  SETTABLEKS R2 R3 K5 ["TextElongationFactor"]
  RETURN R0 0
  GETUPVAL R1 0
  LOADB R2 0
  SETTABLEKS R2 R1 K3 ["PseudolocalizationEnabled"]
  GETUPVAL R1 0
  LOADN R2 0
  SETTABLEKS R2 R1 K5 ["TextElongationFactor"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PseudolocalizationEnabled"]
  DUPTABLE R4 K2 [{"pseudolocalizationEnabled"}]
  SETTABLEKS R1 R4 K1 ["pseudolocalizationEnabled"]
  NAMECALL R2 R0 K3 ["setState"]
  CALL R2 2 0
  GETTABLEKS R3 R0 K4 ["props"]
  GETTABLEKS R2 R3 K5 ["Plugin"]
  NAMECALL R2 R2 K6 ["get"]
  CALL R2 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["PSEUDOLOCALIZATION_ENABLED_SETTING_KEY"]
  MOVE R6 R1
  NAMECALL R3 R2 K8 ["SetSetting"]
  CALL R3 3 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["TextElongationFactor"]
  DUPTABLE R4 K2 [{"textElongationFactor"}]
  SETTABLEKS R1 R4 K1 ["textElongationFactor"]
  NAMECALL R2 R0 K3 ["setState"]
  CALL R2 2 0
  GETTABLEKS R3 R0 K4 ["props"]
  GETTABLEKS R2 R3 K5 ["Plugin"]
  NAMECALL R2 R2 K6 ["get"]
  CALL R2 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["TEXT_ELONGATION_FACTOR_SETTING_KEY"]
  MOVE R6 R1
  NAMECALL R3 R2 K8 ["SetSetting"]
  CALL R3 3 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K2 [{"pseudolocalizationEnabled", "textElongationFactor"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["PseudolocalizationEnabled"]
  SETTABLEKS R2 R1 K0 ["pseudolocalizationEnabled"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["TextElongationFactor"]
  SETTABLEKS R2 R1 K1 ["textElongationFactor"]
  SETTABLEKS R1 R0 K5 ["state"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["onPseudolocalizationChanged"]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["onTextElongationFactorChanged"]
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  LOADK R3 K0 ["PseudolocalizationEnabled"]
  NAMECALL R1 R1 K1 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  NAMECALL R2 R0 K3 ["initPseudolocalizationEnabled"]
  CALL R2 1 0
  GETUPVAL R2 0
  LOADK R4 K4 ["TextElongationFactor"]
  NAMECALL R2 R2 K1 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K2 ["Connect"]
  CALL R2 2 1
  NAMECALL R3 R0 K5 ["initTextElongationFactor"]
  CALL R3 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["TextElongationFactor"]
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R3 R2 K2 ["mainSwitchEnabled"]
  GETTABLEKS R4 R1 K3 ["pseudolocalizationEnabled"]
  GETTABLEKS R5 R1 K4 ["textElongationFactor"]
  GETTABLEKS R6 R2 K5 ["Stylizer"]
  GETTABLEKS R7 R2 K6 ["Localization"]
  GETTABLEKS R8 R2 K7 ["LayoutOrder"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["createElement"]
  LOADK R10 K9 ["Frame"]
  DUPTABLE R11 K14 [{"AutomaticSize", "Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R12 K17 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K10 ["AutomaticSize"]
  GETIMPORT R12 K20 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R16 R6 K21 ["TOGGLE_BUTTON_HEIGHT"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K11 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K12 ["BackgroundTransparency"]
  LOADN R12 0
  SETTABLEKS R12 R11 K13 ["BorderSizePixel"]
  LOADN R12 3
  SETTABLEKS R12 R11 K7 ["LayoutOrder"]
  DUPTABLE R12 K25 [{"Layout", "Label", "Toggle"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  LOADK R14 K26 ["UIListLayout"]
  DUPTABLE R15 K31 [{"HorizontalFlex", "SortOrder", "FillDirection", "VerticalAlignment"}]
  GETIMPORT R16 K34 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R16 R15 K27 ["HorizontalFlex"]
  GETIMPORT R16 K35 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K28 ["SortOrder"]
  GETIMPORT R16 K37 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K29 ["FillDirection"]
  GETIMPORT R16 K39 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K30 ["VerticalAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K22 ["Layout"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K45 [{"AutomaticSize", "Text", "TextXAlignment", "TextWrapped", "TextTruncate", "StyleModifier", "LayoutOrder"}]
  GETIMPORT R16 K47 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K10 ["AutomaticSize"]
  LOADK R18 K48 ["LanguageSection"]
  LOADK R19 K49 ["PseudolocalizationLabelText"]
  NAMECALL R16 R7 K50 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K40 ["Text"]
  GETIMPORT R16 K52 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K41 ["TextXAlignment"]
  LOADB R16 1
  SETTABLEKS R16 R15 K42 ["TextWrapped"]
  GETIMPORT R16 K54 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R16 R15 K43 ["TextTruncate"]
  JUMPIFNOT R3 [+2]
  LOADNIL R16
  JUMP [+3]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K55 ["Disabled"]
  SETTABLEKS R16 R15 K44 ["StyleModifier"]
  LOADN R16 1
  SETTABLEKS R16 R15 K7 ["LayoutOrder"]
  DUPTABLE R16 K57 [{"FlexItem"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K8 ["createElement"]
  LOADK R18 K58 ["UIFlexItem"]
  DUPTABLE R19 K60 [{"FlexMode"}]
  GETIMPORT R20 K63 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R20 R19 K59 ["FlexMode"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K56 ["FlexItem"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["Label"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K66 [{"Disabled", "OnClick", "Selected", "LayoutOrder"}]
  NOT R16 R3
  SETTABLEKS R16 R15 K55 ["Disabled"]
  GETUPVAL R16 4
  SETTABLEKS R16 R15 K64 ["OnClick"]
  SETTABLEKS R4 R15 K65 ["Selected"]
  LOADN R16 2
  SETTABLEKS R16 R15 K7 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K24 ["Toggle"]
  CALL R9 3 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["createElement"]
  LOADK R11 K9 ["Frame"]
  DUPTABLE R12 K14 [{"AutomaticSize", "Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R13 K17 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K10 ["AutomaticSize"]
  GETIMPORT R13 K20 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  GETTABLEKS R17 R6 K21 ["TOGGLE_BUTTON_HEIGHT"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K11 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K12 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K13 ["BorderSizePixel"]
  LOADN R13 4
  SETTABLEKS R13 R12 K7 ["LayoutOrder"]
  DUPTABLE R13 K68 [{"Layout", "Label", "Slider"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K8 ["createElement"]
  LOADK R15 K26 ["UIListLayout"]
  DUPTABLE R16 K31 [{"HorizontalFlex", "SortOrder", "FillDirection", "VerticalAlignment"}]
  GETIMPORT R17 K34 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R17 R16 K27 ["HorizontalFlex"]
  GETIMPORT R17 K35 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K28 ["SortOrder"]
  GETIMPORT R17 K37 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K29 ["FillDirection"]
  GETIMPORT R17 K39 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K30 ["VerticalAlignment"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["Layout"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K8 ["createElement"]
  GETUPVAL R15 1
  DUPTABLE R16 K45 [{"AutomaticSize", "Text", "TextXAlignment", "TextWrapped", "TextTruncate", "StyleModifier", "LayoutOrder"}]
  GETIMPORT R17 K47 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K10 ["AutomaticSize"]
  LOADK R17 K69 ["Elongate"]
  SETTABLEKS R17 R16 K40 ["Text"]
  GETIMPORT R17 K52 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K41 ["TextXAlignment"]
  LOADB R17 1
  SETTABLEKS R17 R16 K42 ["TextWrapped"]
  GETIMPORT R17 K54 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R17 R16 K43 ["TextTruncate"]
  JUMPIFNOT R3 [+2]
  LOADNIL R17
  JUMP [+3]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K55 ["Disabled"]
  SETTABLEKS R17 R16 K44 ["StyleModifier"]
  LOADN R17 1
  SETTABLEKS R17 R16 K7 ["LayoutOrder"]
  DUPTABLE R17 K57 [{"FlexItem"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K8 ["createElement"]
  LOADK R19 K58 ["UIFlexItem"]
  DUPTABLE R20 K60 [{"FlexMode"}]
  GETIMPORT R21 K63 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R21 R20 K59 ["FlexMode"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K56 ["FlexItem"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K23 ["Label"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K8 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K75 [{"Disabled", "Min", "Max", "Value", "SnapIncrement", "Size", "LayoutOrder", "OnValueChanged"}]
  NOT R17 R3
  SETTABLEKS R17 R16 K55 ["Disabled"]
  LOADN R17 0
  SETTABLEKS R17 R16 K70 ["Min"]
  LOADN R17 200
  SETTABLEKS R17 R16 K71 ["Max"]
  SETTABLEKS R5 R16 K72 ["Value"]
  LOADN R17 10
  SETTABLEKS R17 R16 K73 ["SnapIncrement"]
  GETIMPORT R17 K20 [UDim2.new]
  LOADN R18 0
  LOADN R19 100
  LOADN R20 0
  GETTABLEKS R21 R6 K21 ["TOGGLE_BUTTON_HEIGHT"]
  CALL R17 4 1
  SETTABLEKS R17 R16 K11 ["Size"]
  LOADN R17 2
  SETTABLEKS R17 R16 K7 ["LayoutOrder"]
  DUPCLOSURE R17 K76 [PROTO_14]
  CAPTURE UPVAL U6
  SETTABLEKS R17 R16 K74 ["OnValueChanged"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K67 ["Slider"]
  CALL R10 3 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["createElement"]
  LOADK R12 K9 ["Frame"]
  DUPTABLE R13 K77 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R14 K17 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K10 ["AutomaticSize"]
  GETIMPORT R14 K79 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K11 ["Size"]
  LOADN R14 1
  SETTABLEKS R14 R13 K12 ["BackgroundTransparency"]
  SETTABLEKS R8 R13 K7 ["LayoutOrder"]
  DUPTABLE R14 K82 [{"Layout", "PseudolocalizationModule", "ElongateModule"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K8 ["createElement"]
  LOADK R16 K26 ["UIListLayout"]
  DUPTABLE R17 K84 [{"SortOrder", "FillDirection", "Padding"}]
  GETIMPORT R18 K35 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K28 ["SortOrder"]
  GETIMPORT R18 K86 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K29 ["FillDirection"]
  GETTABLEKS R18 R6 K87 ["HORIZONTAL_LISTLAYOUT_PADDING"]
  SETTABLEKS R18 R17 K83 ["Padding"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K22 ["Layout"]
  SETTABLEKS R9 R14 K80 ["PseudolocalizationModule"]
  SETTABLEKS R10 R14 K81 ["ElongateModule"]
  CALL R11 3 -1
  RETURN R11 -1

PROTO_16:
  DUPTABLE R2 K1 [{"mainSwitchEnabled"}]
  GETTABLEKS R4 R0 K2 ["MainSwitch"]
  GETTABLEKS R3 R4 K0 ["mainSwitchEnabled"]
  SETTABLEKS R3 R2 K0 ["mainSwitchEnabled"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["PlayerEmulatorService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["ContextServices"]
  GETTABLEKS R6 R5 K14 ["withContext"]
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R1 K15 ["Src"]
  GETTABLEKS R9 R10 K16 ["Util"]
  GETTABLEKS R8 R9 K17 ["Constants"]
  CALL R7 1 1
  GETTABLEKS R8 R4 K18 ["UI"]
  GETTABLEKS R9 R8 K19 ["ToggleButton"]
  GETTABLEKS R10 R8 K20 ["Slider"]
  GETTABLEKS R11 R8 K21 ["TextLabel"]
  GETTABLEKS R13 R4 K16 ["Util"]
  GETTABLEKS R12 R13 K22 ["StyleModifier"]
  DUPCLOSURE R13 K23 [PROTO_0]
  CAPTURE VAL R0
  DUPCLOSURE R14 K24 [PROTO_1]
  CAPTURE VAL R0
  DUPCLOSURE R15 K25 [PROTO_2]
  CAPTURE VAL R0
  DUPCLOSURE R16 K26 [PROTO_3]
  CAPTURE VAL R0
  DUPCLOSURE R17 K27 [PROTO_4]
  CAPTURE VAL R0
  GETTABLEKS R18 R2 K28 ["PureComponent"]
  LOADK R20 K29 ["PseudolocalizationSection"]
  NAMECALL R18 R18 K30 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K31 [PROTO_5]
  CAPTURE VAL R7
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K32 ["initPseudolocalizationEnabled"]
  DUPCLOSURE R19 K33 [PROTO_6]
  CAPTURE VAL R7
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K34 ["initTextElongationFactor"]
  DUPCLOSURE R19 K35 [PROTO_7]
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K36 ["onPlayerEmulationEnabledChanged"]
  DUPCLOSURE R19 K37 [PROTO_8]
  CAPTURE VAL R0
  CAPTURE VAL R7
  SETTABLEKS R19 R18 K38 ["onPseudolocalizationChanged"]
  DUPCLOSURE R19 K39 [PROTO_9]
  CAPTURE VAL R0
  CAPTURE VAL R7
  SETTABLEKS R19 R18 K40 ["onTextElongationFactorChanged"]
  DUPCLOSURE R19 K41 [PROTO_10]
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K42 ["init"]
  DUPCLOSURE R19 K43 [PROTO_13]
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K44 ["didMount"]
  DUPCLOSURE R19 K45 [PROTO_15]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R15
  CAPTURE VAL R10
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K46 ["render"]
  MOVE R19 R6
  DUPTABLE R20 K50 [{"Stylizer", "Localization", "Plugin"}]
  GETTABLEKS R21 R5 K47 ["Stylizer"]
  SETTABLEKS R21 R20 K47 ["Stylizer"]
  GETTABLEKS R21 R5 K48 ["Localization"]
  SETTABLEKS R21 R20 K48 ["Localization"]
  GETTABLEKS R21 R5 K49 ["Plugin"]
  SETTABLEKS R21 R20 K49 ["Plugin"]
  CALL R19 1 1
  MOVE R20 R18
  CALL R19 1 1
  MOVE R18 R19
  DUPCLOSURE R19 K51 [PROTO_16]
  GETTABLEKS R20 R3 K52 ["connect"]
  MOVE R21 R19
  CALL R20 1 1
  MOVE R21 R18
  CALL R20 1 -1
  RETURN R20 -1
