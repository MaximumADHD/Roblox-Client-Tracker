MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["RobloxPackages"]
  GETTABLEKS R1 R2 K6 ["Signals"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K7 ["createPinnedInstanceStore"]
  CALL R1 1 1
  DUPTABLE R2 K9 [{"get"}]
  GETTABLEKS R3 R0 K10 ["createComputed"]
  MOVE R4 R1
  CALL R3 1 1
  SETTABLEKS R3 R2 K8 ["get"]
  RETURN R2 1
