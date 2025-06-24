PROTO_0:
  DUPTABLE R0 K14 [{"accessoryScaleSetting", "accessoryScaleLimitMethodSetting", "accessoryScaleLimitBoundsSetting", "customAccessoriesSetting", "customAccessoriesHairSetting", "customAccessoriesHeadSetting", "customAccessoriesFaceSetting", "customAccessoriesNeckSetting", "customAccessoriesShoulderSetting", "customAccessoriesFrontSetting", "customAccessoriesBackSetting", "customAccessoriesWaistSetting", "accessoryBehaviorEnableSoundSetting", "accessoryBehaviorEnableVFXSetting"}]
  GETIMPORT R1 K18 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
  SETTABLEKS R1 R0 K0 ["accessoryScaleSetting"]
  GETIMPORT R1 K21 [Enum.AvatarSettingsAccessoryLimitMethod.Scale]
  SETTABLEKS R1 R0 K1 ["accessoryScaleLimitMethodSetting"]
  LOADK R1 K22 [{0, 0, 0}]
  SETTABLEKS R1 R0 K2 ["accessoryScaleLimitBoundsSetting"]
  GETIMPORT R1 K24 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
  SETTABLEKS R1 R0 K3 ["customAccessoriesSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["customAccessoriesHairSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["customAccessoriesHeadSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K6 ["customAccessoriesFaceSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K7 ["customAccessoriesNeckSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K8 ["customAccessoriesShoulderSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K9 ["customAccessoriesFrontSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K10 ["customAccessoriesBackSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K11 ["customAccessoriesWaistSetting"]
  LOADB R1 0
  SETTABLEKS R1 R0 K12 ["accessoryBehaviorEnableSoundSetting"]
  LOADB R1 0
  SETTABLEKS R1 R0 K13 ["accessoryBehaviorEnableVFXSetting"]
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
