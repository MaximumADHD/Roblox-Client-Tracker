MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K6 [{"backend", "bridge", "devtools", "hydration", "hook", "utils"}]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K0 ["backend"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["backend"]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K1 ["bridge"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["bridge"]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K2 ["devtools"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["devtools"]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K3 ["hydration"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["hydration"]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K4 ["hook"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["hook"]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K5 ["utils"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["utils"]
  RETURN R0 1
