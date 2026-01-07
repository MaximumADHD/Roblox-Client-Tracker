MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"Reporters"}]
  DUPTABLE R1 K7 [{"JestReporterAdapter", "JestDefaultReporter", "JestVerboseReporter", "JestSummaryReporter", "pipe"}]
  GETIMPORT R2 K9 [require]
  GETIMPORT R5 K11 [script]
  GETTABLEKS R4 R5 K0 ["Reporters"]
  GETTABLEKS R3 R4 K2 ["JestReporterAdapter"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["JestReporterAdapter"]
  GETIMPORT R2 K9 [require]
  GETIMPORT R5 K11 [script]
  GETTABLEKS R4 R5 K0 ["Reporters"]
  GETTABLEKS R3 R4 K3 ["JestDefaultReporter"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["JestDefaultReporter"]
  GETIMPORT R2 K9 [require]
  GETIMPORT R5 K11 [script]
  GETTABLEKS R4 R5 K0 ["Reporters"]
  GETTABLEKS R3 R4 K4 ["JestVerboseReporter"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K4 ["JestVerboseReporter"]
  GETIMPORT R2 K9 [require]
  GETIMPORT R5 K11 [script]
  GETTABLEKS R4 R5 K0 ["Reporters"]
  GETTABLEKS R3 R4 K5 ["JestSummaryReporter"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K5 ["JestSummaryReporter"]
  GETIMPORT R2 K9 [require]
  GETIMPORT R5 K11 [script]
  GETTABLEKS R4 R5 K0 ["Reporters"]
  GETTABLEKS R3 R4 K12 ["pipeReporters"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["pipe"]
  SETTABLEKS R1 R0 K0 ["Reporters"]
  RETURN R0 1
