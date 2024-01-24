PROTO_0:
  GETUPVAL R2 0
  MOVE R4 R0
  GETTABLEKS R5 R1 K0 ["TextSize"]
  GETTABLEKS R6 R1 K1 ["Font"]
  GETIMPORT R7 K4 [Vector2.new]
  LOADK R8 K5 [∞]
  LOADK R9 K5 [∞]
  CALL R7 2 -1
  NAMECALL R2 R2 K6 ["GetTextSize"]
  CALL R2 -1 1
  GETIMPORT R3 K8 [UDim2.new]
  LOADN R4 0
  GETTABLEKS R6 R2 K10 ["X"]
  ADDK R5 R6 K9 [10]
  LOADN R6 1
  LOADN R7 0
  CALL R3 4 -1
  RETURN R3 -1

PROTO_1:
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
  MOVE R5 R3
  MOVE R6 R2
  CALL R4 2 -1
  RETURN R4 -1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADK R4 K0 [""]
  NAMECALL R2 R2 K1 ["GetDocumentationUrl"]
  CALL R2 2 -1
  NAMECALL R0 R0 K2 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_3:
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
  DUPTABLE R10 K24 [{"Button", "IconPane", "InstructionsLabel"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K28 [{"LayoutOrder", "Style", "Size", "Text", "OnClick"}]
  NAMECALL R14 R6 K29 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K2 ["LayoutOrder"]
  LOADK R14 K30 ["Round"]
  SETTABLEKS R14 R13 K25 ["Style"]
  LOADK R17 K31 ["InitialScanning"]
  LOADK R18 K32 ["ReScanButton"]
  NAMECALL R15 R4 K33 ["getText"]
  CALL R15 3 1
  GETUPVAL R16 4
  MOVE R18 R15
  GETTABLEKS R19 R2 K34 ["TextSize"]
  GETTABLEKS R20 R2 K35 ["Font"]
  GETIMPORT R21 K37 [Vector2.new]
  LOADK R22 K38 [∞]
  LOADK R23 K38 [∞]
  CALL R21 2 -1
  NAMECALL R16 R16 K39 ["GetTextSize"]
  CALL R16 -1 1
  GETIMPORT R17 K41 [UDim2.new]
  LOADN R18 0
  GETTABLEKS R20 R16 K43 ["X"]
  ADDK R19 R20 K42 [10]
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  MOVE R14 R17
  SETTABLEKS R14 R13 K7 ["Size"]
  LOADK R16 K31 ["InitialScanning"]
  LOADK R17 K32 ["ReScanButton"]
  NAMECALL R14 R4 K33 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K26 ["Text"]
  GETTABLEKS R14 R1 K44 ["OnResetPlugin"]
  SETTABLEKS R14 R13 K27 ["OnClick"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["Button"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K46 [{"Size", "Style", "LayoutOrder", "BackgroundColor", "BackgroundTransparency"}]
  GETTABLEKS R14 R2 K47 ["IconSize"]
  SETTABLEKS R14 R13 K7 ["Size"]
  LOADK R14 K48 ["RoundBox"]
  SETTABLEKS R14 R13 K25 ["Style"]
  NAMECALL R14 R6 K29 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K2 ["LayoutOrder"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R14 R2 K49 ["IconColor"]
  JUMP [+2]
  GETTABLEKS R14 R2 K50 ["IconColorDisabled"]
  SETTABLEKS R14 R13 K45 ["BackgroundColor"]
  LOADN R14 0
  SETTABLEKS R14 R13 K12 ["BackgroundTransparency"]
  NEWTABLE R14 0 1
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K52 [{"Image", "Size"}]
  LOADK R18 K53 ["rbxasset://textures/R15Migrator/Icon_AdapterPaneTab.png"]
  SETTABLEKS R18 R17 K51 ["Image"]
  GETIMPORT R18 K41 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K7 ["Size"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["IconPane"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 6
  DUPTABLE R13 K59 [{"Size", "LayoutOrder", "Text", "AutomaticSize", "BackgroundTransparency", "HorizontalAlignment", "VerticalAlignment", "TextXAlignment", "TextYAlignment", "TextProps", "LinkMap"}]
  LOADK R17 K60 ["AdapterPane"]
  JUMPIFNOT R5 [+2]
  LOADK R18 K61 ["AdapterInserted"]
  JUMP [+1]
  LOADK R18 K62 ["AdapterRemoved"]
  NAMECALL R15 R4 K33 ["getText"]
  CALL R15 3 1
  GETIMPORT R16 K65 [string.gsub]
  MOVE R17 R15
  LOADK R18 K66 ["%[link1%]"]
  LOADK R21 K60 ["AdapterPane"]
  LOADK R22 K67 ["LearnMore"]
  NAMECALL R19 R4 K33 ["getText"]
  CALL R19 3 -1
  CALL R16 -1 1
  MOVE R15 R16
  MOVE R16 R15
  GETUPVAL R17 4
  MOVE R19 R16
  GETTABLEKS R20 R2 K34 ["TextSize"]
  GETTABLEKS R21 R2 K35 ["Font"]
  GETIMPORT R22 K37 [Vector2.new]
  LOADK R23 K38 [∞]
  LOADK R24 K38 [∞]
  CALL R22 2 -1
  NAMECALL R17 R17 K39 ["GetTextSize"]
  CALL R17 -1 1
  GETIMPORT R18 K41 [UDim2.new]
  LOADN R19 0
  GETTABLEKS R21 R17 K43 ["X"]
  ADDK R20 R21 K42 [10]
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  MOVE R14 R18
  SETTABLEKS R14 R13 K7 ["Size"]
  NAMECALL R14 R6 K29 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K2 ["LayoutOrder"]
  LOADK R16 K60 ["AdapterPane"]
  JUMPIFNOT R5 [+2]
  LOADK R17 K61 ["AdapterInserted"]
  JUMP [+1]
  LOADK R17 K62 ["AdapterRemoved"]
  NAMECALL R14 R4 K33 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K26 ["Text"]
  GETIMPORT R14 K69 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K54 ["AutomaticSize"]
  LOADN R14 1
  SETTABLEKS R14 R13 K12 ["BackgroundTransparency"]
  GETIMPORT R14 K71 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K9 ["HorizontalAlignment"]
  GETIMPORT R14 K20 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K10 ["VerticalAlignment"]
  GETIMPORT R14 K72 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K55 ["TextXAlignment"]
  GETIMPORT R14 K73 [Enum.TextYAlignment.Center]
  SETTABLEKS R14 R13 K56 ["TextYAlignment"]
  DUPTABLE R14 K75 [{"TextSize", "Font", "TextWrapped"}]
  GETTABLEKS R15 R2 K34 ["TextSize"]
  SETTABLEKS R15 R14 K34 ["TextSize"]
  GETTABLEKS R15 R2 K35 ["Font"]
  SETTABLEKS R15 R14 K35 ["Font"]
  LOADB R15 0
  SETTABLEKS R15 R14 K74 ["TextWrapped"]
  SETTABLEKS R14 R13 K57 ["TextProps"]
  NEWTABLE R14 1 0
  DUPTABLE R15 K78 [{"LinkText", "LinkCallback"}]
  LOADK R18 K60 ["AdapterPane"]
  LOADK R19 K67 ["LearnMore"]
  NAMECALL R16 R4 K33 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K76 ["LinkText"]
  DUPCLOSURE R16 K79 [PROTO_2]
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  SETTABLEKS R16 R15 K77 ["LinkCallback"]
  SETTABLEKS R15 R14 K80 ["[link1]"]
  SETTABLEKS R14 R13 K58 ["LinkMap"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["InstructionsLabel"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_4:
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
  GETTABLEKS R11 R7 K19 ["Button"]
  GETTABLEKS R13 R4 K20 ["Util"]
  GETTABLEKS R12 R13 K21 ["LayoutOrderIterator"]
  GETTABLEKS R13 R4 K22 ["ContextServices"]
  GETTABLEKS R14 R5 K23 ["PureComponent"]
  LOADK R16 K24 ["MainFooter"]
  NAMECALL R14 R14 K25 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K26 [PROTO_0]
  CAPTURE VAL R2
  DUPCLOSURE R16 K27 [PROTO_1]
  CAPTURE VAL R15
  DUPCLOSURE R17 K28 [PROTO_3]
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R17 R14 K29 ["render"]
  DUPCLOSURE R17 K30 [PROTO_4]
  GETTABLEKS R18 R13 K31 ["withContext"]
  DUPTABLE R19 K34 [{"Stylizer", "Localization"}]
  GETTABLEKS R20 R13 K32 ["Stylizer"]
  SETTABLEKS R20 R19 K32 ["Stylizer"]
  GETTABLEKS R20 R13 K33 ["Localization"]
  SETTABLEKS R20 R19 K33 ["Localization"]
  CALL R18 1 1
  MOVE R19 R14
  CALL R18 1 1
  MOVE R14 R18
  GETTABLEKS R18 R6 K35 ["connect"]
  MOVE R19 R17
  CALL R18 1 1
  MOVE R19 R14
  CALL R18 1 -1
  RETURN R18 -1
