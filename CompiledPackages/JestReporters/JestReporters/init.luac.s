MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["getResultHeader"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K5 ["default"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["utils"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K7 ["formatTestPath"]
  GETTABLEKS R4 R2 K8 ["getSummary"]
  GETTABLEKS R5 R2 K9 ["printDisplayName"]
  GETTABLEKS R6 R2 K10 ["relativePath"]
  GETTABLEKS R7 R2 K11 ["trimAndFormatPath"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R10 K3 [script]
  GETTABLEKS R9 R10 K12 ["BaseReporter"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K5 ["default"]
  SETTABLEKS R9 R0 K12 ["BaseReporter"]
  GETIMPORT R9 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K13 ["DefaultReporter"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K5 ["default"]
  SETTABLEKS R10 R0 K13 ["DefaultReporter"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K14 ["SummaryReporter"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K5 ["default"]
  SETTABLEKS R11 R0 K14 ["SummaryReporter"]
  GETIMPORT R11 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K15 ["VerboseReporter"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K5 ["default"]
  SETTABLEKS R12 R0 K15 ["VerboseReporter"]
  GETIMPORT R12 K1 [require]
  GETIMPORT R14 K3 [script]
  GETTABLEKS R13 R14 K16 ["types"]
  CALL R12 1 1
  DUPTABLE R13 K17 [{"formatTestPath", "getResultHeader", "getSummary", "printDisplayName", "relativePath", "trimAndFormatPath"}]
  SETTABLEKS R3 R13 K7 ["formatTestPath"]
  SETTABLEKS R1 R13 K4 ["getResultHeader"]
  SETTABLEKS R4 R13 K8 ["getSummary"]
  SETTABLEKS R5 R13 K9 ["printDisplayName"]
  SETTABLEKS R6 R13 K10 ["relativePath"]
  SETTABLEKS R7 R13 K11 ["trimAndFormatPath"]
  SETTABLEKS R13 R0 K6 ["utils"]
  RETURN R0 1
