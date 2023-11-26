PROTO_0:
  LOADK R5 K0 ["AdapterPane"]
  JUMPIFNOT R1 [+2]
  LOADK R6 K1 ["AdapterInserted"]
  JUMP [+1]
  LOADK R6 K2 ["AdapterRemoved"]
  NAMECALL R3 R0 K3 ["getText"]
  CALL R3 3 1
  GETIMPORT R4 K6 [string.gsub]
  MOVE R5 R3
  LOADK R6 K7 ["%[link1%]"]
  LOADK R9 K0 ["AdapterPane"]
  LOADK R10 K8 ["LearnMore"]
  NAMECALL R7 R0 K3 ["getText"]
  CALL R7 3 -1
  CALL R4 -1 1
  MOVE R3 R4
  GETUPVAL R4 0
  MOVE R6 R3
  GETTABLEKS R7 R2 K9 ["TextSize"]
  GETTABLEKS R8 R2 K10 ["Font"]
  GETIMPORT R9 K13 [Vector2.new]
  LOADK R10 K14 [∞]
  LOADK R11 K14 [∞]
  CALL R9 2 -1
  NAMECALL R4 R4 K15 ["GetTextSize"]
  CALL R4 -1 1
  GETIMPORT R5 K17 [UDim2.new]
  LOADN R6 0
  GETTABLEKS R8 R4 K19 ["X"]
  ADDK R7 R8 K18 [10]
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 -1
  RETURN R5 -1

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
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  GETTABLEKS R4 R1 K3 ["Localization"]
  GETTABLEKS R5 R1 K4 ["adaptedWithScripts"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["new"]
  CALL R6 0 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K13 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "BackgroundTransparency"}]
  GETTABLEKS R10 R2 K7 ["Size"]
  SETTABLEKS R10 R9 K7 ["Size"]
  SETTABLEKS R3 R9 K2 ["LayoutOrder"]
  GETIMPORT R10 K17 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K8 ["Layout"]
  GETIMPORT R10 K19 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R10 R9 K9 ["HorizontalAlignment"]
  GETIMPORT R10 K20 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K10 ["VerticalAlignment"]
  GETTABLEKS R10 R2 K11 ["Spacing"]
  SETTABLEKS R10 R9 K11 ["Spacing"]
  LOADN R10 1
  SETTABLEKS R10 R9 K12 ["BackgroundTransparency"]
  DUPTABLE R10 K23 [{"IconPane", "InstructionsLabel"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K26 [{"Size", "Style", "LayoutOrder", "BackgroundColor", "BackgroundTransparency"}]
  GETTABLEKS R14 R2 K27 ["IconSize"]
  SETTABLEKS R14 R13 K7 ["Size"]
  LOADK R14 K28 ["RoundBox"]
  SETTABLEKS R14 R13 K24 ["Style"]
  NAMECALL R14 R6 K29 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K2 ["LayoutOrder"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R14 R2 K30 ["IconColor"]
  JUMP [+2]
  GETTABLEKS R14 R2 K31 ["IconColorDisabled"]
  SETTABLEKS R14 R13 K25 ["BackgroundColor"]
  LOADN R14 0
  SETTABLEKS R14 R13 K12 ["BackgroundTransparency"]
  NEWTABLE R14 0 1
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K33 [{"Image", "Size"}]
  LOADK R18 K34 ["rbxasset://textures/R15Migrator/Icon_AdapterPaneTab.png"]
  SETTABLEKS R18 R17 K32 ["Image"]
  GETIMPORT R18 K36 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K7 ["Size"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  SETTABLEKS R11 R10 K21 ["IconPane"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K43 [{"Size", "LayoutOrder", "Text", "AutomaticSize", "BackgroundTransparency", "HorizontalAlignment", "VerticalAlignment", "TextXAlignment", "TextYAlignment", "TextProps", "LinkMap"}]
  GETUPVAL R14 5
  MOVE R15 R4
  MOVE R16 R5
  MOVE R17 R2
  CALL R14 3 1
  SETTABLEKS R14 R13 K7 ["Size"]
  NAMECALL R14 R6 K29 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K2 ["LayoutOrder"]
  LOADK R16 K44 ["AdapterPane"]
  JUMPIFNOT R5 [+2]
  LOADK R17 K45 ["AdapterInserted"]
  JUMP [+1]
  LOADK R17 K46 ["AdapterRemoved"]
  NAMECALL R14 R4 K47 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K37 ["Text"]
  GETIMPORT R14 K49 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K38 ["AutomaticSize"]
  LOADN R14 1
  SETTABLEKS R14 R13 K12 ["BackgroundTransparency"]
  GETIMPORT R14 K51 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K9 ["HorizontalAlignment"]
  GETIMPORT R14 K20 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K10 ["VerticalAlignment"]
  GETIMPORT R14 K52 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K39 ["TextXAlignment"]
  GETIMPORT R14 K53 [Enum.TextYAlignment.Center]
  SETTABLEKS R14 R13 K40 ["TextYAlignment"]
  DUPTABLE R14 K57 [{"TextSize", "Font", "TextWrapped"}]
  GETTABLEKS R15 R2 K54 ["TextSize"]
  SETTABLEKS R15 R14 K54 ["TextSize"]
  GETTABLEKS R15 R2 K55 ["Font"]
  SETTABLEKS R15 R14 K55 ["Font"]
  LOADB R15 0
  SETTABLEKS R15 R14 K56 ["TextWrapped"]
  SETTABLEKS R14 R13 K41 ["TextProps"]
  NEWTABLE R14 1 0
  DUPTABLE R15 K60 [{"LinkText", "LinkCallback"}]
  LOADK R18 K44 ["AdapterPane"]
  LOADK R19 K61 ["LearnMore"]
  NAMECALL R16 R4 K47 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K58 ["LinkText"]
  DUPCLOSURE R16 K62 [PROTO_1]
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R16 R15 K59 ["LinkCallback"]
  SETTABLEKS R15 R14 K63 ["[link1]"]
  SETTABLEKS R14 R13 K42 ["LinkMap"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["InstructionsLabel"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_3:
  DUPTABLE R1 K1 [{"adaptedWithScripts"}]
  GETTABLEKS R3 R0 K2 ["Adapter"]
  GETTABLEKS R2 R3 K0 ["adaptedWithScripts"]
  SETTABLEKS R2 R1 K0 ["adaptedWithScripts"]
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
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["TextService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R6 K7 [script]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R3 K11 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R3 K11 ["Packages"]
  GETTABLEKS R6 R7 K13 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R8 R3 K11 ["Packages"]
  GETTABLEKS R7 R8 K14 ["RoactRodux"]
  CALL R6 1 1
  GETTABLEKS R7 R4 K15 ["UI"]
  GETTABLEKS R8 R7 K16 ["Pane"]
  GETTABLEKS R9 R7 K17 ["TextWithLinks"]
  GETTABLEKS R10 R7 K18 ["Image"]
  GETTABLEKS R12 R4 K19 ["Util"]
  GETTABLEKS R11 R12 K20 ["LayoutOrderIterator"]
  GETTABLEKS R12 R4 K21 ["ContextServices"]
  GETTABLEKS R13 R5 K22 ["PureComponent"]
  LOADK R15 K23 ["MainFooter"]
  NAMECALL R13 R13 K24 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K25 [PROTO_0]
  CAPTURE VAL R2
  DUPCLOSURE R15 K26 [PROTO_2]
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R14
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R15 R13 K27 ["render"]
  DUPCLOSURE R15 K28 [PROTO_3]
  GETTABLEKS R16 R12 K29 ["withContext"]
  DUPTABLE R17 K32 [{"Stylizer", "Localization"}]
  GETTABLEKS R18 R12 K30 ["Stylizer"]
  SETTABLEKS R18 R17 K30 ["Stylizer"]
  GETTABLEKS R18 R12 K31 ["Localization"]
  SETTABLEKS R18 R17 K31 ["Localization"]
  CALL R16 1 1
  MOVE R17 R13
  CALL R16 1 1
  MOVE R13 R16
  GETTABLEKS R16 R6 K33 ["connect"]
  MOVE R17 R15
  CALL R16 1 1
  MOVE R17 R13
  CALL R16 1 -1
  RETURN R16 -1
