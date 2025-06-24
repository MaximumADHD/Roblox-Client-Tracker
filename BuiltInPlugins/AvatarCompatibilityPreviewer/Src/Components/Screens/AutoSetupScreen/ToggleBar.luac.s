PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K9 [{"Size", "LayoutOrder", "AnchorPoint", "HorizontalAlignment", "Position", "Transparency", "Style"}]
  GETIMPORT R5 K12 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  GETTABLEKS R9 R0 K13 ["Height"]
  CALL R5 4 1
  SETTABLEKS R5 R4 K2 ["Size"]
  GETTABLEKS R5 R0 K3 ["LayoutOrder"]
  SETTABLEKS R5 R4 K3 ["LayoutOrder"]
  GETIMPORT R5 K15 [Vector2.new]
  LOADK R6 K16 [0.5]
  LOADN R7 1
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["AnchorPoint"]
  GETIMPORT R5 K19 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R5 R4 K5 ["HorizontalAlignment"]
  GETIMPORT R5 K21 [UDim2.fromScale]
  LOADK R6 K16 [0.5]
  LOADN R7 1
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Position"]
  LOADN R5 0
  SETTABLEKS R5 R4 K7 ["Transparency"]
  LOADK R5 K22 ["SubtleBorderBox"]
  SETTABLEKS R5 R4 K8 ["Style"]
  DUPTABLE R5 K25 [{"Label", "Toggle"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K28 [{"Text", "TextTruncate"}]
  LOADK R11 K29 ["ToggleBar"]
  LOADK R12 K30 ["ConfigureModels"]
  NAMECALL R9 R1 K31 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K26 ["Text"]
  GETIMPORT R9 K33 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R9 R8 K27 ["TextTruncate"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K23 ["Label"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K36 [{"LayoutOrder", "AutomaticSize", "OnClick", "AnchorPoint", "Position"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  GETIMPORT R9 K38 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K34 ["AutomaticSize"]
  GETTABLEKS R9 R0 K24 ["Toggle"]
  SETTABLEKS R9 R8 K35 ["OnClick"]
  GETIMPORT R9 K15 [Vector2.new]
  LOADN R10 1
  LOADK R11 K16 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K4 ["AnchorPoint"]
  GETIMPORT R9 K12 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADK R12 K16 [0.5]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K6 ["Position"]
  DUPTABLE R9 K40 [{"Icon"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K43 [{"Rotation", "Style", "ImageColor3"}]
  GETTABLEKS R14 R0 K44 ["isTableHidden"]
  JUMPIFNOT R14 [+2]
  LOADN R13 180
  JUMP [+1]
  LOADN R13 0
  SETTABLEKS R13 R12 K41 ["Rotation"]
  LOADK R13 K45 ["Collapse"]
  SETTABLEKS R13 R12 K8 ["Style"]
  GETTABLEKS R13 R0 K46 ["ButtonColor"]
  SETTABLEKS R13 R12 K42 ["ImageColor3"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K39 ["Icon"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K24 ["Toggle"]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETTABLEKS R3 R1 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["Image"]
  GETTABLEKS R5 R3 K11 ["Pane"]
  GETTABLEKS R6 R3 K12 ["TextLabel"]
  GETTABLEKS R8 R1 K13 ["ContextServices"]
  GETTABLEKS R7 R8 K14 ["Localization"]
  DUPCLOSURE R8 K15 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  RETURN R8 1
