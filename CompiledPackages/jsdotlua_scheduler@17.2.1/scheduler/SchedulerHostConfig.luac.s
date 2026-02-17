MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["forks"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 1
  LOADK R3 K7 ["SchedulerHostConfig.default"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 -1
  RETURN R0 -1
