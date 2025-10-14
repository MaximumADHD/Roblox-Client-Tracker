MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["SearchSource"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K5 ["default"]
  SETTABLEKS R1 R0 K4 ["SearchSource"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["TestScheduler"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K7 ["createTestScheduler"]
  SETTABLEKS R1 R0 K7 ["createTestScheduler"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K8 ["TestWatcher"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K5 ["default"]
  SETTABLEKS R1 R0 K8 ["TestWatcher"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K9 ["cli"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K10 ["runCLI"]
  SETTABLEKS R1 R0 K10 ["runCLI"]
  RETURN R0 1
