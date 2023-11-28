PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnClose"]
  GETTABLEKS R3 R1 K2 ["OnOpen"]
  GETTABLEKS R4 R1 K3 ["Localization"]
  GETTABLEKS R5 R1 K4 ["Stylizer"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["new"]
  CALL R6 0 1
  SETGLOBAL R6 K6 ["orderIterator"]
  GETTABLEKS R6 R5 K7 ["ImageSize"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K14 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
  GETIMPORT R10 K18 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K9 ["Layout"]
  GETIMPORT R10 K20 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R10 R9 K10 ["HorizontalAlignment"]
  GETIMPORT R10 K22 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K11 ["VerticalAlignment"]
  LOADN R10 30
  SETTABLEKS R10 R9 K12 ["Spacing"]
  LOADN R10 10
  SETTABLEKS R10 R9 K13 ["Padding"]
  DUPTABLE R10 K25 [{"Icon", "Text"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K8 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K29 [{"Size", "Image", "LayoutOrder"}]
  GETIMPORT R14 K32 [UDim2.fromOffset]
  MOVE R15 R6
  MOVE R16 R6
  CALL R14 2 1
  SETTABLEKS R14 R13 K26 ["Size"]
  GETTABLEKS R14 R5 K33 ["WarningIcon"]
  SETTABLEKS R14 R13 K27 ["Image"]
  GETGLOBAL R14 K6 ["orderIterator"]
  NAMECALL R14 R14 K34 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K28 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["Icon"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K8 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K35 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Size", "LayoutOrder", "Spacing"}]
  GETIMPORT R14 K37 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K9 ["Layout"]
  GETIMPORT R14 K20 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R14 R13 K10 ["HorizontalAlignment"]
  GETIMPORT R14 K39 [Enum.VerticalAlignment.Bottom]
  SETTABLEKS R14 R13 K11 ["VerticalAlignment"]
  GETTABLEKS R14 R5 K40 ["TextSize"]
  SETTABLEKS R14 R13 K26 ["Size"]
  GETGLOBAL R14 K6 ["orderIterator"]
  NAMECALL R14 R14 K34 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K28 ["LayoutOrder"]
  GETTABLEKS R14 R5 K41 ["TextSpacing"]
  SETTABLEKS R14 R13 K12 ["Spacing"]
  DUPTABLE R14 K45 [{"Warning", "Detail", "Buttons"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K49 [{"Text", "AutomaticSize", "TextXAlignment", "Size", "Style"}]
  LOADK R20 K50 ["PublishingBlocked"]
  LOADK R21 K42 ["Warning"]
  NAMECALL R18 R4 K51 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K24 ["Text"]
  GETIMPORT R18 K53 [Enum.AutomaticSize.Y]
  SETTABLEKS R18 R17 K46 ["AutomaticSize"]
  GETIMPORT R18 K55 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K47 ["TextXAlignment"]
  GETIMPORT R18 K56 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K26 ["Size"]
  LOADK R18 K57 ["Semibold"]
  SETTABLEKS R18 R17 K48 ["Style"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K42 ["Warning"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K59 [{"Text", "AutomaticSize", "Size", "TextXAlignment", "TextWrapped", "LayoutOrder", "Style"}]
  LOADK R20 K50 ["PublishingBlocked"]
  LOADK R21 K43 ["Detail"]
  NAMECALL R18 R4 K51 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K24 ["Text"]
  GETIMPORT R18 K53 [Enum.AutomaticSize.Y]
  SETTABLEKS R18 R17 K46 ["AutomaticSize"]
  GETIMPORT R18 K56 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K26 ["Size"]
  GETIMPORT R18 K55 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K47 ["TextXAlignment"]
  LOADB R18 1
  SETTABLEKS R18 R17 K58 ["TextWrapped"]
  GETGLOBAL R18 K6 ["orderIterator"]
  NAMECALL R18 R18 K34 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  LOADK R18 K60 ["Body"]
  SETTABLEKS R18 R17 K48 ["Style"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K43 ["Detail"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K61 [{"OnClose", "OnOpen", "LayoutOrder"}]
  SETTABLEKS R2 R17 K1 ["OnClose"]
  SETTABLEKS R3 R17 K2 ["OnOpen"]
  GETGLOBAL R18 K6 ["orderIterator"]
  NAMECALL R18 R18 K34 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K44 ["Buttons"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K24 ["Text"]
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
