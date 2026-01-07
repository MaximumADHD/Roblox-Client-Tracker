MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K5 ["jest-core"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETTABLEKS R2 R1 K7 ["SearchSource"]
  SETTABLEKS R2 R0 K7 ["SearchSource"]
  GETTABLEKS R2 R1 K8 ["TestWatcher"]
  SETTABLEKS R2 R0 K8 ["TestWatcher"]
  GETTABLEKS R2 R1 K9 ["createTestScheduler"]
  SETTABLEKS R2 R0 K9 ["createTestScheduler"]
  GETTABLEKS R2 R1 K10 ["runCLI"]
  SETTABLEKS R2 R0 K10 ["runCLI"]
  RETURN R0 1
