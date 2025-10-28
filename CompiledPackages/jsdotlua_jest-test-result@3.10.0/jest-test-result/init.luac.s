MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  GETIMPORT R2 K1 [require]
  GETIMPORT R3 K3 [script]
  LOADK R5 K4 ["formatTestResults"]
  NAMECALL R3 R3 K5 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETTABLEKS R1 R2 K6 ["default"]
  SETTABLEKS R1 R0 K4 ["formatTestResults"]
  GETIMPORT R1 K1 [require]
  GETIMPORT R2 K3 [script]
  LOADK R4 K7 ["helpers"]
  NAMECALL R2 R2 K5 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETTABLEKS R2 R1 K8 ["addResult"]
  SETTABLEKS R2 R0 K8 ["addResult"]
  GETTABLEKS R2 R1 K9 ["buildFailureTestResult"]
  SETTABLEKS R2 R0 K9 ["buildFailureTestResult"]
  GETTABLEKS R2 R1 K10 ["createEmptyTestResult"]
  SETTABLEKS R2 R0 K10 ["createEmptyTestResult"]
  GETTABLEKS R2 R1 K11 ["makeEmptyAggregatedTestResult"]
  SETTABLEKS R2 R0 K11 ["makeEmptyAggregatedTestResult"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R3 K3 [script]
  LOADK R5 K12 ["types"]
  NAMECALL R3 R3 K5 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  RETURN R0 1
