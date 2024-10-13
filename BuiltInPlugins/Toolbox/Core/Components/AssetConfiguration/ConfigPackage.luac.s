PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["ToggleCallback"]
  GETTABLEKS R3 R0 K2 ["PackageOn"]
  NOT R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K0 ["toggleCallback"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Title"]
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  GETTABLEKS R4 R1 K3 ["TotalHeight"]
  GETTABLEKS R5 R1 K4 ["PackageOn"]
  GETTABLEKS R6 R1 K5 ["PackageEnabled"]
  GETTABLEKS R7 R1 K6 ["PackageWarningText"]
  GETTABLEKS R8 R1 K7 ["ToggleCallback"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K8 ["Stylizer"]
  GETTABLEKS R10 R9 K9 ["publishAsset"]
  GETTABLEKS R11 R1 K10 ["Localization"]
  LOADK R14 K11 ["AssetConfigPackage"]
  LOADK R15 K12 ["HelpTextV2"]
  NAMECALL R12 R11 K13 ["getText"]
  CALL R12 3 1
  LOADK R15 K11 ["AssetConfigPackage"]
  LOADK R16 K14 ["Non3DRoot3DDescendentsWarning"]
  NAMECALL R13 R11 K13 ["getText"]
  CALL R13 3 1
  GETTABLEKS R15 R1 K6 ["PackageWarningText"]
  JUMPIFNOTEQKNIL R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K15 ["createElement"]
  LOADK R16 K16 ["Frame"]
  DUPTABLE R17 K21 [{"AutomaticSize", "Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R18 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R18 R17 K17 ["AutomaticSize"]
  GETIMPORT R18 K27 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  MOVE R22 R4
  CALL R18 4 1
  SETTABLEKS R18 R17 K18 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K19 ["BackgroundTransparency"]
  LOADN R18 0
  SETTABLEKS R18 R17 K20 ["BorderSizePixel"]
  SETTABLEKS R3 R17 K2 ["LayoutOrder"]
  DUPTABLE R18 K30 [{"UIListLayout", "Title", "RightFrame"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K15 ["createElement"]
  LOADK R20 K28 ["UIListLayout"]
  DUPTABLE R21 K36 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R22 K38 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K31 ["FillDirection"]
  GETIMPORT R22 K40 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K32 ["HorizontalAlignment"]
  GETIMPORT R22 K42 [Enum.VerticalAlignment.Top]
  SETTABLEKS R22 R21 K33 ["VerticalAlignment"]
  GETIMPORT R22 K43 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K34 ["SortOrder"]
  GETIMPORT R22 K45 [UDim.new]
  LOADN R23 0
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K35 ["Padding"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K28 ["UIListLayout"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K15 ["createElement"]
  GETUPVAL R20 1
  DUPTABLE R21 K52 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor", "Font", "LayoutOrder"}]
  GETIMPORT R22 K27 [UDim2.new]
  LOADN R23 0
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K53 ["TITLE_GUTTER_WIDTH"]
  LOADN R25 0
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K18 ["Size"]
  GETIMPORT R22 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R22 R21 K17 ["AutomaticSize"]
  LOADN R22 1
  SETTABLEKS R22 R21 K19 ["BackgroundTransparency"]
  LOADN R22 0
  SETTABLEKS R22 R21 K20 ["BorderSizePixel"]
  SETTABLEKS R2 R21 K46 ["Text"]
  GETIMPORT R22 K54 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K47 ["TextXAlignment"]
  GETIMPORT R22 K55 [Enum.TextYAlignment.Top]
  SETTABLEKS R22 R21 K48 ["TextYAlignment"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K56 ["FONT_SIZE_TITLE"]
  SETTABLEKS R22 R21 K49 ["TextSize"]
  GETTABLEKS R22 R10 K57 ["titleTextColor"]
  SETTABLEKS R22 R21 K50 ["TextColor"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K58 ["FONT"]
  SETTABLEKS R22 R21 K51 ["Font"]
  LOADN R22 1
  SETTABLEKS R22 R21 K2 ["LayoutOrder"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K1 ["Title"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K15 ["createElement"]
  LOADK R20 K16 ["Frame"]
  DUPTABLE R21 K21 [{"AutomaticSize", "Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R22 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R22 R21 K17 ["AutomaticSize"]
  GETIMPORT R22 K27 [UDim2.new]
  LOADN R23 1
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K53 ["TITLE_GUTTER_WIDTH"]
  MINUS R24 R25
  LOADN R25 0
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K18 ["Size"]
  LOADN R22 1
  SETTABLEKS R22 R21 K19 ["BackgroundTransparency"]
  LOADN R22 0
  SETTABLEKS R22 R21 K20 ["BorderSizePixel"]
  LOADN R22 2
  SETTABLEKS R22 R21 K2 ["LayoutOrder"]
  DUPTABLE R22 K61 [{"UIListLayout", "ToggleButtonContainer", "TipsLabel"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K15 ["createElement"]
  LOADK R24 K28 ["UIListLayout"]
  DUPTABLE R25 K62 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R26 K43 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K34 ["SortOrder"]
  GETIMPORT R26 K64 [Enum.FillDirection.Vertical]
  SETTABLEKS R26 R25 K31 ["FillDirection"]
  GETIMPORT R26 K40 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R26 R25 K32 ["HorizontalAlignment"]
  GETIMPORT R26 K42 [Enum.VerticalAlignment.Top]
  SETTABLEKS R26 R25 K33 ["VerticalAlignment"]
  GETIMPORT R26 K45 [UDim.new]
  LOADN R27 0
  LOADN R28 5
  CALL R26 2 1
  SETTABLEKS R26 R25 K35 ["Padding"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K28 ["UIListLayout"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K15 ["createElement"]
  GETUPVAL R24 4
  DUPTABLE R25 K67 [{"BackgroundTransparency", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Padding", "Spacing", "VerticalAlignment", "AutomaticSize"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K19 ["BackgroundTransparency"]
  GETIMPORT R26 K40 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R26 R25 K32 ["HorizontalAlignment"]
  GETIMPORT R26 K38 [Enum.FillDirection.Horizontal]
  SETTABLEKS R26 R25 K65 ["Layout"]
  LOADN R26 2
  SETTABLEKS R26 R25 K2 ["LayoutOrder"]
  GETIMPORT R26 K27 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 34
  CALL R26 4 1
  SETTABLEKS R26 R25 K18 ["Size"]
  DUPTABLE R26 K69 [{"Bottom"}]
  LOADN R27 10
  SETTABLEKS R27 R26 K68 ["Bottom"]
  SETTABLEKS R26 R25 K35 ["Padding"]
  LOADN R26 10
  SETTABLEKS R26 R25 K66 ["Spacing"]
  GETIMPORT R26 K42 [Enum.VerticalAlignment.Top]
  SETTABLEKS R26 R25 K33 ["VerticalAlignment"]
  GETIMPORT R26 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R26 R25 K17 ["AutomaticSize"]
  DUPTABLE R26 K72 [{"ToggleButton", "ErrorText"}]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K15 ["createElement"]
  GETUPVAL R28 5
  DUPTABLE R29 K76 [{"Disabled", "LayoutOrder", "OnClick", "Selected", "Size"}]
  NOT R30 R6
  SETTABLEKS R30 R29 K73 ["Disabled"]
  LOADN R30 1
  SETTABLEKS R30 R29 K2 ["LayoutOrder"]
  GETTABLEKS R30 R0 K77 ["toggleCallback"]
  SETTABLEKS R30 R29 K74 ["OnClick"]
  SETTABLEKS R5 R29 K75 ["Selected"]
  GETIMPORT R30 K27 [UDim2.new]
  LOADN R31 0
  LOADN R32 40
  LOADN R33 0
  LOADN R34 24
  CALL R30 4 1
  SETTABLEKS R30 R29 K18 ["Size"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K70 ["ToggleButton"]
  JUMPIFNOT R14 [+62]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K15 ["createElement"]
  GETUPVAL R28 1
  DUPTABLE R29 K79 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "Text", "TextWrapped", "TextColor", "TextXAlignment", "TextYAlignment", "TextSize"}]
  GETIMPORT R30 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R30 R29 K17 ["AutomaticSize"]
  LOADN R30 2
  SETTABLEKS R30 R29 K2 ["LayoutOrder"]
  LOADN R30 1
  SETTABLEKS R30 R29 K19 ["BackgroundTransparency"]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K58 ["FONT"]
  SETTABLEKS R30 R29 K51 ["Font"]
  GETIMPORT R30 K27 [UDim2.new]
  LOADN R31 1
  LOADN R32 206
  LOADN R33 0
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K18 ["Size"]
  SETTABLEKS R7 R29 K46 ["Text"]
  LOADB R30 1
  SETTABLEKS R30 R29 K78 ["TextWrapped"]
  JUMPIFNOTEQ R7 R13 [+6]
  GETTABLEKS R31 R9 K80 ["assetConfig"]
  GETTABLEKS R30 R31 K81 ["warningColor"]
  JUMP [+4]
  GETTABLEKS R31 R9 K80 ["assetConfig"]
  GETTABLEKS R30 R31 K82 ["errorColor"]
  SETTABLEKS R30 R29 K50 ["TextColor"]
  GETIMPORT R30 K54 [Enum.TextXAlignment.Left]
  SETTABLEKS R30 R29 K47 ["TextXAlignment"]
  GETIMPORT R30 K84 [Enum.TextYAlignment.Center]
  SETTABLEKS R30 R29 K48 ["TextYAlignment"]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K85 ["FONT_SIZE_LARGE"]
  SETTABLEKS R30 R29 K49 ["TextSize"]
  CALL R27 2 1
  JUMP [+1]
  LOADNIL R27
  SETTABLEKS R27 R26 K71 ["ErrorText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K59 ["ToggleButtonContainer"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K15 ["createElement"]
  GETUPVAL R24 1
  DUPTABLE R25 K87 [{"AutomaticSize", "Size", "BorderSizePixel", "LayoutOrder", "Text", "StyleModifier", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextSize"}]
  GETIMPORT R26 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R26 R25 K17 ["AutomaticSize"]
  GETIMPORT R26 K27 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K18 ["Size"]
  LOADN R26 0
  SETTABLEKS R26 R25 K20 ["BorderSizePixel"]
  LOADN R26 3
  SETTABLEKS R26 R25 K2 ["LayoutOrder"]
  SETTABLEKS R12 R25 K46 ["Text"]
  GETUPVAL R27 6
  GETTABLEKS R26 R27 K73 ["Disabled"]
  SETTABLEKS R26 R25 K86 ["StyleModifier"]
  LOADB R26 1
  SETTABLEKS R26 R25 K78 ["TextWrapped"]
  GETIMPORT R26 K54 [Enum.TextXAlignment.Left]
  SETTABLEKS R26 R25 K47 ["TextXAlignment"]
  GETIMPORT R26 K84 [Enum.TextYAlignment.Center]
  SETTABLEKS R26 R25 K48 ["TextYAlignment"]
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K85 ["FONT_SIZE_LARGE"]
  SETTABLEKS R26 R25 K49 ["TextSize"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K60 ["TipsLabel"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K29 ["RightFrame"]
  CALL R15 3 -1
  RETURN R15 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R1 K7 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K8 ["ContextServices"]
  GETTABLEKS R5 R4 K9 ["withContext"]
  GETTABLEKS R7 R0 K10 ["Core"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K12 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R6 K13 ["AssetConfigConstants"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K14 ["UI"]
  GETTABLEKS R10 R9 K15 ["ToggleButton"]
  GETTABLEKS R11 R9 K16 ["TextLabel"]
  GETTABLEKS R13 R3 K11 ["Util"]
  GETTABLEKS R12 R13 K17 ["StyleModifier"]
  GETTABLEKS R13 R9 K18 ["Pane"]
  GETTABLEKS R14 R2 K19 ["PureComponent"]
  LOADK R16 K20 ["ConfigPackage"]
  NAMECALL R14 R14 K21 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K22 [PROTO_1]
  SETTABLEKS R15 R14 K23 ["init"]
  DUPCLOSURE R15 K24 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R12
  SETTABLEKS R15 R14 K25 ["render"]
  MOVE R15 R5
  DUPTABLE R16 K28 [{"Localization", "Stylizer"}]
  GETTABLEKS R17 R4 K26 ["Localization"]
  SETTABLEKS R17 R16 K26 ["Localization"]
  GETTABLEKS R17 R4 K27 ["Stylizer"]
  SETTABLEKS R17 R16 K27 ["Stylizer"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  RETURN R14 1
