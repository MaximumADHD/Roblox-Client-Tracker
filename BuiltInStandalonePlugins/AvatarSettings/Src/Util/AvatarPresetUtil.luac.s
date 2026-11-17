PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["collisionHitboxSizeSetting"]
        3 LOADB                            R2 1
        4 JUMPIFEQKNIL                     R1 ; [+5]
        6 JUMPIFEQ                         R0 R1 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NOT                              R1 R2
        3 JUMPIF                           R1 ; [+7]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["accessoryBehaviorEnableSpawnEffectsSetting"]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_2:
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
       38 JUMPIFNOTEQ                      R8 R9 ; [+130]
       40 GETTABLEKS                       R8 R3 K17 ["bodyAppearanceSetting"]
       42 GETTABLEKS                       R8 R8 K6 ["value"]
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R9 R9 K17 ["bodyAppearanceSetting"]
       47 JUMPIFNOTEQ                      R8 R9 ; [+121]
       49 GETTABLEKS                       R8 R3 K18 ["bodyBuildSetting"]
       51 GETTABLEKS                       R8 R8 K6 ["value"]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K18 ["bodyBuildSetting"]
       56 JUMPIFNOTEQ                      R8 R9 ; [+112]
       58 GETTABLEKS                       R8 R4 K19 ["collisionSetting"]
       60 GETTABLEKS                       R8 R8 K6 ["value"]
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K19 ["collisionSetting"]
       65 JUMPIFNOTEQ                      R8 R9 ; [+103]
       67 GETTABLEKS                       R8 R5 K20 ["animationPacksSetting"]
       69 GETTABLEKS                       R8 R8 K6 ["value"]
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R9 R9 K20 ["animationPacksSetting"]
       74 JUMPIFNOTEQ                      R8 R9 ; [+94]
       76 GETTABLEKS                       R8 R5 K21 ["animationClipsSetting"]
       78 GETTABLEKS                       R8 R8 K6 ["value"]
       80 GETUPVAL                         R9 0
       81 GETTABLEKS                       R9 R9 K21 ["animationClipsSetting"]
       83 JUMPIFNOTEQ                      R8 R9 ; [+85]
       85 GETTABLEKS                       R8 R6 K22 ["accessoryScaleSetting"]
       87 GETTABLEKS                       R8 R8 K6 ["value"]
       89 GETUPVAL                         R9 0
       90 GETTABLEKS                       R9 R9 K22 ["accessoryScaleSetting"]
       92 JUMPIFNOTEQ                      R8 R9 ; [+76]
       94 GETTABLEKS                       R8 R6 K23 ["customAccessoriesSetting"]
       96 GETTABLEKS                       R8 R8 K6 ["value"]
       98 GETUPVAL                         R9 0
       99 GETTABLEKS                       R9 R9 K23 ["customAccessoriesSetting"]
      101 JUMPIFNOTEQ                      R8 R9 ; [+67]
      103 GETTABLEKS                       R8 R6 K24 ["accessoryBehaviorEnableSoundSetting"]
      105 GETTABLEKS                       R8 R8 K6 ["value"]
      107 GETUPVAL                         R9 0
      108 GETTABLEKS                       R9 R9 K24 ["accessoryBehaviorEnableSoundSetting"]
      110 JUMPIFNOTEQ                      R8 R9 ; [+58]
      112 GETTABLEKS                       R8 R6 K25 ["accessoryBehaviorEnableVFXSetting"]
      114 GETTABLEKS                       R8 R8 K6 ["value"]
      116 GETUPVAL                         R9 0
      117 GETTABLEKS                       R9 R9 K25 ["accessoryBehaviorEnableVFXSetting"]
      119 JUMPIFNOTEQ                      R8 R9 ; [+49]
      121 GETTABLEKS                       R8 R6 K26 ["accessoryBehaviorEnableEmissivesSetting"]
      123 GETTABLEKS                       R8 R8 K6 ["value"]
      125 GETUPVAL                         R9 0
      126 GETTABLEKS                       R9 R9 K26 ["accessoryBehaviorEnableEmissivesSetting"]
      128 JUMPIFNOTEQ                      R8 R9 ; [+40]
      130 GETTABLEKS                       R9 R6 K27 ["accessoryBehaviorEnableSpawnEffectsSetting"]
      132 JUMPIFNOT                        R9 ; [+4]
      133 GETTABLEKS                       R9 R6 K27 ["accessoryBehaviorEnableSpawnEffectsSetting"]
      135 GETTABLEKS                       R9 R9 K6 ["value"]
      137 GETUPVAL                         R10 1
      138 CALL                             R10 0 1
      139 NOT                              R8 R10
      140 JUMPIF                           R8 ; [+7]
      141 GETUPVAL                         R10 0
      142 GETTABLEKS                       R10 R10 K27 ["accessoryBehaviorEnableSpawnEffectsSetting"]
      144 JUMPIFEQ                         R9 R10 ; [+2]
      146 LOADB                            R8 0 +1
      147 LOADB                            R8 1
      148 JUMPIFNOT                        R8 ; [+20]
      149 GETTABLEKS                       R8 R7 K28 ["clothingScaleSetting"]
      151 GETTABLEKS                       R8 R8 K6 ["value"]
      153 GETUPVAL                         R9 0
      154 GETTABLEKS                       R9 R9 K28 ["clothingScaleSetting"]
      156 JUMPIFNOTEQ                      R8 R9 ; [+12]
      158 GETTABLEKS                       R8 R7 K29 ["customClothingSetting"]
      160 GETTABLEKS                       R8 R8 K6 ["value"]
      162 GETUPVAL                         R9 0
      163 GETTABLEKS                       R9 R9 K29 ["customClothingSetting"]
      165 JUMPIFNOTEQ                      R8 R9 ; [+3]
      167 LOADK                            R8 K30 ["PlayerChoice"]
      168 RETURN                           R8 1
      169 GETTABLEKS                       R8 R3 K16 ["bodyScaleSetting"]
      171 GETTABLEKS                       R8 R8 K6 ["value"]
      173 GETUPVAL                         R9 2
      174 GETTABLEKS                       R9 R9 K16 ["bodyScaleSetting"]
      176 JUMPIFNOTEQ                      R8 R9 ; [+77]
      178 GETTABLEKS                       R8 R3 K31 ["bodyScaleCustomHeight"]
      180 GETTABLEKS                       R8 R8 K6 ["value"]
      182 GETUPVAL                         R9 2
      183 GETTABLEKS                       R9 R9 K31 ["bodyScaleCustomHeight"]
      185 JUMPIFNOTEQ                      R8 R9 ; [+68]
      187 GETTABLEKS                       R8 R3 K17 ["bodyAppearanceSetting"]
      189 GETTABLEKS                       R8 R8 K6 ["value"]
      191 GETUPVAL                         R9 2
      192 GETTABLEKS                       R9 R9 K17 ["bodyAppearanceSetting"]
      194 JUMPIFNOTEQ                      R8 R9 ; [+59]
      196 GETTABLEKS                       R8 R3 K18 ["bodyBuildSetting"]
      198 GETTABLEKS                       R8 R8 K6 ["value"]
      200 GETUPVAL                         R9 2
      201 GETTABLEKS                       R9 R9 K18 ["bodyBuildSetting"]
      203 JUMPIFNOTEQ                      R8 R9 ; [+50]
      205 GETTABLEKS                       R8 R4 K19 ["collisionSetting"]
      207 GETTABLEKS                       R8 R8 K6 ["value"]
      209 GETUPVAL                         R9 2
      210 GETTABLEKS                       R9 R9 K19 ["collisionSetting"]
      212 JUMPIFNOTEQ                      R8 R9 ; [+41]
      214 GETTABLEKS                       R8 R4 K32 ["collisionSizeSetting"]
      216 GETTABLEKS                       R8 R8 K6 ["value"]
      218 GETUPVAL                         R9 2
      219 GETTABLEKS                       R9 R9 K32 ["collisionSizeSetting"]
      221 JUMPIFNOTEQ                      R8 R9 ; [+32]
      223 GETTABLEKS                       R8 R4 K33 ["collisionHitAndTouchDetectionSetting"]
      225 GETTABLEKS                       R8 R8 K6 ["value"]
      227 GETUPVAL                         R9 2
      228 GETTABLEKS                       R9 R9 K33 ["collisionHitAndTouchDetectionSetting"]
      230 JUMPIFNOTEQ                      R8 R9 ; [+23]
      232 GETTABLEKS                       R10 R4 K34 ["collisionHitboxSizeSetting"]
      234 JUMPIFNOT                        R10 ; [+5]
      235 GETTABLEKS                       R9 R4 K34 ["collisionHitboxSizeSetting"]
      237 GETTABLEKS                       R9 R9 K6 ["value"]
      239 JUMP                             ; [+1]
      240 LOADNIL                          R9
      241 GETUPVAL                         R10 2
      242 GETTABLEKS                       R10 R10 K34 ["collisionHitboxSizeSetting"]
      244 LOADB                            R8 1
      245 JUMPIFEQKNIL                     R10 ; [+5]
      247 JUMPIFEQ                         R9 R10 ; [+2]
      249 LOADB                            R8 0 +1
      250 LOADB                            R8 1
      251 JUMPIFNOT                        R8 ; [+2]
      252 LOADK                            R8 K35 ["ConsistentGameplay"]
      253 RETURN                           R8 1
      254 LOADNIL                          R8
      255 RETURN                           R8 1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["avatarType"]
        4 GETTABLEKS                       R1 R1 K1 ["set"]
        6 GETIMPORT                        R2 K5 [Enum.GameAvatarType.R15]
        8 CALL                             R1 1 0
        9 JUMPIFNOTEQKS                    R0 K6 ["PlayerChoice"] ; [+137]
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
      111 CALL                             R1 0 1
      112 JUMPIFNOT                        R1 ; [+15]
      113 GETUPVAL                         R2 5
      114 GETTABLEKS                       R2 R2 K18 ["accessoryBehaviorEnableSpawnEffectsSetting"]
      116 FASTCALL2K                       ASSERT R2 K19 ; [+4]
      118 LOADK                            R3 K19 ["Expected enable spawn effects setting"]
      119 GETIMPORT                        R1 K21 [assert]
      121 CALL                             R1 2 1
      122 GETTABLEKS                       R2 R1 K1 ["set"]
      124 GETUPVAL                         R3 2
      125 GETTABLEKS                       R3 R3 K18 ["accessoryBehaviorEnableSpawnEffectsSetting"]
      127 CALL                             R2 1 0
      128 GETUPVAL                         R1 7
      129 GETTABLEKS                       R1 R1 K22 ["clothingScaleSetting"]
      131 GETTABLEKS                       R1 R1 K1 ["set"]
      133 GETUPVAL                         R2 2
      134 GETTABLEKS                       R2 R2 K22 ["clothingScaleSetting"]
      136 CALL                             R1 1 0
      137 GETUPVAL                         R1 7
      138 GETTABLEKS                       R1 R1 K23 ["customClothingSetting"]
      140 GETTABLEKS                       R1 R1 K1 ["set"]
      142 GETUPVAL                         R2 2
      143 GETTABLEKS                       R2 R2 K23 ["customClothingSetting"]
      145 CALL                             R1 1 0
      146 RETURN                           R0 0
      147 JUMPIFNOTEQKS                    R0 K24 ["ConsistentGameplay"] ; [+79]
      149 GETUPVAL                         R1 1
      150 GETTABLEKS                       R1 R1 K7 ["bodyScaleSetting"]
      152 GETTABLEKS                       R1 R1 K1 ["set"]
      154 GETUPVAL                         R2 8
      155 GETTABLEKS                       R2 R2 K7 ["bodyScaleSetting"]
      157 CALL                             R1 1 0
      158 GETUPVAL                         R1 1
      159 GETTABLEKS                       R1 R1 K25 ["bodyScaleCustomHeight"]
      161 GETTABLEKS                       R1 R1 K1 ["set"]
      163 GETUPVAL                         R2 8
      164 GETTABLEKS                       R2 R2 K25 ["bodyScaleCustomHeight"]
      166 CALL                             R1 1 0
      167 GETUPVAL                         R1 1
      168 GETTABLEKS                       R1 R1 K8 ["bodyAppearanceSetting"]
      170 GETTABLEKS                       R1 R1 K1 ["set"]
      172 GETUPVAL                         R2 8
      173 GETTABLEKS                       R2 R2 K8 ["bodyAppearanceSetting"]
      175 CALL                             R1 1 0
      176 GETUPVAL                         R1 1
      177 GETTABLEKS                       R1 R1 K9 ["bodyBuildSetting"]
      179 GETTABLEKS                       R1 R1 K1 ["set"]
      181 GETUPVAL                         R2 8
      182 GETTABLEKS                       R2 R2 K9 ["bodyBuildSetting"]
      184 CALL                             R1 1 0
      185 GETUPVAL                         R1 3
      186 GETTABLEKS                       R1 R1 K10 ["collisionSetting"]
      188 GETTABLEKS                       R1 R1 K1 ["set"]
      190 GETUPVAL                         R2 8
      191 GETTABLEKS                       R2 R2 K10 ["collisionSetting"]
      193 CALL                             R1 1 0
      194 GETUPVAL                         R1 3
      195 GETTABLEKS                       R1 R1 K26 ["collisionSizeSetting"]
      197 GETTABLEKS                       R1 R1 K1 ["set"]
      199 GETUPVAL                         R2 8
      200 GETTABLEKS                       R2 R2 K26 ["collisionSizeSetting"]
      202 CALL                             R1 1 0
      203 GETUPVAL                         R1 3
      204 GETTABLEKS                       R1 R1 K27 ["collisionHitAndTouchDetectionSetting"]
      206 GETTABLEKS                       R1 R1 K1 ["set"]
      208 GETUPVAL                         R2 8
      209 GETTABLEKS                       R2 R2 K27 ["collisionHitAndTouchDetectionSetting"]
      211 CALL                             R1 1 0
      212 GETUPVAL                         R1 8
      213 GETTABLEKS                       R1 R1 K28 ["collisionHitboxSizeSetting"]
      215 JUMPIFNOT                        R1 ; [+11]
      216 GETUPVAL                         R2 3
      217 GETTABLEKS                       R2 R2 K28 ["collisionHitboxSizeSetting"]
      219 JUMPIFNOT                        R2 ; [+7]
      220 GETUPVAL                         R2 3
      221 GETTABLEKS                       R2 R2 K28 ["collisionHitboxSizeSetting"]
      223 GETTABLEKS                       R2 R2 K1 ["set"]
      225 MOVE                             R3 R1
      226 CALL                             R2 1 0
      227 RETURN                           R0 0

PROTO_4:
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
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R7
       30 CAPTURE                          UPVAL U2
       31 RETURN                           R8 1

PROTO_5:
        0 JUMPIFNOTEQKS                    R6 K0 ["PlayerChoice"] ; [+126]
        2 LOADB                            R7 0
        3 GETTABLEKS                       R8 R0 K1 ["ScaleMode"]
        5 GETUPVAL                         R9 0
        6 GETTABLEKS                       R9 R9 K2 ["bodyScaleSetting"]
        8 JUMPIFNOTEQ                      R8 R9 ; [+117]
       10 LOADB                            R7 0
       11 GETTABLEKS                       R8 R0 K3 ["AppearanceMode"]
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R9 R9 K4 ["bodyAppearanceSetting"]
       16 JUMPIFNOTEQ                      R8 R9 ; [+109]
       18 LOADB                            R7 0
       19 GETTABLEKS                       R8 R0 K5 ["BuildMode"]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K6 ["bodyBuildSetting"]
       24 JUMPIFNOTEQ                      R8 R9 ; [+101]
       26 LOADB                            R7 0
       27 GETTABLEKS                       R8 R1 K7 ["CollisionMode"]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K8 ["collisionSetting"]
       32 JUMPIFNOTEQ                      R8 R9 ; [+93]
       34 LOADB                            R7 0
       35 GETTABLEKS                       R8 R3 K9 ["AnimationPacksMode"]
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K10 ["animationPacksSetting"]
       40 JUMPIFNOTEQ                      R8 R9 ; [+85]
       42 LOADB                            R7 0
       43 GETTABLEKS                       R8 R3 K11 ["AnimationClipsMode"]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K12 ["animationClipsSetting"]
       48 JUMPIFNOTEQ                      R8 R9 ; [+77]
       50 LOADB                            R7 0
       51 GETTABLEKS                       R8 R4 K13 ["AccessoryMode"]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K14 ["accessoryScaleSetting"]
       56 JUMPIFNOTEQ                      R8 R9 ; [+69]
       58 LOADB                            R7 0
       59 GETTABLEKS                       R8 R4 K15 ["CustomAccessoryMode"]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K16 ["customAccessoriesSetting"]
       64 JUMPIFNOTEQ                      R8 R9 ; [+61]
       66 LOADB                            R7 0
       67 GETTABLEKS                       R8 R4 K17 ["EnableSound"]
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R9 R9 K18 ["accessoryBehaviorEnableSoundSetting"]
       72 JUMPIFNOTEQ                      R8 R9 ; [+53]
       74 LOADB                            R7 0
       75 GETTABLEKS                       R8 R4 K19 ["EnableVFX"]
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R9 R9 K20 ["accessoryBehaviorEnableVFXSetting"]
       80 JUMPIFNOTEQ                      R8 R9 ; [+45]
       82 LOADB                            R7 0
       83 GETTABLEKS                       R8 R4 K21 ["EnableEmissives"]
       85 GETUPVAL                         R9 0
       86 GETTABLEKS                       R9 R9 K22 ["accessoryBehaviorEnableEmissivesSetting"]
       88 JUMPIFNOTEQ                      R8 R9 ; [+37]
       90 GETUPVAL                         R9 1
       91 CALL                             R9 0 1
       92 JUMPIFNOT                        R9 ; [+3]
       93 GETTABLEKS                       R8 R4 K23 ["EnableSpawnEffects"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R8
       97 GETUPVAL                         R9 1
       98 CALL                             R9 0 1
       99 NOT                              R7 R9
      100 JUMPIF                           R7 ; [+7]
      101 GETUPVAL                         R9 0
      102 GETTABLEKS                       R9 R9 K24 ["accessoryBehaviorEnableSpawnEffectsSetting"]
      104 JUMPIFEQ                         R8 R9 ; [+2]
      106 LOADB                            R7 0 +1
      107 LOADB                            R7 1
      108 JUMPIFNOT                        R7 ; [+17]
      109 LOADB                            R7 0
      110 GETTABLEKS                       R8 R5 K25 ["ClothingMode"]
      112 GETUPVAL                         R9 0
      113 GETTABLEKS                       R9 R9 K26 ["clothingScaleSetting"]
      115 JUMPIFNOTEQ                      R8 R9 ; [+10]
      117 GETTABLEKS                       R8 R5 K27 ["CustomClothingMode"]
      119 GETUPVAL                         R9 0
      120 GETTABLEKS                       R9 R9 K28 ["customClothingSetting"]
      122 JUMPIFEQ                         R8 R9 ; [+2]
      124 LOADB                            R7 0 +1
      125 LOADB                            R7 1
      126 RETURN                           R7 1
      127 JUMPIFNOTEQKS                    R6 K29 ["ConsistentGameplay"] ; [+76]
      129 LOADB                            R7 0
      130 GETTABLEKS                       R8 R0 K1 ["ScaleMode"]
      132 GETUPVAL                         R9 2
      133 GETTABLEKS                       R9 R9 K2 ["bodyScaleSetting"]
      135 JUMPIFNOTEQ                      R8 R9 ; [+67]
      137 LOADB                            R7 0
      138 GETTABLEKS                       R8 R0 K30 ["CustomHeight"]
      140 GETUPVAL                         R9 2
      141 GETTABLEKS                       R9 R9 K31 ["bodyScaleCustomHeight"]
      143 JUMPIFNOTEQ                      R8 R9 ; [+59]
      145 LOADB                            R7 0
      146 GETTABLEKS                       R8 R0 K3 ["AppearanceMode"]
      148 GETUPVAL                         R9 2
      149 GETTABLEKS                       R9 R9 K4 ["bodyAppearanceSetting"]
      151 JUMPIFNOTEQ                      R8 R9 ; [+51]
      153 LOADB                            R7 0
      154 GETTABLEKS                       R8 R0 K5 ["BuildMode"]
      156 GETUPVAL                         R9 2
      157 GETTABLEKS                       R9 R9 K6 ["bodyBuildSetting"]
      159 JUMPIFNOTEQ                      R8 R9 ; [+43]
      161 LOADB                            R7 0
      162 GETTABLEKS                       R8 R1 K7 ["CollisionMode"]
      164 GETUPVAL                         R9 2
      165 GETTABLEKS                       R9 R9 K8 ["collisionSetting"]
      167 JUMPIFNOTEQ                      R8 R9 ; [+35]
      169 LOADB                            R7 0
      170 GETTABLEKS                       R8 R1 K32 ["SingleColliderSize"]
      172 GETUPVAL                         R9 2
      173 GETTABLEKS                       R9 R9 K33 ["collisionSizeSetting"]
      175 JUMPIFNOTEQ                      R8 R9 ; [+27]
      177 LOADB                            R7 0
      178 GETTABLEKS                       R8 R1 K34 ["HitAndTouchDetectionMode"]
      180 GETUPVAL                         R9 2
      181 GETTABLEKS                       R9 R9 K35 ["collisionHitAndTouchDetectionSetting"]
      183 JUMPIFNOTEQ                      R8 R9 ; [+19]
      185 GETUPVAL                         R9 2
      186 GETTABLEKS                       R9 R9 K36 ["collisionHitboxSizeSetting"]
      188 JUMPIFNOT                        R9 ; [+3]
      189 GETTABLEKS                       R8 R1 K37 ["HitboxSize"]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R8
      193 GETUPVAL                         R9 2
      194 GETTABLEKS                       R9 R9 K36 ["collisionHitboxSizeSetting"]
      196 LOADB                            R7 1
      197 JUMPIFEQKNIL                     R9 ; [+5]
      199 JUMPIFEQ                         R8 R9 ; [+2]
      201 LOADB                            R7 0 +1
      202 LOADB                            R7 1
      203 RETURN                           R7 1
      204 JUMPIFEQKNIL                     R6 ; [+2]
      206 LOADB                            R7 0 +1
      207 LOADB                            R7 1
      208 RETURN                           R7 1

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
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K7 ["Util"]
       42 GETTABLEKS                       R5 R5 K13 ["BridgingFiles"]
       44 GETTABLEKS                       R5 R5 K14 ["AssetDmFiles"]
       46 GETTABLEKS                       R5 R5 K15 ["assetDmTypes"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K5 [require]
       51 GETTABLEKS                       R6 R0 K6 ["Src"]
       53 GETTABLEKS                       R6 R6 K16 ["Flags"]
       55 GETTABLEKS                       R6 R6 K17 ["getEngineFeatureAvatarSettingsSpawnEffects"]
       57 CALL                             R5 1 1
       58 GETTABLEKS                       R6 R1 K18 ["PlayerSettingPresetValues"]
       60 GETTABLEKS                       R7 R1 K19 ["ConsistentGameplayPresetValues"]
       62 DUPCLOSURE                       R8 K20 [PROTO_0]
       63 CAPTURE                          VAL R7
       64 NEWTABLE                         R9 4 0
       66 DUPCLOSURE                       R10 K21 [PROTO_1]
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R6
       69 DUPCLOSURE                       R11 K22 [PROTO_2]
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R7
       73 SETTABLEKS                       R11 R9 K23 ["computeCurrentPresetType"]
       75 DUPCLOSURE                       R11 K24 [PROTO_4]
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R7
       79 SETTABLEKS                       R11 R9 K25 ["createPresetTypeSetter"]
       81 DUPCLOSURE                       R11 K26 [PROTO_5]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R7
       85 SETTABLEKS                       R11 R9 K27 ["verifyRulesInstancesMatchesPreset"]
       87 RETURN                           R9 1
