MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagColliderHeight"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 2 0
       18 DUPTABLE                         R3 K21 [{"bodyScaleSetting", "bodyAppearanceSetting", "bodyBuildSetting", "collisionSetting", "animationPacksSetting", "animationClipsSetting", "accessoryScaleSetting", "customAccessoriesSetting", "accessoryBehaviorEnableSoundSetting", "accessoryBehaviorEnableVFXSetting", "clothingScaleSetting", "customClothingSetting"}]
       19 GETIMPORT                        R4 K25 [Enum.AvatarSettingsScaleMode.PlayerChoice]
       21 SETTABLEKS                       R4 R3 K9 ["bodyScaleSetting"]
       23 GETIMPORT                        R4 K27 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
       25 SETTABLEKS                       R4 R3 K10 ["bodyAppearanceSetting"]
       27 GETIMPORT                        R4 K29 [Enum.AvatarSettingsBuildMode.PlayerChoice]
       29 SETTABLEKS                       R4 R3 K11 ["bodyBuildSetting"]
       31 GETIMPORT                        R4 K32 [Enum.AvatarSettingsCollisionMode.Default]
       33 SETTABLEKS                       R4 R3 K12 ["collisionSetting"]
       35 GETIMPORT                        R4 K34 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
       37 SETTABLEKS                       R4 R3 K13 ["animationPacksSetting"]
       39 GETIMPORT                        R4 K36 [Enum.AvatarSettingsAnimationClipsMode.PlayerChoice]
       41 SETTABLEKS                       R4 R3 K14 ["animationClipsSetting"]
       43 GETIMPORT                        R4 K38 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
       45 SETTABLEKS                       R4 R3 K15 ["accessoryScaleSetting"]
       47 GETIMPORT                        R4 K40 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
       49 SETTABLEKS                       R4 R3 K16 ["customAccessoriesSetting"]
       51 LOADB                            R4 1
       52 SETTABLEKS                       R4 R3 K17 ["accessoryBehaviorEnableSoundSetting"]
       54 LOADB                            R4 1
       55 SETTABLEKS                       R4 R3 K18 ["accessoryBehaviorEnableVFXSetting"]
       57 GETIMPORT                        R4 K42 [Enum.AvatarSettingsClothingMode.PlayerChoice]
       59 SETTABLEKS                       R4 R3 K19 ["clothingScaleSetting"]
       61 GETIMPORT                        R4 K44 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
       63 SETTABLEKS                       R4 R3 K20 ["customClothingSetting"]
       65 SETTABLEKS                       R3 R2 K45 ["PlayerSettingPresetValues"]
       67 DUPTABLE                         R3 K49 [{"bodyScaleSetting", "bodyScaleCustomHeight", "bodyAppearanceSetting", "bodyBuildSetting", "collisionSetting", "collisionSizeSetting", "collisionHitAndTouchDetectionSetting"}]
       68 GETIMPORT                        R4 K51 [Enum.AvatarSettingsScaleMode.CustomScale]
       70 SETTABLEKS                       R4 R3 K9 ["bodyScaleSetting"]
       72 GETIMPORT                        R4 K54 [NumberRange.new]
       74 LOADK                            R5 K55 [5.5]
       75 LOADK                            R6 K55 [5.5]
       76 CALL                             R4 2 1
       77 SETTABLEKS                       R4 R3 K46 ["bodyScaleCustomHeight"]
       79 GETIMPORT                        R4 K27 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
       81 SETTABLEKS                       R4 R3 K10 ["bodyAppearanceSetting"]
       83 GETIMPORT                        R4 K29 [Enum.AvatarSettingsBuildMode.PlayerChoice]
       85 SETTABLEKS                       R4 R3 K11 ["bodyBuildSetting"]
       87 GETIMPORT                        R4 K57 [Enum.AvatarSettingsCollisionMode.SingleCollider]
       89 SETTABLEKS                       R4 R3 K12 ["collisionSetting"]
       91 LOADN                            R5 2
       92 MOVE                             R7 R1
       93 CALL                             R7 0 1
       94 JUMPIFNOT                        R7 ; [+2]
       95 LOADN                            R6 3
       96 JUMP                             ; [+1]
       97 LOADN                            R6 4
       98 LOADN                            R7 1
       99 FASTCALL                         VECTOR ; [+2]
      100 GETIMPORT                        R4 K59 [Vector3.new]
      102 CALL                             R4 3 1
      103 SETTABLEKS                       R4 R3 K47 ["collisionSizeSetting"]
      105 GETIMPORT                        R4 K62 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
      107 SETTABLEKS                       R4 R3 K48 ["collisionHitAndTouchDetectionSetting"]
      109 SETTABLEKS                       R3 R2 K63 ["ConsistentGameplayPresetValues"]
      111 RETURN                           R2 1
