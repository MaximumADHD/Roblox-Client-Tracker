MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  GETIMPORT R2 K1 [require]
  GETIMPORT R3 K3 [script]
  LOADK R5 K4 ["getResultHeader"]
  NAMECALL R3 R3 K5 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETTABLEKS R1 R2 K6 ["default"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R4 K3 [script]
  LOADK R6 K7 ["getSnapshotStatus"]
  NAMECALL R4 R4 K5 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETTABLEKS R2 R3 K6 ["default"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R5 K3 [script]
  LOADK R7 K8 ["getSnapshotSummary"]
  NAMECALL R5 R5 K5 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETTABLEKS R3 R4 K6 ["default"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R5 K3 [script]
  LOADK R7 K9 ["utils"]
  NAMECALL R5 R5 K5 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETTABLEKS R5 R4 K10 ["formatTestPath"]
  GETTABLEKS R6 R4 K11 ["getSummary"]
  GETTABLEKS R7 R4 K12 ["printDisplayName"]
  GETTABLEKS R8 R4 K13 ["relativePath"]
  GETTABLEKS R9 R4 K14 ["trimAndFormatPath"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R11 K3 [script]
  LOADK R13 K15 ["BaseReporter"]
  NAMECALL R11 R11 K5 ["WaitForChild"]
  CALL R11 2 -1
  CALL R10 -1 1
  GETTABLEKS R11 R10 K6 ["default"]
  SETTABLEKS R11 R0 K15 ["BaseReporter"]
  GETIMPORT R11 K1 [require]
  GETIMPORT R12 K3 [script]
  LOADK R14 K16 ["DefaultReporter"]
  NAMECALL R12 R12 K5 ["WaitForChild"]
  CALL R12 2 -1
  CALL R11 -1 1
  GETTABLEKS R12 R11 K6 ["default"]
  SETTABLEKS R12 R0 K16 ["DefaultReporter"]
  GETIMPORT R12 K1 [require]
  GETIMPORT R13 K3 [script]
  LOADK R15 K17 ["SummaryReporter"]
  NAMECALL R13 R13 K5 ["WaitForChild"]
  CALL R13 2 -1
  CALL R12 -1 1
  GETTABLEKS R13 R12 K6 ["default"]
  SETTABLEKS R13 R0 K17 ["SummaryReporter"]
  GETIMPORT R13 K1 [require]
  GETIMPORT R14 K3 [script]
  LOADK R16 K18 ["VerboseReporter"]
  NAMECALL R14 R14 K5 ["WaitForChild"]
  CALL R14 2 -1
  CALL R13 -1 1
  GETTABLEKS R14 R13 K6 ["default"]
  SETTABLEKS R14 R0 K18 ["VerboseReporter"]
  GETIMPORT R14 K1 [require]
  GETIMPORT R15 K3 [script]
  LOADK R17 K19 ["types"]
  NAMECALL R15 R15 K5 ["WaitForChild"]
  CALL R15 2 -1
  CALL R14 -1 1
  DUPTABLE R15 K20 [{"formatTestPath", "getResultHeader", "getSnapshotStatus", "getSnapshotSummary", "getSummary", "printDisplayName", "relativePath", "trimAndFormatPath"}]
  SETTABLEKS R5 R15 K10 ["formatTestPath"]
  SETTABLEKS R1 R15 K4 ["getResultHeader"]
  SETTABLEKS R2 R15 K7 ["getSnapshotStatus"]
  SETTABLEKS R3 R15 K8 ["getSnapshotSummary"]
  SETTABLEKS R6 R15 K11 ["getSummary"]
  SETTABLEKS R7 R15 K12 ["printDisplayName"]
  SETTABLEKS R8 R15 K13 ["relativePath"]
  SETTABLEKS R9 R15 K14 ["trimAndFormatPath"]
  SETTABLEKS R15 R0 K9 ["utils"]
  RETURN R0 1
