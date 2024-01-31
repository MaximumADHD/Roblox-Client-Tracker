PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Size"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R5 R1 K4 ["Localization"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K11 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
  SETTABLEKS R2 R8 K1 ["Size"]
  SETTABLEKS R4 R8 K3 ["LayoutOrder"]
  GETIMPORT R9 K15 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K6 ["Layout"]
  GETIMPORT R9 K17 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R9 R8 K7 ["HorizontalAlignment"]
  GETIMPORT R9 K19 [Enum.VerticalAlignment.Bottom]
  SETTABLEKS R9 R8 K8 ["VerticalAlignment"]
  GETTABLEKS R9 R3 K9 ["Spacing"]
  SETTABLEKS R9 R8 K9 ["Spacing"]
  GETTABLEKS R9 R3 K10 ["Padding"]
  SETTABLEKS R9 R8 K10 ["Padding"]
  DUPTABLE R9 K21 [{"Buttons"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 2
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["Buttons"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["UI"]
  GETTABLEKS R4 R3 K9 ["Pane"]
  GETTABLEKS R5 R3 K10 ["Separator"]
  GETTABLEKS R6 R3 K11 ["TextLabel"]
  GETTABLEKS R8 R1 K12 ["Util"]
  GETTABLEKS R7 R8 K13 ["LayoutOrderIterator"]
  GETTABLEKS R8 R1 K14 ["ContextServices"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K16 ["Components"]
  GETTABLEKS R10 R11 K17 ["ReplaceRevertButtons"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K18 ["PureComponent"]
  LOADK R12 K19 ["AnimationConversionPaneFooter"]
  NAMECALL R10 R10 K20 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K21 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K22 ["render"]
  GETTABLEKS R11 R8 K23 ["withContext"]
  DUPTABLE R12 K26 [{"Stylizer", "Localization"}]
  GETTABLEKS R13 R8 K24 ["Stylizer"]
  SETTABLEKS R13 R12 K24 ["Stylizer"]
  GETTABLEKS R13 R8 K25 ["Localization"]
  SETTABLEKS R13 R12 K25 ["Localization"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
