MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagAvatarSettingsConsistentGameplayUseCollider"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Flags"]
       22 GETTABLEKS                       R3 R3 K9 ["getFFlagColliderHeight"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 2 0
       27 DUPTABLE                         R4 K24 [{["bodyScaleSetting"], ["bodyAppearanceSetting"], ["bodyBuildSetting"], ["collisionSetting"], ["animationPacksSetting"], ["animationClipsSetting"], ["accessoryScaleSetting"], ["customAccessoriesSetting"], ["accessoryBehaviorEnableSoundSetting"] = True, ["accessoryBehaviorEnableVFXSetting"] = True, ["accessoryBehaviorEnableEmissivesSetting"] = True, ["clothingScaleSetting"], ["customClothingSetting"]}]
       28 GETIMPORT                        R5 K28 [Enum.AvatarSettingsScaleMode.PlayerChoice]
       30 SETTABLEKS                       R5 R4 K10 ["bodyScaleSetting"]
       32 GETIMPORT                        R5 K30 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
       34 SETTABLEKS                       R5 R4 K11 ["bodyAppearanceSetting"]
       36 GETIMPORT                        R5 K32 [Enum.AvatarSettingsBuildMode.PlayerChoice]
       38 SETTABLEKS                       R5 R4 K12 ["bodyBuildSetting"]
       40 GETIMPORT                        R5 K35 [Enum.AvatarSettingsCollisionMode.Default]
       42 SETTABLEKS                       R5 R4 K13 ["collisionSetting"]
       44 GETIMPORT                        R5 K37 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
       46 SETTABLEKS                       R5 R4 K14 ["animationPacksSetting"]
       48 GETIMPORT                        R5 K39 [Enum.AvatarSettingsAnimationClipsMode.PlayerChoice]
       50 SETTABLEKS                       R5 R4 K15 ["animationClipsSetting"]
       52 GETIMPORT                        R5 K41 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
       54 SETTABLEKS                       R5 R4 K16 ["accessoryScaleSetting"]
       56 GETIMPORT                        R5 K43 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
       58 SETTABLEKS                       R5 R4 K17 ["customAccessoriesSetting"]
       60 GETIMPORT                        R5 K45 [Enum.AvatarSettingsClothingMode.PlayerChoice]
       62 SETTABLEKS                       R5 R4 K22 ["clothingScaleSetting"]
       64 GETIMPORT                        R5 K47 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
       66 SETTABLEKS                       R5 R4 K23 ["customClothingSetting"]
       68 SETTABLEKS                       R4 R3 K48 ["PlayerSettingPresetValues"]
       70 DUPTABLE                         R4 K52 [{"bodyScaleSetting", "bodyScaleCustomHeight", "bodyAppearanceSetting", "bodyBuildSetting", "collisionSetting", "collisionSizeSetting", "collisionHitAndTouchDetectionSetting"}]
       71 GETIMPORT                        R5 K54 [Enum.AvatarSettingsScaleMode.CustomScale]
       73 SETTABLEKS                       R5 R4 K10 ["bodyScaleSetting"]
       75 GETIMPORT                        R5 K57 [NumberRange.new]
       77 LOADK                            R6 K58 [5.5]
       78 LOADK                            R7 K58 [5.5]
       79 CALL                             R5 2 1
       80 SETTABLEKS                       R5 R4 K49 ["bodyScaleCustomHeight"]
       82 GETIMPORT                        R5 K30 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
       84 SETTABLEKS                       R5 R4 K11 ["bodyAppearanceSetting"]
       86 GETIMPORT                        R5 K32 [Enum.AvatarSettingsBuildMode.PlayerChoice]
       88 SETTABLEKS                       R5 R4 K12 ["bodyBuildSetting"]
       90 GETIMPORT                        R5 K60 [Enum.AvatarSettingsCollisionMode.SingleCollider]
       92 SETTABLEKS                       R5 R4 K13 ["collisionSetting"]
       94 LOADN                            R6 2
       95 MOVE                             R8 R2
       96 CALL                             R8 0 1
       97 JUMPIFNOT                        R8 ; [+2]
       98 LOADN                            R7 3
       99 JUMP                             ; [+1]
      100 LOADN                            R7 4
      101 LOADN                            R8 1
      102 FASTCALL                         VECTOR ; [+2]
      103 GETIMPORT                        R5 K62 [Vector3.new]
      105 CALL                             R5 3 1
      106 SETTABLEKS                       R5 R4 K50 ["collisionSizeSetting"]
      108 MOVE                             R6 R1
      109 CALL                             R6 0 1
      110 JUMPIFNOT                        R6 ; [+3]
      111 GETIMPORT                        R5 K65 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
      113 JUMP                             ; [+2]
      114 GETIMPORT                        R5 K67 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
      116 SETTABLEKS                       R5 R4 K51 ["collisionHitAndTouchDetectionSetting"]
      118 SETTABLEKS                       R4 R3 K68 ["ConsistentGameplayPresetValues"]
      120 RETURN                           R3 1
