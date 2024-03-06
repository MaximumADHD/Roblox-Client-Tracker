PROTO_0:
  GETUPVAL R1 0
  LOADK R3 K0 ["GenerationAngleHelp"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["new"]
  CALL R3 0 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 4
  DUPTABLE R6 K10 [{"AnchorPoint", "LayoutOrder", "Position", "Text", "TextXAlignment", "Child"}]
  GETTABLEKS R7 R1 K4 ["AnchorPoint"]
  SETTABLEKS R7 R6 K4 ["AnchorPoint"]
  GETTABLEKS R7 R0 K5 ["LayoutOrder"]
  SETTABLEKS R7 R6 K5 ["LayoutOrder"]
  GETTABLEKS R7 R1 K6 ["Position"]
  SETTABLEKS R7 R6 K6 ["Position"]
  LOADK R9 K0 ["GenerationAngleHelp"]
  LOADK R10 K11 ["Tooltip"]
  NAMECALL R7 R2 K12 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Text"]
  GETIMPORT R7 K15 [Enum.TextXAlignment.Left]
  SETTABLEKS R7 R6 K8 ["TextXAlignment"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K23 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Spacing", "VerticalAlignment", "ZIndex"}]
  GETIMPORT R10 K25 [Enum.AutomaticSize.X]
  SETTABLEKS R10 R9 K16 ["AutomaticSize"]
  GETIMPORT R10 K26 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K17 ["HorizontalAlignment"]
  GETIMPORT R10 K29 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K18 ["Layout"]
  GETTABLEKS R10 R1 K19 ["Padding"]
  SETTABLEKS R10 R9 K19 ["Padding"]
  GETTABLEKS R10 R1 K20 ["Spacing"]
  SETTABLEKS R10 R9 K20 ["Spacing"]
  GETIMPORT R10 K31 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K21 ["VerticalAlignment"]
  GETTABLEKS R10 R1 K22 ["ZIndex"]
  SETTABLEKS R10 R9 K22 ["ZIndex"]
  DUPTABLE R10 K34 [{"TextLabel", "Image"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 6
  DUPTABLE R13 K36 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
  GETIMPORT R14 K25 [Enum.AutomaticSize.X]
  SETTABLEKS R14 R13 K16 ["AutomaticSize"]
  NAMECALL R14 R3 K37 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K5 ["LayoutOrder"]
  GETTABLEKS R14 R1 K38 ["TextStyle"]
  SETTABLEKS R14 R13 K35 ["Style"]
  LOADK R16 K0 ["GenerationAngleHelp"]
  LOADK R17 K7 ["Text"]
  NAMECALL R14 R2 K12 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K7 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["TextLabel"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 7
  DUPTABLE R13 K39 [{"LayoutOrder", "Style"}]
  NAMECALL R14 R3 K37 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K5 ["LayoutOrder"]
  GETTABLEKS R14 R1 K40 ["HelpImage"]
  SETTABLEKS R14 R13 K35 ["Style"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K33 ["Image"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K9 ["Child"]
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TextureGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETTABLEKS R5 R3 K11 ["Stylizer"]
  GETTABLEKS R6 R1 K12 ["UI"]
  GETTABLEKS R7 R6 K13 ["Image"]
  GETTABLEKS R8 R6 K14 ["Pane"]
  GETTABLEKS R9 R6 K15 ["TextLabel"]
  GETTABLEKS R10 R6 K16 ["Tooltip"]
  GETTABLEKS R12 R1 K17 ["Util"]
  GETTABLEKS R11 R12 K18 ["LayoutOrderIterator"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K19 ["Src"]
  GETTABLEKS R14 R15 K20 ["Resources"]
  GETTABLEKS R13 R14 K21 ["Theme"]
  CALL R12 1 1
  DUPCLOSURE R13 K22 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R7
  RETURN R13 1
