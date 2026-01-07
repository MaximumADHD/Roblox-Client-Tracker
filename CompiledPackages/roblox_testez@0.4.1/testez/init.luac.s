PROTO_0:
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["getModules"]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["createPlan"]
  MOVE R4 R2
  CALL R3 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["runPlan"]
  MOVE R5 R3
  CALL R4 1 1
  MOVE R5 R1
  MOVE R6 R4
  CALL R5 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Expectation"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["TestBootstrap"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["TestEnum"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K7 ["TestPlan"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K8 ["TestPlanner"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K9 ["TestResults"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K10 ["TestRunner"]
  CALL R6 1 1
  GETIMPORT R7 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K11 ["TestSession"]
  CALL R7 1 1
  GETIMPORT R8 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K12 ["Reporters"]
  GETTABLEKS R9 R10 K13 ["TextReporter"]
  CALL R8 1 1
  GETIMPORT R9 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K12 ["Reporters"]
  GETTABLEKS R10 R11 K14 ["TextReporterQuiet"]
  CALL R9 1 1
  GETIMPORT R10 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K12 ["Reporters"]
  GETTABLEKS R11 R12 K15 ["TeamCityReporter"]
  CALL R10 1 1
  DUPCLOSURE R11 K16 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  DUPTABLE R12 K18 [{"run", "Expectation", "TestBootstrap", "TestEnum", "TestPlan", "TestPlanner", "TestResults", "TestRunner", "TestSession", "Reporters"}]
  SETTABLEKS R11 R12 K17 ["run"]
  SETTABLEKS R0 R12 K4 ["Expectation"]
  SETTABLEKS R1 R12 K5 ["TestBootstrap"]
  SETTABLEKS R2 R12 K6 ["TestEnum"]
  SETTABLEKS R3 R12 K7 ["TestPlan"]
  SETTABLEKS R4 R12 K8 ["TestPlanner"]
  SETTABLEKS R5 R12 K9 ["TestResults"]
  SETTABLEKS R6 R12 K10 ["TestRunner"]
  SETTABLEKS R7 R12 K11 ["TestSession"]
  DUPTABLE R13 K19 [{"TextReporter", "TextReporterQuiet", "TeamCityReporter"}]
  SETTABLEKS R8 R13 K13 ["TextReporter"]
  SETTABLEKS R9 R13 K14 ["TextReporterQuiet"]
  SETTABLEKS R10 R13 K15 ["TeamCityReporter"]
  SETTABLEKS R13 R12 K12 ["Reporters"]
  RETURN R12 1
