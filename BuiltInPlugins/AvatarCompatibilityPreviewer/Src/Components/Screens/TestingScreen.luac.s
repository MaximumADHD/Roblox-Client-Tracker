PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["stopPlaySolo"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["use"]
  CALL R0 1 1
  GETUPVAL R1 1
  LOADK R3 K1 ["TestingScreen"]
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 2 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["new"]
  CALL R2 0 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["useContext"]
  GETUPVAL R4 4
  CALL R3 1 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 5
  DUPTABLE R6 K9 [{"Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R7 K13 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K5 ["Layout"]
  GETTABLEKS R7 R1 K6 ["Spacing"]
  SETTABLEKS R7 R6 K6 ["Spacing"]
  GETIMPORT R7 K15 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R7 R6 K7 ["HorizontalAlignment"]
  GETIMPORT R7 K16 [Enum.VerticalAlignment.Center]
  SETTABLEKS R7 R6 K8 ["VerticalAlignment"]
  DUPTABLE R7 K19 [{"Description", "StopButton"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K23 [{"AutomaticSize", "LayoutOrder", "Text"}]
  GETIMPORT R11 K25 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K20 ["AutomaticSize"]
  NAMECALL R11 R2 K26 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K21 ["LayoutOrder"]
  LOADK R13 K1 ["TestingScreen"]
  LOADK R14 K17 ["Description"]
  NAMECALL R11 R0 K27 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K17 ["Description"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 7
  DUPTABLE R10 K30 [{"AutomaticSize", "LayoutOrder", "OnClick", "Size", "Text"}]
  GETIMPORT R11 K32 [Enum.AutomaticSize.X]
  SETTABLEKS R11 R10 K20 ["AutomaticSize"]
  NAMECALL R11 R2 K26 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K21 ["LayoutOrder"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K28 ["OnClick"]
  GETIMPORT R11 K35 [UDim2.fromOffset]
  LOADN R12 0
  GETTABLEKS R13 R1 K36 ["ButtonHeight"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K29 ["Size"]
  LOADK R13 K1 ["TestingScreen"]
  LOADK R14 K37 ["Stop"]
  NAMECALL R11 R0 K27 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K18 ["StopButton"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Components"]
  GETTABLEKS R4 R5 K11 ["PlacesServiceContext"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K12 ["Resources"]
  GETTABLEKS R5 R6 K13 ["Theme"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K14 ["UI"]
  GETTABLEKS R6 R5 K15 ["IconButton"]
  GETTABLEKS R7 R5 K16 ["Pane"]
  GETTABLEKS R8 R5 K17 ["TextLabel"]
  GETTABLEKS R10 R1 K18 ["ContextServices"]
  GETTABLEKS R9 R10 K19 ["Localization"]
  GETTABLEKS R11 R1 K18 ["ContextServices"]
  GETTABLEKS R10 R11 K20 ["Stylizer"]
  GETTABLEKS R12 R1 K21 ["Util"]
  GETTABLEKS R11 R12 K22 ["LayoutOrderIterator"]
  DUPCLOSURE R12 K23 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R6
  RETURN R12 1
