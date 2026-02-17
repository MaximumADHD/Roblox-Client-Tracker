MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R1 K5 ["JestReporters"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K6 ["VerboseReporter"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K7 ["JestReporterAdapter"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K8 ["createReporter"]
  GETTABLEKS R5 R2 K9 ["new"]
  DUPTABLE R6 K12 [{"rootDir", "useStderr"}]
  LOADK R7 K13 [""]
  SETTABLEKS R7 R6 K10 ["rootDir"]
  LOADB R7 0
  SETTABLEKS R7 R6 K11 ["useStderr"]
  CALL R5 1 -1
  CALL R4 -1 -1
  RETURN R4 -1
