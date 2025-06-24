PROTO_0:
  DUPTABLE R0 K16 [{"bodyScaleSetting", "bodyScaleCustomHeight", "bodyAppearanceSetting", "bodyAppearanceCustomPartsFace", "bodyAppearanceCustomPartsHead", "bodyAppearanceCustomPartsTorso", "bodyAppearanceCustomPartsLeftArm", "bodyAppearanceCustomPartsRightArm", "bodyAppearanceCustomPartsLeftLeg", "bodyAppearanceCustomPartsRightLeg", "bodyBuildSetting", "bodyBuildCustomHeight", "bodyBuildCustomWidth", "bodyBuildCustomHead", "bodyBuildCustomBodyType", "bodyBuildCustomProportions"}]
  GETIMPORT R1 K20 [Enum.AvatarSettingsScaleMode.PlayerChoice]
  SETTABLEKS R1 R0 K0 ["bodyScaleSetting"]
  GETIMPORT R1 K23 [NumberRange.new]
  LOADN R2 6
  LOADN R3 6
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["bodyScaleCustomHeight"]
  GETIMPORT R1 K25 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
  SETTABLEKS R1 R0 K2 ["bodyAppearanceSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K3 ["bodyAppearanceCustomPartsFace"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["bodyAppearanceCustomPartsHead"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["bodyAppearanceCustomPartsTorso"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K6 ["bodyAppearanceCustomPartsLeftArm"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K7 ["bodyAppearanceCustomPartsRightArm"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K8 ["bodyAppearanceCustomPartsLeftLeg"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K9 ["bodyAppearanceCustomPartsRightLeg"]
  GETIMPORT R1 K27 [Enum.AvatarSettingsBuildMode.PlayerChoice]
  SETTABLEKS R1 R0 K10 ["bodyBuildSetting"]
  GETIMPORT R1 K23 [NumberRange.new]
  LOADN R2 100
  LOADN R3 100
  CALL R1 2 1
  SETTABLEKS R1 R0 K11 ["bodyBuildCustomHeight"]
  GETIMPORT R1 K23 [NumberRange.new]
  LOADN R2 100
  LOADN R3 100
  CALL R1 2 1
  SETTABLEKS R1 R0 K12 ["bodyBuildCustomWidth"]
  GETIMPORT R1 K23 [NumberRange.new]
  LOADN R2 100
  LOADN R3 100
  CALL R1 2 1
  SETTABLEKS R1 R0 K13 ["bodyBuildCustomHead"]
  GETIMPORT R1 K23 [NumberRange.new]
  LOADN R2 100
  LOADN R3 100
  CALL R1 2 1
  SETTABLEKS R1 R0 K14 ["bodyBuildCustomBodyType"]
  GETIMPORT R1 K23 [NumberRange.new]
  LOADN R2 100
  LOADN R3 100
  CALL R1 2 1
  SETTABLEKS R1 R0 K15 ["bodyBuildCustomProportions"]
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
