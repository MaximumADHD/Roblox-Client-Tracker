MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["useFocusNavigationScrolling"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["useVirtualizedList"]
  CALL R1 1 1
  DUPTABLE R2 K6 [{"useFocusNavigationScrolling", "useVirtualizedList"}]
  SETTABLEKS R0 R2 K4 ["useFocusNavigationScrolling"]
  SETTABLEKS R1 R2 K5 ["useVirtualizedList"]
  RETURN R2 1
