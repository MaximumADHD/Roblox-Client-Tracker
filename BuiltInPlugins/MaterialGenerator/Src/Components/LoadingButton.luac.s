PROTO_0:
  GETUPVAL R1 0
  LOADK R3 K0 ["LoadingButton"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K2 ["isLoading"]
  GETTABLEKS R4 R0 K3 ["isDisabled"]
  OR R3 R4 R2
  JUMPIFNOT R2 [+2]
  LOADK R4 K4 [""]
  JUMP [+2]
  GETTABLEKS R4 R0 K5 ["Text"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K15 [{"AnchorPoint", "AutomaticSize", "LayoutOrder", "OnClick", "Position", "Size", "Style", "StyleModifier", "Text"}]
  GETTABLEKS R8 R0 K7 ["AnchorPoint"]
  SETTABLEKS R8 R7 K7 ["AnchorPoint"]
  GETTABLEKS R8 R0 K8 ["AutomaticSize"]
  SETTABLEKS R8 R7 K8 ["AutomaticSize"]
  GETTABLEKS R8 R0 K9 ["LayoutOrder"]
  SETTABLEKS R8 R7 K9 ["LayoutOrder"]
  GETTABLEKS R8 R0 K16 ["onClick"]
  SETTABLEKS R8 R7 K10 ["OnClick"]
  GETTABLEKS R8 R0 K11 ["Position"]
  SETTABLEKS R8 R7 K11 ["Position"]
  GETTABLEKS R8 R0 K12 ["Size"]
  SETTABLEKS R8 R7 K12 ["Size"]
  LOADK R8 K17 ["RoundPrimary"]
  SETTABLEKS R8 R7 K13 ["Style"]
  JUMPIFNOT R3 [+4]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K18 ["Disabled"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K14 ["StyleModifier"]
  JUMPIFNOT R2 [+2]
  LOADK R8 K4 [""]
  JUMP [+2]
  GETTABLEKS R8 R0 K5 ["Text"]
  SETTABLEKS R8 R7 K5 ["Text"]
  DUPTABLE R8 K20 [{"LoadingIndicator"}]
  JUMPIFNOT R2 [+25]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K6 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K21 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R12 K24 [Vector2.new]
  LOADK R13 K25 [0.5]
  LOADK R14 K25 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K7 ["AnchorPoint"]
  GETIMPORT R12 K28 [UDim2.fromScale]
  LOADK R13 K25 [0.5]
  LOADK R14 K25 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K11 ["Position"]
  GETTABLEKS R12 R1 K29 ["LoadingIndicatorSize"]
  SETTABLEKS R12 R11 K12 ["Size"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K19 ["LoadingIndicator"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialGenerator"]
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
  GETTABLEKS R4 R3 K10 ["Stylizer"]
  GETTABLEKS R5 R1 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Button"]
  GETTABLEKS R7 R5 K13 ["LoadingIndicator"]
  GETTABLEKS R9 R1 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["StyleModifier"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K16 ["Src"]
  GETTABLEKS R11 R12 K17 ["Resources"]
  GETTABLEKS R10 R11 K18 ["Theme"]
  CALL R9 1 1
  DUPCLOSURE R10 K19 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  RETURN R10 1
