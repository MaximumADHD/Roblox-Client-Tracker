MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Dialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleRule"]
  NEWTABLE R4 0 1
  MOVE R5 R3
  LOADK R6 K11 [".component-dialog-view"]
  DUPTABLE R7 K13 [{"Size"}]
  LOADK R8 K14 ["$dialogWidth"]
  SETTABLEKS R8 R7 K12 ["Size"]
  NEWTABLE R8 0 1
  MOVE R9 R3
  LOADK R10 K15 ["::UISizeConstraint"]
  DUPTABLE R11 K17 [{"MinSize"}]
  LOADK R12 K18 ["$dialogMinHeight"]
  SETTABLEKS R12 R11 K16 ["MinSize"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  SETLIST R4 R5 -1 [1]
  DUPTABLE R5 K21 [{"dialogWidth", "dialogMinHeight"}]
  GETIMPORT R6 K24 [UDim2.fromOffset]
  LOADN R7 94
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K19 ["dialogWidth"]
  GETIMPORT R6 K27 [Vector2.new]
  LOADN R7 0
  LOADN R8 78
  CALL R6 2 1
  SETTABLEKS R6 R5 K20 ["dialogMinHeight"]
  MOVE R6 R2
  LOADK R7 K2 ["Dialog"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
