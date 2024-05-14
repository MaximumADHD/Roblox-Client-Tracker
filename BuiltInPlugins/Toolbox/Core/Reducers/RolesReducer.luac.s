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
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"allowedBundleTypeSettings"}]
  GETTABLEKS R5 R1 K2 ["allowedBundleTypeSettings"]
  SETTABLEKS R5 R4 K2 ["allowedBundleTypeSettings"]
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
  GETTABLEKS R7 R3 K12 ["createReducer"]
  DUPTABLE R8 K17 [{"allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings"}]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K13 ["allowedAssetTypesForRelease"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K14 ["allowedAssetTypesForUpload"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K15 ["allowedAssetTypesForFree"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K16 ["allowedBundleTypeSettings"]
  NEWTABLE R9 2 0
  GETTABLEKS R10 R5 K18 ["name"]
  DUPCLOSURE R11 K19 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R6 K18 ["name"]
  DUPCLOSURE R11 K20 [PROTO_1]
  CAPTURE VAL R2
  SETTABLE R11 R9 R10
  CALL R7 2 -1
  RETURN R7 -1
