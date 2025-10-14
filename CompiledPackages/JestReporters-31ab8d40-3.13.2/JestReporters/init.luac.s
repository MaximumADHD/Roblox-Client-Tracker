MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R2 R1 K2 ["Parent"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R2 K5 ["JestTestResult"]
  CALL R3 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K6 ["getResultHeader"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K7 ["default"]
  GETIMPORT R6 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K8 ["getSnapshotStatus"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K7 ["default"]
  GETIMPORT R7 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K9 ["getSnapshotSummary"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K7 ["default"]
  GETIMPORT R7 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K10 ["utils"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K11 ["formatTestPath"]
  GETTABLEKS R9 R7 K12 ["getSummary"]
  GETTABLEKS R10 R7 K13 ["printDisplayName"]
  GETTABLEKS R11 R7 K14 ["relativePath"]
  GETTABLEKS R12 R7 K15 ["trimAndFormatPath"]
  GETIMPORT R13 K4 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K16 ["BaseReporter"]
  CALL R13 1 1
  GETTABLEKS R14 R13 K7 ["default"]
  SETTABLEKS R14 R0 K16 ["BaseReporter"]
  GETIMPORT R14 K4 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K17 ["DefaultReporter"]
  CALL R14 1 1
  GETTABLEKS R15 R14 K7 ["default"]
  SETTABLEKS R15 R0 K17 ["DefaultReporter"]
  GETIMPORT R15 K4 [require]
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K18 ["GitHubActionsReporter"]
  CALL R15 1 1
  GETTABLEKS R16 R15 K7 ["default"]
  SETTABLEKS R16 R0 K18 ["GitHubActionsReporter"]
  GETIMPORT R16 K4 [require]
  GETIMPORT R18 K1 [script]
  GETTABLEKS R17 R18 K19 ["SummaryReporter"]
  CALL R16 1 1
  GETTABLEKS R17 R16 K7 ["default"]
  SETTABLEKS R17 R0 K19 ["SummaryReporter"]
  GETIMPORT R17 K4 [require]
  GETIMPORT R19 K1 [script]
  GETTABLEKS R18 R19 K20 ["VerboseReporter"]
  CALL R17 1 1
  GETTABLEKS R18 R17 K7 ["default"]
  SETTABLEKS R18 R0 K20 ["VerboseReporter"]
  GETIMPORT R18 K4 [require]
  GETIMPORT R20 K1 [script]
  GETTABLEKS R19 R20 K21 ["types"]
  CALL R18 1 1
  DUPTABLE R19 K22 [{"formatTestPath", "getResultHeader", "getSnapshotStatus", "getSnapshotSummary", "getSummary", "printDisplayName", "relativePath", "trimAndFormatPath"}]
  SETTABLEKS R8 R19 K11 ["formatTestPath"]
  SETTABLEKS R4 R19 K6 ["getResultHeader"]
  SETTABLEKS R5 R19 K8 ["getSnapshotStatus"]
  SETTABLEKS R6 R19 K9 ["getSnapshotSummary"]
  SETTABLEKS R9 R19 K12 ["getSummary"]
  SETTABLEKS R10 R19 K13 ["printDisplayName"]
  SETTABLEKS R11 R19 K14 ["relativePath"]
  SETTABLEKS R12 R19 K15 ["trimAndFormatPath"]
  SETTABLEKS R19 R0 K10 ["utils"]
  RETURN R0 1
