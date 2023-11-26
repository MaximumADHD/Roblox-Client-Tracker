PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETIMPORT R2 K3 [UDim.new]
  LOADN R3 0
  GETTABLEKS R6 R1 K5 ["creatorPill"]
  GETTABLEKS R5 R6 K6 ["spacingUnit"]
  DIVK R4 R5 K4 [2]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["new"]
  CALL R3 0 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K16 [{"AutomaticSize", "BackgroundColor3", "Layout", "LayoutOrder", "OnClick", "Padding", "Spacing", "VerticalAlignment"}]
  GETIMPORT R7 K19 [Enum.AutomaticSize.XY]
  SETTABLEKS R7 R6 K8 ["AutomaticSize"]
  GETTABLEKS R8 R1 K20 ["searchPill"]
  GETTABLEKS R7 R8 K21 ["backgroundColor"]
  SETTABLEKS R7 R6 K9 ["BackgroundColor3"]
  GETIMPORT R7 K24 [Enum.FillDirection.Horizontal]
  SETTABLEKS R7 R6 K10 ["Layout"]
  GETTABLEKS R7 R0 K11 ["LayoutOrder"]
  SETTABLEKS R7 R6 K11 ["LayoutOrder"]
  GETTABLEKS R7 R0 K25 ["OnActivated"]
  SETTABLEKS R7 R6 K12 ["OnClick"]
  GETTABLEKS R7 R2 K26 ["Offset"]
  SETTABLEKS R7 R6 K13 ["Padding"]
  GETTABLEKS R7 R2 K26 ["Offset"]
  SETTABLEKS R7 R6 K14 ["Spacing"]
  GETIMPORT R7 K28 [Enum.VerticalAlignment.Center]
  SETTABLEKS R7 R6 K15 ["VerticalAlignment"]
  DUPTABLE R7 K32 [{"Corner", "CreatorLabel", "Close"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["createElement"]
  LOADK R9 K33 ["UICorner"]
  DUPTABLE R10 K35 [{"CornerRadius"}]
  SETTABLEKS R2 R10 K34 ["CornerRadius"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K29 ["Corner"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K39 [{"CreatorId", "CreatorName", "CreatorType", "LayoutOrder"}]
  GETTABLEKS R11 R0 K36 ["CreatorId"]
  SETTABLEKS R11 R10 K36 ["CreatorId"]
  GETTABLEKS R11 R0 K37 ["CreatorName"]
  SETTABLEKS R11 R10 K37 ["CreatorName"]
  GETTABLEKS R11 R0 K38 ["CreatorType"]
  SETTABLEKS R11 R10 K38 ["CreatorType"]
  NAMECALL R11 R3 K40 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K11 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K30 ["CreatorLabel"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["createElement"]
  LOADK R9 K41 ["ImageLabel"]
  DUPTABLE R10 K45 [{"BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K42 ["BackgroundTransparency"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K46 ["CLOSE_BUTTON"]
  SETTABLEKS R11 R10 K43 ["Image"]
  NAMECALL R11 R3 K40 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K11 ["LayoutOrder"]
  GETIMPORT R11 K49 [UDim2.fromOffset]
  LOADN R12 16
  LOADN R13 16
  CALL R11 2 1
  SETTABLEKS R11 R10 K44 ["Size"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K31 ["Close"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Core"]
  GETTABLEKS R5 R6 K10 ["Components"]
  GETTABLEKS R4 R5 K11 ["CreatorLabel"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Core"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["Images"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K14 ["LayoutOrderIterator"]
  CALL R5 1 1
  GETTABLEKS R7 R2 K15 ["ContextServices"]
  GETTABLEKS R6 R7 K16 ["Stylizer"]
  GETTABLEKS R8 R2 K17 ["UI"]
  GETTABLEKS R7 R8 K18 ["Pane"]
  DUPCLOSURE R8 K19 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R8 1
