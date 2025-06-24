PROTO_0:
  DUPTABLE R0 K18 [{"clothingScaleSetting", "clothingScaleLimitBoundsSetting", "customClothingSetting", "customClothingTopsSetting", "customClothingTShirtSetting", "customClothingShirtSetting", "customClothingOuterwearSetting", "customClothingJacketSetting", "customClothingSweaterSetting", "customClothingBottomsSetting", "customClothingPantsSetting", "customClothingShortsSetting", "customClothingDressSkirtSetting", "customClothingLeftShoesSetting", "customClothingRightShoesSetting", "customClothingClassicShirtsSetting", "customClothingClassicTShirtsSetting", "customClothingClassicPantsSetting"}]
  GETIMPORT R1 K22 [Enum.AvatarSettingsClothingMode.PlayerChoice]
  SETTABLEKS R1 R0 K0 ["clothingScaleSetting"]
  LOADK R1 K23 [{0, 0, 0}]
  SETTABLEKS R1 R0 K1 ["clothingScaleLimitBoundsSetting"]
  GETIMPORT R1 K25 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
  SETTABLEKS R1 R0 K2 ["customClothingSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K3 ["customClothingTopsSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["customClothingTShirtSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["customClothingShirtSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K6 ["customClothingOuterwearSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K7 ["customClothingJacketSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K8 ["customClothingSweaterSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K9 ["customClothingBottomsSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K10 ["customClothingPantsSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K11 ["customClothingShortsSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K12 ["customClothingDressSkirtSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K13 ["customClothingLeftShoesSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K14 ["customClothingRightShoesSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K15 ["customClothingClassicShirtsSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K16 ["customClothingClassicTShirtsSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K17 ["customClothingClassicPantsSetting"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Components"]
  GETTABLEKS R4 R5 K8 ["Contexts"]
  GETTABLEKS R3 R4 K9 ["PublishProvider"]
  GETTABLEKS R2 R3 K10 ["PublishedSettingsTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K7 ["Components"]
  GETTABLEKS R6 R7 K8 ["Contexts"]
  GETTABLEKS R5 R6 K9 ["PublishProvider"]
  GETTABLEKS R4 R5 K11 ["createPublishedSettings"]
  GETTABLEKS R3 R4 K12 ["createAssetIdPublishedSetting"]
  CALL R2 1 1
  NEWTABLE R3 1 0
  DUPCLOSURE R4 K13 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K14 ["primaryPreset"]
  RETURN R3 1
