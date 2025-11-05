MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["bridge"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["types"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["backend"]
  CALL R2 1 1
  DUPTABLE R3 K12 [{"constants", "backend", "bridge", "devtools", "hydration", "hook", "utils"}]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K7 ["constants"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K7 ["constants"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K6 ["backend"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K6 ["backend"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["bridge"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K4 ["bridge"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K8 ["devtools"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K8 ["devtools"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K9 ["hydration"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K9 ["hydration"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K10 ["hook"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["hook"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K11 ["utils"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["utils"]
  RETURN R3 1
