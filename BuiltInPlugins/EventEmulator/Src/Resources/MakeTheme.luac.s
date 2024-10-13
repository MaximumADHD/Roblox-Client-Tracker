PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  CALL R2 0 1
  MOVE R1 R2
  JUMP [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  MOVE R1 R2
  GETUPVAL R4 1
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["Style"]
  GETTABLEKS R4 R3 K9 ["StyleKey"]
  GETTABLEKS R6 R3 K10 ["Themes"]
  GETTABLEKS R5 R6 K11 ["BaseTheme"]
  GETTABLEKS R7 R3 K10 ["Themes"]
  GETTABLEKS R6 R7 K12 ["StudioTheme"]
  GETTABLEKS R7 R3 K13 ["ComponentSymbols"]
  DUPTABLE R8 K25 [{"SmallPadding", "HistoryButtonMinor", "ShortHeight", "HorizontalPadding", "NavHeight", "ConfirmationButtonWidth", "HistoryButtonMajor", "InputPaneLength", "HistoryPaneLength", "DropdownWidth", "TextBoxWidth"}]
  LOADN R9 10
  SETTABLEKS R9 R8 K14 ["SmallPadding"]
  LOADN R9 25
  SETTABLEKS R9 R8 K15 ["HistoryButtonMinor"]
  LOADN R9 30
  SETTABLEKS R9 R8 K16 ["ShortHeight"]
  LOADN R9 50
  SETTABLEKS R9 R8 K17 ["HorizontalPadding"]
  LOADN R9 50
  SETTABLEKS R9 R8 K18 ["NavHeight"]
  LOADN R9 50
  SETTABLEKS R9 R8 K19 ["ConfirmationButtonWidth"]
  LOADN R9 100
  SETTABLEKS R9 R8 K20 ["HistoryButtonMajor"]
  LOADN R9 44
  SETTABLEKS R9 R8 K21 ["InputPaneLength"]
  LOADN R9 44
  SETTABLEKS R9 R8 K22 ["HistoryPaneLength"]
  LOADN R9 180
  SETTABLEKS R9 R8 K23 ["DropdownWidth"]
  LOADN R9 180
  SETTABLEKS R9 R8 K24 ["TextBoxWidth"]
  NEWTABLE R9 8 0
  GETTABLEKS R10 R4 K26 ["BlueText"]
  GETIMPORT R11 K29 [Color3.fromRGB]
  LOADN R12 0
  LOADN R13 162
  LOADN R14 255
  CALL R11 3 1
  SETTABLE R11 R9 R10
  DUPTABLE R10 K33 [{"BrightText", "DimmedText", "Button", "BlueText"}]
  DUPTABLE R11 K36 [{"Size", "Color"}]
  LOADN R12 20
  SETTABLEKS R12 R11 K34 ["Size"]
  GETTABLEKS R12 R4 K30 ["BrightText"]
  SETTABLEKS R12 R11 K35 ["Color"]
  SETTABLEKS R11 R10 K30 ["BrightText"]
  DUPTABLE R11 K36 [{"Size", "Color"}]
  LOADN R12 16
  SETTABLEKS R12 R11 K34 ["Size"]
  GETTABLEKS R12 R4 K31 ["DimmedText"]
  SETTABLEKS R12 R11 K35 ["Color"]
  SETTABLEKS R11 R10 K31 ["DimmedText"]
  DUPTABLE R11 K38 [{"Size", "Color", "PrimaryColor"}]
  LOADN R12 18
  SETTABLEKS R12 R11 K34 ["Size"]
  GETTABLEKS R12 R4 K39 ["MainText"]
  SETTABLEKS R12 R11 K35 ["Color"]
  GETTABLEKS R12 R4 K40 ["DialogMainButtonText"]
  SETTABLEKS R12 R11 K37 ["PrimaryColor"]
  SETTABLEKS R11 R10 K32 ["Button"]
  DUPTABLE R11 K36 [{"Size", "Color"}]
  LOADN R12 18
  SETTABLEKS R12 R11 K34 ["Size"]
  GETTABLEKS R12 R4 K26 ["BlueText"]
  SETTABLEKS R12 R11 K35 ["Color"]
  SETTABLEKS R11 R10 K26 ["BlueText"]
  SETTABLEKS R10 R9 K41 ["Text"]
  DUPTABLE R10 K47 [{"Thickness", "Transparency", "Color", "TopImage", "MidImage", "BottomImage"}]
  LOADN R11 5
  SETTABLEKS R11 R10 K42 ["Thickness"]
  LOADK R11 K48 [0.5]
  SETTABLEKS R11 R10 K43 ["Transparency"]
  GETTABLEKS R11 R4 K49 ["ScrollBar"]
  SETTABLEKS R11 R10 K35 ["Color"]
  LOADK R11 K50 ["rbxasset://textures/StudioToolbox/ScrollBarTop.png"]
  SETTABLEKS R11 R10 K44 ["TopImage"]
  LOADK R11 K51 ["rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"]
  SETTABLEKS R11 R10 K45 ["MidImage"]
  LOADK R11 K52 ["rbxasset://textures/StudioToolbox/ScrollBarBottom.png"]
  SETTABLEKS R11 R10 K46 ["BottomImage"]
  SETTABLEKS R10 R9 K53 ["Scrollbar"]
  SETTABLEKS R8 R9 K54 ["Sizes"]
  DUPTABLE R10 K58 [{"Vertical", "Horizontal", "HistoryItem"}]
  DUPTABLE R11 K63 [{"SortOrder", "FillDirection", "HorizontalAlignment", "Padding"}]
  GETIMPORT R12 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K59 ["SortOrder"]
  GETIMPORT R12 K67 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K60 ["FillDirection"]
  GETIMPORT R12 K69 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K61 ["HorizontalAlignment"]
  GETIMPORT R12 K72 [UDim.new]
  LOADN R13 0
  GETTABLEKS R14 R8 K14 ["SmallPadding"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K62 ["Padding"]
  SETTABLEKS R11 R10 K55 ["Vertical"]
  DUPTABLE R11 K74 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
  GETIMPORT R12 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K59 ["SortOrder"]
  GETIMPORT R12 K75 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K60 ["FillDirection"]
  GETIMPORT R12 K76 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K73 ["VerticalAlignment"]
  GETIMPORT R12 K69 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K61 ["HorizontalAlignment"]
  GETIMPORT R12 K72 [UDim.new]
  LOADN R13 0
  GETTABLEKS R14 R8 K17 ["HorizontalPadding"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K62 ["Padding"]
  SETTABLEKS R11 R10 K56 ["Horizontal"]
  DUPTABLE R11 K74 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
  GETIMPORT R12 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K59 ["SortOrder"]
  GETIMPORT R12 K75 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K60 ["FillDirection"]
  GETIMPORT R12 K76 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K73 ["VerticalAlignment"]
  GETIMPORT R12 K69 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K61 ["HorizontalAlignment"]
  GETIMPORT R12 K72 [UDim.new]
  LOADN R13 0
  GETTABLEKS R14 R8 K14 ["SmallPadding"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K62 ["Padding"]
  SETTABLEKS R11 R10 K57 ["HistoryItem"]
  SETTABLEKS R10 R9 K77 ["Layout"]
  GETTABLEKS R10 R7 K78 ["Box"]
  GETTABLEKS R12 R2 K79 ["Dictionary"]
  GETTABLEKS R11 R12 K80 ["join"]
  GETTABLEKS R13 R7 K78 ["Box"]
  GETTABLE R12 R5 R13
  NEWTABLE R13 1 0
  DUPTABLE R14 K81 [{"Color"}]
  GETTABLEKS R15 R4 K82 ["CategoryItem"]
  SETTABLEKS R15 R14 K35 ["Color"]
  SETTABLEKS R14 R13 K83 ["&__Item"]
  CALL R11 2 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R7 K84 ["RoundBox"]
  GETTABLEKS R12 R2 K79 ["Dictionary"]
  GETTABLEKS R11 R12 K80 ["join"]
  GETTABLEKS R13 R7 K84 ["RoundBox"]
  GETTABLE R12 R5 R13
  NEWTABLE R13 2 0
  DUPTABLE R14 K86 [{"Color", "BorderTransparency"}]
  GETTABLEKS R15 R4 K82 ["CategoryItem"]
  SETTABLEKS R15 R14 K35 ["Color"]
  LOADN R15 1
  SETTABLEKS R15 R14 K85 ["BorderTransparency"]
  SETTABLEKS R14 R13 K83 ["&__Item"]
  DUPTABLE R14 K81 [{"Color"}]
  GETTABLEKS R15 R4 K87 ["Mid"]
  SETTABLEKS R15 R14 K35 ["Color"]
  SETTABLEKS R14 R13 K88 ["&__Example"]
  CALL R11 2 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R7 K32 ["Button"]
  GETTABLEKS R12 R2 K79 ["Dictionary"]
  GETTABLEKS R11 R12 K80 ["join"]
  GETTABLEKS R13 R7 K32 ["Button"]
  GETTABLE R12 R5 R13
  NEWTABLE R13 1 0
  DUPTABLE R14 K90 [{"Color", "BorderSize"}]
  GETTABLEKS R15 R4 K32 ["Button"]
  SETTABLEKS R15 R14 K35 ["Color"]
  LOADN R15 1
  SETTABLEKS R15 R14 K89 ["BorderSize"]
  SETTABLEKS R14 R13 K83 ["&__Item"]
  CALL R11 2 1
  SETTABLE R11 R9 R10
  DUPCLOSURE R10 K91 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R9
  RETURN R10 1
