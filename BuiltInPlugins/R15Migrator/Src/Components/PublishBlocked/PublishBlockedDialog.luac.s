PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnClose"]
  GETTABLEKS R3 R1 K2 ["OnOpen"]
  GETTABLEKS R4 R1 K3 ["Localization"]
  GETTABLEKS R5 R1 K4 ["Stylizer"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["new"]
  CALL R6 0 1
  GETTABLEKS R7 R5 K6 ["ImageSize"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K13 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
  GETIMPORT R11 K17 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K8 ["Layout"]
  GETIMPORT R11 K19 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R11 R10 K9 ["HorizontalAlignment"]
  GETIMPORT R11 K21 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K10 ["VerticalAlignment"]
  LOADN R11 30
  SETTABLEKS R11 R10 K11 ["Spacing"]
  LOADN R11 10
  SETTABLEKS R11 R10 K12 ["Padding"]
  DUPTABLE R11 K24 [{"Icon", "Text"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K28 [{"Size", "Image", "LayoutOrder"}]
  GETIMPORT R15 K31 [UDim2.fromOffset]
  MOVE R16 R7
  MOVE R17 R7
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["Size"]
  GETTABLEKS R15 R5 K32 ["WarningIcon"]
  SETTABLEKS R15 R14 K26 ["Image"]
  NAMECALL R15 R6 K33 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K27 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K22 ["Icon"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K34 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Size", "LayoutOrder", "Spacing"}]
  GETIMPORT R15 K36 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K8 ["Layout"]
  GETIMPORT R15 K19 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R15 R14 K9 ["HorizontalAlignment"]
  GETIMPORT R15 K38 [Enum.VerticalAlignment.Bottom]
  SETTABLEKS R15 R14 K10 ["VerticalAlignment"]
  GETTABLEKS R15 R5 K39 ["TextSize"]
  SETTABLEKS R15 R14 K25 ["Size"]
  NAMECALL R15 R6 K33 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K27 ["LayoutOrder"]
  GETTABLEKS R15 R5 K40 ["TextSpacing"]
  SETTABLEKS R15 R14 K11 ["Spacing"]
  DUPTABLE R15 K44 [{"Warning", "Detail", "Buttons"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K48 [{"Text", "AutomaticSize", "TextXAlignment", "Size", "Style"}]
  LOADK R21 K49 ["PublishingBlocked"]
  LOADK R22 K41 ["Warning"]
  NAMECALL R19 R4 K50 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K23 ["Text"]
  GETIMPORT R19 K52 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K45 ["AutomaticSize"]
  GETIMPORT R19 K54 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K46 ["TextXAlignment"]
  GETIMPORT R19 K55 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K25 ["Size"]
  LOADK R19 K56 ["Semibold"]
  SETTABLEKS R19 R18 K47 ["Style"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K41 ["Warning"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K58 [{"Text", "AutomaticSize", "Size", "TextXAlignment", "TextWrapped", "LayoutOrder", "Style"}]
  LOADK R21 K49 ["PublishingBlocked"]
  LOADK R22 K42 ["Detail"]
  NAMECALL R19 R4 K50 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K23 ["Text"]
  GETIMPORT R19 K52 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K45 ["AutomaticSize"]
  GETIMPORT R19 K55 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K25 ["Size"]
  GETIMPORT R19 K54 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K46 ["TextXAlignment"]
  LOADB R19 1
  SETTABLEKS R19 R18 K57 ["TextWrapped"]
  NAMECALL R19 R6 K33 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K27 ["LayoutOrder"]
  LOADK R19 K59 ["Body"]
  SETTABLEKS R19 R18 K47 ["Style"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K42 ["Detail"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K60 [{"OnClose", "OnOpen", "LayoutOrder"}]
  SETTABLEKS R2 R18 K1 ["OnClose"]
  SETTABLEKS R3 R18 K2 ["OnOpen"]
  NAMECALL R19 R6 K33 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K27 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K43 ["Buttons"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K23 ["Text"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R2 K10 ["UI"]
  GETTABLEKS R5 R4 K11 ["Pane"]
  GETTABLEKS R6 R4 K12 ["Image"]
  GETTABLEKS R7 R4 K13 ["TextLabel"]
  GETTABLEKS R9 R2 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["LayoutOrderIterator"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K16 ["Src"]
  GETTABLEKS R12 R13 K17 ["Components"]
  GETTABLEKS R11 R12 K18 ["PublishBlocked"]
  GETTABLEKS R10 R11 K19 ["Buttons"]
  CALL R9 1 1
  GETTABLEKS R10 R1 K20 ["PureComponent"]
  LOADK R12 K21 ["PublishBlockedDialog"]
  NAMECALL R10 R10 K22 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K23 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K24 ["render"]
  GETTABLEKS R11 R3 K25 ["withContext"]
  DUPTABLE R12 K28 [{"Localization", "Stylizer"}]
  GETTABLEKS R13 R3 K26 ["Localization"]
  SETTABLEKS R13 R12 K26 ["Localization"]
  GETTABLEKS R13 R3 K27 ["Stylizer"]
  SETTABLEKS R13 R12 K27 ["Stylizer"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
