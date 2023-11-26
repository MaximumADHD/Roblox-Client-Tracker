PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Stylizer"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  LOADK R3 K3 ["Frame"]
  DUPTABLE R4 K6 [{"Size", "BackgroundColor3"}]
  GETIMPORT R5 K9 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K4 ["Size"]
  GETTABLEKS R5 R1 K10 ["backgroundColor"]
  SETTABLEKS R5 R4 K5 ["BackgroundColor3"]
  DUPTABLE R5 K12 [{"EditorController"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K13 [{"Size"}]
  GETIMPORT R9 K9 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K4 ["Size"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["EditorController"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  LOADK R2 K3 ["AnimationClipEditor"]
  NAMECALL R0 R0 K4 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K6 [require]
  GETTABLEKS R3 R0 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["ContextServices"]
  GETTABLEKS R4 R3 K11 ["withContext"]
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Components"]
  GETTABLEKS R6 R7 K14 ["EditorController"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K15 ["PureComponent"]
  LOADK R8 K3 ["AnimationClipEditor"]
  NAMECALL R6 R6 K16 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K18 ["render"]
  MOVE R7 R4
  DUPTABLE R8 K23 [{"Localization", "Plugin", "Stylizer", "Analytics"}]
  GETTABLEKS R9 R3 K19 ["Localization"]
  SETTABLEKS R9 R8 K19 ["Localization"]
  GETTABLEKS R9 R3 K20 ["Plugin"]
  SETTABLEKS R9 R8 K20 ["Plugin"]
  GETTABLEKS R9 R3 K21 ["Stylizer"]
  SETTABLEKS R9 R8 K21 ["Stylizer"]
  GETTABLEKS R9 R3 K22 ["Analytics"]
  SETTABLEKS R9 R8 K22 ["Analytics"]
  CALL R7 1 1
  MOVE R8 R6
  CALL R7 1 1
  MOVE R6 R7
  RETURN R6 1
