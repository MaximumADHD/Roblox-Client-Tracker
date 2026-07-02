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
       18 DUPTABLE                         R3 K22 [{["bodyScaleSetting"], ["bodyAppearanceSetting"], ["bodyBuildSetting"], ["collisionSetting"], ["animationPacksSetting"], ["animationClipsSetting"], ["accessoryScaleSetting"], ["customAccessoriesSetting"], ["accessoryBehaviorEnableSoundSetting"] = True, ["accessoryBehaviorEnableVFXSetting"] = True, ["clothingScaleSetting"], ["customClothingSetting"]}]
       19 GETIMPORT                        R4 K26 [Enum.AvatarSettingsScaleMode.PlayerChoice]
       21 SETTABLEKS                       R4 R3 K9 ["bodyScaleSetting"]
       23 GETIMPORT                        R4 K28 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
       25 SETTABLEKS                       R4 R3 K10 ["bodyAppearanceSetting"]
       27 GETIMPORT                        R4 K30 [Enum.AvatarSettingsBuildMode.PlayerChoice]
       29 SETTABLEKS                       R4 R3 K11 ["bodyBuildSetting"]
       31 GETIMPORT                        R4 K33 [Enum.AvatarSettingsCollisionMode.Default]
       33 SETTABLEKS                       R4 R3 K12 ["collisionSetting"]
       35 GETIMPORT                        R4 K35 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
       37 SETTABLEKS                       R4 R3 K13 ["animationPacksSetting"]
       39 GETIMPORT                        R4 K37 [Enum.AvatarSettingsAnimationClipsMode.PlayerChoice]
       41 SETTABLEKS                       R4 R3 K14 ["animationClipsSetting"]
       43 GETIMPORT                        R4 K39 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
       45 SETTABLEKS                       R4 R3 K15 ["accessoryScaleSetting"]
       47 GETIMPORT                        R4 K41 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
       49 SETTABLEKS                       R4 R3 K16 ["customAccessoriesSetting"]
       51 GETIMPORT                        R4 K43 [Enum.AvatarSettingsClothingMode.PlayerChoice]
       53 SETTABLEKS                       R4 R3 K20 ["clothingScaleSetting"]
       55 GETIMPORT                        R4 K45 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
       57 SETTABLEKS                       R4 R3 K21 ["customClothingSetting"]
       59 SETTABLEKS                       R3 R2 K46 ["PlayerSettingPresetValues"]
       61 DUPTABLE                         R3 K50 [{"bodyScaleSetting", "bodyScaleCustomHeight", "bodyAppearanceSetting", "bodyBuildSetting", "collisionSetting", "collisionSizeSetting", "collisionHitAndTouchDetectionSetting"}]
       62 GETIMPORT                        R4 K52 [Enum.AvatarSettingsScaleMode.CustomScale]
       64 SETTABLEKS                       R4 R3 K9 ["bodyScaleSetting"]
       66 GETIMPORT                        R4 K55 [NumberRange.new]
       68 LOADK                            R5 K56 [5.5]
       69 LOADK                            R6 K56 [5.5]
       70 CALL                             R4 2 1
       71 SETTABLEKS                       R4 R3 K47 ["bodyScaleCustomHeight"]
       73 GETIMPORT                        R4 K28 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
       75 SETTABLEKS                       R4 R3 K10 ["bodyAppearanceSetting"]
       77 GETIMPORT                        R4 K30 [Enum.AvatarSettingsBuildMode.PlayerChoice]
       79 SETTABLEKS                       R4 R3 K11 ["bodyBuildSetting"]
       81 GETIMPORT                        R4 K58 [Enum.AvatarSettingsCollisionMode.SingleCollider]
       83 SETTABLEKS                       R4 R3 K12 ["collisionSetting"]
       85 LOADN                            R5 2
       86 MOVE                             R7 R1
       87 CALL                             R7 0 1
       88 JUMPIFNOT                        R7 ; [+2]
       89 LOADN                            R6 3
       90 JUMP                             ; [+1]
       91 LOADN                            R6 4
       92 LOADN                            R7 1
       93 FASTCALL                         VECTOR ; [+2]
       94 GETIMPORT                        R4 K60 [Vector3.new]
       96 CALL                             R4 3 1
       97 SETTABLEKS                       R4 R3 K48 ["collisionSizeSetting"]
       99 GETIMPORT                        R4 K63 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
      101 SETTABLEKS                       R4 R3 K49 ["collisionHitAndTouchDetectionSetting"]
      103 SETTABLEKS                       R3 R2 K64 ["ConsistentGameplayPresetValues"]
      105 RETURN                           R2 1
