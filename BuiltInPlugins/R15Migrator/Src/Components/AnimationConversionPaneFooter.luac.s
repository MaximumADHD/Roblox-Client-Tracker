PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Size"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K10 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
  SETTABLEKS R2 R7 K1 ["Size"]
  SETTABLEKS R4 R7 K3 ["LayoutOrder"]
  GETIMPORT R8 K14 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K5 ["Layout"]
  GETIMPORT R8 K16 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R8 R7 K6 ["HorizontalAlignment"]
  GETIMPORT R8 K18 [Enum.VerticalAlignment.Bottom]
  SETTABLEKS R8 R7 K7 ["VerticalAlignment"]
  GETTABLEKS R8 R3 K8 ["Spacing"]
  SETTABLEKS R8 R7 K8 ["Spacing"]
  GETTABLEKS R8 R3 K9 ["Padding"]
  SETTABLEKS R8 R7 K9 ["Padding"]
  DUPTABLE R8 K20 [{"Buttons"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 2
  CALL R9 1 1
  SETTABLEKS R9 R8 K19 ["Buttons"]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R3 R1 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["Pane"]
  GETTABLEKS R5 R1 K11 ["ContextServices"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Components"]
  GETTABLEKS R7 R8 K14 ["ReplaceRevertButtons"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K15 ["PureComponent"]
  LOADK R9 K16 ["AnimationConversionPaneFooter"]
  NAMECALL R7 R7 K17 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K18 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K19 ["render"]
  GETTABLEKS R8 R5 K20 ["withContext"]
  DUPTABLE R9 K22 [{"Stylizer"}]
  GETTABLEKS R10 R5 K21 ["Stylizer"]
  SETTABLEKS R10 R9 K21 ["Stylizer"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1
