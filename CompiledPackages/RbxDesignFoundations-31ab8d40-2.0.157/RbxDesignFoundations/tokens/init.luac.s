MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"FoundationDark", "FoundationLight", "UIBloxDark", "UIBloxLight"}]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K0 ["FoundationDark"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["FoundationDark"]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K1 ["FoundationLight"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["FoundationLight"]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K2 ["UIBloxDark"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["UIBloxDark"]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K3 ["UIBloxLight"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["UIBloxLight"]
  RETURN R0 1
