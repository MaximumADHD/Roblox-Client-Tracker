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
  DUPTABLE R3 K16 [{"Border", "ScrollHeaderPadding", "RowHeight", "HeaderCellPadding", "HeaderHeight", "FooterHeight", "IconColor"}]
  GETTABLEKS R4 R2 K9 ["Border"]
  SETTABLEKS R4 R3 K9 ["Border"]
  DUPTABLE R4 K18 [{"Right"}]
  LOADN R5 8
  SETTABLEKS R5 R4 K17 ["Right"]
  SETTABLEKS R4 R3 K10 ["ScrollHeaderPadding"]
  LOADN R4 24
  SETTABLEKS R4 R3 K11 ["RowHeight"]
  LOADN R4 5
  SETTABLEKS R4 R3 K12 ["HeaderCellPadding"]
  LOADN R4 32
  SETTABLEKS R4 R3 K13 ["HeaderHeight"]
  LOADN R4 36
  SETTABLEKS R4 R3 K14 ["FooterHeight"]
  GETTABLEKS R4 R2 K19 ["Icon"]
  SETTABLEKS R4 R3 K15 ["IconColor"]
  RETURN R3 1
