PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["LayoutOrder"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["Size"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K8 [{"Size", "Style", "LayoutOrder", "Text", "Expanded"}]
  SETTABLEKS R4 R7 K3 ["Size"]
  LOADK R8 K9 ["Section"]
  SETTABLEKS R8 R7 K5 ["Style"]
  SETTABLEKS R2 R7 K1 ["LayoutOrder"]
  LOADK R8 K10 ["Replacement Rules"]
  SETTABLEKS R8 R7 K6 ["Text"]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["Expanded"]
  DUPTABLE R8 K12 [{"ReplaceOptionsPane"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 2
  CALL R9 1 1
  SETTABLEKS R9 R8 K11 ["ReplaceOptionsPane"]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R1 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["SimpleExpandablePane"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Components"]
  GETTABLEKS R7 R8 K13 ["ReplaceOptionsPane"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K14 ["PureComponent"]
  LOADK R9 K15 ["ReplacementRulesExpandablePane"]
  NAMECALL R7 R7 K16 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K17 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K18 ["render"]
  GETTABLEKS R8 R3 K19 ["withContext"]
  DUPTABLE R9 K21 [{"Stylizer"}]
  GETTABLEKS R10 R3 K20 ["Stylizer"]
  SETTABLEKS R10 R9 K20 ["Stylizer"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1
