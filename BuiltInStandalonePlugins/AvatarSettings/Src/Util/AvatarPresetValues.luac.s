MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagColliderHeight"]
  CALL R1 1 1
  NEWTABLE R2 2 0
  DUPTABLE R3 K21 [{"bodyScaleSetting", "bodyAppearanceSetting", "bodyBuildSetting", "collisionSetting", "animationPacksSetting", "animationClipsSetting", "accessoryScaleSetting", "customAccessoriesSetting", "accessoryBehaviorEnableSoundSetting", "accessoryBehaviorEnableVFXSetting", "clothingScaleSetting", "customClothingSetting"}]
  GETIMPORT R4 K25 [Enum.AvatarSettingsScaleMode.PlayerChoice]
  SETTABLEKS R4 R3 K9 ["bodyScaleSetting"]
  GETIMPORT R4 K27 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
  SETTABLEKS R4 R3 K10 ["bodyAppearanceSetting"]
  GETIMPORT R4 K29 [Enum.AvatarSettingsBuildMode.PlayerChoice]
  SETTABLEKS R4 R3 K11 ["bodyBuildSetting"]
  GETIMPORT R4 K32 [Enum.AvatarSettingsCollisionMode.Default]
  SETTABLEKS R4 R3 K12 ["collisionSetting"]
  GETIMPORT R4 K34 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
  SETTABLEKS R4 R3 K13 ["animationPacksSetting"]
  GETIMPORT R4 K36 [Enum.AvatarSettingsAnimationClipsMode.PlayerChoice]
  SETTABLEKS R4 R3 K14 ["animationClipsSetting"]
  GETIMPORT R4 K38 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
  SETTABLEKS R4 R3 K15 ["accessoryScaleSetting"]
  GETIMPORT R4 K40 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
  SETTABLEKS R4 R3 K16 ["customAccessoriesSetting"]
  LOADB R4 1
  SETTABLEKS R4 R3 K17 ["accessoryBehaviorEnableSoundSetting"]
  LOADB R4 1
  SETTABLEKS R4 R3 K18 ["accessoryBehaviorEnableVFXSetting"]
  GETIMPORT R4 K42 [Enum.AvatarSettingsClothingMode.PlayerChoice]
  SETTABLEKS R4 R3 K19 ["clothingScaleSetting"]
  GETIMPORT R4 K44 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
  SETTABLEKS R4 R3 K20 ["customClothingSetting"]
  SETTABLEKS R3 R2 K45 ["PlayerSettingPresetValues"]
  DUPTABLE R3 K49 [{"bodyScaleSetting", "bodyScaleCustomHeight", "bodyAppearanceSetting", "bodyBuildSetting", "collisionSetting", "collisionSizeSetting", "collisionHitAndTouchDetectionSetting"}]
  GETIMPORT R4 K51 [Enum.AvatarSettingsScaleMode.CustomScale]
  SETTABLEKS R4 R3 K9 ["bodyScaleSetting"]
  GETIMPORT R4 K54 [NumberRange.new]
  LOADK R5 K55 [5.5]
  LOADK R6 K55 [5.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K46 ["bodyScaleCustomHeight"]
  GETIMPORT R4 K27 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
  SETTABLEKS R4 R3 K10 ["bodyAppearanceSetting"]
  GETIMPORT R4 K29 [Enum.AvatarSettingsBuildMode.PlayerChoice]
  SETTABLEKS R4 R3 K11 ["bodyBuildSetting"]
  GETIMPORT R4 K57 [Enum.AvatarSettingsCollisionMode.SingleCollider]
  SETTABLEKS R4 R3 K12 ["collisionSetting"]
  LOADN R5 2
  MOVE R7 R1
  CALL R7 0 1
  JUMPIFNOT R7 [+2]
  LOADN R6 3
  JUMP [+1]
  LOADN R6 4
  LOADN R7 1
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K59 [Vector3.new]
  CALL R4 3 1
  SETTABLEKS R4 R3 K47 ["collisionSizeSetting"]
  GETIMPORT R4 K62 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
  SETTABLEKS R4 R3 K48 ["collisionHitAndTouchDetectionSetting"]
  SETTABLEKS R3 R2 K63 ["ConsistentGameplayPresetValues"]
  RETURN R2 1
