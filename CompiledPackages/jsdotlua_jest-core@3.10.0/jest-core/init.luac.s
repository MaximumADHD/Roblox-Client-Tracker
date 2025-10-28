MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  GETIMPORT R2 K1 [require]
  GETIMPORT R3 K3 [script]
  LOADK R5 K4 ["SearchSource"]
  NAMECALL R3 R3 K5 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETTABLEKS R1 R2 K6 ["default"]
  SETTABLEKS R1 R0 K4 ["SearchSource"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R3 K3 [script]
  LOADK R5 K7 ["TestScheduler"]
  NAMECALL R3 R3 K5 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETTABLEKS R1 R2 K8 ["createTestScheduler"]
  SETTABLEKS R1 R0 K8 ["createTestScheduler"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R3 K3 [script]
  LOADK R5 K9 ["TestWatcher"]
  NAMECALL R3 R3 K5 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETTABLEKS R1 R2 K6 ["default"]
  SETTABLEKS R1 R0 K9 ["TestWatcher"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R3 K3 [script]
  LOADK R5 K10 ["cli"]
  NAMECALL R3 R3 K5 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETTABLEKS R1 R2 K11 ["runCLI"]
  SETTABLEKS R1 R0 K11 ["runCLI"]
  RETURN R0 1
