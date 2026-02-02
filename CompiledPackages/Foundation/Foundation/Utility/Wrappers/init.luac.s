MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"Connection", "Instance", "Signal", "Services"}]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K0 ["Connection"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["Connection"]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K1 ["Instance"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["Instance"]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K2 ["Signal"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["Signal"]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K3 ["Services"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["Services"]
  RETURN R0 1
