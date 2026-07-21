PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        4 MOVE                             R3 R1
        5 LOADK                            R4 K1 ["Settings must not be nil in AvatarSettingsContext"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R1 K4 ["navigationBarSettings"]
       11 GETTABLEKS                       R3 R2 K5 ["avatarType"]
       13 GETTABLEKS                       R3 R3 K6 ["value"]
       15 GETIMPORT                        R4 K10 [Enum.GameAvatarType.R15]
       17 JUMPIFEQ                         R3 R4 ; [+3]
       19 LOADNIL                          R3
       20 RETURN                           R3 1
       21 GETTABLEKS                       R3 R1 K11 ["bodySettings"]
       23 GETTABLEKS                       R4 R1 K12 ["movementSettings"]
       25 GETTABLEKS                       R5 R1 K13 ["animationSettings"]
       27 GETTABLEKS                       R6 R1 K14 ["accessoriesSettings"]
       29 GETTABLEKS                       R7 R1 K15 ["clothingSettings"]
       31 GETTABLEKS                       R8 R3 K16 ["bodyScaleSetting"]
       33 GETTABLEKS                       R8 R8 K6 ["value"]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K16 ["bodyScaleSetting"]
       38 JUMPIFNOTEQ                      R8 R9 ; [+111]
       40 GETTABLEKS                       R8 R3 K17 ["bodyAppearanceSetting"]
       42 GETTABLEKS                       R8 R8 K6 ["value"]
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R9 R9 K17 ["bodyAppearanceSetting"]
       47 JUMPIFNOTEQ                      R8 R9 ; [+102]
       49 GETTABLEKS                       R8 R3 K18 ["bodyBuildSetting"]
       51 GETTABLEKS                       R8 R8 K6 ["value"]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K18 ["bodyBuildSetting"]
       56 JUMPIFNOTEQ                      R8 R9 ; [+93]
       58 GETTABLEKS                       R8 R4 K19 ["collisionSetting"]
       60 GETTABLEKS                       R8 R8 K6 ["value"]
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K19 ["collisionSetting"]
       65 JUMPIFNOTEQ                      R8 R9 ; [+84]
       67 GETTABLEKS                       R8 R5 K20 ["animationPacksSetting"]
       69 GETTABLEKS                       R8 R8 K6 ["value"]
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R9 R9 K20 ["animationPacksSetting"]
       74 JUMPIFNOTEQ                      R8 R9 ; [+75]
       76 GETTABLEKS                       R8 R5 K21 ["animationClipsSetting"]
       78 GETTABLEKS                       R8 R8 K6 ["value"]
       80 GETUPVAL                         R9 0
       81 GETTABLEKS                       R9 R9 K21 ["animationClipsSetting"]
       83 JUMPIFNOTEQ                      R8 R9 ; [+66]
       85 GETTABLEKS                       R8 R6 K22 ["accessoryScaleSetting"]
       87 GETTABLEKS                       R8 R8 K6 ["value"]
       89 GETUPVAL                         R9 0
       90 GETTABLEKS                       R9 R9 K22 ["accessoryScaleSetting"]
       92 JUMPIFNOTEQ                      R8 R9 ; [+57]
       94 GETTABLEKS                       R8 R6 K23 ["customAccessoriesSetting"]
       96 GETTABLEKS                       R8 R8 K6 ["value"]
       98 GETUPVAL                         R9 0
       99 GETTABLEKS                       R9 R9 K23 ["customAccessoriesSetting"]
      101 JUMPIFNOTEQ                      R8 R9 ; [+48]
      103 GETTABLEKS                       R8 R6 K24 ["accessoryBehaviorEnableSoundSetting"]
      105 GETTABLEKS                       R8 R8 K6 ["value"]
      107 GETUPVAL                         R9 0
      108 GETTABLEKS                       R9 R9 K24 ["accessoryBehaviorEnableSoundSetting"]
      110 JUMPIFNOTEQ                      R8 R9 ; [+39]
      112 GETTABLEKS                       R8 R6 K25 ["accessoryBehaviorEnableVFXSetting"]
      114 GETTABLEKS                       R8 R8 K6 ["value"]
      116 GETUPVAL                         R9 0
      117 GETTABLEKS                       R9 R9 K25 ["accessoryBehaviorEnableVFXSetting"]
      119 JUMPIFNOTEQ                      R8 R9 ; [+30]
      121 GETTABLEKS                       R8 R6 K26 ["accessoryBehaviorEnableEmissivesSetting"]
      123 GETTABLEKS                       R8 R8 K6 ["value"]
      125 GETUPVAL                         R9 0
      126 GETTABLEKS                       R9 R9 K26 ["accessoryBehaviorEnableEmissivesSetting"]
      128 JUMPIFNOTEQ                      R8 R9 ; [+21]
      130 GETTABLEKS                       R8 R7 K27 ["clothingScaleSetting"]
      132 GETTABLEKS                       R8 R8 K6 ["value"]
      134 GETUPVAL                         R9 0
      135 GETTABLEKS                       R9 R9 K27 ["clothingScaleSetting"]
      137 JUMPIFNOTEQ                      R8 R9 ; [+12]
      139 GETTABLEKS                       R8 R7 K28 ["customClothingSetting"]
      141 GETTABLEKS                       R8 R8 K6 ["value"]
      143 GETUPVAL                         R9 0
      144 GETTABLEKS                       R9 R9 K28 ["customClothingSetting"]
      146 JUMPIFNOTEQ                      R8 R9 ; [+3]
      148 LOADK                            R8 K29 ["PlayerChoice"]
      149 RETURN                           R8 1
      150 GETTABLEKS                       R8 R3 K16 ["bodyScaleSetting"]
      152 GETTABLEKS                       R8 R8 K6 ["value"]
      154 GETUPVAL                         R9 1
      155 GETTABLEKS                       R9 R9 K16 ["bodyScaleSetting"]
      157 JUMPIFNOTEQ                      R8 R9 ; [+57]
      159 GETTABLEKS                       R8 R3 K30 ["bodyScaleCustomHeight"]
      161 GETTABLEKS                       R8 R8 K6 ["value"]
      163 GETUPVAL                         R9 1
      164 GETTABLEKS                       R9 R9 K30 ["bodyScaleCustomHeight"]
      166 JUMPIFNOTEQ                      R8 R9 ; [+48]
      168 GETTABLEKS                       R8 R3 K17 ["bodyAppearanceSetting"]
      170 GETTABLEKS                       R8 R8 K6 ["value"]
      172 GETUPVAL                         R9 1
      173 GETTABLEKS                       R9 R9 K17 ["bodyAppearanceSetting"]
      175 JUMPIFNOTEQ                      R8 R9 ; [+39]
      177 GETTABLEKS                       R8 R3 K18 ["bodyBuildSetting"]
      179 GETTABLEKS                       R8 R8 K6 ["value"]
      181 GETUPVAL                         R9 1
      182 GETTABLEKS                       R9 R9 K18 ["bodyBuildSetting"]
      184 JUMPIFNOTEQ                      R8 R9 ; [+30]
      186 GETTABLEKS                       R8 R4 K19 ["collisionSetting"]
      188 GETTABLEKS                       R8 R8 K6 ["value"]
      190 GETUPVAL                         R9 1
      191 GETTABLEKS                       R9 R9 K19 ["collisionSetting"]
      193 JUMPIFNOTEQ                      R8 R9 ; [+21]
      195 GETTABLEKS                       R8 R4 K31 ["collisionSizeSetting"]
      197 GETTABLEKS                       R8 R8 K6 ["value"]
      199 GETUPVAL                         R9 1
      200 GETTABLEKS                       R9 R9 K31 ["collisionSizeSetting"]
      202 JUMPIFNOTEQ                      R8 R9 ; [+12]
      204 GETTABLEKS                       R8 R4 K32 ["collisionHitAndTouchDetectionSetting"]
      206 GETTABLEKS                       R8 R8 K6 ["value"]
      208 GETUPVAL                         R9 1
      209 GETTABLEKS                       R9 R9 K32 ["collisionHitAndTouchDetectionSetting"]
      211 JUMPIFNOTEQ                      R8 R9 ; [+3]
      213 LOADK                            R8 K33 ["ConsistentGameplay"]
      214 RETURN                           R8 1
      215 LOADNIL                          R8
      216 RETURN                           R8 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["avatarType"]
        4 GETTABLEKS                       R1 R1 K1 ["set"]
        6 GETIMPORT                        R2 K5 [Enum.GameAvatarType.R15]
        8 CALL                             R1 1 0
        9 JUMPIFNOTEQKS                    R0 K6 ["PlayerChoice"] ; [+119]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K7 ["bodyScaleSetting"]
       14 GETTABLEKS                       R1 R1 K1 ["set"]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K7 ["bodyScaleSetting"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K8 ["bodyAppearanceSetting"]
       23 GETTABLEKS                       R1 R1 K1 ["set"]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K8 ["bodyAppearanceSetting"]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R1 K9 ["bodyBuildSetting"]
       32 GETTABLEKS                       R1 R1 K1 ["set"]
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K9 ["bodyBuildSetting"]
       37 CALL                             R1 1 0
       38 GETUPVAL                         R1 3
       39 GETTABLEKS                       R1 R1 K10 ["collisionSetting"]
       41 GETTABLEKS                       R1 R1 K1 ["set"]
       43 GETUPVAL                         R2 2
       44 GETTABLEKS                       R2 R2 K10 ["collisionSetting"]
       46 CALL                             R1 1 0
       47 GETUPVAL                         R1 4
       48 GETTABLEKS                       R1 R1 K11 ["animationPacksSetting"]
       50 GETTABLEKS                       R1 R1 K1 ["set"]
       52 GETUPVAL                         R2 2
       53 GETTABLEKS                       R2 R2 K11 ["animationPacksSetting"]
       55 CALL                             R1 1 0
       56 GETUPVAL                         R1 4
       57 GETTABLEKS                       R1 R1 K12 ["animationClipsSetting"]
       59 GETTABLEKS                       R1 R1 K1 ["set"]
       61 GETUPVAL                         R2 2
       62 GETTABLEKS                       R2 R2 K12 ["animationClipsSetting"]
       64 CALL                             R1 1 0
       65 GETUPVAL                         R1 5
       66 GETTABLEKS                       R1 R1 K13 ["accessoryScaleSetting"]
       68 GETTABLEKS                       R1 R1 K1 ["set"]
       70 GETUPVAL                         R2 2
       71 GETTABLEKS                       R2 R2 K13 ["accessoryScaleSetting"]
       73 CALL                             R1 1 0
       74 GETUPVAL                         R1 5
       75 GETTABLEKS                       R1 R1 K14 ["customAccessoriesSetting"]
       77 GETTABLEKS                       R1 R1 K1 ["set"]
       79 GETUPVAL                         R2 2
       80 GETTABLEKS                       R2 R2 K14 ["customAccessoriesSetting"]
       82 CALL                             R1 1 0
       83 GETUPVAL                         R1 5
       84 GETTABLEKS                       R1 R1 K15 ["accessoryBehaviorEnableSoundSetting"]
       86 GETTABLEKS                       R1 R1 K1 ["set"]
       88 GETUPVAL                         R2 2
       89 GETTABLEKS                       R2 R2 K15 ["accessoryBehaviorEnableSoundSetting"]
       91 CALL                             R1 1 0
       92 GETUPVAL                         R1 5
       93 GETTABLEKS                       R1 R1 K16 ["accessoryBehaviorEnableVFXSetting"]
       95 GETTABLEKS                       R1 R1 K1 ["set"]
       97 GETUPVAL                         R2 2
       98 GETTABLEKS                       R2 R2 K16 ["accessoryBehaviorEnableVFXSetting"]
      100 CALL                             R1 1 0
      101 GETUPVAL                         R1 5
      102 GETTABLEKS                       R1 R1 K17 ["accessoryBehaviorEnableEmissivesSetting"]
      104 GETTABLEKS                       R1 R1 K1 ["set"]
      106 GETUPVAL                         R2 2
      107 GETTABLEKS                       R2 R2 K17 ["accessoryBehaviorEnableEmissivesSetting"]
      109 CALL                             R1 1 0
      110 GETUPVAL                         R1 6
      111 GETTABLEKS                       R1 R1 K18 ["clothingScaleSetting"]
      113 GETTABLEKS                       R1 R1 K1 ["set"]
      115 GETUPVAL                         R2 2
      116 GETTABLEKS                       R2 R2 K18 ["clothingScaleSetting"]
      118 CALL                             R1 1 0
      119 GETUPVAL                         R1 6
      120 GETTABLEKS                       R1 R1 K19 ["customClothingSetting"]
      122 GETTABLEKS                       R1 R1 K1 ["set"]
      124 GETUPVAL                         R2 2
      125 GETTABLEKS                       R2 R2 K19 ["customClothingSetting"]
      127 CALL                             R1 1 0
      128 RETURN                           R0 0
      129 JUMPIFNOTEQKS                    R0 K20 ["ConsistentGameplay"] ; [+64]
      131 GETUPVAL                         R1 1
      132 GETTABLEKS                       R1 R1 K7 ["bodyScaleSetting"]
      134 GETTABLEKS                       R1 R1 K1 ["set"]
      136 GETUPVAL                         R2 7
      137 GETTABLEKS                       R2 R2 K7 ["bodyScaleSetting"]
      139 CALL                             R1 1 0
      140 GETUPVAL                         R1 1
      141 GETTABLEKS                       R1 R1 K21 ["bodyScaleCustomHeight"]
      143 GETTABLEKS                       R1 R1 K1 ["set"]
      145 GETUPVAL                         R2 7
      146 GETTABLEKS                       R2 R2 K21 ["bodyScaleCustomHeight"]
      148 CALL                             R1 1 0
      149 GETUPVAL                         R1 1
      150 GETTABLEKS                       R1 R1 K8 ["bodyAppearanceSetting"]
      152 GETTABLEKS                       R1 R1 K1 ["set"]
      154 GETUPVAL                         R2 7
      155 GETTABLEKS                       R2 R2 K8 ["bodyAppearanceSetting"]
      157 CALL                             R1 1 0
      158 GETUPVAL                         R1 1
      159 GETTABLEKS                       R1 R1 K9 ["bodyBuildSetting"]
      161 GETTABLEKS                       R1 R1 K1 ["set"]
      163 GETUPVAL                         R2 7
      164 GETTABLEKS                       R2 R2 K9 ["bodyBuildSetting"]
      166 CALL                             R1 1 0
      167 GETUPVAL                         R1 3
      168 GETTABLEKS                       R1 R1 K10 ["collisionSetting"]
      170 GETTABLEKS                       R1 R1 K1 ["set"]
      172 GETUPVAL                         R2 7
      173 GETTABLEKS                       R2 R2 K10 ["collisionSetting"]
      175 CALL                             R1 1 0
      176 GETUPVAL                         R1 3
      177 GETTABLEKS                       R1 R1 K22 ["collisionSizeSetting"]
      179 GETTABLEKS                       R1 R1 K1 ["set"]
      181 GETUPVAL                         R2 7
      182 GETTABLEKS                       R2 R2 K22 ["collisionSizeSetting"]
      184 CALL                             R1 1 0
      185 GETUPVAL                         R1 3
      186 GETTABLEKS                       R1 R1 K23 ["collisionHitAndTouchDetectionSetting"]
      188 GETTABLEKS                       R1 R1 K1 ["set"]
      190 GETUPVAL                         R2 7
      191 GETTABLEKS                       R2 R2 K23 ["collisionHitAndTouchDetectionSetting"]
      193 CALL                             R1 1 0
      194 RETURN                           R0 0

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
        0 JUMPIFNOTEQKS                    R6 K0 ["PlayerChoice"] ; [+107]
        2 LOADB                            R7 0
        3 GETTABLEKS                       R8 R0 K1 ["ScaleMode"]
        5 GETUPVAL                         R9 0
        6 GETTABLEKS                       R9 R9 K2 ["bodyScaleSetting"]
        8 JUMPIFNOTEQ                      R8 R9 ; [+98]
       10 LOADB                            R7 0
       11 GETTABLEKS                       R8 R0 K3 ["AppearanceMode"]
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R9 R9 K4 ["bodyAppearanceSetting"]
       16 JUMPIFNOTEQ                      R8 R9 ; [+90]
       18 LOADB                            R7 0
       19 GETTABLEKS                       R8 R0 K5 ["BuildMode"]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K6 ["bodyBuildSetting"]
       24 JUMPIFNOTEQ                      R8 R9 ; [+82]
       26 LOADB                            R7 0
       27 GETTABLEKS                       R8 R1 K7 ["CollisionMode"]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K8 ["collisionSetting"]
       32 JUMPIFNOTEQ                      R8 R9 ; [+74]
       34 LOADB                            R7 0
       35 GETTABLEKS                       R8 R3 K9 ["AnimationPacksMode"]
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K10 ["animationPacksSetting"]
       40 JUMPIFNOTEQ                      R8 R9 ; [+66]
       42 LOADB                            R7 0
       43 GETTABLEKS                       R8 R3 K11 ["AnimationClipsMode"]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K12 ["animationClipsSetting"]
       48 JUMPIFNOTEQ                      R8 R9 ; [+58]
       50 LOADB                            R7 0
       51 GETTABLEKS                       R8 R4 K13 ["AccessoryMode"]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K14 ["accessoryScaleSetting"]
       56 JUMPIFNOTEQ                      R8 R9 ; [+50]
       58 LOADB                            R7 0
       59 GETTABLEKS                       R8 R4 K15 ["CustomAccessoryMode"]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K16 ["customAccessoriesSetting"]
       64 JUMPIFNOTEQ                      R8 R9 ; [+42]
       66 LOADB                            R7 0
       67 GETTABLEKS                       R8 R4 K17 ["EnableSound"]
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R9 R9 K18 ["accessoryBehaviorEnableSoundSetting"]
       72 JUMPIFNOTEQ                      R8 R9 ; [+34]
       74 LOADB                            R7 0
       75 GETTABLEKS                       R8 R4 K19 ["EnableVFX"]
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R9 R9 K20 ["accessoryBehaviorEnableVFXSetting"]
       80 JUMPIFNOTEQ                      R8 R9 ; [+26]
       82 LOADB                            R7 0
       83 GETTABLEKS                       R8 R4 K21 ["EnableEmissives"]
       85 GETUPVAL                         R9 0
       86 GETTABLEKS                       R9 R9 K22 ["accessoryBehaviorEnableEmissivesSetting"]
       88 JUMPIFNOTEQ                      R8 R9 ; [+18]
       90 LOADB                            R7 0
       91 GETTABLEKS                       R8 R5 K23 ["ClothingMode"]
       93 GETUPVAL                         R9 0
       94 GETTABLEKS                       R9 R9 K24 ["clothingScaleSetting"]
       96 JUMPIFNOTEQ                      R8 R9 ; [+10]
       98 GETTABLEKS                       R8 R5 K25 ["CustomClothingMode"]
      100 GETUPVAL                         R9 0
      101 GETTABLEKS                       R9 R9 K26 ["customClothingSetting"]
      103 JUMPIFEQ                         R8 R9 ; [+2]
      105 LOADB                            R7 0 +1
      106 LOADB                            R7 1
      107 RETURN                           R7 1
      108 JUMPIFNOTEQKS                    R6 K27 ["ConsistentGameplay"] ; [+59]
      110 LOADB                            R7 0
      111 GETTABLEKS                       R8 R0 K1 ["ScaleMode"]
      113 GETUPVAL                         R9 1
      114 GETTABLEKS                       R9 R9 K2 ["bodyScaleSetting"]
      116 JUMPIFNOTEQ                      R8 R9 ; [+50]
      118 LOADB                            R7 0
      119 GETTABLEKS                       R8 R0 K28 ["CustomHeight"]
      121 GETUPVAL                         R9 1
      122 GETTABLEKS                       R9 R9 K29 ["bodyScaleCustomHeight"]
      124 JUMPIFNOTEQ                      R8 R9 ; [+42]
      126 LOADB                            R7 0
      127 GETTABLEKS                       R8 R0 K3 ["AppearanceMode"]
      129 GETUPVAL                         R9 1
      130 GETTABLEKS                       R9 R9 K4 ["bodyAppearanceSetting"]
      132 JUMPIFNOTEQ                      R8 R9 ; [+34]
      134 LOADB                            R7 0
      135 GETTABLEKS                       R8 R0 K5 ["BuildMode"]
      137 GETUPVAL                         R9 1
      138 GETTABLEKS                       R9 R9 K6 ["bodyBuildSetting"]
      140 JUMPIFNOTEQ                      R8 R9 ; [+26]
      142 LOADB                            R7 0
      143 GETTABLEKS                       R8 R1 K7 ["CollisionMode"]
      145 GETUPVAL                         R9 1
      146 GETTABLEKS                       R9 R9 K8 ["collisionSetting"]
      148 JUMPIFNOTEQ                      R8 R9 ; [+18]
      150 LOADB                            R7 0
      151 GETTABLEKS                       R8 R1 K30 ["SingleColliderSize"]
      153 GETUPVAL                         R9 1
      154 GETTABLEKS                       R9 R9 K31 ["collisionSizeSetting"]
      156 JUMPIFNOTEQ                      R8 R9 ; [+10]
      158 GETTABLEKS                       R8 R1 K32 ["HitAndTouchDetectionMode"]
      160 GETUPVAL                         R9 1
      161 GETTABLEKS                       R9 R9 K33 ["collisionHitAndTouchDetectionSetting"]
      163 JUMPIFEQ                         R8 R9 ; [+2]
      165 LOADB                            R7 0 +1
      166 LOADB                            R7 1
      167 RETURN                           R7 1
      168 JUMPIFEQKNIL                     R6 ; [+2]
      170 LOADB                            R7 0 +1
      171 LOADB                            R7 1
      172 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarPresetValues"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       24 GETTABLEKS                       R3 R3 K11 ["AvatarSettingsContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Util"]
       33 GETTABLEKS                       R4 R4 K12 ["AvatarSettingsProviderTypes"]
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
