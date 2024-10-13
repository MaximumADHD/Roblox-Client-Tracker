PROTO_0:
  GETTABLEKS R2 R1 K0 ["assetData"]
  GETTABLEKS R3 R1 K1 ["status"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["List"]
  GETTABLEKS R4 R5 K3 ["join"]
  GETTABLEKS R5 R0 K4 ["subsequentDialogQueue"]
  NEWTABLE R6 0 1
  DUPTABLE R7 K5 [{"assetData", "status"}]
  SETTABLEKS R2 R7 K0 ["assetData"]
  SETTABLEKS R3 R7 K1 ["status"]
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["Dictionary"]
  GETTABLEKS R5 R6 K3 ["join"]
  MOVE R6 R0
  DUPTABLE R7 K7 [{"subsequentDialogQueue"}]
  SETTABLEKS R4 R7 K4 ["subsequentDialogQueue"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["List"]
  GETTABLEKS R2 R3 K1 ["removeValue"]
  GETTABLEKS R3 R0 K2 ["subsequentDialogQueue"]
  GETTABLEKS R5 R0 K2 ["subsequentDialogQueue"]
  GETTABLEN R4 R5 1
  CALL R2 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["Dictionary"]
  GETTABLEKS R3 R4 K4 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K5 [{"subsequentDialogQueue"}]
  SETTABLEKS R2 R5 K2 ["subsequentDialogQueue"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Rodux"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K9 ["Core"]
  GETTABLEKS R4 R5 K10 ["Actions"]
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R4 K11 ["DequeueSubsequentDialog"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R4 K12 ["EnqueueSubsequentDialog"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K13 ["createReducer"]
  DUPTABLE R8 K15 [{"subsequentDialogQueue"}]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K14 ["subsequentDialogQueue"]
  NEWTABLE R9 2 0
  GETTABLEKS R10 R6 K16 ["name"]
  DUPCLOSURE R11 K17 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R5 K16 ["name"]
  DUPCLOSURE R11 K18 [PROTO_1]
  CAPTURE VAL R2
  SETTABLE R11 R9 R10
  CALL R7 2 -1
  RETURN R7 -1
