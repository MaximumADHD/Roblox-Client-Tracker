PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["assetId"]
        2 GETTABLEKS                       R2 R2 K1 ["set"]
        4 GETTABLEKS                       R3 R1 K2 ["AssetId"]
        6 LOADB                            R4 1
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K3 ["enabled"]
       10 GETTABLEKS                       R2 R2 K1 ["set"]
       12 GETTABLEKS                       R3 R1 K4 ["Enabled"]
       14 LOADB                            R4 1
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["bodySettings"]
       11 GETTABLEKS                       R4 R3 K5 ["bodyScaleSetting"]
       13 GETTABLEKS                       R4 R4 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["ScaleMode"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R4 R3 K8 ["bodyScaleCustomHeight"]
       21 GETTABLEKS                       R4 R4 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["CustomHeight"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R4 R3 K10 ["bodyAppearanceSetting"]
       29 GETTABLEKS                       R4 R4 K6 ["set"]
       31 GETTABLEKS                       R5 R1 K11 ["AppearanceMode"]
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R3 K12 ["bodyAppearanceCustomPartsFace"]
       37 GETTABLEKS                       R5 R1 K13 ["CustomFace"]
       39 GETTABLEKS                       R6 R4 K14 ["assetId"]
       41 GETTABLEKS                       R6 R6 K6 ["set"]
       43 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       45 LOADB                            R8 1
       46 CALL                             R6 2 0
       47 GETTABLEKS                       R6 R4 K16 ["enabled"]
       49 GETTABLEKS                       R6 R6 K6 ["set"]
       51 GETTABLEKS                       R7 R5 K17 ["Enabled"]
       53 LOADB                            R8 1
       54 CALL                             R6 2 0
       55 GETTABLEKS                       R4 R3 K18 ["bodyAppearanceCustomPartsHead"]
       57 GETTABLEKS                       R5 R1 K19 ["CustomHead"]
       59 GETTABLEKS                       R6 R4 K14 ["assetId"]
       61 GETTABLEKS                       R6 R6 K6 ["set"]
       63 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       65 LOADB                            R8 1
       66 CALL                             R6 2 0
       67 GETTABLEKS                       R6 R4 K16 ["enabled"]
       69 GETTABLEKS                       R6 R6 K6 ["set"]
       71 GETTABLEKS                       R7 R5 K17 ["Enabled"]
       73 LOADB                            R8 1
       74 CALL                             R6 2 0
       75 GETTABLEKS                       R4 R3 K20 ["bodyAppearanceCustomPartsMood"]
       77 GETTABLEKS                       R5 R1 K21 ["CustomMood"]
       79 GETTABLEKS                       R6 R4 K14 ["assetId"]
       81 GETTABLEKS                       R6 R6 K6 ["set"]
       83 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       85 LOADB                            R8 1
       86 CALL                             R6 2 0
       87 GETTABLEKS                       R6 R4 K16 ["enabled"]
       89 GETTABLEKS                       R6 R6 K6 ["set"]
       91 GETTABLEKS                       R7 R5 K17 ["Enabled"]
       93 LOADB                            R8 1
       94 CALL                             R6 2 0
       95 GETTABLEKS                       R4 R3 K22 ["bodyAppearanceCustomPartsEyebrow"]
       97 GETTABLEKS                       R5 R1 K23 ["CustomEyebrow"]
       99 GETTABLEKS                       R6 R4 K14 ["assetId"]
      101 GETTABLEKS                       R6 R6 K6 ["set"]
      103 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      105 LOADB                            R8 1
      106 CALL                             R6 2 0
      107 GETTABLEKS                       R6 R4 K16 ["enabled"]
      109 GETTABLEKS                       R6 R6 K6 ["set"]
      111 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      113 LOADB                            R8 1
      114 CALL                             R6 2 0
      115 GETTABLEKS                       R4 R3 K24 ["bodyAppearanceCustomPartsEyelash"]
      117 GETTABLEKS                       R5 R1 K25 ["CustomEyelash"]
      119 GETTABLEKS                       R6 R4 K14 ["assetId"]
      121 GETTABLEKS                       R6 R6 K6 ["set"]
      123 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      125 LOADB                            R8 1
      126 CALL                             R6 2 0
      127 GETTABLEKS                       R6 R4 K16 ["enabled"]
      129 GETTABLEKS                       R6 R6 K6 ["set"]
      131 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      133 LOADB                            R8 1
      134 CALL                             R6 2 0
      135 GETTABLEKS                       R4 R3 K26 ["bodyAppearanceCustomPartsTorso"]
      137 GETTABLEKS                       R5 R1 K27 ["CustomTorso"]
      139 GETTABLEKS                       R6 R4 K14 ["assetId"]
      141 GETTABLEKS                       R6 R6 K6 ["set"]
      143 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      145 LOADB                            R8 1
      146 CALL                             R6 2 0
      147 GETTABLEKS                       R6 R4 K16 ["enabled"]
      149 GETTABLEKS                       R6 R6 K6 ["set"]
      151 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      153 LOADB                            R8 1
      154 CALL                             R6 2 0
      155 GETTABLEKS                       R4 R3 K28 ["bodyAppearanceCustomPartsLeftArm"]
      157 GETTABLEKS                       R5 R1 K29 ["CustomLeftArm"]
      159 GETTABLEKS                       R6 R4 K14 ["assetId"]
      161 GETTABLEKS                       R6 R6 K6 ["set"]
      163 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      165 LOADB                            R8 1
      166 CALL                             R6 2 0
      167 GETTABLEKS                       R6 R4 K16 ["enabled"]
      169 GETTABLEKS                       R6 R6 K6 ["set"]
      171 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      173 LOADB                            R8 1
      174 CALL                             R6 2 0
      175 GETTABLEKS                       R4 R3 K30 ["bodyAppearanceCustomPartsRightArm"]
      177 GETTABLEKS                       R5 R1 K31 ["CustomRightArm"]
      179 GETTABLEKS                       R6 R4 K14 ["assetId"]
      181 GETTABLEKS                       R6 R6 K6 ["set"]
      183 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      185 LOADB                            R8 1
      186 CALL                             R6 2 0
      187 GETTABLEKS                       R6 R4 K16 ["enabled"]
      189 GETTABLEKS                       R6 R6 K6 ["set"]
      191 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      193 LOADB                            R8 1
      194 CALL                             R6 2 0
      195 GETTABLEKS                       R4 R3 K32 ["bodyAppearanceCustomPartsLeftLeg"]
      197 GETTABLEKS                       R5 R1 K33 ["CustomLeftLeg"]
      199 GETTABLEKS                       R6 R4 K14 ["assetId"]
      201 GETTABLEKS                       R6 R6 K6 ["set"]
      203 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      205 LOADB                            R8 1
      206 CALL                             R6 2 0
      207 GETTABLEKS                       R6 R4 K16 ["enabled"]
      209 GETTABLEKS                       R6 R6 K6 ["set"]
      211 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      213 LOADB                            R8 1
      214 CALL                             R6 2 0
      215 GETTABLEKS                       R4 R3 K34 ["bodyAppearanceCustomPartsRightLeg"]
      217 GETTABLEKS                       R5 R1 K35 ["CustomRightLeg"]
      219 GETTABLEKS                       R6 R4 K14 ["assetId"]
      221 GETTABLEKS                       R6 R6 K6 ["set"]
      223 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      225 LOADB                            R8 1
      226 CALL                             R6 2 0
      227 GETTABLEKS                       R6 R4 K16 ["enabled"]
      229 GETTABLEKS                       R6 R6 K6 ["set"]
      231 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      233 LOADB                            R8 1
      234 CALL                             R6 2 0
      235 GETTABLEKS                       R4 R3 K36 ["bodyBuildSetting"]
      237 GETTABLEKS                       R4 R4 K6 ["set"]
      239 GETTABLEKS                       R5 R1 K37 ["BuildMode"]
      241 LOADB                            R6 1
      242 CALL                             R4 2 0
      243 GETTABLEKS                       R4 R3 K38 ["bodyBuildCustomHeight"]
      245 GETTABLEKS                       R4 R4 K6 ["set"]
      247 GETTABLEKS                       R5 R1 K39 ["CustomHeightScale"]
      249 LOADB                            R6 1
      250 CALL                             R4 2 0
      251 GETTABLEKS                       R4 R3 K40 ["bodyBuildCustomWidth"]
      253 GETTABLEKS                       R4 R4 K6 ["set"]
      255 GETTABLEKS                       R5 R1 K41 ["CustomWidthScale"]
      257 LOADB                            R6 1
      258 CALL                             R4 2 0
      259 GETTABLEKS                       R4 R3 K42 ["bodyBuildCustomHead"]
      261 GETTABLEKS                       R4 R4 K6 ["set"]
      263 GETTABLEKS                       R5 R1 K43 ["CustomHeadScale"]
      265 LOADB                            R6 1
      266 CALL                             R4 2 0
      267 GETTABLEKS                       R4 R3 K44 ["bodyBuildCustomBodyType"]
      269 GETTABLEKS                       R4 R4 K6 ["set"]
      271 GETTABLEKS                       R5 R1 K45 ["CustomBodyTypeScale"]
      273 LOADB                            R6 1
      274 CALL                             R4 2 0
      275 GETTABLEKS                       R4 R3 K46 ["bodyBuildCustomProportions"]
      277 GETTABLEKS                       R4 R4 K6 ["set"]
      279 GETTABLEKS                       R5 R1 K47 ["CustomProportionsScale"]
      281 LOADB                            R6 1
      282 CALL                             R4 2 0
      283 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["movementSettings"]
       11 GETTABLEKS                       R4 R3 K5 ["collisionSetting"]
       13 GETTABLEKS                       R4 R4 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["CollisionMode"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R4 R3 K8 ["collisionHitAndTouchDetectionSetting"]
       21 GETTABLEKS                       R4 R4 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["HitAndTouchDetectionMode"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R4 R3 K10 ["collisionMethodSetting"]
       29 GETTABLEKS                       R4 R4 K6 ["set"]
       31 GETTABLEKS                       R5 R1 K11 ["AvatarSettingsLegacyCollisionMode"]
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R3 K12 ["collisionSizeSetting"]
       37 GETTABLEKS                       R4 R4 K6 ["set"]
       39 GETTABLEKS                       R5 R1 K13 ["SingleColliderSize"]
       41 LOADB                            R6 1
       42 CALL                             R4 2 0
       43 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["animationSettings"]
       11 GETTABLEKS                       R4 R3 K5 ["animationPacksSetting"]
       13 GETTABLEKS                       R4 R4 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["AnimationPacksMode"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R4 R3 K8 ["animationClipsSetting"]
       21 GETTABLEKS                       R4 R4 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["AnimationClipsMode"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R4 R3 K10 ["animationClipsRunSetting"]
       29 GETTABLEKS                       R5 R1 K11 ["CustomRunAnimation"]
       31 GETTABLEKS                       R6 R4 K12 ["assetId"]
       33 GETTABLEKS                       R6 R6 K6 ["set"]
       35 GETTABLEKS                       R7 R5 K13 ["AssetId"]
       37 LOADB                            R8 1
       38 CALL                             R6 2 0
       39 GETTABLEKS                       R6 R4 K14 ["enabled"]
       41 GETTABLEKS                       R6 R6 K6 ["set"]
       43 GETTABLEKS                       R7 R5 K15 ["Enabled"]
       45 LOADB                            R8 1
       46 CALL                             R6 2 0
       47 GETTABLEKS                       R4 R3 K16 ["animationClipsWalkSetting"]
       49 GETTABLEKS                       R5 R1 K17 ["CustomWalkAnimation"]
       51 GETTABLEKS                       R6 R4 K12 ["assetId"]
       53 GETTABLEKS                       R6 R6 K6 ["set"]
       55 GETTABLEKS                       R7 R5 K13 ["AssetId"]
       57 LOADB                            R8 1
       58 CALL                             R6 2 0
       59 GETTABLEKS                       R6 R4 K14 ["enabled"]
       61 GETTABLEKS                       R6 R6 K6 ["set"]
       63 GETTABLEKS                       R7 R5 K15 ["Enabled"]
       65 LOADB                            R8 1
       66 CALL                             R6 2 0
       67 GETTABLEKS                       R4 R3 K18 ["animationClipsFallSetting"]
       69 GETTABLEKS                       R5 R1 K19 ["CustomFallAnimation"]
       71 GETTABLEKS                       R6 R4 K12 ["assetId"]
       73 GETTABLEKS                       R6 R6 K6 ["set"]
       75 GETTABLEKS                       R7 R5 K13 ["AssetId"]
       77 LOADB                            R8 1
       78 CALL                             R6 2 0
       79 GETTABLEKS                       R6 R4 K14 ["enabled"]
       81 GETTABLEKS                       R6 R6 K6 ["set"]
       83 GETTABLEKS                       R7 R5 K15 ["Enabled"]
       85 LOADB                            R8 1
       86 CALL                             R6 2 0
       87 GETTABLEKS                       R4 R3 K20 ["animationClipsJumpSetting"]
       89 GETTABLEKS                       R5 R1 K21 ["CustomJumpAnimation"]
       91 GETTABLEKS                       R6 R4 K12 ["assetId"]
       93 GETTABLEKS                       R6 R6 K6 ["set"]
       95 GETTABLEKS                       R7 R5 K13 ["AssetId"]
       97 LOADB                            R8 1
       98 CALL                             R6 2 0
       99 GETTABLEKS                       R6 R4 K14 ["enabled"]
      101 GETTABLEKS                       R6 R6 K6 ["set"]
      103 GETTABLEKS                       R7 R5 K15 ["Enabled"]
      105 LOADB                            R8 1
      106 CALL                             R6 2 0
      107 GETTABLEKS                       R4 R3 K22 ["animationClipsIdleSetting"]
      109 GETTABLEKS                       R5 R1 K23 ["CustomIdleAnimation"]
      111 GETTABLEKS                       R6 R4 K12 ["assetId"]
      113 GETTABLEKS                       R6 R6 K6 ["set"]
      115 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      117 LOADB                            R8 1
      118 CALL                             R6 2 0
      119 GETTABLEKS                       R6 R4 K14 ["enabled"]
      121 GETTABLEKS                       R6 R6 K6 ["set"]
      123 GETTABLEKS                       R7 R5 K15 ["Enabled"]
      125 LOADB                            R8 1
      126 CALL                             R6 2 0
      127 GETTABLEKS                       R4 R3 K24 ["animationClipsIdleAlt1Setting"]
      129 GETTABLEKS                       R5 R1 K25 ["CustomIdleAlt1Animation"]
      131 GETTABLEKS                       R6 R4 K12 ["assetId"]
      133 GETTABLEKS                       R6 R6 K6 ["set"]
      135 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      137 LOADB                            R8 1
      138 CALL                             R6 2 0
      139 GETTABLEKS                       R6 R4 K14 ["enabled"]
      141 GETTABLEKS                       R6 R6 K6 ["set"]
      143 GETTABLEKS                       R7 R5 K15 ["Enabled"]
      145 LOADB                            R8 1
      146 CALL                             R6 2 0
      147 GETTABLEKS                       R4 R3 K26 ["animationClipsIdleAlt2Setting"]
      149 GETTABLEKS                       R5 R1 K27 ["CustomIdleAlt2Animation"]
      151 GETTABLEKS                       R6 R4 K12 ["assetId"]
      153 GETTABLEKS                       R6 R6 K6 ["set"]
      155 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      157 LOADB                            R8 1
      158 CALL                             R6 2 0
      159 GETTABLEKS                       R6 R4 K14 ["enabled"]
      161 GETTABLEKS                       R6 R6 K6 ["set"]
      163 GETTABLEKS                       R7 R5 K15 ["Enabled"]
      165 LOADB                            R8 1
      166 CALL                             R6 2 0
      167 GETTABLEKS                       R4 R3 K28 ["animationClipsSwimSetting"]
      169 GETTABLEKS                       R5 R1 K29 ["CustomSwimAnimation"]
      171 GETTABLEKS                       R6 R4 K12 ["assetId"]
      173 GETTABLEKS                       R6 R6 K6 ["set"]
      175 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      177 LOADB                            R8 1
      178 CALL                             R6 2 0
      179 GETTABLEKS                       R6 R4 K14 ["enabled"]
      181 GETTABLEKS                       R6 R6 K6 ["set"]
      183 GETTABLEKS                       R7 R5 K15 ["Enabled"]
      185 LOADB                            R8 1
      186 CALL                             R6 2 0
      187 GETTABLEKS                       R4 R3 K30 ["animationClipsSwimIdleSetting"]
      189 GETTABLEKS                       R5 R1 K31 ["CustomSwimIdleAnimation"]
      191 GETTABLEKS                       R6 R4 K12 ["assetId"]
      193 GETTABLEKS                       R6 R6 K6 ["set"]
      195 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      197 LOADB                            R8 1
      198 CALL                             R6 2 0
      199 GETTABLEKS                       R6 R4 K14 ["enabled"]
      201 GETTABLEKS                       R6 R6 K6 ["set"]
      203 GETTABLEKS                       R7 R5 K15 ["Enabled"]
      205 LOADB                            R8 1
      206 CALL                             R6 2 0
      207 GETTABLEKS                       R4 R3 K32 ["animationClipsClimbSetting"]
      209 GETTABLEKS                       R5 R1 K33 ["CustomClimbAnimation"]
      211 GETTABLEKS                       R6 R4 K12 ["assetId"]
      213 GETTABLEKS                       R6 R6 K6 ["set"]
      215 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      217 LOADB                            R8 1
      218 CALL                             R6 2 0
      219 GETTABLEKS                       R6 R4 K14 ["enabled"]
      221 GETTABLEKS                       R6 R6 K6 ["set"]
      223 GETTABLEKS                       R7 R5 K15 ["Enabled"]
      225 LOADB                            R8 1
      226 CALL                             R6 2 0
      227 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["accessoriesSettings"]
       11 GETTABLEKS                       R4 R3 K5 ["accessoryBehaviorEnableSoundSetting"]
       13 GETTABLEKS                       R4 R4 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["EnableSound"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R4 R3 K8 ["accessoryBehaviorEnableVFXSetting"]
       21 GETTABLEKS                       R4 R4 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["EnableVFX"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R4 R3 K10 ["accessoryBehaviorEnableEmissivesSetting"]
       29 GETTABLEKS                       R4 R4 K6 ["set"]
       31 GETTABLEKS                       R5 R1 K11 ["EnableEmissives"]
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R3 K12 ["accessoryScaleSetting"]
       37 GETTABLEKS                       R4 R4 K6 ["set"]
       39 GETTABLEKS                       R5 R1 K13 ["AccessoryMode"]
       41 LOADB                            R6 1
       42 CALL                             R4 2 0
       43 GETTABLEKS                       R4 R3 K14 ["accessoryScaleLimitMethodSetting"]
       45 GETTABLEKS                       R4 R4 K6 ["set"]
       47 GETTABLEKS                       R5 R1 K15 ["LimitMethod"]
       49 LOADB                            R6 1
       50 CALL                             R4 2 0
       51 GETTABLEKS                       R4 R3 K16 ["accessoryScaleLimitBoundsSetting"]
       53 GETTABLEKS                       R4 R4 K6 ["set"]
       55 GETTABLEKS                       R5 R1 K17 ["LimitBounds"]
       57 LOADB                            R6 1
       58 CALL                             R4 2 0
       59 GETTABLEKS                       R4 R3 K18 ["customAccessoriesSetting"]
       61 GETTABLEKS                       R4 R4 K6 ["set"]
       63 GETTABLEKS                       R5 R1 K19 ["CustomAccessoryMode"]
       65 LOADB                            R6 1
       66 CALL                             R4 2 0
       67 GETTABLEKS                       R4 R3 K20 ["customAccessoriesHairSetting"]
       69 GETTABLEKS                       R5 R1 K21 ["CustomHairAccessory"]
       71 GETTABLEKS                       R6 R4 K22 ["assetId"]
       73 GETTABLEKS                       R6 R6 K6 ["set"]
       75 GETTABLEKS                       R7 R5 K23 ["AssetId"]
       77 LOADB                            R8 1
       78 CALL                             R6 2 0
       79 GETTABLEKS                       R6 R4 K24 ["enabled"]
       81 GETTABLEKS                       R6 R6 K6 ["set"]
       83 GETTABLEKS                       R7 R5 K25 ["Enabled"]
       85 LOADB                            R8 1
       86 CALL                             R6 2 0
       87 GETTABLEKS                       R4 R3 K26 ["customAccessoriesHeadSetting"]
       89 GETTABLEKS                       R5 R1 K27 ["CustomHeadAccessory"]
       91 GETTABLEKS                       R6 R4 K22 ["assetId"]
       93 GETTABLEKS                       R6 R6 K6 ["set"]
       95 GETTABLEKS                       R7 R5 K23 ["AssetId"]
       97 LOADB                            R8 1
       98 CALL                             R6 2 0
       99 GETTABLEKS                       R6 R4 K24 ["enabled"]
      101 GETTABLEKS                       R6 R6 K6 ["set"]
      103 GETTABLEKS                       R7 R5 K25 ["Enabled"]
      105 LOADB                            R8 1
      106 CALL                             R6 2 0
      107 GETTABLEKS                       R4 R3 K28 ["customAccessoriesFaceSetting"]
      109 GETTABLEKS                       R5 R1 K29 ["CustomFaceAccessory"]
      111 GETTABLEKS                       R6 R4 K22 ["assetId"]
      113 GETTABLEKS                       R6 R6 K6 ["set"]
      115 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      117 LOADB                            R8 1
      118 CALL                             R6 2 0
      119 GETTABLEKS                       R6 R4 K24 ["enabled"]
      121 GETTABLEKS                       R6 R6 K6 ["set"]
      123 GETTABLEKS                       R7 R5 K25 ["Enabled"]
      125 LOADB                            R8 1
      126 CALL                             R6 2 0
      127 GETTABLEKS                       R4 R3 K30 ["customAccessoriesNeckSetting"]
      129 GETTABLEKS                       R5 R1 K31 ["CustomNeckAccessory"]
      131 GETTABLEKS                       R6 R4 K22 ["assetId"]
      133 GETTABLEKS                       R6 R6 K6 ["set"]
      135 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      137 LOADB                            R8 1
      138 CALL                             R6 2 0
      139 GETTABLEKS                       R6 R4 K24 ["enabled"]
      141 GETTABLEKS                       R6 R6 K6 ["set"]
      143 GETTABLEKS                       R7 R5 K25 ["Enabled"]
      145 LOADB                            R8 1
      146 CALL                             R6 2 0
      147 GETTABLEKS                       R4 R3 K32 ["customAccessoriesShoulderSetting"]
      149 GETTABLEKS                       R5 R1 K33 ["CustomShoulderAccessory"]
      151 GETTABLEKS                       R6 R4 K22 ["assetId"]
      153 GETTABLEKS                       R6 R6 K6 ["set"]
      155 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      157 LOADB                            R8 1
      158 CALL                             R6 2 0
      159 GETTABLEKS                       R6 R4 K24 ["enabled"]
      161 GETTABLEKS                       R6 R6 K6 ["set"]
      163 GETTABLEKS                       R7 R5 K25 ["Enabled"]
      165 LOADB                            R8 1
      166 CALL                             R6 2 0
      167 GETTABLEKS                       R4 R3 K34 ["customAccessoriesFrontSetting"]
      169 GETTABLEKS                       R5 R1 K35 ["CustomFrontAccessory"]
      171 GETTABLEKS                       R6 R4 K22 ["assetId"]
      173 GETTABLEKS                       R6 R6 K6 ["set"]
      175 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      177 LOADB                            R8 1
      178 CALL                             R6 2 0
      179 GETTABLEKS                       R6 R4 K24 ["enabled"]
      181 GETTABLEKS                       R6 R6 K6 ["set"]
      183 GETTABLEKS                       R7 R5 K25 ["Enabled"]
      185 LOADB                            R8 1
      186 CALL                             R6 2 0
      187 GETTABLEKS                       R4 R3 K36 ["customAccessoriesBackSetting"]
      189 GETTABLEKS                       R5 R1 K37 ["CustomBackAccessory"]
      191 GETTABLEKS                       R6 R4 K22 ["assetId"]
      193 GETTABLEKS                       R6 R6 K6 ["set"]
      195 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      197 LOADB                            R8 1
      198 CALL                             R6 2 0
      199 GETTABLEKS                       R6 R4 K24 ["enabled"]
      201 GETTABLEKS                       R6 R6 K6 ["set"]
      203 GETTABLEKS                       R7 R5 K25 ["Enabled"]
      205 LOADB                            R8 1
      206 CALL                             R6 2 0
      207 GETTABLEKS                       R4 R3 K38 ["customAccessoriesWaistSetting"]
      209 GETTABLEKS                       R5 R1 K39 ["CustomWaistAccessory"]
      211 GETTABLEKS                       R6 R4 K22 ["assetId"]
      213 GETTABLEKS                       R6 R6 K6 ["set"]
      215 GETTABLEKS                       R7 R5 K23 ["AssetId"]
      217 LOADB                            R8 1
      218 CALL                             R6 2 0
      219 GETTABLEKS                       R6 R4 K24 ["enabled"]
      221 GETTABLEKS                       R6 R6 K6 ["set"]
      223 GETTABLEKS                       R7 R5 K25 ["Enabled"]
      225 LOADB                            R8 1
      226 CALL                             R6 2 0
      227 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["clothingSettings"]
       11 GETTABLEKS                       R4 R3 K5 ["clothingScaleSetting"]
       13 GETTABLEKS                       R4 R4 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["ClothingMode"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R4 R3 K8 ["clothingScaleLimitBoundsSetting"]
       21 GETTABLEKS                       R4 R4 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["LimitBounds"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R4 R3 K10 ["customClothingSetting"]
       29 GETTABLEKS                       R4 R4 K6 ["set"]
       31 GETTABLEKS                       R5 R1 K11 ["CustomClothingMode"]
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R3 K12 ["customClothingTShirtSetting"]
       37 GETTABLEKS                       R5 R1 K13 ["CustomTShirtAccessory"]
       39 GETTABLEKS                       R6 R4 K14 ["assetId"]
       41 GETTABLEKS                       R6 R6 K6 ["set"]
       43 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       45 LOADB                            R8 1
       46 CALL                             R6 2 0
       47 GETTABLEKS                       R6 R4 K16 ["enabled"]
       49 GETTABLEKS                       R6 R6 K6 ["set"]
       51 GETTABLEKS                       R7 R5 K17 ["Enabled"]
       53 LOADB                            R8 1
       54 CALL                             R6 2 0
       55 GETTABLEKS                       R4 R3 K18 ["customClothingShirtSetting"]
       57 GETTABLEKS                       R5 R1 K19 ["CustomShirtAccessory"]
       59 GETTABLEKS                       R6 R4 K14 ["assetId"]
       61 GETTABLEKS                       R6 R6 K6 ["set"]
       63 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       65 LOADB                            R8 1
       66 CALL                             R6 2 0
       67 GETTABLEKS                       R6 R4 K16 ["enabled"]
       69 GETTABLEKS                       R6 R6 K6 ["set"]
       71 GETTABLEKS                       R7 R5 K17 ["Enabled"]
       73 LOADB                            R8 1
       74 CALL                             R6 2 0
       75 GETTABLEKS                       R4 R3 K20 ["customClothingJacketSetting"]
       77 GETTABLEKS                       R5 R1 K21 ["CustomJacketAccessory"]
       79 GETTABLEKS                       R6 R4 K14 ["assetId"]
       81 GETTABLEKS                       R6 R6 K6 ["set"]
       83 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       85 LOADB                            R8 1
       86 CALL                             R6 2 0
       87 GETTABLEKS                       R6 R4 K16 ["enabled"]
       89 GETTABLEKS                       R6 R6 K6 ["set"]
       91 GETTABLEKS                       R7 R5 K17 ["Enabled"]
       93 LOADB                            R8 1
       94 CALL                             R6 2 0
       95 GETTABLEKS                       R4 R3 K22 ["customClothingSweaterSetting"]
       97 GETTABLEKS                       R5 R1 K23 ["CustomSweaterAccessory"]
       99 GETTABLEKS                       R6 R4 K14 ["assetId"]
      101 GETTABLEKS                       R6 R6 K6 ["set"]
      103 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      105 LOADB                            R8 1
      106 CALL                             R6 2 0
      107 GETTABLEKS                       R6 R4 K16 ["enabled"]
      109 GETTABLEKS                       R6 R6 K6 ["set"]
      111 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      113 LOADB                            R8 1
      114 CALL                             R6 2 0
      115 GETTABLEKS                       R4 R3 K24 ["customClothingPantsSetting"]
      117 GETTABLEKS                       R5 R1 K25 ["CustomPantsAccessory"]
      119 GETTABLEKS                       R6 R4 K14 ["assetId"]
      121 GETTABLEKS                       R6 R6 K6 ["set"]
      123 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      125 LOADB                            R8 1
      126 CALL                             R6 2 0
      127 GETTABLEKS                       R6 R4 K16 ["enabled"]
      129 GETTABLEKS                       R6 R6 K6 ["set"]
      131 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      133 LOADB                            R8 1
      134 CALL                             R6 2 0
      135 GETTABLEKS                       R4 R3 K26 ["customClothingShortsSetting"]
      137 GETTABLEKS                       R5 R1 K27 ["CustomShortsAccessory"]
      139 GETTABLEKS                       R6 R4 K14 ["assetId"]
      141 GETTABLEKS                       R6 R6 K6 ["set"]
      143 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      145 LOADB                            R8 1
      146 CALL                             R6 2 0
      147 GETTABLEKS                       R6 R4 K16 ["enabled"]
      149 GETTABLEKS                       R6 R6 K6 ["set"]
      151 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      153 LOADB                            R8 1
      154 CALL                             R6 2 0
      155 GETTABLEKS                       R4 R3 K28 ["customClothingDressSkirtSetting"]
      157 GETTABLEKS                       R5 R1 K29 ["CustomDressSkirtAccessory"]
      159 GETTABLEKS                       R6 R4 K14 ["assetId"]
      161 GETTABLEKS                       R6 R6 K6 ["set"]
      163 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      165 LOADB                            R8 1
      166 CALL                             R6 2 0
      167 GETTABLEKS                       R6 R4 K16 ["enabled"]
      169 GETTABLEKS                       R6 R6 K6 ["set"]
      171 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      173 LOADB                            R8 1
      174 CALL                             R6 2 0
      175 GETTABLEKS                       R4 R3 K30 ["customClothingLeftShoesSetting"]
      177 GETTABLEKS                       R5 R1 K31 ["CustomLeftShoesAccessory"]
      179 GETTABLEKS                       R6 R4 K14 ["assetId"]
      181 GETTABLEKS                       R6 R6 K6 ["set"]
      183 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      185 LOADB                            R8 1
      186 CALL                             R6 2 0
      187 GETTABLEKS                       R6 R4 K16 ["enabled"]
      189 GETTABLEKS                       R6 R6 K6 ["set"]
      191 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      193 LOADB                            R8 1
      194 CALL                             R6 2 0
      195 GETTABLEKS                       R4 R3 K32 ["customClothingRightShoesSetting"]
      197 GETTABLEKS                       R5 R1 K33 ["CustomRightShoesAccessory"]
      199 GETTABLEKS                       R6 R4 K14 ["assetId"]
      201 GETTABLEKS                       R6 R6 K6 ["set"]
      203 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      205 LOADB                            R8 1
      206 CALL                             R6 2 0
      207 GETTABLEKS                       R6 R4 K16 ["enabled"]
      209 GETTABLEKS                       R6 R6 K6 ["set"]
      211 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      213 LOADB                            R8 1
      214 CALL                             R6 2 0
      215 GETTABLEKS                       R4 R3 K34 ["customClothingClassicShirtsSetting"]
      217 GETTABLEKS                       R5 R1 K35 ["CustomClassicShirtsAccessory"]
      219 GETTABLEKS                       R6 R4 K14 ["assetId"]
      221 GETTABLEKS                       R6 R6 K6 ["set"]
      223 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      225 LOADB                            R8 1
      226 CALL                             R6 2 0
      227 GETTABLEKS                       R6 R4 K16 ["enabled"]
      229 GETTABLEKS                       R6 R6 K6 ["set"]
      231 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      233 LOADB                            R8 1
      234 CALL                             R6 2 0
      235 GETTABLEKS                       R4 R3 K36 ["customClothingClassicTShirtsSetting"]
      237 GETTABLEKS                       R5 R1 K37 ["CustomClassicTShirtsAccessory"]
      239 GETTABLEKS                       R6 R4 K14 ["assetId"]
      241 GETTABLEKS                       R6 R6 K6 ["set"]
      243 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      245 LOADB                            R8 1
      246 CALL                             R6 2 0
      247 GETTABLEKS                       R6 R4 K16 ["enabled"]
      249 GETTABLEKS                       R6 R6 K6 ["set"]
      251 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      253 LOADB                            R8 1
      254 CALL                             R6 2 0
      255 GETTABLEKS                       R4 R3 K38 ["customClothingClassicPantsSetting"]
      257 GETTABLEKS                       R5 R1 K39 ["CustomClassicPantsAccessory"]
      259 GETTABLEKS                       R6 R4 K14 ["assetId"]
      261 GETTABLEKS                       R6 R6 K6 ["set"]
      263 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      265 LOADB                            R8 1
      266 CALL                             R6 2 0
      267 GETTABLEKS                       R6 R4 K16 ["enabled"]
      269 GETTABLEKS                       R6 R6 K6 ["set"]
      271 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      273 LOADB                            R8 1
      274 CALL                             R6 2 0
      275 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["movementSettings"]
       11 GETTABLEKS                       R4 R3 K5 ["characterControllerModeSetting"]
       13 GETTABLEKS                       R4 R4 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["CharacterControllerMode"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R4 R3 K8 ["defaultAbilitiesEnableRunningSetting"]
       21 GETTABLEKS                       R4 R4 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["EnableRunning"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R4 R3 K10 ["defaultAbilitiesEnableJumpingSetting"]
       29 GETTABLEKS                       R4 R4 K6 ["set"]
       31 GETTABLEKS                       R5 R1 K11 ["EnableJumping"]
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R3 K12 ["defaultAbilitiesEnableSittingSetting"]
       37 GETTABLEKS                       R4 R4 K6 ["set"]
       39 GETTABLEKS                       R5 R1 K13 ["EnableSitting"]
       41 LOADB                            R6 1
       42 CALL                             R4 2 0
       43 GETTABLEKS                       R4 R3 K14 ["defaultAbilitiesEnableFallingDownSetting"]
       45 GETTABLEKS                       R4 R4 K6 ["set"]
       47 GETTABLEKS                       R5 R1 K15 ["EnableFallingDown"]
       49 LOADB                            R6 1
       50 CALL                             R4 2 0
       51 GETTABLEKS                       R4 R3 K16 ["defaultAbilitiesEnableGettingUpSetting"]
       53 GETTABLEKS                       R4 R4 K6 ["set"]
       55 GETTABLEKS                       R5 R1 K17 ["EnableGettingUp"]
       57 LOADB                            R6 1
       58 CALL                             R4 2 0
       59 GETTABLEKS                       R4 R3 K18 ["defaultAbilitiesEnableClimbingSetting"]
       61 GETTABLEKS                       R4 R4 K6 ["set"]
       63 GETTABLEKS                       R5 R1 K19 ["EnableClimbing"]
       65 LOADB                            R6 1
       66 CALL                             R4 2 0
       67 GETTABLEKS                       R4 R3 K20 ["defaultAbilitiesEnableSwimmingSetting"]
       69 GETTABLEKS                       R4 R4 K6 ["set"]
       71 GETTABLEKS                       R5 R1 K21 ["EnableSwimming"]
       73 LOADB                            R6 1
       74 CALL                             R4 2 0
       75 GETUPVAL                         R4 0
       76 CALL                             R4 0 1
       77 JUMPIFNOT                        R4 ; [+50]
       78 GETTABLEKS                       R5 R3 K22 ["defaultAbilitiesEnableCrouchingSetting"]
       80 FASTCALL2K                       ASSERT R5 K23 ; [+4]
       82 LOADK                            R6 K23 ["Expected crouching setting"]
       83 GETIMPORT                        R4 K3 [assert]
       85 CALL                             R4 2 1
       86 GETTABLEKS                       R6 R3 K24 ["defaultAbilitiesEnableSprintingSetting"]
       88 FASTCALL2K                       ASSERT R6 K25 ; [+4]
       90 LOADK                            R7 K25 ["Expected sprinting setting"]
       91 GETIMPORT                        R5 K3 [assert]
       93 CALL                             R5 2 1
       94 GETTABLEKS                       R6 R1 K26 ["EnableCrouching"]
       96 GETTABLEKS                       R7 R1 K27 ["EnableSprinting"]
       98 JUMPIFNOTEQKNIL                  R6 ; [+2]
      100 LOADB                            R9 0 +1
      101 LOADB                            R9 1
      102 FASTCALL2K                       ASSERT R9 K28 ; [+4]
      104 LOADK                            R10 K28 ["Expected EnableCrouching"]
      105 GETIMPORT                        R8 K3 [assert]
      107 CALL                             R8 2 0
      108 GETTABLEKS                       R8 R4 K6 ["set"]
      110 MOVE                             R9 R6
      111 LOADB                            R10 1
      112 CALL                             R8 2 0
      113 JUMPIFNOTEQKNIL                  R7 ; [+2]
      115 LOADB                            R9 0 +1
      116 LOADB                            R9 1
      117 FASTCALL2K                       ASSERT R9 K29 ; [+4]
      119 LOADK                            R10 K29 ["Expected EnableSprinting"]
      120 GETIMPORT                        R8 K3 [assert]
      122 CALL                             R8 2 0
      123 GETTABLEKS                       R8 R5 K6 ["set"]
      125 MOVE                             R9 R7
      126 LOADB                            R10 1
      127 CALL                             R8 2 0
      128 GETUPVAL                         R4 1
      129 CALL                             R4 0 1
      130 JUMPIFNOT                        R4 ; [+25]
      131 GETTABLEKS                       R5 R3 K30 ["defaultAbilitiesEnableTurningSetting"]
      133 FASTCALL2K                       ASSERT R5 K31 ; [+4]
      135 LOADK                            R6 K31 ["Expected turning setting"]
      136 GETIMPORT                        R4 K3 [assert]
      138 CALL                             R4 2 1
      139 GETTABLEKS                       R5 R1 K32 ["EnableTurning"]
      141 JUMPIFNOTEQKNIL                  R5 ; [+2]
      143 LOADB                            R7 0 +1
      144 LOADB                            R7 1
      145 FASTCALL2K                       ASSERT R7 K33 ; [+4]
      147 LOADK                            R8 K33 ["Expected EnableTurning"]
      148 GETIMPORT                        R6 K3 [assert]
      150 CALL                             R6 2 0
      151 GETTABLEKS                       R6 R4 K6 ["set"]
      153 MOVE                             R7 R5
      154 LOADB                            R8 1
      155 CALL                             R6 2 0
      156 GETUPVAL                         R4 2
      157 CALL                             R4 0 1
      158 JUMPIFNOT                        R4 ; [+50]
      159 GETTABLEKS                       R5 R3 K34 ["defaultAbilitiesEnableHoldingSetting"]
      161 FASTCALL2K                       ASSERT R5 K35 ; [+4]
      163 LOADK                            R6 K35 ["Expected holding setting"]
      164 GETIMPORT                        R4 K3 [assert]
      166 CALL                             R4 2 1
      167 GETTABLEKS                       R6 R3 K36 ["defaultAbilitiesEnableReachingSetting"]
      169 FASTCALL2K                       ASSERT R6 K37 ; [+4]
      171 LOADK                            R7 K37 ["Expected reaching setting"]
      172 GETIMPORT                        R5 K3 [assert]
      174 CALL                             R5 2 1
      175 GETTABLEKS                       R6 R1 K38 ["EnableHolding"]
      177 GETTABLEKS                       R7 R1 K39 ["EnableReaching"]
      179 JUMPIFNOTEQKNIL                  R6 ; [+2]
      181 LOADB                            R9 0 +1
      182 LOADB                            R9 1
      183 FASTCALL2K                       ASSERT R9 K40 ; [+4]
      185 LOADK                            R10 K40 ["Expected EnableHolding"]
      186 GETIMPORT                        R8 K3 [assert]
      188 CALL                             R8 2 0
      189 GETTABLEKS                       R8 R4 K6 ["set"]
      191 MOVE                             R9 R6
      192 LOADB                            R10 1
      193 CALL                             R8 2 0
      194 JUMPIFNOTEQKNIL                  R7 ; [+2]
      196 LOADB                            R9 0 +1
      197 LOADB                            R9 1
      198 FASTCALL2K                       ASSERT R9 K41 ; [+4]
      200 LOADK                            R10 K41 ["Expected EnableReaching"]
      201 GETIMPORT                        R8 K3 [assert]
      203 CALL                             R8 2 0
      204 GETTABLEKS                       R8 R5 K6 ["set"]
      206 MOVE                             R9 R7
      207 LOADB                            R10 1
      208 CALL                             R8 2 0
      209 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["workspaceGravity"]
       11 GETTABLEKS                       R3 R3 K5 ["set"]
       13 GETTABLEKS                       R4 R1 K6 ["OtherProperties"]
       15 GETTABLEKS                       R4 R4 K7 ["Gravity"]
       17 CALL                             R3 1 0
       18 GETTABLEKS                       R3 R2 K8 ["navigationBarSettings"]
       20 GETTABLEKS                       R3 R3 K9 ["avatarType"]
       22 GETTABLEKS                       R3 R3 K5 ["set"]
       24 GETTABLEKS                       R4 R1 K10 ["AvatarRules"]
       26 GETTABLEKS                       R4 R4 K11 ["AvatarType"]
       28 LOADB                            R5 1
       29 CALL                             R3 2 0
       30 GETUPVAL                         R3 0
       31 MOVE                             R4 R0
       32 GETTABLEKS                       R5 R1 K12 ["AvatarBodyRules"]
       34 CALL                             R3 2 0
       35 GETUPVAL                         R3 1
       36 MOVE                             R4 R0
       37 GETTABLEKS                       R5 R1 K13 ["AvatarCollisionRules"]
       39 CALL                             R3 2 0
       40 GETUPVAL                         R3 2
       41 MOVE                             R4 R0
       42 GETTABLEKS                       R5 R1 K14 ["AvatarAnimationRules"]
       44 CALL                             R3 2 0
       45 GETUPVAL                         R3 3
       46 MOVE                             R4 R0
       47 GETTABLEKS                       R5 R1 K15 ["AvatarAccessoryRules"]
       49 CALL                             R3 2 0
       50 GETUPVAL                         R3 4
       51 MOVE                             R4 R0
       52 GETTABLEKS                       R5 R1 K16 ["AvatarClothingRules"]
       54 CALL                             R3 2 0
       55 GETTABLEKS                       R3 R1 K17 ["AvatarAbilityRules"]
       57 JUMPIFNOT                        R3 ; [+5]
       58 GETUPVAL                         R3 5
       59 MOVE                             R4 R0
       60 GETTABLEKS                       R5 R1 K17 ["AvatarAbilityRules"]
       62 CALL                             R3 2 0
       63 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Util"]
       24 GETTABLEKS                       R3 R3 K11 ["AvatarSettingsProviderTypes"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Util"]
       33 GETTABLEKS                       R4 R4 K12 ["AvatarSettingsSyncTypes"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K13 ["Flags"]
       42 GETTABLEKS                       R5 R5 K14 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Src"]
       49 GETTABLEKS                       R6 R6 K13 ["Flags"]
       51 GETTABLEKS                       R6 R6 K15 ["getFFlagAvatarSettingsReachHold"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K6 ["Src"]
       58 GETTABLEKS                       R7 R7 K13 ["Flags"]
       60 GETTABLEKS                       R7 R7 K16 ["getFFlagAvatarSettingsTurning"]
       62 CALL                             R6 1 1
       63 DUPCLOSURE                       R7 K17 [PROTO_0]
       64 DUPCLOSURE                       R8 K18 [PROTO_1]
       65 DUPCLOSURE                       R9 K19 [PROTO_2]
       66 DUPCLOSURE                       R10 K20 [PROTO_3]
       67 DUPCLOSURE                       R11 K21 [PROTO_4]
       68 DUPCLOSURE                       R12 K22 [PROTO_5]
       69 DUPCLOSURE                       R13 K23 [PROTO_6]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R5
       73 DUPCLOSURE                       R14 K24 [PROTO_7]
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R13
       80 RETURN                           R14 1
