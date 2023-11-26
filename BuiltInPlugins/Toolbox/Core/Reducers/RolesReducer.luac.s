PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K5 [{"allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree"}]
  GETTABLEKS R5 R1 K2 ["allowedAssetTypesForRelease"]
  SETTABLEKS R5 R4 K2 ["allowedAssetTypesForRelease"]
  GETTABLEKS R5 R1 K3 ["allowedAssetTypesForUpload"]
  SETTABLEKS R5 R4 K3 ["allowedAssetTypesForUpload"]
  GETTABLEKS R5 R1 K4 ["allowedAssetTypesForFree"]
  SETTABLEKS R5 R4 K4 ["allowedAssetTypesForFree"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R3 0
  CALL R3 0 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K1 [assert]
  CALL R2 -1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Dictionary"]
  GETTABLEKS R2 R3 K3 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K5 [{"allowedBundleTypeSettings"}]
  GETTABLEKS R5 R1 K4 ["allowedBundleTypeSettings"]
  SETTABLEKS R5 R4 K4 ["allowedBundleTypeSettings"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Rodux"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K8 ["Core"]
  GETTABLEKS R4 R5 K9 ["Actions"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K10 ["SetAllowedAssetTypes"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K11 ["SetAllowedBundleTypes"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K8 ["Core"]
  GETTABLEKS R10 R11 K12 ["Util"]
  GETTABLEKS R9 R10 K13 ["SharedFlags"]
  GETTABLEKS R8 R9 K14 ["getFFlagEnableUGCBodyUploadFlow"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K15 ["createReducer"]
  DUPTABLE R9 K20 [{"allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings"}]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K16 ["allowedAssetTypesForRelease"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K17 ["allowedAssetTypesForUpload"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K18 ["allowedAssetTypesForFree"]
  MOVE R11 R7
  CALL R11 0 1
  JUMPIFNOT R11 [+3]
  NEWTABLE R10 0 0
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K19 ["allowedBundleTypeSettings"]
  NEWTABLE R10 2 0
  GETTABLEKS R11 R5 K21 ["name"]
  DUPCLOSURE R12 K22 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R6 K21 ["name"]
  DUPCLOSURE R12 K23 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R2
  SETTABLE R12 R10 R11
  CALL R8 2 -1
  RETURN R8 -1
