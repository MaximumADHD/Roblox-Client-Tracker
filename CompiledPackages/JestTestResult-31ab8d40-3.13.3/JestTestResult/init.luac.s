MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["formatTestResults"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K5 ["default"]
  SETTABLEKS R1 R0 K4 ["formatTestResults"]
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K6 ["helpers"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["addResult"]
  SETTABLEKS R2 R0 K7 ["addResult"]
  GETTABLEKS R2 R1 K8 ["buildFailureTestResult"]
  SETTABLEKS R2 R0 K8 ["buildFailureTestResult"]
  GETTABLEKS R2 R1 K9 ["createEmptyTestResult"]
  SETTABLEKS R2 R0 K9 ["createEmptyTestResult"]
  GETTABLEKS R2 R1 K10 ["makeEmptyAggregatedTestResult"]
  SETTABLEKS R2 R0 K10 ["makeEmptyAggregatedTestResult"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K11 ["types"]
  CALL R2 1 1
  RETURN R0 1
