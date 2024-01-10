PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Analytics"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["addAdapters"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["removeAdapters"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADK R4 K0 [""]
  NAMECALL R2 R2 K1 ["GetDocumentationUrl"]
  CALL R2 2 -1
  NAMECALL R0 R0 K2 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["adapted"]
  GETTABLEKS R5 R1 K4 ["adaptedWithScripts"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["new"]
  CALL R6 0 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K14 [{"BackgroundColor", "BackgroundTransparency", "Layout", "HorizontalAlignment", "VerticalAlignment", "Padding", "Spacing"}]
  GETTABLEKS R10 R2 K7 ["BackgroundColor"]
  SETTABLEKS R10 R9 K7 ["BackgroundColor"]
  LOADN R10 0
  SETTABLEKS R10 R9 K8 ["BackgroundTransparency"]
  GETIMPORT R10 K18 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K9 ["Layout"]
  GETIMPORT R10 K20 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K10 ["HorizontalAlignment"]
  GETIMPORT R10 K22 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K11 ["VerticalAlignment"]
  GETTABLEKS R10 R2 K23 ["PanePadding"]
  SETTABLEKS R10 R9 K12 ["Padding"]
  GETTABLEKS R10 R2 K13 ["Spacing"]
  SETTABLEKS R10 R9 K13 ["Spacing"]
  DUPTABLE R10 K26 [{"ToggleButton", "InstructionsPane"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K31 [{"Disabled", "Selected", "OnClick", "LayoutOrder"}]
  NOT R14 R4
  SETTABLEKS R14 R13 K27 ["Disabled"]
  SETTABLEKS R5 R13 K28 ["Selected"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K29 ["OnClick"]
  NAMECALL R14 R6 K32 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K30 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["ToggleButton"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K34 [{"Size", "Spacing", "Layout", "HorizontalAlignment", "VerticalAlignment", "LayoutOrder"}]
  GETIMPORT R14 K36 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K33 ["Size"]
  GETTABLEKS R14 R2 K37 ["VerticalTextSpacing"]
  SETTABLEKS R14 R13 K13 ["Spacing"]
  GETIMPORT R14 K39 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K9 ["Layout"]
  GETIMPORT R14 K20 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K10 ["HorizontalAlignment"]
  GETIMPORT R14 K22 [Enum.VerticalAlignment.Top]
  SETTABLEKS R14 R13 K11 ["VerticalAlignment"]
  NAMECALL R14 R6 K32 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K30 ["LayoutOrder"]
  DUPTABLE R14 K43 [{"InstructionsLabel", "TestingHintLabel", "RemovalInstructionsPane"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K50 [{"LayoutOrder", "Text", "AutomaticSize", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R18 R6 K32 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K30 ["LayoutOrder"]
  LOADK R20 K51 ["AdapterPane"]
  LOADK R21 K52 ["AdapterInserted"]
  NAMECALL R18 R3 K53 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K44 ["Text"]
  GETIMPORT R18 K55 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K45 ["AutomaticSize"]
  LOADN R18 1
  SETTABLEKS R18 R17 K8 ["BackgroundTransparency"]
  LOADB R18 1
  SETTABLEKS R18 R17 K46 ["TextWrapped"]
  GETIMPORT R18 K56 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K47 ["TextXAlignment"]
  DUPTABLE R18 K59 [{"TextSize", "Font"}]
  GETTABLEKS R19 R2 K57 ["TextSize"]
  SETTABLEKS R19 R18 K57 ["TextSize"]
  GETTABLEKS R19 R2 K58 ["Font"]
  SETTABLEKS R19 R18 K58 ["Font"]
  SETTABLEKS R18 R17 K48 ["TextProps"]
  NEWTABLE R18 1 0
  DUPTABLE R19 K62 [{"LinkText", "LinkCallback"}]
  LOADK R22 K51 ["AdapterPane"]
  LOADK R23 K63 ["LearnMore"]
  NAMECALL R20 R3 K53 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K60 ["LinkText"]
  DUPCLOSURE R20 K64 [PROTO_1]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  SETTABLEKS R20 R19 K61 ["LinkCallback"]
  SETTABLEKS R19 R18 K65 ["[link1]"]
  SETTABLEKS R18 R17 K49 ["LinkMap"]
  GETIMPORT R18 K20 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K10 ["HorizontalAlignment"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K40 ["InstructionsLabel"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K66 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R18 R6 K32 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K30 ["LayoutOrder"]
  LOADK R20 K51 ["AdapterPane"]
  JUMPIFNOT R5 [+2]
  LOADK R21 K67 ["SeamlessTestingText"]
  JUMP [+1]
  LOADK R21 K68 ["FindRemainingCharactersText"]
  NAMECALL R18 R3 K53 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K44 ["Text"]
  GETIMPORT R18 K36 [UDim2.new]
  LOADN R19 0
  LOADN R20 144
  LOADN R21 0
  LOADN R22 30
  CALL R18 4 1
  SETTABLEKS R18 R17 K33 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K8 ["BackgroundTransparency"]
  LOADB R18 1
  SETTABLEKS R18 R17 K46 ["TextWrapped"]
  GETIMPORT R18 K56 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K47 ["TextXAlignment"]
  DUPTABLE R18 K69 [{"TextSize", "Font", "TextXAlignment"}]
  GETTABLEKS R19 R2 K70 ["SubTextSize"]
  SETTABLEKS R19 R18 K57 ["TextSize"]
  GETTABLEKS R19 R2 K58 ["Font"]
  SETTABLEKS R19 R18 K58 ["Font"]
  GETIMPORT R19 K56 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K47 ["TextXAlignment"]
  SETTABLEKS R18 R17 K48 ["TextProps"]
  NEWTABLE R18 0 0
  SETTABLEKS R18 R17 K49 ["LinkMap"]
  GETIMPORT R18 K20 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K10 ["HorizontalAlignment"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K41 ["TestingHintLabel"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K71 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  NAMECALL R18 R6 K32 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K30 ["LayoutOrder"]
  GETIMPORT R18 K36 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K33 ["Size"]
  GETIMPORT R18 K39 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K9 ["Layout"]
  GETIMPORT R18 K20 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K10 ["HorizontalAlignment"]
  GETIMPORT R18 K22 [Enum.VerticalAlignment.Top]
  SETTABLEKS R18 R17 K11 ["VerticalAlignment"]
  DUPTABLE R18 K74 [{"RemovalLabelHeader", "RemovalLabel"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K6 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K50 [{"LayoutOrder", "Text", "AutomaticSize", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R22 R6 K32 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K30 ["LayoutOrder"]
  LOADK R24 K51 ["AdapterPane"]
  LOADK R25 K75 ["RemovalHeaderText"]
  NAMECALL R22 R3 K53 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K44 ["Text"]
  GETIMPORT R22 K55 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K45 ["AutomaticSize"]
  LOADN R22 1
  SETTABLEKS R22 R21 K8 ["BackgroundTransparency"]
  LOADB R22 1
  SETTABLEKS R22 R21 K46 ["TextWrapped"]
  GETIMPORT R22 K56 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K47 ["TextXAlignment"]
  DUPTABLE R22 K69 [{"TextSize", "Font", "TextXAlignment"}]
  GETTABLEKS R23 R2 K70 ["SubTextSize"]
  SETTABLEKS R23 R22 K57 ["TextSize"]
  GETTABLEKS R23 R2 K76 ["BoldFont"]
  SETTABLEKS R23 R22 K58 ["Font"]
  GETIMPORT R23 K56 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K47 ["TextXAlignment"]
  SETTABLEKS R22 R21 K48 ["TextProps"]
  NEWTABLE R22 0 0
  SETTABLEKS R22 R21 K49 ["LinkMap"]
  GETIMPORT R22 K20 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K10 ["HorizontalAlignment"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K72 ["RemovalLabelHeader"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K6 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K50 [{"LayoutOrder", "Text", "AutomaticSize", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R22 R6 K32 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K30 ["LayoutOrder"]
  LOADK R24 K51 ["AdapterPane"]
  LOADK R25 K77 ["RemovalText"]
  NAMECALL R22 R3 K53 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K44 ["Text"]
  GETIMPORT R22 K55 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K45 ["AutomaticSize"]
  LOADN R22 1
  SETTABLEKS R22 R21 K8 ["BackgroundTransparency"]
  LOADB R22 1
  SETTABLEKS R22 R21 K46 ["TextWrapped"]
  GETIMPORT R22 K56 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K47 ["TextXAlignment"]
  DUPTABLE R22 K69 [{"TextSize", "Font", "TextXAlignment"}]
  GETTABLEKS R23 R2 K70 ["SubTextSize"]
  SETTABLEKS R23 R22 K57 ["TextSize"]
  GETTABLEKS R23 R2 K58 ["Font"]
  SETTABLEKS R23 R22 K58 ["Font"]
  GETIMPORT R23 K56 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K47 ["TextXAlignment"]
  SETTABLEKS R22 R21 K48 ["TextProps"]
  NEWTABLE R22 0 0
  SETTABLEKS R22 R21 K49 ["LinkMap"]
  GETIMPORT R22 K20 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K10 ["HorizontalAlignment"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K73 ["RemovalLabel"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K42 ["RemovalInstructionsPane"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K25 ["InstructionsPane"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_3:
  DUPTABLE R1 K2 [{"adapted", "adaptedWithScripts"}]
  GETTABLEKS R3 R0 K3 ["Adapter"]
  GETTABLEKS R2 R3 K0 ["adapted"]
  SETTABLEKS R2 R1 K0 ["adapted"]
  GETTABLEKS R3 R0 K3 ["Adapter"]
  GETTABLEKS R2 R3 K1 ["adaptedWithScripts"]
  SETTABLEKS R2 R1 K1 ["adaptedWithScripts"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R1 K2 [{"addAdapters", "removeAdapters"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["addAdapters"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["removeAdapters"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["GuiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["HttpRbxApiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R5 K6 [script]
  GETTABLEKS R4 R5 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R2 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R2 K10 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R2 K10 ["Packages"]
  GETTABLEKS R6 R7 K13 ["RoactRodux"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K14 ["ContextServices"]
  GETTABLEKS R7 R3 K15 ["UI"]
  GETTABLEKS R8 R7 K16 ["Pane"]
  GETTABLEKS R9 R7 K17 ["ToggleButton"]
  GETTABLEKS R10 R7 K18 ["TextWithLinks"]
  GETTABLEKS R11 R3 K19 ["Util"]
  GETTABLEKS R12 R11 K20 ["LayoutOrderIterator"]
  GETTABLEKS R14 R2 K21 ["Src"]
  GETTABLEKS R13 R14 K22 ["Thunks"]
  GETIMPORT R14 K9 [require]
  GETTABLEKS R15 R13 K23 ["AddAdapters"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R16 R13 K24 ["RemoveAdapters"]
  CALL R15 1 1
  GETTABLEKS R16 R4 K25 ["PureComponent"]
  LOADK R18 K26 ["AdapterPane"]
  NAMECALL R16 R16 K27 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K28 [PROTO_2]
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R17 R16 K29 ["render"]
  DUPCLOSURE R17 K30 [PROTO_3]
  DUPCLOSURE R18 K31 [PROTO_6]
  CAPTURE VAL R14
  CAPTURE VAL R15
  GETTABLEKS R19 R6 K32 ["withContext"]
  DUPTABLE R20 K36 [{"Stylizer", "Localization", "Analytics"}]
  GETTABLEKS R21 R6 K33 ["Stylizer"]
  SETTABLEKS R21 R20 K33 ["Stylizer"]
  GETTABLEKS R21 R6 K34 ["Localization"]
  SETTABLEKS R21 R20 K34 ["Localization"]
  GETTABLEKS R21 R6 K35 ["Analytics"]
  SETTABLEKS R21 R20 K35 ["Analytics"]
  CALL R19 1 1
  MOVE R20 R16
  CALL R19 1 1
  MOVE R16 R19
  GETTABLEKS R19 R5 K37 ["connect"]
  MOVE R20 R17
  MOVE R21 R18
  CALL R19 2 1
  MOVE R20 R16
  CALL R19 1 -1
  RETURN R19 -1
