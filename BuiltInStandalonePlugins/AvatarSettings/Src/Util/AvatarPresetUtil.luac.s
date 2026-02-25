PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        4 MOVE                             R3 R1
        5 LOADK                            R4 K1 ["Settings must not be nil in AvatarSettingsContext"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R1 K4 ["navigationBarSettings"]
       11 GETTABLEKS                       R4 R2 K5 ["avatarType"]
       13 GETTABLEKS                       R3 R4 K6 ["value"]
       15 GETIMPORT                        R4 K10 [Enum.GameAvatarType.R15]
       17 JUMPIFEQ                         R3 R4 ; [+3]
       19 LOADNIL                          R3
       20 RETURN                           R3 1
       21 GETTABLEKS                       R3 R1 K11 ["bodySettings"]
       23 GETTABLEKS                       R4 R1 K12 ["movementSettings"]
       25 GETTABLEKS                       R5 R1 K13 ["animationSettings"]
       27 GETTABLEKS                       R6 R1 K14 ["accessoriesSettings"]
       29 GETTABLEKS                       R7 R1 K15 ["clothingSettings"]
       31 GETTABLEKS                       R9 R3 K16 ["bodyScaleSetting"]
       33 GETTABLEKS                       R8 R9 K6 ["value"]
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R9 R10 K16 ["bodyScaleSetting"]
       38 JUMPIFNOTEQ                      R8 R9 ; [+102]
       40 GETTABLEKS                       R9 R3 K17 ["bodyAppearanceSetting"]
       42 GETTABLEKS                       R8 R9 K6 ["value"]
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R9 R10 K17 ["bodyAppearanceSetting"]
       47 JUMPIFNOTEQ                      R8 R9 ; [+93]
       49 GETTABLEKS                       R9 R3 K18 ["bodyBuildSetting"]
       51 GETTABLEKS                       R8 R9 K6 ["value"]
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R9 R10 K18 ["bodyBuildSetting"]
       56 JUMPIFNOTEQ                      R8 R9 ; [+84]
       58 GETTABLEKS                       R9 R4 K19 ["collisionSetting"]
       60 GETTABLEKS                       R8 R9 K6 ["value"]
       62 GETUPVAL                         R10 0
       63 GETTABLEKS                       R9 R10 K19 ["collisionSetting"]
       65 JUMPIFNOTEQ                      R8 R9 ; [+75]
       67 GETTABLEKS                       R9 R5 K20 ["animationPacksSetting"]
       69 GETTABLEKS                       R8 R9 K6 ["value"]
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R9 R10 K20 ["animationPacksSetting"]
       74 JUMPIFNOTEQ                      R8 R9 ; [+66]
       76 GETTABLEKS                       R9 R5 K21 ["animationClipsSetting"]
       78 GETTABLEKS                       R8 R9 K6 ["value"]
       80 GETUPVAL                         R10 0
       81 GETTABLEKS                       R9 R10 K21 ["animationClipsSetting"]
       83 JUMPIFNOTEQ                      R8 R9 ; [+57]
       85 GETTABLEKS                       R9 R6 K22 ["accessoryScaleSetting"]
       87 GETTABLEKS                       R8 R9 K6 ["value"]
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R9 R10 K22 ["accessoryScaleSetting"]
       92 JUMPIFNOTEQ                      R8 R9 ; [+48]
       94 GETTABLEKS                       R9 R6 K23 ["customAccessoriesSetting"]
       96 GETTABLEKS                       R8 R9 K6 ["value"]
       98 GETUPVAL                         R10 0
       99 GETTABLEKS                       R9 R10 K23 ["customAccessoriesSetting"]
      101 JUMPIFNOTEQ                      R8 R9 ; [+39]
      103 GETTABLEKS                       R9 R6 K24 ["accessoryBehaviorEnableSoundSetting"]
      105 GETTABLEKS                       R8 R9 K6 ["value"]
      107 GETUPVAL                         R10 0
      108 GETTABLEKS                       R9 R10 K24 ["accessoryBehaviorEnableSoundSetting"]
      110 JUMPIFNOTEQ                      R8 R9 ; [+30]
      112 GETTABLEKS                       R9 R6 K25 ["accessoryBehaviorEnableVFXSetting"]
      114 GETTABLEKS                       R8 R9 K6 ["value"]
      116 GETUPVAL                         R10 0
      117 GETTABLEKS                       R9 R10 K25 ["accessoryBehaviorEnableVFXSetting"]
      119 JUMPIFNOTEQ                      R8 R9 ; [+21]
      121 GETTABLEKS                       R9 R7 K26 ["clothingScaleSetting"]
      123 GETTABLEKS                       R8 R9 K6 ["value"]
      125 GETUPVAL                         R10 0
      126 GETTABLEKS                       R9 R10 K26 ["clothingScaleSetting"]
      128 JUMPIFNOTEQ                      R8 R9 ; [+12]
      130 GETTABLEKS                       R9 R7 K27 ["customClothingSetting"]
      132 GETTABLEKS                       R8 R9 K6 ["value"]
      134 GETUPVAL                         R10 0
      135 GETTABLEKS                       R9 R10 K27 ["customClothingSetting"]
      137 JUMPIFNOTEQ                      R8 R9 ; [+3]
      139 LOADK                            R8 K28 ["PlayerChoice"]
      140 RETURN                           R8 1
      141 GETTABLEKS                       R9 R3 K16 ["bodyScaleSetting"]
      143 GETTABLEKS                       R8 R9 K6 ["value"]
      145 GETUPVAL                         R10 1
      146 GETTABLEKS                       R9 R10 K16 ["bodyScaleSetting"]
      148 JUMPIFNOTEQ                      R8 R9 ; [+57]
      150 GETTABLEKS                       R9 R3 K29 ["bodyScaleCustomHeight"]
      152 GETTABLEKS                       R8 R9 K6 ["value"]
      154 GETUPVAL                         R10 1
      155 GETTABLEKS                       R9 R10 K29 ["bodyScaleCustomHeight"]
      157 JUMPIFNOTEQ                      R8 R9 ; [+48]
      159 GETTABLEKS                       R9 R3 K17 ["bodyAppearanceSetting"]
      161 GETTABLEKS                       R8 R9 K6 ["value"]
      163 GETUPVAL                         R10 1
      164 GETTABLEKS                       R9 R10 K17 ["bodyAppearanceSetting"]
      166 JUMPIFNOTEQ                      R8 R9 ; [+39]
      168 GETTABLEKS                       R9 R3 K18 ["bodyBuildSetting"]
      170 GETTABLEKS                       R8 R9 K6 ["value"]
      172 GETUPVAL                         R10 1
      173 GETTABLEKS                       R9 R10 K18 ["bodyBuildSetting"]
      175 JUMPIFNOTEQ                      R8 R9 ; [+30]
      177 GETTABLEKS                       R9 R4 K19 ["collisionSetting"]
      179 GETTABLEKS                       R8 R9 K6 ["value"]
      181 GETUPVAL                         R10 1
      182 GETTABLEKS                       R9 R10 K19 ["collisionSetting"]
      184 JUMPIFNOTEQ                      R8 R9 ; [+21]
      186 GETTABLEKS                       R9 R4 K30 ["collisionSizeSetting"]
      188 GETTABLEKS                       R8 R9 K6 ["value"]
      190 GETUPVAL                         R10 1
      191 GETTABLEKS                       R9 R10 K30 ["collisionSizeSetting"]
      193 JUMPIFNOTEQ                      R8 R9 ; [+12]
      195 GETTABLEKS                       R9 R4 K31 ["collisionHitAndTouchDetectionSetting"]
      197 GETTABLEKS                       R8 R9 K6 ["value"]
      199 GETUPVAL                         R10 1
      200 GETTABLEKS                       R9 R10 K31 ["collisionHitAndTouchDetectionSetting"]
      202 JUMPIFNOTEQ                      R8 R9 ; [+3]
      204 LOADK                            R8 K32 ["ConsistentGameplay"]
      205 RETURN                           R8 1
      206 LOADNIL                          R8
      207 RETURN                           R8 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["avatarType"]
        4 GETTABLEKS                       R1 R2 K1 ["set"]
        6 GETIMPORT                        R2 K5 [Enum.GameAvatarType.R15]
        8 CALL                             R1 1 0
        9 JUMPIFNOTEQKS                    R0 K6 ["PlayerChoice"] ; [+110]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K7 ["bodyScaleSetting"]
       14 GETTABLEKS                       R1 R2 K1 ["set"]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R2 R3 K7 ["bodyScaleSetting"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K8 ["bodyAppearanceSetting"]
       23 GETTABLEKS                       R1 R2 K1 ["set"]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R2 R3 K8 ["bodyAppearanceSetting"]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R2 R3 K9 ["bodyBuildSetting"]
       32 GETTABLEKS                       R1 R2 K1 ["set"]
       34 GETUPVAL                         R3 2
       35 GETTABLEKS                       R2 R3 K9 ["bodyBuildSetting"]
       37 CALL                             R1 1 0
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R2 R3 K10 ["collisionSetting"]
       41 GETTABLEKS                       R1 R2 K1 ["set"]
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R2 R3 K10 ["collisionSetting"]
       46 CALL                             R1 1 0
       47 GETUPVAL                         R3 4
       48 GETTABLEKS                       R2 R3 K11 ["animationPacksSetting"]
       50 GETTABLEKS                       R1 R2 K1 ["set"]
       52 GETUPVAL                         R3 2
       53 GETTABLEKS                       R2 R3 K11 ["animationPacksSetting"]
       55 CALL                             R1 1 0
       56 GETUPVAL                         R3 4
       57 GETTABLEKS                       R2 R3 K12 ["animationClipsSetting"]
       59 GETTABLEKS                       R1 R2 K1 ["set"]
       61 GETUPVAL                         R3 2
       62 GETTABLEKS                       R2 R3 K12 ["animationClipsSetting"]
       64 CALL                             R1 1 0
       65 GETUPVAL                         R3 5
       66 GETTABLEKS                       R2 R3 K13 ["accessoryScaleSetting"]
       68 GETTABLEKS                       R1 R2 K1 ["set"]
       70 GETUPVAL                         R3 2
       71 GETTABLEKS                       R2 R3 K13 ["accessoryScaleSetting"]
       73 CALL                             R1 1 0
       74 GETUPVAL                         R3 5
       75 GETTABLEKS                       R2 R3 K14 ["customAccessoriesSetting"]
       77 GETTABLEKS                       R1 R2 K1 ["set"]
       79 GETUPVAL                         R3 2
       80 GETTABLEKS                       R2 R3 K14 ["customAccessoriesSetting"]
       82 CALL                             R1 1 0
       83 GETUPVAL                         R3 5
       84 GETTABLEKS                       R2 R3 K15 ["accessoryBehaviorEnableSoundSetting"]
       86 GETTABLEKS                       R1 R2 K1 ["set"]
       88 GETUPVAL                         R3 2
       89 GETTABLEKS                       R2 R3 K15 ["accessoryBehaviorEnableSoundSetting"]
       91 CALL                             R1 1 0
       92 GETUPVAL                         R3 5
       93 GETTABLEKS                       R2 R3 K16 ["accessoryBehaviorEnableVFXSetting"]
       95 GETTABLEKS                       R1 R2 K1 ["set"]
       97 GETUPVAL                         R3 2
       98 GETTABLEKS                       R2 R3 K16 ["accessoryBehaviorEnableVFXSetting"]
      100 CALL                             R1 1 0
      101 GETUPVAL                         R3 6
      102 GETTABLEKS                       R2 R3 K17 ["clothingScaleSetting"]
      104 GETTABLEKS                       R1 R2 K1 ["set"]
      106 GETUPVAL                         R3 2
      107 GETTABLEKS                       R2 R3 K17 ["clothingScaleSetting"]
      109 CALL                             R1 1 0
      110 GETUPVAL                         R3 6
      111 GETTABLEKS                       R2 R3 K18 ["customClothingSetting"]
      113 GETTABLEKS                       R1 R2 K1 ["set"]
      115 GETUPVAL                         R3 2
      116 GETTABLEKS                       R2 R3 K18 ["customClothingSetting"]
      118 CALL                             R1 1 0
      119 RETURN                           R0 0
      120 JUMPIFNOTEQKS                    R0 K19 ["ConsistentGameplay"] ; [+64]
      122 GETUPVAL                         R3 1
      123 GETTABLEKS                       R2 R3 K7 ["bodyScaleSetting"]
      125 GETTABLEKS                       R1 R2 K1 ["set"]
      127 GETUPVAL                         R3 7
      128 GETTABLEKS                       R2 R3 K7 ["bodyScaleSetting"]
      130 CALL                             R1 1 0
      131 GETUPVAL                         R3 1
      132 GETTABLEKS                       R2 R3 K20 ["bodyScaleCustomHeight"]
      134 GETTABLEKS                       R1 R2 K1 ["set"]
      136 GETUPVAL                         R3 7
      137 GETTABLEKS                       R2 R3 K20 ["bodyScaleCustomHeight"]
      139 CALL                             R1 1 0
      140 GETUPVAL                         R3 1
      141 GETTABLEKS                       R2 R3 K8 ["bodyAppearanceSetting"]
      143 GETTABLEKS                       R1 R2 K1 ["set"]
      145 GETUPVAL                         R3 7
      146 GETTABLEKS                       R2 R3 K8 ["bodyAppearanceSetting"]
      148 CALL                             R1 1 0
      149 GETUPVAL                         R3 1
      150 GETTABLEKS                       R2 R3 K9 ["bodyBuildSetting"]
      152 GETTABLEKS                       R1 R2 K1 ["set"]
      154 GETUPVAL                         R3 7
      155 GETTABLEKS                       R2 R3 K9 ["bodyBuildSetting"]
      157 CALL                             R1 1 0
      158 GETUPVAL                         R3 3
      159 GETTABLEKS                       R2 R3 K10 ["collisionSetting"]
      161 GETTABLEKS                       R1 R2 K1 ["set"]
      163 GETUPVAL                         R3 7
      164 GETTABLEKS                       R2 R3 K10 ["collisionSetting"]
      166 CALL                             R1 1 0
      167 GETUPVAL                         R3 3
      168 GETTABLEKS                       R2 R3 K21 ["collisionSizeSetting"]
      170 GETTABLEKS                       R1 R2 K1 ["set"]
      172 GETUPVAL                         R3 7
      173 GETTABLEKS                       R2 R3 K21 ["collisionSizeSetting"]
      175 CALL                             R1 1 0
      176 GETUPVAL                         R3 3
      177 GETTABLEKS                       R2 R3 K22 ["collisionHitAndTouchDetectionSetting"]
      179 GETTABLEKS                       R1 R2 K1 ["set"]
      181 GETUPVAL                         R3 7
      182 GETTABLEKS                       R2 R3 K22 ["collisionHitAndTouchDetectionSetting"]
      184 CALL                             R1 1 0
      185 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        4 MOVE                             R3 R1
        5 LOADK                            R4 K1 ["Settings must not be nil in AvatarSettingsContext"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R1 K4 ["navigationBarSettings"]
       11 GETTABLEKS                       R3 R1 K5 ["bodySettings"]
       13 GETTABLEKS                       R4 R1 K6 ["movementSettings"]
       15 GETTABLEKS                       R5 R1 K7 ["animationSettings"]
       17 GETTABLEKS                       R6 R1 K8 ["accessoriesSettings"]
       19 GETTABLEKS                       R7 R1 K9 ["clothingSettings"]
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R6
       28 CAPTURE                          VAL R7
       29 CAPTURE                          UPVAL U1
       30 RETURN                           R8 1

PROTO_3:
        0 JUMPIFNOTEQKS                    R5 K0 ["PlayerChoice"] ; [+99]
        2 LOADB                            R6 0
        3 GETTABLEKS                       R7 R0 K1 ["ScaleMode"]
        5 GETUPVAL                         R9 0
        6 GETTABLEKS                       R8 R9 K2 ["bodyScaleSetting"]
        8 JUMPIFNOTEQ                      R7 R8 ; [+90]
       10 LOADB                            R6 0
       11 GETTABLEKS                       R7 R0 K3 ["AppearanceMode"]
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R8 R9 K4 ["bodyAppearanceSetting"]
       16 JUMPIFNOTEQ                      R7 R8 ; [+82]
       18 LOADB                            R6 0
       19 GETTABLEKS                       R7 R0 K5 ["BuildMode"]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K6 ["bodyBuildSetting"]
       24 JUMPIFNOTEQ                      R7 R8 ; [+74]
       26 LOADB                            R6 0
       27 GETTABLEKS                       R7 R1 K7 ["CollisionMode"]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K8 ["collisionSetting"]
       32 JUMPIFNOTEQ                      R7 R8 ; [+66]
       34 LOADB                            R6 0
       35 GETTABLEKS                       R7 R2 K9 ["AnimationPacksMode"]
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R8 R9 K10 ["animationPacksSetting"]
       40 JUMPIFNOTEQ                      R7 R8 ; [+58]
       42 LOADB                            R6 0
       43 GETTABLEKS                       R7 R2 K11 ["AnimationClipsMode"]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R8 R9 K12 ["animationClipsSetting"]
       48 JUMPIFNOTEQ                      R7 R8 ; [+50]
       50 LOADB                            R6 0
       51 GETTABLEKS                       R7 R3 K13 ["AccessoryMode"]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R8 R9 K14 ["accessoryScaleSetting"]
       56 JUMPIFNOTEQ                      R7 R8 ; [+42]
       58 LOADB                            R6 0
       59 GETTABLEKS                       R7 R3 K15 ["CustomAccessoryMode"]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R8 R9 K16 ["customAccessoriesSetting"]
       64 JUMPIFNOTEQ                      R7 R8 ; [+34]
       66 LOADB                            R6 0
       67 GETTABLEKS                       R7 R3 K17 ["EnableSound"]
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R8 R9 K18 ["accessoryBehaviorEnableSoundSetting"]
       72 JUMPIFNOTEQ                      R7 R8 ; [+26]
       74 LOADB                            R6 0
       75 GETTABLEKS                       R7 R3 K19 ["EnableVFX"]
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R8 R9 K20 ["accessoryBehaviorEnableVFXSetting"]
       80 JUMPIFNOTEQ                      R7 R8 ; [+18]
       82 LOADB                            R6 0
       83 GETTABLEKS                       R7 R4 K21 ["ClothingMode"]
       85 GETUPVAL                         R9 0
       86 GETTABLEKS                       R8 R9 K22 ["clothingScaleSetting"]
       88 JUMPIFNOTEQ                      R7 R8 ; [+10]
       90 GETTABLEKS                       R7 R4 K23 ["CustomClothingMode"]
       92 GETUPVAL                         R9 0
       93 GETTABLEKS                       R8 R9 K24 ["customClothingSetting"]
       95 JUMPIFEQ                         R7 R8 ; [+2]
       97 LOADB                            R6 0 +1
       98 LOADB                            R6 1
       99 RETURN                           R6 1
      100 JUMPIFNOTEQKS                    R5 K25 ["ConsistentGameplay"] ; [+59]
      102 LOADB                            R6 0
      103 GETTABLEKS                       R7 R0 K1 ["ScaleMode"]
      105 GETUPVAL                         R9 1
      106 GETTABLEKS                       R8 R9 K2 ["bodyScaleSetting"]
      108 JUMPIFNOTEQ                      R7 R8 ; [+50]
      110 LOADB                            R6 0
      111 GETTABLEKS                       R7 R0 K26 ["CustomHeight"]
      113 GETUPVAL                         R9 1
      114 GETTABLEKS                       R8 R9 K27 ["bodyScaleCustomHeight"]
      116 JUMPIFNOTEQ                      R7 R8 ; [+42]
      118 LOADB                            R6 0
      119 GETTABLEKS                       R7 R0 K3 ["AppearanceMode"]
      121 GETUPVAL                         R9 1
      122 GETTABLEKS                       R8 R9 K4 ["bodyAppearanceSetting"]
      124 JUMPIFNOTEQ                      R7 R8 ; [+34]
      126 LOADB                            R6 0
      127 GETTABLEKS                       R7 R0 K5 ["BuildMode"]
      129 GETUPVAL                         R9 1
      130 GETTABLEKS                       R8 R9 K6 ["bodyBuildSetting"]
      132 JUMPIFNOTEQ                      R7 R8 ; [+26]
      134 LOADB                            R6 0
      135 GETTABLEKS                       R7 R1 K7 ["CollisionMode"]
      137 GETUPVAL                         R9 1
      138 GETTABLEKS                       R8 R9 K8 ["collisionSetting"]
      140 JUMPIFNOTEQ                      R7 R8 ; [+18]
      142 LOADB                            R6 0
      143 GETTABLEKS                       R7 R1 K28 ["SingleColliderSize"]
      145 GETUPVAL                         R9 1
      146 GETTABLEKS                       R8 R9 K29 ["collisionSizeSetting"]
      148 JUMPIFNOTEQ                      R7 R8 ; [+10]
      150 GETTABLEKS                       R7 R1 K30 ["HitAndTouchDetectionMode"]
      152 GETUPVAL                         R9 1
      153 GETTABLEKS                       R8 R9 K31 ["collisionHitAndTouchDetectionSetting"]
      155 JUMPIFEQ                         R7 R8 ; [+2]
      157 LOADB                            R6 0 +1
      158 LOADB                            R6 1
      159 RETURN                           R6 1
      160 JUMPIFEQKNIL                     R5 ; [+2]
      162 LOADB                            R6 0 +1
      163 LOADB                            R6 1
      164 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["AvatarPresetValues"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K9 ["Components"]
       22 GETTABLEKS                       R4 R5 K10 ["Contexts"]
       24 GETTABLEKS                       R3 R4 K11 ["AvatarSettingsContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K7 ["Util"]
       33 GETTABLEKS                       R4 R5 K12 ["AvatarSettingsProviderTypes"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R1 K13 ["PlayerSettingPresetValues"]
       38 GETTABLEKS                       R5 R1 K14 ["ConsistentGameplayPresetValues"]
       40 NEWTABLE                         R6 4 0
       42 DUPCLOSURE                       R7 K15 [PROTO_0]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 SETTABLEKS                       R7 R6 K16 ["computeCurrentPresetType"]
       47 DUPCLOSURE                       R7 K17 [PROTO_2]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R7 R6 K18 ["createPresetTypeSetter"]
       52 DUPCLOSURE                       R7 K19 [PROTO_3]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 SETTABLEKS                       R7 R6 K20 ["verifyRulesInstancesMatchesPreset"]
       57 RETURN                           R6 1
