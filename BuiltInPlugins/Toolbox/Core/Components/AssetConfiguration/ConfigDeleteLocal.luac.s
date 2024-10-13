PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["ToggleCallback"]
  GETTABLEKS R3 R0 K2 ["DeleteLocal"]
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
  GETTABLEKS R5 R1 K4 ["DeleteLocal"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K5 ["Stylizer"]
  GETTABLEKS R7 R6 K6 ["publishAsset"]
  GETTABLEKS R8 R1 K7 ["Localization"]
  LOADK R11 K8 ["AssetConfigDeleteLocal"]
  LOADK R12 K9 ["InformationText"]
  NAMECALL R9 R8 K10 ["getText"]
  CALL R9 3 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K11 ["new"]
  CALL R10 0 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K11 ["new"]
  CALL R11 0 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K12 ["createElement"]
  LOADK R13 K13 ["Frame"]
  DUPTABLE R14 K17 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R15 K19 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  MOVE R19 R4
  CALL R15 4 1
  SETTABLEKS R15 R14 K14 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K15 ["BackgroundTransparency"]
  LOADN R15 0
  SETTABLEKS R15 R14 K16 ["BorderSizePixel"]
  SETTABLEKS R3 R14 K2 ["LayoutOrder"]
  DUPTABLE R15 K22 [{"UIListLayout", "Title", "RightFrame"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K12 ["createElement"]
  LOADK R17 K20 ["UIListLayout"]
  DUPTABLE R18 K28 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R19 K31 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K23 ["FillDirection"]
  GETIMPORT R19 K33 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K24 ["HorizontalAlignment"]
  GETIMPORT R19 K35 [Enum.VerticalAlignment.Top]
  SETTABLEKS R19 R18 K25 ["VerticalAlignment"]
  GETIMPORT R19 K36 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K26 ["SortOrder"]
  GETIMPORT R19 K38 [UDim.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K27 ["Padding"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K20 ["UIListLayout"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K12 ["createElement"]
  LOADK R17 K39 ["TextLabel"]
  DUPTABLE R18 K46 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
  GETIMPORT R19 K19 [UDim2.new]
  LOADN R20 0
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K47 ["TITLE_GUTTER_WIDTH"]
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K14 ["Size"]
  LOADN R19 1
  SETTABLEKS R19 R18 K15 ["BackgroundTransparency"]
  LOADN R19 0
  SETTABLEKS R19 R18 K16 ["BorderSizePixel"]
  SETTABLEKS R2 R18 K40 ["Text"]
  GETIMPORT R19 K48 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K41 ["TextXAlignment"]
  GETIMPORT R19 K49 [Enum.TextYAlignment.Top]
  SETTABLEKS R19 R18 K42 ["TextYAlignment"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K50 ["FONT_SIZE_TITLE"]
  SETTABLEKS R19 R18 K43 ["TextSize"]
  GETTABLEKS R19 R7 K51 ["titleTextColor"]
  SETTABLEKS R19 R18 K44 ["TextColor3"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K52 ["FONT"]
  SETTABLEKS R19 R18 K45 ["Font"]
  NAMECALL R19 R10 K53 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K2 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K1 ["Title"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K12 ["createElement"]
  LOADK R17 K13 ["Frame"]
  DUPTABLE R18 K55 [{"AutomaticSize", "BackgroundTransparency", "Size", "LayoutOrder"}]
  GETIMPORT R19 K57 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K54 ["AutomaticSize"]
  LOADN R19 1
  SETTABLEKS R19 R18 K15 ["BackgroundTransparency"]
  GETIMPORT R19 K19 [UDim2.new]
  LOADN R20 1
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K47 ["TITLE_GUTTER_WIDTH"]
  MINUS R21 R22
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K14 ["Size"]
  NAMECALL R19 R10 K53 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K2 ["LayoutOrder"]
  DUPTABLE R19 K61 [{"UIPadding", "UIListLayout", "ToggleButton", "TipsLabel"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K12 ["createElement"]
  LOADK R21 K58 ["UIPadding"]
  DUPTABLE R22 K66 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R23 K38 [UDim.new]
  LOADN R24 0
  LOADN R25 25
  CALL R23 2 1
  SETTABLEKS R23 R22 K62 ["PaddingBottom"]
  GETIMPORT R23 K38 [UDim.new]
  LOADN R24 0
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K63 ["PaddingLeft"]
  GETIMPORT R23 K38 [UDim.new]
  LOADN R24 0
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K64 ["PaddingRight"]
  GETIMPORT R23 K38 [UDim.new]
  LOADN R24 0
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K65 ["PaddingTop"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K58 ["UIPadding"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K12 ["createElement"]
  LOADK R21 K20 ["UIListLayout"]
  DUPTABLE R22 K67 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R23 K36 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K26 ["SortOrder"]
  GETIMPORT R23 K69 [Enum.FillDirection.Vertical]
  SETTABLEKS R23 R22 K23 ["FillDirection"]
  GETIMPORT R23 K33 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R23 R22 K24 ["HorizontalAlignment"]
  GETIMPORT R23 K35 [Enum.VerticalAlignment.Top]
  SETTABLEKS R23 R22 K25 ["VerticalAlignment"]
  GETIMPORT R23 K38 [UDim.new]
  LOADN R24 0
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K27 ["Padding"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K20 ["UIListLayout"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K12 ["createElement"]
  GETUPVAL R21 4
  DUPTABLE R22 K72 [{"OnClick", "Selected", "Size", "LayoutOrder"}]
  GETTABLEKS R23 R0 K73 ["toggleCallback"]
  SETTABLEKS R23 R22 K70 ["OnClick"]
  SETTABLEKS R5 R22 K71 ["Selected"]
  GETIMPORT R23 K19 [UDim2.new]
  LOADN R24 0
  LOADN R25 40
  LOADN R26 0
  LOADN R27 24
  CALL R23 4 1
  SETTABLEKS R23 R22 K14 ["Size"]
  NAMECALL R23 R11 K53 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K2 ["LayoutOrder"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K59 ["ToggleButton"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K12 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K76 [{"AutomaticSize", "Size", "Text", "StyleModifier", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextSize", "LayoutOrder"}]
  GETIMPORT R23 K57 [Enum.AutomaticSize.Y]
  SETTABLEKS R23 R22 K54 ["AutomaticSize"]
  GETIMPORT R23 K19 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K14 ["Size"]
  SETTABLEKS R9 R22 K40 ["Text"]
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K77 ["Disabled"]
  SETTABLEKS R23 R22 K74 ["StyleModifier"]
  LOADB R23 1
  SETTABLEKS R23 R22 K75 ["TextWrapped"]
  GETIMPORT R23 K48 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K41 ["TextXAlignment"]
  GETIMPORT R23 K79 [Enum.TextYAlignment.Center]
  SETTABLEKS R23 R22 K42 ["TextYAlignment"]
  GETUPVAL R24 3
  GETTABLEKS R23 R24 K80 ["FONT_SIZE_LARGE"]
  SETTABLEKS R23 R22 K43 ["TextSize"]
  NAMECALL R23 R11 K53 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K2 ["LayoutOrder"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["TipsLabel"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K21 ["RightFrame"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R7 R0 K11 ["Core"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R6 K13 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R6 K14 ["AssetConfigConstants"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R10 R6 K15 ["LayoutOrderIterator"]
  CALL R9 1 1
  GETTABLEKS R10 R3 K16 ["UI"]
  GETTABLEKS R11 R10 K17 ["ToggleButton"]
  GETTABLEKS R12 R10 K18 ["TextLabel"]
  GETTABLEKS R14 R3 K12 ["Util"]
  GETTABLEKS R13 R14 K19 ["StyleModifier"]
  GETTABLEKS R14 R2 K20 ["PureComponent"]
  LOADK R16 K21 ["ConfigDeleteLocal"]
  NAMECALL R14 R14 K22 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K23 [PROTO_1]
  SETTABLEKS R15 R14 K24 ["init"]
  DUPCLOSURE R15 K25 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  SETTABLEKS R15 R14 K26 ["render"]
  MOVE R15 R5
  DUPTABLE R16 K29 [{"Stylizer", "Localization"}]
  GETTABLEKS R17 R4 K27 ["Stylizer"]
  SETTABLEKS R17 R16 K27 ["Stylizer"]
  GETTABLEKS R17 R4 K28 ["Localization"]
  SETTABLEKS R17 R16 K28 ["Localization"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  RETURN R14 1
