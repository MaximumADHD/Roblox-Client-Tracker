PROTO_0:
  GETUPVAL R1 0
  LOADK R3 K0 ["Notice"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K8 [{"AnchorPoint", "Position", "AutomaticSize", "BackgroundColor", "Padding"}]
  GETIMPORT R5 K11 [Vector2.new]
  LOADK R6 K12 [0.5]
  LOADK R7 K12 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["AnchorPoint"]
  GETIMPORT R5 K15 [UDim2.fromScale]
  LOADK R6 K12 [0.5]
  LOADK R7 K12 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Position"]
  GETIMPORT R5 K18 [Enum.AutomaticSize.XY]
  SETTABLEKS R5 R4 K5 ["AutomaticSize"]
  GETTABLEKS R5 R1 K6 ["BackgroundColor"]
  SETTABLEKS R5 R4 K6 ["BackgroundColor"]
  GETTABLEKS R5 R1 K7 ["Padding"]
  SETTABLEKS R5 R4 K7 ["Padding"]
  DUPTABLE R5 K21 [{"UICorner", "NoticeText"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K19 ["UICorner"]
  DUPTABLE R8 K23 [{"CornerRadius"}]
  GETTABLEKS R9 R1 K22 ["CornerRadius"]
  SETTABLEKS R9 R8 K22 ["CornerRadius"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K19 ["UICorner"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K28 [{"AutomaticSize", "Text", "TextColor", "TextSize", "TextWrapped"}]
  GETIMPORT R9 K18 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K5 ["AutomaticSize"]
  GETTABLEKS R9 R0 K24 ["Text"]
  SETTABLEKS R9 R8 K24 ["Text"]
  GETTABLEKS R9 R1 K25 ["TextColor"]
  SETTABLEKS R9 R8 K25 ["TextColor"]
  GETTABLEKS R9 R1 K26 ["TextSize"]
  SETTABLEKS R9 R8 K26 ["TextSize"]
  LOADB R9 1
  SETTABLEKS R9 R8 K27 ["TextWrapped"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K20 ["NoticeText"]
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Theme"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K12 ["UI"]
  GETTABLEKS R5 R4 K13 ["TextLabel"]
  GETTABLEKS R6 R4 K14 ["Pane"]
  GETTABLEKS R8 R1 K15 ["ContextServices"]
  GETTABLEKS R7 R8 K16 ["Stylizer"]
  DUPCLOSURE R8 K17 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R8 1
