MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getEngineFeatureAvatarSettingsHitbox"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Flags"]
       22 GETTABLEKS                       R3 R3 K9 ["getFFlagAvatarSettingsConsistentGameplayUseCollider"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Flags"]
       31 GETTABLEKS                       R4 R4 K10 ["getFFlagColliderHeight"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K11 ["Util"]
       40 GETTABLEKS                       R5 R5 K12 ["getUseHitboxDetectionMode"]
       42 CALL                             R4 1 1
       43 MOVE                             R6 R1
       44 CALL                             R6 0 1
       45 JUMPIFNOT                        R6 ; [+3]
       46 MOVE                             R5 R4
       47 CALL                             R5 0 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R5
       50 NEWTABLE                         R6 2 0
       52 DUPTABLE                         R7 K27 [{["bodyScaleSetting"], ["bodyAppearanceSetting"], ["bodyBuildSetting"], ["collisionSetting"], ["animationPacksSetting"], ["animationClipsSetting"], ["accessoryScaleSetting"], ["customAccessoriesSetting"], ["accessoryBehaviorEnableSoundSetting"] = True, ["accessoryBehaviorEnableVFXSetting"] = True, ["accessoryBehaviorEnableEmissivesSetting"] = True, ["clothingScaleSetting"], ["customClothingSetting"]}]
       53 GETIMPORT                        R8 K31 [Enum.AvatarSettingsScaleMode.PlayerChoice]
       55 SETTABLEKS                       R8 R7 K13 ["bodyScaleSetting"]
       57 GETIMPORT                        R8 K33 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
       59 SETTABLEKS                       R8 R7 K14 ["bodyAppearanceSetting"]
       61 GETIMPORT                        R8 K35 [Enum.AvatarSettingsBuildMode.PlayerChoice]
       63 SETTABLEKS                       R8 R7 K15 ["bodyBuildSetting"]
       65 GETIMPORT                        R8 K38 [Enum.AvatarSettingsCollisionMode.Default]
       67 SETTABLEKS                       R8 R7 K16 ["collisionSetting"]
       69 GETIMPORT                        R8 K40 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
       71 SETTABLEKS                       R8 R7 K17 ["animationPacksSetting"]
       73 GETIMPORT                        R8 K42 [Enum.AvatarSettingsAnimationClipsMode.PlayerChoice]
       75 SETTABLEKS                       R8 R7 K18 ["animationClipsSetting"]
       77 GETIMPORT                        R8 K44 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
       79 SETTABLEKS                       R8 R7 K19 ["accessoryScaleSetting"]
       81 GETIMPORT                        R8 K46 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
       83 SETTABLEKS                       R8 R7 K20 ["customAccessoriesSetting"]
       85 GETIMPORT                        R8 K48 [Enum.AvatarSettingsClothingMode.PlayerChoice]
       87 SETTABLEKS                       R8 R7 K25 ["clothingScaleSetting"]
       89 GETIMPORT                        R8 K50 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
       91 SETTABLEKS                       R8 R7 K26 ["customClothingSetting"]
       93 SETTABLEKS                       R7 R6 K51 ["PlayerSettingPresetValues"]
       95 DUPTABLE                         R7 K56 [{"bodyScaleSetting", "bodyScaleCustomHeight", "bodyAppearanceSetting", "bodyBuildSetting", "collisionSetting", "collisionSizeSetting", "collisionHitAndTouchDetectionSetting", "collisionHitboxSizeSetting"}]
       96 GETIMPORT                        R8 K58 [Enum.AvatarSettingsScaleMode.CustomScale]
       98 SETTABLEKS                       R8 R7 K13 ["bodyScaleSetting"]
      100 GETIMPORT                        R8 K61 [NumberRange.new]
      102 LOADK                            R9 K62 [5.5]
      103 LOADK                            R10 K62 [5.5]
      104 CALL                             R8 2 1
      105 SETTABLEKS                       R8 R7 K52 ["bodyScaleCustomHeight"]
      107 GETIMPORT                        R8 K33 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
      109 SETTABLEKS                       R8 R7 K14 ["bodyAppearanceSetting"]
      111 GETIMPORT                        R8 K35 [Enum.AvatarSettingsBuildMode.PlayerChoice]
      113 SETTABLEKS                       R8 R7 K15 ["bodyBuildSetting"]
      115 GETIMPORT                        R8 K64 [Enum.AvatarSettingsCollisionMode.SingleCollider]
      117 SETTABLEKS                       R8 R7 K16 ["collisionSetting"]
      119 LOADN                            R9 2
      120 MOVE                             R11 R3
      121 CALL                             R11 0 1
      122 JUMPIFNOT                        R11 ; [+2]
      123 LOADN                            R10 3
      124 JUMP                             ; [+1]
      125 LOADN                            R10 4
      126 LOADN                            R11 1
      127 FASTCALL                         VECTOR ; [+2]
      128 GETIMPORT                        R8 K66 [Vector3.new]
      130 CALL                             R8 3 1
      131 SETTABLEKS                       R8 R7 K53 ["collisionSizeSetting"]
      133 JUMPIFNOT                        R5 ; [+2]
      134 MOVE                             R8 R5
      135 JUMP                             ; [+8]
      136 MOVE                             R9 R2
      137 CALL                             R9 0 1
      138 JUMPIFNOT                        R9 ; [+3]
      139 GETIMPORT                        R8 K69 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
      141 JUMP                             ; [+2]
      142 GETIMPORT                        R8 K71 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
      144 SETTABLEKS                       R8 R7 K54 ["collisionHitAndTouchDetectionSetting"]
      146 MOVE                             R9 R1
      147 CALL                             R9 0 1
      148 JUMPIFNOT                        R9 ; [+2]
      149 LOADK                            R8 K72 [{2, 5.5, 1}]
      150 JUMP                             ; [+1]
      151 LOADNIL                          R8
      152 SETTABLEKS                       R8 R7 K55 ["collisionHitboxSizeSetting"]
      154 SETTABLEKS                       R7 R6 K73 ["ConsistentGameplayPresetValues"]
      156 RETURN                           R6 1
