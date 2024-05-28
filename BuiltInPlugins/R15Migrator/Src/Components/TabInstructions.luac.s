PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Height"]
  GETTABLEKS R3 R1 K2 ["LinkMap"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R5 R1 K4 ["Message"]
  GETTABLEKS R6 R1 K5 ["Stylizer"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K12 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  SETTABLEKS R4 R9 K3 ["LayoutOrder"]
  GETIMPORT R10 K15 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  MOVE R14 R2
  CALL R10 4 1
  SETTABLEKS R10 R9 K7 ["Size"]
  GETIMPORT R10 K19 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K8 ["Layout"]
  GETIMPORT R10 K21 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R10 R9 K9 ["HorizontalAlignment"]
  GETIMPORT R10 K22 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K10 ["VerticalAlignment"]
  GETTABLEKS R10 R6 K11 ["Padding"]
  SETTABLEKS R10 R9 K11 ["Padding"]
  DUPTABLE R10 K24 [{"InstructionsLabel"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K32 [{"Text", "Size", "AutomaticSize", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextProps", "LinkMap"}]
  SETTABLEKS R5 R13 K25 ["Text"]
  GETIMPORT R14 K15 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K7 ["Size"]
  GETIMPORT R14 K34 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K26 ["AutomaticSize"]
  LOADN R14 1
  SETTABLEKS R14 R13 K27 ["BackgroundTransparency"]
  LOADB R14 1
  SETTABLEKS R14 R13 K28 ["TextWrapped"]
  GETIMPORT R14 K35 [Enum.TextXAlignment.Center]
  SETTABLEKS R14 R13 K29 ["TextXAlignment"]
  GETIMPORT R14 K36 [Enum.TextYAlignment.Center]
  SETTABLEKS R14 R13 K30 ["TextYAlignment"]
  DUPTABLE R14 K39 [{"TextSize", "Font"}]
  GETTABLEKS R15 R6 K37 ["TextSize"]
  SETTABLEKS R15 R14 K37 ["TextSize"]
  GETTABLEKS R15 R6 K38 ["Font"]
  SETTABLEKS R15 R14 K38 ["Font"]
  SETTABLEKS R14 R13 K31 ["TextProps"]
  MOVE R14 R3
  JUMPIF R14 [+2]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K2 ["LinkMap"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["InstructionsLabel"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["ContextServices"]
  GETTABLEKS R4 R1 K10 ["UI"]
  GETTABLEKS R5 R4 K11 ["Pane"]
  GETTABLEKS R6 R4 K12 ["TextWithLinks"]
  GETTABLEKS R7 R2 K13 ["PureComponent"]
  LOADK R9 K14 ["TabInstructions"]
  NAMECALL R7 R7 K15 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K16 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K17 ["render"]
  GETTABLEKS R8 R3 K18 ["withContext"]
  DUPTABLE R9 K20 [{"Stylizer"}]
  GETTABLEKS R10 R3 K19 ["Stylizer"]
  SETTABLEKS R10 R9 K19 ["Stylizer"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1
