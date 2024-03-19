PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K7 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "BackgroundTransparency"}]
  GETIMPORT R6 K11 [Enum.FillDirection.Vertical]
  SETTABLEKS R6 R5 K3 ["Layout"]
  GETIMPORT R6 K13 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R6 R5 K4 ["HorizontalAlignment"]
  GETIMPORT R6 K15 [Enum.VerticalAlignment.Top]
  SETTABLEKS R6 R5 K5 ["VerticalAlignment"]
  LOADN R6 1
  SETTABLEKS R6 R5 K6 ["BackgroundTransparency"]
  DUPTABLE R6 K17 [{"MainTabs"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K20 [{"OnResetPlugin", "LayoutOrder"}]
  GETTABLEKS R10 R1 K18 ["OnResetPlugin"]
  SETTABLEKS R10 R9 K18 ["OnResetPlugin"]
  NAMECALL R10 R2 K21 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K19 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K16 ["MainTabs"]
  CALL R3 3 -1
  RETURN R3 -1

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
  GETTABLEKS R5 R1 K11 ["Util"]
  GETTABLEKS R6 R5 K12 ["LayoutOrderIterator"]
  GETTABLEKS R8 R0 K13 ["Src"]
  GETTABLEKS R7 R8 K14 ["Components"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K15 ["MainTabsView"]
  CALL R8 1 1
  GETTABLEKS R9 R2 K16 ["PureComponent"]
  LOADK R11 K17 ["MainView"]
  NAMECALL R9 R9 K18 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K19 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K20 ["render"]
  RETURN R9 1
