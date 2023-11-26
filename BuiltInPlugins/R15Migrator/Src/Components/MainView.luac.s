PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K6 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "BackgroundTransparency"}]
  GETIMPORT R5 K10 [Enum.FillDirection.Vertical]
  SETTABLEKS R5 R4 K2 ["Layout"]
  GETIMPORT R5 K12 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R5 R4 K3 ["HorizontalAlignment"]
  GETIMPORT R5 K14 [Enum.VerticalAlignment.Top]
  SETTABLEKS R5 R4 K4 ["VerticalAlignment"]
  LOADN R5 1
  SETTABLEKS R5 R4 K5 ["BackgroundTransparency"]
  DUPTABLE R5 K17 [{"MainTabs", "Footer"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K19 [{"LayoutOrder"}]
  NAMECALL R9 R1 K20 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K18 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K15 ["MainTabs"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K19 [{"LayoutOrder"}]
  NAMECALL R9 R1 K20 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K18 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K16 ["Footer"]
  CALL R2 3 -1
  RETURN R2 -1

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
