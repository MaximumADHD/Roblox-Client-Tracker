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
  GETTABLEKS R8 R0 K8 ["Core"]
  GETTABLEKS R7 R8 K10 ["Flags"]
  GETTABLEKS R6 R7 K11 ["getFFlagRemoveItemTags"]
  CALL R5 1 1
  MOVE R7 R5
  CALL R7 0 1
  JUMPIFNOT R7 [+2]
  LOADNIL R6
  JUMP [+5]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K12 ["SetTagsMetadata"]
  CALL R6 1 1
  MOVE R7 R5
  CALL R7 0 1
  JUMPIF R7 [+22]
  GETTABLEKS R7 R3 K13 ["createReducer"]
  DUPTABLE R8 K17 [{"isItemTagsFeatureEnabled", "enabledAssetTypesForItemTags", "maximumItemTagsPerItem"}]
  LOADB R9 0
  SETTABLEKS R9 R8 K14 ["isItemTagsFeatureEnabled"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K15 ["enabledAssetTypesForItemTags"]
  LOADN R9 0
  SETTABLEKS R9 R8 K16 ["maximumItemTagsPerItem"]
  NEWTABLE R9 1 0
  GETTABLEKS R10 R6 K18 ["name"]
  DUPCLOSURE R11 K19 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R11 R9 R10
  CALL R7 2 -1
  RETURN R7 -1
  RETURN R0 0
