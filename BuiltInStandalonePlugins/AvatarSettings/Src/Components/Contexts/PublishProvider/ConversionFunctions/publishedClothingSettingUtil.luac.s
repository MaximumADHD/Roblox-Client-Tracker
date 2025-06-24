PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["runFunctionForSettingKeys"]
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  LOADK R8 K1 ["clothing setting"]
  MOVE R9 R2
  MOVE R10 R3
  CALL R4 6 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["isEqual"]
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  LOADK R6 K1 ["clothing setting"]
  CALL R2 4 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getSetPublishedSettingNonAssetIdValuesFunction"]
  MOVE R3 R0
  MOVE R4 R1
  LOADK R5 K1 ["clothing setting"]
  CALL R2 3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["getSetPublishedSettingAssetIdValuesFunction"]
  MOVE R4 R0
  MOVE R5 R1
  LOADK R6 K1 ["clothing setting"]
  CALL R3 3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["runFunctionForSettingKeys"]
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  LOADK R8 K1 ["clothing setting"]
  MOVE R9 R2
  MOVE R10 R3
  CALL R4 6 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getSetSettingNonAssetIdValuesFunction"]
  MOVE R3 R0
  MOVE R4 R1
  LOADK R5 K1 ["clothing setting"]
  CALL R2 3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["getSetSettingAssetIdValuesFunction"]
  MOVE R4 R0
  MOVE R5 R1
  LOADK R6 K1 ["clothing setting"]
  CALL R3 3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["runFunctionForSettingKeys"]
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  LOADK R8 K1 ["clothing setting"]
  MOVE R9 R2
  MOVE R10 R3
  CALL R4 6 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["AvatarSettingsProviderTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Contexts"]
  GETTABLEKS R4 R5 K11 ["PublishProvider"]
  GETTABLEKS R3 R4 K12 ["PublishedSettingsTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K9 ["Components"]
  GETTABLEKS R7 R8 K10 ["Contexts"]
  GETTABLEKS R6 R7 K11 ["PublishProvider"]
  GETTABLEKS R5 R6 K13 ["ConversionFunctions"]
  GETTABLEKS R4 R5 K14 ["TableKeys"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K9 ["Components"]
  GETTABLEKS R8 R9 K10 ["Contexts"]
  GETTABLEKS R7 R8 K11 ["PublishProvider"]
  GETTABLEKS R6 R7 K13 ["ConversionFunctions"]
  GETTABLEKS R5 R6 K15 ["conversionUtil"]
  CALL R4 1 1
  NEWTABLE R5 4 0
  DUPTABLE R6 K18 [{"nonAssetIdSettingKeys", "assetIdSettingKeys"}]
  GETTABLEKS R7 R3 K19 ["clothingSettingKeys"]
  SETTABLEKS R7 R6 K16 ["nonAssetIdSettingKeys"]
  GETTABLEKS R7 R3 K20 ["clothingSettingAssetIdKeys"]
  SETTABLEKS R7 R6 K17 ["assetIdSettingKeys"]
  DUPCLOSURE R7 K21 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R6
  DUPCLOSURE R8 K22 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R8 R5 K23 ["isEqual"]
  DUPCLOSURE R8 K24 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R8 R5 K25 ["setPublishedClothingSetting"]
  DUPCLOSURE R8 K26 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R8 R5 K27 ["setUnpublishedClothingSetting"]
  RETURN R5 1
