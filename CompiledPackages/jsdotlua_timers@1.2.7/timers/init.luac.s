MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K5 ["collections"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETTABLEKS R0 R1 K7 ["Object"]
  GETIMPORT R1 K1 [require]
  GETIMPORT R2 K3 [script]
  LOADK R4 K8 ["makeTimerImpl"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R3 K3 [script]
  LOADK R5 K9 ["makeIntervalImpl"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETTABLEKS R3 R0 K10 ["assign"]
  NEWTABLE R4 0 0
  MOVE R5 R1
  GETIMPORT R6 K13 [task.delay]
  CALL R5 1 1
  MOVE R6 R2
  GETIMPORT R7 K13 [task.delay]
  CALL R6 1 -1
  CALL R3 -1 -1
  RETURN R3 -1
