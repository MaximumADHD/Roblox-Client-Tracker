PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K4 [{"AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R4 K7 [Enum.AutomaticSize.XY]
  SETTABLEKS R4 R3 K2 ["AutomaticSize"]
  LOADN R4 1
  SETTABLEKS R4 R3 K3 ["BackgroundTransparency"]
  DUPTABLE R4 K12 [{"Padding", "Layout", "Tab", "Text"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K13 [{"Padding"}]
  LOADN R8 3
  SETTABLEKS R8 R7 K8 ["Padding"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Padding"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K14 ["UIListLayout"]
  DUPTABLE R7 K17 [{"FillDirection", "SortOrder", "Padding"}]
  GETIMPORT R8 K19 [Enum.FillDirection.Horizontal]
  SETTABLEKS R8 R7 K15 ["FillDirection"]
  GETIMPORT R8 K21 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R8 R7 K16 ["SortOrder"]
  GETIMPORT R8 K24 [UDim.new]
  LOADN R9 0
  LOADN R10 3
  CALL R8 2 1
  SETTABLEKS R8 R7 K8 ["Padding"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["Layout"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K25 ["TextLabel"]
  DUPTABLE R7 K28 [{"Text", "TextColor3", "BackgroundColor3", "AutomaticSize", "LayoutOrder"}]
  GETTABLEKS R8 R0 K29 ["Hotkey"]
  SETTABLEKS R8 R7 K11 ["Text"]
  GETTABLEKS R8 R0 K30 ["ForegroundColor"]
  SETTABLEKS R8 R7 K26 ["TextColor3"]
  GETTABLEKS R8 R0 K31 ["BackgroundColor"]
  SETTABLEKS R8 R7 K27 ["BackgroundColor3"]
  GETIMPORT R8 K7 [Enum.AutomaticSize.XY]
  SETTABLEKS R8 R7 K2 ["AutomaticSize"]
  LOADN R8 1
  SETTABLEKS R8 R7 K20 ["LayoutOrder"]
  DUPTABLE R8 K33 [{"Padding", "Corner"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K13 [{"Padding"}]
  LOADN R12 3
  SETTABLEKS R12 R11 K8 ["Padding"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K8 ["Padding"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K34 ["UICorner"]
  DUPTABLE R11 K36 [{"CornerRadius"}]
  GETIMPORT R12 K24 [UDim.new]
  LOADN R13 0
  LOADN R14 4
  CALL R12 2 1
  SETTABLEKS R12 R11 K35 ["CornerRadius"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K32 ["Corner"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K10 ["Tab"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K25 ["TextLabel"]
  DUPTABLE R7 K37 [{"Text", "TextColor3", "AutomaticSize", "BackgroundTransparency", "LayoutOrder"}]
  GETTABLEKS R8 R0 K38 ["Label"]
  SETTABLEKS R8 R7 K11 ["Text"]
  GETTABLEKS R8 R0 K30 ["ForegroundColor"]
  SETTABLEKS R8 R7 K26 ["TextColor3"]
  GETIMPORT R8 K7 [Enum.AutomaticSize.XY]
  SETTABLEKS R8 R7 K2 ["AutomaticSize"]
  LOADN R8 1
  SETTABLEKS R8 R7 K3 ["BackgroundTransparency"]
  LOADN R8 2
  SETTABLEKS R8 R7 K20 ["LayoutOrder"]
  DUPTABLE R8 K13 [{"Padding"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K13 [{"Padding"}]
  LOADN R12 3
  SETTABLEKS R12 R11 K8 ["Padding"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K8 ["Padding"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K11 ["Text"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["DraggerContext"]
  GETIMPORT R4 K5 [Enum.StudioStyleGuideColor.Tooltip]
  NAMECALL R2 R2 K6 ["getThemeColor"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K1 ["DraggerContext"]
  GETIMPORT R5 K8 [Enum.StudioStyleGuideColor.Border]
  NAMECALL R3 R3 K6 ["getThemeColor"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K1 ["DraggerContext"]
  GETIMPORT R6 K10 [Enum.StudioStyleGuideColor.MainText]
  NAMECALL R4 R4 K6 ["getThemeColor"]
  CALL R4 2 1
  GETTABLEKS R5 R1 K1 ["DraggerContext"]
  GETIMPORT R7 K12 [Enum.StudioStyleGuideColor.DimmedText]
  NAMECALL R5 R5 K6 ["getThemeColor"]
  CALL R5 2 1
  NEWTABLE R6 0 0
  GETTABLEKS R7 R1 K13 ["HotkeyList"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K14 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K19 [{"ForegroundColor", "BackgroundColor", "Hotkey", "Label"}]
  SETTABLEKS R4 R14 K15 ["ForegroundColor"]
  SETTABLEKS R5 R14 K16 ["BackgroundColor"]
  GETTABLEKS R15 R11 K17 ["Hotkey"]
  SETTABLEKS R15 R14 K17 ["Hotkey"]
  GETTABLEKS R15 R1 K1 ["DraggerContext"]
  LOADK R17 K20 ["HotkeyHelp"]
  GETTABLEKS R18 R11 K21 ["LabelLocEntry"]
  NAMECALL R15 R15 K22 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K18 ["Label"]
  CALL R12 2 1
  SETTABLE R12 R6 R10
  FORGLOOP R7 2 [-26]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K14 ["createElement"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K23 ["Portal"]
  DUPTABLE R9 K25 [{"target"}]
  GETTABLEKS R10 R1 K1 ["DraggerContext"]
  NAMECALL R10 R10 K26 ["getGuiParent"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K24 ["target"]
  DUPTABLE R10 K28 [{"SummonHandlesNoteGui"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K14 ["createElement"]
  LOADK R12 K29 ["ScreenGui"]
  NEWTABLE R13 0 0
  DUPTABLE R14 K31 [{"Frame"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K14 ["createElement"]
  LOADK R16 K30 ["Frame"]
  DUPTABLE R17 K38 [{"AnchorPoint", "Position", "Size", "AutomaticSize", "BackgroundColor3", "BorderColor3"}]
  GETIMPORT R18 K41 [Vector2.new]
  LOADN R19 1
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K32 ["AnchorPoint"]
  GETIMPORT R18 K43 [UDim2.new]
  LOADN R19 1
  LOADN R20 246
  LOADN R21 1
  LOADN R22 246
  CALL R18 4 1
  SETTABLEKS R18 R17 K33 ["Position"]
  GETIMPORT R18 K45 [UDim2.fromOffset]
  LOADN R19 200
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K34 ["Size"]
  GETIMPORT R18 K47 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K35 ["AutomaticSize"]
  SETTABLEKS R2 R17 K36 ["BackgroundColor3"]
  SETTABLEKS R3 R17 K37 ["BorderColor3"]
  DUPTABLE R18 K52 [{"Layout", "Corner", "Stroke", "Hotkeys"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K14 ["createElement"]
  LOADK R20 K53 ["UIListLayout"]
  DUPTABLE R21 K57 [{"FillDirection", "SortOrder", "Padding"}]
  GETIMPORT R22 K59 [Enum.FillDirection.Vertical]
  SETTABLEKS R22 R21 K54 ["FillDirection"]
  GETIMPORT R22 K61 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K55 ["SortOrder"]
  GETIMPORT R22 K63 [UDim.new]
  LOADN R23 0
  LOADN R24 3
  CALL R22 2 1
  SETTABLEKS R22 R21 K56 ["Padding"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K48 ["Layout"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K14 ["createElement"]
  LOADK R20 K64 ["UICorner"]
  DUPTABLE R21 K66 [{"CornerRadius"}]
  GETIMPORT R22 K63 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K65 ["CornerRadius"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K49 ["Corner"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K14 ["createElement"]
  LOADK R20 K67 ["UIStroke"]
  DUPTABLE R21 K69 [{"Color"}]
  SETTABLEKS R3 R21 K68 ["Color"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K50 ["Stroke"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K70 ["createFragment"]
  MOVE R20 R6
  CALL R19 1 1
  SETTABLEKS R19 R18 K51 ["Hotkeys"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K30 ["Frame"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K27 ["SummonHandlesNoteGui"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K6 ["Components"]
  GETTABLEKS R4 R5 K7 ["SimplePadding"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K8 ["PureComponent"]
  LOADK R6 K9 ["HotkeyUsageInfo"]
  NAMECALL R4 R4 K10 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K11 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  DUPCLOSURE R6 K12 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R6 R4 K13 ["render"]
  RETURN R4 1
