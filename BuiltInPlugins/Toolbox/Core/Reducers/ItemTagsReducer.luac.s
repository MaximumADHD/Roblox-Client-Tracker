PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K5 [{"isItemTagsFeatureEnabled", "enabledAssetTypesForItemTags", "maximumItemTagsPerItem"}]
  GETTABLEKS R5 R1 K2 ["isItemTagsFeatureEnabled"]
  SETTABLEKS R5 R4 K2 ["isItemTagsFeatureEnabled"]
  GETTABLEKS R5 R1 K3 ["enabledAssetTypesForItemTags"]
  SETTABLEKS R5 R4 K3 ["enabledAssetTypesForItemTags"]
  GETTABLEKS R5 R1 K4 ["maximumItemTagsPerItem"]
  SETTABLEKS R5 R4 K4 ["maximumItemTagsPerItem"]
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
  GETTABLEKS R6 R4 K10 ["SetTagsMetadata"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K11 ["createReducer"]
  DUPTABLE R7 K15 [{"isItemTagsFeatureEnabled", "enabledAssetTypesForItemTags", "maximumItemTagsPerItem"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K12 ["isItemTagsFeatureEnabled"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K13 ["enabledAssetTypesForItemTags"]
  LOADN R8 0
  SETTABLEKS R8 R7 K14 ["maximumItemTagsPerItem"]
  NEWTABLE R8 1 0
  GETTABLEKS R9 R5 K16 ["name"]
  DUPCLOSURE R10 K17 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R10 R8 R9
  CALL R6 2 -1
  RETURN R6 -1
