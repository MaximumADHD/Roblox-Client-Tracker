PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Height"]
  GETTABLEKS R3 R1 K2 ["LinkMap"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R5 R1 K4 ["Message"]
  GETTABLEKS R6 R1 K5 ["Stylizer"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["new"]
  CALL R7 0 1
  GETUPVAL R8 1
  CALL R8 0 1
  JUMPIFNOT R8 [+89]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K13 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  SETTABLEKS R4 R10 K3 ["LayoutOrder"]
  GETIMPORT R11 K15 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  MOVE R15 R2
  CALL R11 4 1
  SETTABLEKS R11 R10 K8 ["Size"]
  GETIMPORT R11 K19 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K9 ["Layout"]
  GETIMPORT R11 K21 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R11 R10 K10 ["HorizontalAlignment"]
  GETIMPORT R11 K22 [Enum.VerticalAlignment.Center]
  SETTABLEKS R11 R10 K11 ["VerticalAlignment"]
  GETTABLEKS R11 R6 K12 ["Padding"]
  SETTABLEKS R11 R10 K12 ["Padding"]
  DUPTABLE R11 K24 [{"InstructionsLabel"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K32 [{"Text", "Size", "AutomaticSize", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextProps", "LinkMap"}]
  SETTABLEKS R5 R14 K25 ["Text"]
  GETIMPORT R15 K15 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K8 ["Size"]
  GETIMPORT R15 K34 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K26 ["AutomaticSize"]
  LOADN R15 1
  SETTABLEKS R15 R14 K27 ["BackgroundTransparency"]
  LOADB R15 1
  SETTABLEKS R15 R14 K28 ["TextWrapped"]
  GETIMPORT R15 K35 [Enum.TextXAlignment.Center]
  SETTABLEKS R15 R14 K29 ["TextXAlignment"]
  GETIMPORT R15 K36 [Enum.TextYAlignment.Center]
  SETTABLEKS R15 R14 K30 ["TextYAlignment"]
  DUPTABLE R15 K39 [{"TextSize", "Font"}]
  GETTABLEKS R16 R6 K37 ["TextSize"]
  SETTABLEKS R16 R15 K37 ["TextSize"]
  GETTABLEKS R16 R6 K38 ["Font"]
  SETTABLEKS R16 R15 K38 ["Font"]
  SETTABLEKS R15 R14 K31 ["TextProps"]
  MOVE R15 R3
  JUMPIF R15 [+2]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K2 ["LinkMap"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K23 ["InstructionsLabel"]
  CALL R8 3 -1
  RETURN R8 -1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K13 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  SETTABLEKS R4 R10 K3 ["LayoutOrder"]
  GETIMPORT R11 K15 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  MOVE R15 R2
  CALL R11 4 1
  SETTABLEKS R11 R10 K8 ["Size"]
  GETIMPORT R11 K19 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K9 ["Layout"]
  GETIMPORT R11 K21 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R11 R10 K10 ["HorizontalAlignment"]
  GETIMPORT R11 K22 [Enum.VerticalAlignment.Center]
  SETTABLEKS R11 R10 K11 ["VerticalAlignment"]
  GETTABLEKS R11 R6 K12 ["Padding"]
  SETTABLEKS R11 R10 K12 ["Padding"]
  DUPTABLE R11 K41 [{"InstructionsLabel", "Link"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K42 [{"LayoutOrder", "Text", "Size", "AutomaticSize", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextSize"}]
  NAMECALL R15 R7 K43 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K3 ["LayoutOrder"]
  SETTABLEKS R5 R14 K25 ["Text"]
  GETIMPORT R15 K15 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K8 ["Size"]
  GETIMPORT R15 K34 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K26 ["AutomaticSize"]
  LOADN R15 1
  SETTABLEKS R15 R14 K27 ["BackgroundTransparency"]
  LOADB R15 1
  SETTABLEKS R15 R14 K28 ["TextWrapped"]
  GETIMPORT R15 K35 [Enum.TextXAlignment.Center]
  SETTABLEKS R15 R14 K29 ["TextXAlignment"]
  GETIMPORT R15 K36 [Enum.TextYAlignment.Center]
  SETTABLEKS R15 R14 K30 ["TextYAlignment"]
  GETTABLEKS R15 R6 K37 ["TextSize"]
  SETTABLEKS R15 R14 K37 ["TextSize"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K23 ["InstructionsLabel"]
  JUMPIFNOT R3 [+62]
  GETTABLEKS R13 R3 K44 ["{link}"]
  JUMPIFNOT R13 [+59]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K46 [{"LayoutOrder", "Text", "Size", "AutomaticSize", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextSize", "Font", "OnClick"}]
  NAMECALL R15 R7 K43 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K3 ["LayoutOrder"]
  GETTABLEKS R16 R3 K44 ["{link}"]
  GETTABLEKS R15 R16 K47 ["LinkText"]
  SETTABLEKS R15 R14 K25 ["Text"]
  GETIMPORT R15 K15 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K8 ["Size"]
  GETIMPORT R15 K34 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K26 ["AutomaticSize"]
  LOADN R15 1
  SETTABLEKS R15 R14 K27 ["BackgroundTransparency"]
  LOADB R15 1
  SETTABLEKS R15 R14 K28 ["TextWrapped"]
  GETIMPORT R15 K35 [Enum.TextXAlignment.Center]
  SETTABLEKS R15 R14 K29 ["TextXAlignment"]
  GETIMPORT R15 K36 [Enum.TextYAlignment.Center]
  SETTABLEKS R15 R14 K30 ["TextYAlignment"]
  GETTABLEKS R15 R6 K37 ["TextSize"]
  SETTABLEKS R15 R14 K37 ["TextSize"]
  GETTABLEKS R15 R6 K38 ["Font"]
  SETTABLEKS R15 R14 K38 ["Font"]
  GETTABLEKS R16 R3 K44 ["{link}"]
  GETTABLEKS R15 R16 K48 ["LinkCallback"]
  SETTABLEKS R15 R14 K45 ["OnClick"]
  CALL R12 2 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K40 ["Link"]
  CALL R8 3 -1
  RETURN R8 -1

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
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R1 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["Pane"]
  GETTABLEKS R6 R4 K11 ["TextWithLinks"]
  GETTABLEKS R7 R4 K12 ["LinkText"]
  GETTABLEKS R8 R4 K13 ["TextLabel"]
  GETTABLEKS R9 R1 K14 ["Util"]
  GETTABLEKS R10 R9 K15 ["LayoutOrderIterator"]
  GETTABLEKS R12 R1 K16 ["SharedFlags"]
  GETTABLEKS R11 R12 K17 ["getFFlagAssetPreviewContentAttribution"]
  GETTABLEKS R12 R2 K18 ["PureComponent"]
  LOADK R14 K19 ["TabInstructions"]
  NAMECALL R12 R12 K20 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K21 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K22 ["render"]
  GETTABLEKS R13 R3 K23 ["withContext"]
  DUPTABLE R14 K25 [{"Stylizer"}]
  GETTABLEKS R15 R3 K24 ["Stylizer"]
  SETTABLEKS R15 R14 K24 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  RETURN R12 1
