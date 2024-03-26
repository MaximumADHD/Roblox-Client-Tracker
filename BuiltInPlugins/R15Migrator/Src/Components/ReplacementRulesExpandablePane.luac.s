PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["LayoutOrder"]
  GETTABLEKS R3 R1 K2 ["Size"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K7 [{"Size", "Style", "LayoutOrder", "Text", "Expanded"}]
  SETTABLEKS R3 R6 K2 ["Size"]
  LOADK R7 K8 ["Section"]
  SETTABLEKS R7 R6 K4 ["Style"]
  SETTABLEKS R2 R6 K1 ["LayoutOrder"]
  LOADK R7 K9 ["Replacement Rules"]
  SETTABLEKS R7 R6 K5 ["Text"]
  LOADB R7 1
  SETTABLEKS R7 R6 K6 ["Expanded"]
  DUPTABLE R7 K11 [{"ReplaceOptionsPane"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 2
  CALL R8 1 1
  SETTABLEKS R8 R7 K10 ["ReplaceOptionsPane"]
  CALL R4 3 -1
  RETURN R4 -1

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
  GETTABLEKS R4 R3 K10 ["SimpleExpandablePane"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Components"]
  GETTABLEKS R6 R7 K13 ["ReplaceOptionsPane"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K14 ["PureComponent"]
  LOADK R8 K15 ["ReplacementRulesExpandablePane"]
  NAMECALL R6 R6 K16 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K18 ["render"]
  RETURN R6 1
