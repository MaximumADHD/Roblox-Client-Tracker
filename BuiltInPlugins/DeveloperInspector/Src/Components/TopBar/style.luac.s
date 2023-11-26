MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Style"]
  GETTABLEKS R2 R3 K8 ["StyleKey"]
  DUPTABLE R3 K16 [{"Padding", "HeaderHeight", "ButtonSize", "IconSize", "HeaderBorderColor", "SelectedIconColor", "IconColor"}]
  LOADN R4 2
  SETTABLEKS R4 R3 K9 ["Padding"]
  LOADN R4 33
  SETTABLEKS R4 R3 K10 ["HeaderHeight"]
  LOADN R4 32
  SETTABLEKS R4 R3 K11 ["ButtonSize"]
  LOADN R4 24
  SETTABLEKS R4 R3 K12 ["IconSize"]
  GETTABLEKS R4 R2 K17 ["Border"]
  SETTABLEKS R4 R3 K13 ["HeaderBorderColor"]
  GETTABLEKS R4 R2 K18 ["DialogMainButton"]
  SETTABLEKS R4 R3 K14 ["SelectedIconColor"]
  GETTABLEKS R4 R2 K19 ["MainText"]
  SETTABLEKS R4 R3 K15 ["IconColor"]
  RETURN R3 1
