MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K4 [script]
  GETTABLEKS R3 R4 K5 ["Parent"]
  GETTABLEKS R2 R3 K6 ["forks"]
  GETTABLEKS R1 R2 K2 ["SchedulerHostConfig.default"]
  CALL R0 1 -1
  RETURN R0 -1
