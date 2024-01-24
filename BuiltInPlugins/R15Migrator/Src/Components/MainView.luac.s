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
  DUPTABLE R6 K18 [{"MainTabs", "Footer"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K20 [{"LayoutOrder"}]
  NAMECALL R10 R2 K21 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K19 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K16 ["MainTabs"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K23 [{"OnResetPlugin", "LayoutOrder"}]
  GETTABLEKS R10 R1 K22 ["OnResetPlugin"]
  SETTABLEKS R10 R9 K22 ["OnResetPlugin"]
  NAMECALL R10 R2 K21 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K19 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K17 ["Footer"]
  CALL R3 3 -1
  RETURN R3 -1

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
  GETTABLEKS R5 R1 K10 ["Util"]
  GETTABLEKS R6 R5 K11 ["LayoutOrderIterator"]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Components"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R7 K14 ["MainTabsView"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R7 K15 ["MainFooter"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K16 ["PureComponent"]
  LOADK R12 K17 ["MainView"]
  NAMECALL R10 R10 K18 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K19 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K20 ["render"]
  RETURN R10 1
