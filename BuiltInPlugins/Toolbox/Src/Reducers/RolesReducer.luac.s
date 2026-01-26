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

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K4 [{"groupBundlesUploadEnabledForUser", "allowedBundleTypeSettings"}]
  GETTABLEKS R5 R1 K2 ["groupBundlesUploadEnabledForUser"]
  SETTABLEKS R5 R4 K2 ["groupBundlesUploadEnabledForUser"]
  GETTABLEKS R5 R1 K3 ["allowedBundleTypeSettings"]
  SETTABLEKS R5 R4 K3 ["allowedBundleTypeSettings"]
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
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Actions"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K10 ["SetAllowedAssetTypes"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K11 ["SetAllowedBundleTypes"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R4 K12 ["BundlesMetadataReceived"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K13 ["Flags"]
  GETTABLEKS R9 R10 K14 ["getFFlagEnableUploadingGroupBundles"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K15 ["createReducer"]
  DUPTABLE R10 K21 [{"allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "groupBundlesUploadEnabledForUser"}]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K16 ["allowedAssetTypesForRelease"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K17 ["allowedAssetTypesForUpload"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K18 ["allowedAssetTypesForFree"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K19 ["allowedBundleTypeSettings"]
  MOVE R12 R8
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADB R11 0
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K20 ["groupBundlesUploadEnabledForUser"]
  NEWTABLE R11 4 0
  GETTABLEKS R12 R5 K22 ["name"]
  DUPCLOSURE R13 K23 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R6 K22 ["name"]
  DUPCLOSURE R13 K24 [PROTO_1]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R7 K22 ["name"]
  MOVE R14 R8
  CALL R14 0 1
  JUMPIFNOT R14 [+3]
  DUPCLOSURE R13 K25 [PROTO_2]
  CAPTURE VAL R2
  JUMP [+1]
  LOADNIL R13
  SETTABLE R13 R11 R12
  CALL R9 2 -1
  RETURN R9 -1
