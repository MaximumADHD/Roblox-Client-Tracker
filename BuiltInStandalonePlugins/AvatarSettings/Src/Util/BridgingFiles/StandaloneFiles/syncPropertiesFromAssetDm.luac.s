PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["assetId"]
        2 GETTABLEKS                       R2 R3 K1 ["set"]
        4 GETTABLEKS                       R3 R1 K2 ["AssetId"]
        6 LOADB                            R4 1
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R3 R0 K3 ["enabled"]
       10 GETTABLEKS                       R2 R3 K1 ["set"]
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
       11 GETTABLEKS                       R5 R3 K5 ["bodyScaleSetting"]
       13 GETTABLEKS                       R4 R5 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["ScaleMode"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R5 R3 K8 ["bodyScaleCustomHeight"]
       21 GETTABLEKS                       R4 R5 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["CustomHeight"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R5 R3 K10 ["bodyAppearanceSetting"]
       29 GETTABLEKS                       R4 R5 K6 ["set"]
       31 GETTABLEKS                       R5 R1 K11 ["AppearanceMode"]
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R3 K12 ["bodyAppearanceCustomPartsFace"]
       37 GETTABLEKS                       R5 R1 K13 ["CustomFace"]
       39 GETTABLEKS                       R7 R4 K14 ["assetId"]
       41 GETTABLEKS                       R6 R7 K6 ["set"]
       43 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       45 LOADB                            R8 1
       46 CALL                             R6 2 0
       47 GETTABLEKS                       R7 R4 K16 ["enabled"]
       49 GETTABLEKS                       R6 R7 K6 ["set"]
       51 GETTABLEKS                       R7 R5 K17 ["Enabled"]
       53 LOADB                            R8 1
       54 CALL                             R6 2 0
       55 GETTABLEKS                       R4 R3 K18 ["bodyAppearanceCustomPartsHead"]
       57 GETTABLEKS                       R5 R1 K19 ["CustomHead"]
       59 GETTABLEKS                       R7 R4 K14 ["assetId"]
       61 GETTABLEKS                       R6 R7 K6 ["set"]
       63 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       65 LOADB                            R8 1
       66 CALL                             R6 2 0
       67 GETTABLEKS                       R7 R4 K16 ["enabled"]
       69 GETTABLEKS                       R6 R7 K6 ["set"]
       71 GETTABLEKS                       R7 R5 K17 ["Enabled"]
       73 LOADB                            R8 1
       74 CALL                             R6 2 0
       75 GETTABLEKS                       R4 R3 K20 ["bodyAppearanceCustomPartsMood"]
       77 GETTABLEKS                       R5 R1 K21 ["CustomMood"]
       79 GETTABLEKS                       R7 R4 K14 ["assetId"]
       81 GETTABLEKS                       R6 R7 K6 ["set"]
       83 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       85 LOADB                            R8 1
       86 CALL                             R6 2 0
       87 GETTABLEKS                       R7 R4 K16 ["enabled"]
       89 GETTABLEKS                       R6 R7 K6 ["set"]
       91 GETTABLEKS                       R7 R5 K17 ["Enabled"]
       93 LOADB                            R8 1
       94 CALL                             R6 2 0
       95 GETTABLEKS                       R4 R3 K22 ["bodyAppearanceCustomPartsEyebrow"]
       97 GETTABLEKS                       R5 R1 K23 ["CustomEyebrow"]
       99 GETTABLEKS                       R7 R4 K14 ["assetId"]
      101 GETTABLEKS                       R6 R7 K6 ["set"]
      103 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      105 LOADB                            R8 1
      106 CALL                             R6 2 0
      107 GETTABLEKS                       R7 R4 K16 ["enabled"]
      109 GETTABLEKS                       R6 R7 K6 ["set"]
      111 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      113 LOADB                            R8 1
      114 CALL                             R6 2 0
      115 GETTABLEKS                       R4 R3 K24 ["bodyAppearanceCustomPartsEyelash"]
      117 GETTABLEKS                       R5 R1 K25 ["CustomEyelash"]
      119 GETTABLEKS                       R7 R4 K14 ["assetId"]
      121 GETTABLEKS                       R6 R7 K6 ["set"]
      123 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      125 LOADB                            R8 1
      126 CALL                             R6 2 0
      127 GETTABLEKS                       R7 R4 K16 ["enabled"]
      129 GETTABLEKS                       R6 R7 K6 ["set"]
      131 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      133 LOADB                            R8 1
      134 CALL                             R6 2 0
      135 GETTABLEKS                       R4 R3 K26 ["bodyAppearanceCustomPartsTorso"]
      137 GETTABLEKS                       R5 R1 K27 ["CustomTorso"]
      139 GETTABLEKS                       R7 R4 K14 ["assetId"]
      141 GETTABLEKS                       R6 R7 K6 ["set"]
      143 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      145 LOADB                            R8 1
      146 CALL                             R6 2 0
      147 GETTABLEKS                       R7 R4 K16 ["enabled"]
      149 GETTABLEKS                       R6 R7 K6 ["set"]
      151 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      153 LOADB                            R8 1
      154 CALL                             R6 2 0
      155 GETTABLEKS                       R4 R3 K28 ["bodyAppearanceCustomPartsLeftArm"]
      157 GETTABLEKS                       R5 R1 K29 ["CustomLeftArm"]
      159 GETTABLEKS                       R7 R4 K14 ["assetId"]
      161 GETTABLEKS                       R6 R7 K6 ["set"]
      163 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      165 LOADB                            R8 1
      166 CALL                             R6 2 0
      167 GETTABLEKS                       R7 R4 K16 ["enabled"]
      169 GETTABLEKS                       R6 R7 K6 ["set"]
      171 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      173 LOADB                            R8 1
      174 CALL                             R6 2 0
      175 GETTABLEKS                       R4 R3 K30 ["bodyAppearanceCustomPartsRightArm"]
      177 GETTABLEKS                       R5 R1 K31 ["CustomRightArm"]
      179 GETTABLEKS                       R7 R4 K14 ["assetId"]
      181 GETTABLEKS                       R6 R7 K6 ["set"]
      183 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      185 LOADB                            R8 1
      186 CALL                             R6 2 0
      187 GETTABLEKS                       R7 R4 K16 ["enabled"]
      189 GETTABLEKS                       R6 R7 K6 ["set"]
      191 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      193 LOADB                            R8 1
      194 CALL                             R6 2 0
      195 GETTABLEKS                       R4 R3 K32 ["bodyAppearanceCustomPartsLeftLeg"]
      197 GETTABLEKS                       R5 R1 K33 ["CustomLeftLeg"]
      199 GETTABLEKS                       R7 R4 K14 ["assetId"]
      201 GETTABLEKS                       R6 R7 K6 ["set"]
      203 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      205 LOADB                            R8 1
      206 CALL                             R6 2 0
      207 GETTABLEKS                       R7 R4 K16 ["enabled"]
      209 GETTABLEKS                       R6 R7 K6 ["set"]
      211 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      213 LOADB                            R8 1
      214 CALL                             R6 2 0
      215 GETTABLEKS                       R4 R3 K34 ["bodyAppearanceCustomPartsRightLeg"]
      217 GETTABLEKS                       R5 R1 K35 ["CustomRightLeg"]
      219 GETTABLEKS                       R7 R4 K14 ["assetId"]
      221 GETTABLEKS                       R6 R7 K6 ["set"]
      223 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      225 LOADB                            R8 1
      226 CALL                             R6 2 0
      227 GETTABLEKS                       R7 R4 K16 ["enabled"]
      229 GETTABLEKS                       R6 R7 K6 ["set"]
      231 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      233 LOADB                            R8 1
      234 CALL                             R6 2 0
      235 GETTABLEKS                       R5 R3 K36 ["bodyBuildSetting"]
      237 GETTABLEKS                       R4 R5 K6 ["set"]
      239 GETTABLEKS                       R5 R1 K37 ["BuildMode"]
      241 LOADB                            R6 1
      242 CALL                             R4 2 0
      243 GETTABLEKS                       R5 R3 K38 ["bodyBuildCustomHeight"]
      245 GETTABLEKS                       R4 R5 K6 ["set"]
      247 GETTABLEKS                       R5 R1 K39 ["CustomHeightScale"]
      249 LOADB                            R6 1
      250 CALL                             R4 2 0
      251 GETTABLEKS                       R5 R3 K40 ["bodyBuildCustomWidth"]
      253 GETTABLEKS                       R4 R5 K6 ["set"]
      255 GETTABLEKS                       R5 R1 K41 ["CustomWidthScale"]
      257 LOADB                            R6 1
      258 CALL                             R4 2 0
      259 GETTABLEKS                       R5 R3 K42 ["bodyBuildCustomHead"]
      261 GETTABLEKS                       R4 R5 K6 ["set"]
      263 GETTABLEKS                       R5 R1 K43 ["CustomHeadScale"]
      265 LOADB                            R6 1
      266 CALL                             R4 2 0
      267 GETTABLEKS                       R5 R3 K44 ["bodyBuildCustomBodyType"]
      269 GETTABLEKS                       R4 R5 K6 ["set"]
      271 GETTABLEKS                       R5 R1 K45 ["CustomBodyTypeScale"]
      273 LOADB                            R6 1
      274 CALL                             R4 2 0
      275 GETTABLEKS                       R5 R3 K46 ["bodyBuildCustomProportions"]
      277 GETTABLEKS                       R4 R5 K6 ["set"]
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
       11 GETTABLEKS                       R5 R3 K5 ["collisionSetting"]
       13 GETTABLEKS                       R4 R5 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["CollisionMode"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R5 R3 K8 ["collisionHitAndTouchDetectionSetting"]
       21 GETTABLEKS                       R4 R5 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["HitAndTouchDetectionMode"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R5 R3 K10 ["collisionMethodSetting"]
       29 GETTABLEKS                       R4 R5 K6 ["set"]
       31 GETTABLEKS                       R5 R1 K11 ["AvatarSettingsLegacyCollisionMode"]
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R5 R3 K12 ["collisionSizeSetting"]
       37 GETTABLEKS                       R4 R5 K6 ["set"]
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
       11 GETTABLEKS                       R5 R3 K5 ["animationPacksSetting"]
       13 GETTABLEKS                       R4 R5 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["AnimationPacksMode"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R5 R3 K8 ["animationClipsSetting"]
       21 GETTABLEKS                       R4 R5 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["AnimationClipsMode"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R4 R3 K10 ["animationClipsRunSetting"]
       29 GETTABLEKS                       R5 R1 K11 ["CustomRunAnimation"]
       31 GETTABLEKS                       R7 R4 K12 ["assetId"]
       33 GETTABLEKS                       R6 R7 K6 ["set"]
       35 GETTABLEKS                       R7 R5 K13 ["AssetId"]
       37 LOADB                            R8 1
       38 CALL                             R6 2 0
       39 GETTABLEKS                       R7 R4 K14 ["enabled"]
       41 GETTABLEKS                       R6 R7 K6 ["set"]
       43 GETTABLEKS                       R7 R5 K15 ["Enabled"]
       45 LOADB                            R8 1
       46 CALL                             R6 2 0
       47 GETTABLEKS                       R4 R3 K16 ["animationClipsWalkSetting"]
       49 GETTABLEKS                       R5 R1 K17 ["CustomWalkAnimation"]
       51 GETTABLEKS                       R7 R4 K12 ["assetId"]
       53 GETTABLEKS                       R6 R7 K6 ["set"]
       55 GETTABLEKS                       R7 R5 K13 ["AssetId"]
       57 LOADB                            R8 1
       58 CALL                             R6 2 0
       59 GETTABLEKS                       R7 R4 K14 ["enabled"]
       61 GETTABLEKS                       R6 R7 K6 ["set"]
       63 GETTABLEKS                       R7 R5 K15 ["Enabled"]
       65 LOADB                            R8 1
       66 CALL                             R6 2 0
       67 GETTABLEKS                       R4 R3 K18 ["animationClipsFallSetting"]
       69 GETTABLEKS                       R5 R1 K19 ["CustomFallAnimation"]
       71 GETTABLEKS                       R7 R4 K12 ["assetId"]
       73 GETTABLEKS                       R6 R7 K6 ["set"]
       75 GETTABLEKS                       R7 R5 K13 ["AssetId"]
       77 LOADB                            R8 1
       78 CALL                             R6 2 0
       79 GETTABLEKS                       R7 R4 K14 ["enabled"]
       81 GETTABLEKS                       R6 R7 K6 ["set"]
       83 GETTABLEKS                       R7 R5 K15 ["Enabled"]
       85 LOADB                            R8 1
       86 CALL                             R6 2 0
       87 GETTABLEKS                       R4 R3 K20 ["animationClipsJumpSetting"]
       89 GETTABLEKS                       R5 R1 K21 ["CustomJumpAnimation"]
       91 GETTABLEKS                       R7 R4 K12 ["assetId"]
       93 GETTABLEKS                       R6 R7 K6 ["set"]
       95 GETTABLEKS                       R7 R5 K13 ["AssetId"]
       97 LOADB                            R8 1
       98 CALL                             R6 2 0
       99 GETTABLEKS                       R7 R4 K14 ["enabled"]
      101 GETTABLEKS                       R6 R7 K6 ["set"]
      103 GETTABLEKS                       R7 R5 K15 ["Enabled"]
      105 LOADB                            R8 1
      106 CALL                             R6 2 0
      107 GETTABLEKS                       R4 R3 K22 ["animationClipsIdleSetting"]
      109 GETTABLEKS                       R5 R1 K23 ["CustomIdleAnimation"]
      111 GETTABLEKS                       R7 R4 K12 ["assetId"]
      113 GETTABLEKS                       R6 R7 K6 ["set"]
      115 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      117 LOADB                            R8 1
      118 CALL                             R6 2 0
      119 GETTABLEKS                       R7 R4 K14 ["enabled"]
      121 GETTABLEKS                       R6 R7 K6 ["set"]
      123 GETTABLEKS                       R7 R5 K15 ["Enabled"]
      125 LOADB                            R8 1
      126 CALL                             R6 2 0
      127 GETTABLEKS                       R4 R3 K24 ["animationClipsIdleAlt1Setting"]
      129 GETTABLEKS                       R5 R1 K25 ["CustomIdleAlt1Animation"]
      131 GETTABLEKS                       R7 R4 K12 ["assetId"]
      133 GETTABLEKS                       R6 R7 K6 ["set"]
      135 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      137 LOADB                            R8 1
      138 CALL                             R6 2 0
      139 GETTABLEKS                       R7 R4 K14 ["enabled"]
      141 GETTABLEKS                       R6 R7 K6 ["set"]
      143 GETTABLEKS                       R7 R5 K15 ["Enabled"]
      145 LOADB                            R8 1
      146 CALL                             R6 2 0
      147 GETTABLEKS                       R4 R3 K26 ["animationClipsIdleAlt2Setting"]
      149 GETTABLEKS                       R5 R1 K27 ["CustomIdleAlt2Animation"]
      151 GETTABLEKS                       R7 R4 K12 ["assetId"]
      153 GETTABLEKS                       R6 R7 K6 ["set"]
      155 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      157 LOADB                            R8 1
      158 CALL                             R6 2 0
      159 GETTABLEKS                       R7 R4 K14 ["enabled"]
      161 GETTABLEKS                       R6 R7 K6 ["set"]
      163 GETTABLEKS                       R7 R5 K15 ["Enabled"]
      165 LOADB                            R8 1
      166 CALL                             R6 2 0
      167 GETTABLEKS                       R4 R3 K28 ["animationClipsSwimSetting"]
      169 GETTABLEKS                       R5 R1 K29 ["CustomSwimAnimation"]
      171 GETTABLEKS                       R7 R4 K12 ["assetId"]
      173 GETTABLEKS                       R6 R7 K6 ["set"]
      175 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      177 LOADB                            R8 1
      178 CALL                             R6 2 0
      179 GETTABLEKS                       R7 R4 K14 ["enabled"]
      181 GETTABLEKS                       R6 R7 K6 ["set"]
      183 GETTABLEKS                       R7 R5 K15 ["Enabled"]
      185 LOADB                            R8 1
      186 CALL                             R6 2 0
      187 GETTABLEKS                       R4 R3 K30 ["animationClipsSwimIdleSetting"]
      189 GETTABLEKS                       R5 R1 K31 ["CustomSwimIdleAnimation"]
      191 GETTABLEKS                       R7 R4 K12 ["assetId"]
      193 GETTABLEKS                       R6 R7 K6 ["set"]
      195 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      197 LOADB                            R8 1
      198 CALL                             R6 2 0
      199 GETTABLEKS                       R7 R4 K14 ["enabled"]
      201 GETTABLEKS                       R6 R7 K6 ["set"]
      203 GETTABLEKS                       R7 R5 K15 ["Enabled"]
      205 LOADB                            R8 1
      206 CALL                             R6 2 0
      207 GETTABLEKS                       R4 R3 K32 ["animationClipsClimbSetting"]
      209 GETTABLEKS                       R5 R1 K33 ["CustomClimbAnimation"]
      211 GETTABLEKS                       R7 R4 K12 ["assetId"]
      213 GETTABLEKS                       R6 R7 K6 ["set"]
      215 GETTABLEKS                       R7 R5 K13 ["AssetId"]
      217 LOADB                            R8 1
      218 CALL                             R6 2 0
      219 GETTABLEKS                       R7 R4 K14 ["enabled"]
      221 GETTABLEKS                       R6 R7 K6 ["set"]
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
       11 GETTABLEKS                       R5 R3 K5 ["accessoryBehaviorEnableSoundSetting"]
       13 GETTABLEKS                       R4 R5 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["EnableSound"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R5 R3 K8 ["accessoryBehaviorEnableVFXSetting"]
       21 GETTABLEKS                       R4 R5 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["EnableVFX"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R5 R3 K10 ["accessoryScaleSetting"]
       29 GETTABLEKS                       R4 R5 K6 ["set"]
       31 GETTABLEKS                       R5 R1 K11 ["AccessoryMode"]
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R5 R3 K12 ["accessoryScaleLimitMethodSetting"]
       37 GETTABLEKS                       R4 R5 K6 ["set"]
       39 GETTABLEKS                       R5 R1 K13 ["LimitMethod"]
       41 LOADB                            R6 1
       42 CALL                             R4 2 0
       43 GETTABLEKS                       R5 R3 K14 ["accessoryScaleLimitBoundsSetting"]
       45 GETTABLEKS                       R4 R5 K6 ["set"]
       47 GETTABLEKS                       R5 R1 K15 ["LimitBounds"]
       49 LOADB                            R6 1
       50 CALL                             R4 2 0
       51 GETTABLEKS                       R5 R3 K16 ["customAccessoriesSetting"]
       53 GETTABLEKS                       R4 R5 K6 ["set"]
       55 GETTABLEKS                       R5 R1 K17 ["CustomAccessoryMode"]
       57 LOADB                            R6 1
       58 CALL                             R4 2 0
       59 GETTABLEKS                       R4 R3 K18 ["customAccessoriesHairSetting"]
       61 GETTABLEKS                       R5 R1 K19 ["CustomHairAccessory"]
       63 GETTABLEKS                       R7 R4 K20 ["assetId"]
       65 GETTABLEKS                       R6 R7 K6 ["set"]
       67 GETTABLEKS                       R7 R5 K21 ["AssetId"]
       69 LOADB                            R8 1
       70 CALL                             R6 2 0
       71 GETTABLEKS                       R7 R4 K22 ["enabled"]
       73 GETTABLEKS                       R6 R7 K6 ["set"]
       75 GETTABLEKS                       R7 R5 K23 ["Enabled"]
       77 LOADB                            R8 1
       78 CALL                             R6 2 0
       79 GETTABLEKS                       R4 R3 K24 ["customAccessoriesHeadSetting"]
       81 GETTABLEKS                       R5 R1 K25 ["CustomHeadAccessory"]
       83 GETTABLEKS                       R7 R4 K20 ["assetId"]
       85 GETTABLEKS                       R6 R7 K6 ["set"]
       87 GETTABLEKS                       R7 R5 K21 ["AssetId"]
       89 LOADB                            R8 1
       90 CALL                             R6 2 0
       91 GETTABLEKS                       R7 R4 K22 ["enabled"]
       93 GETTABLEKS                       R6 R7 K6 ["set"]
       95 GETTABLEKS                       R7 R5 K23 ["Enabled"]
       97 LOADB                            R8 1
       98 CALL                             R6 2 0
       99 GETTABLEKS                       R4 R3 K26 ["customAccessoriesFaceSetting"]
      101 GETTABLEKS                       R5 R1 K27 ["CustomFaceAccessory"]
      103 GETTABLEKS                       R7 R4 K20 ["assetId"]
      105 GETTABLEKS                       R6 R7 K6 ["set"]
      107 GETTABLEKS                       R7 R5 K21 ["AssetId"]
      109 LOADB                            R8 1
      110 CALL                             R6 2 0
      111 GETTABLEKS                       R7 R4 K22 ["enabled"]
      113 GETTABLEKS                       R6 R7 K6 ["set"]
      115 GETTABLEKS                       R7 R5 K23 ["Enabled"]
      117 LOADB                            R8 1
      118 CALL                             R6 2 0
      119 GETTABLEKS                       R4 R3 K28 ["customAccessoriesNeckSetting"]
      121 GETTABLEKS                       R5 R1 K29 ["CustomNeckAccessory"]
      123 GETTABLEKS                       R7 R4 K20 ["assetId"]
      125 GETTABLEKS                       R6 R7 K6 ["set"]
      127 GETTABLEKS                       R7 R5 K21 ["AssetId"]
      129 LOADB                            R8 1
      130 CALL                             R6 2 0
      131 GETTABLEKS                       R7 R4 K22 ["enabled"]
      133 GETTABLEKS                       R6 R7 K6 ["set"]
      135 GETTABLEKS                       R7 R5 K23 ["Enabled"]
      137 LOADB                            R8 1
      138 CALL                             R6 2 0
      139 GETTABLEKS                       R4 R3 K30 ["customAccessoriesShoulderSetting"]
      141 GETTABLEKS                       R5 R1 K31 ["CustomShoulderAccessory"]
      143 GETTABLEKS                       R7 R4 K20 ["assetId"]
      145 GETTABLEKS                       R6 R7 K6 ["set"]
      147 GETTABLEKS                       R7 R5 K21 ["AssetId"]
      149 LOADB                            R8 1
      150 CALL                             R6 2 0
      151 GETTABLEKS                       R7 R4 K22 ["enabled"]
      153 GETTABLEKS                       R6 R7 K6 ["set"]
      155 GETTABLEKS                       R7 R5 K23 ["Enabled"]
      157 LOADB                            R8 1
      158 CALL                             R6 2 0
      159 GETTABLEKS                       R4 R3 K32 ["customAccessoriesFrontSetting"]
      161 GETTABLEKS                       R5 R1 K33 ["CustomFrontAccessory"]
      163 GETTABLEKS                       R7 R4 K20 ["assetId"]
      165 GETTABLEKS                       R6 R7 K6 ["set"]
      167 GETTABLEKS                       R7 R5 K21 ["AssetId"]
      169 LOADB                            R8 1
      170 CALL                             R6 2 0
      171 GETTABLEKS                       R7 R4 K22 ["enabled"]
      173 GETTABLEKS                       R6 R7 K6 ["set"]
      175 GETTABLEKS                       R7 R5 K23 ["Enabled"]
      177 LOADB                            R8 1
      178 CALL                             R6 2 0
      179 GETTABLEKS                       R4 R3 K34 ["customAccessoriesBackSetting"]
      181 GETTABLEKS                       R5 R1 K35 ["CustomBackAccessory"]
      183 GETTABLEKS                       R7 R4 K20 ["assetId"]
      185 GETTABLEKS                       R6 R7 K6 ["set"]
      187 GETTABLEKS                       R7 R5 K21 ["AssetId"]
      189 LOADB                            R8 1
      190 CALL                             R6 2 0
      191 GETTABLEKS                       R7 R4 K22 ["enabled"]
      193 GETTABLEKS                       R6 R7 K6 ["set"]
      195 GETTABLEKS                       R7 R5 K23 ["Enabled"]
      197 LOADB                            R8 1
      198 CALL                             R6 2 0
      199 GETTABLEKS                       R4 R3 K36 ["customAccessoriesWaistSetting"]
      201 GETTABLEKS                       R5 R1 K37 ["CustomWaistAccessory"]
      203 GETTABLEKS                       R7 R4 K20 ["assetId"]
      205 GETTABLEKS                       R6 R7 K6 ["set"]
      207 GETTABLEKS                       R7 R5 K21 ["AssetId"]
      209 LOADB                            R8 1
      210 CALL                             R6 2 0
      211 GETTABLEKS                       R7 R4 K22 ["enabled"]
      213 GETTABLEKS                       R6 R7 K6 ["set"]
      215 GETTABLEKS                       R7 R5 K23 ["Enabled"]
      217 LOADB                            R8 1
      218 CALL                             R6 2 0
      219 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["clothingSettings"]
       11 GETTABLEKS                       R5 R3 K5 ["clothingScaleSetting"]
       13 GETTABLEKS                       R4 R5 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["ClothingMode"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R5 R3 K8 ["clothingScaleLimitBoundsSetting"]
       21 GETTABLEKS                       R4 R5 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["LimitBounds"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R5 R3 K10 ["customClothingSetting"]
       29 GETTABLEKS                       R4 R5 K6 ["set"]
       31 GETTABLEKS                       R5 R1 K11 ["CustomClothingMode"]
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R3 K12 ["customClothingTShirtSetting"]
       37 GETTABLEKS                       R5 R1 K13 ["CustomTShirtAccessory"]
       39 GETTABLEKS                       R7 R4 K14 ["assetId"]
       41 GETTABLEKS                       R6 R7 K6 ["set"]
       43 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       45 LOADB                            R8 1
       46 CALL                             R6 2 0
       47 GETTABLEKS                       R7 R4 K16 ["enabled"]
       49 GETTABLEKS                       R6 R7 K6 ["set"]
       51 GETTABLEKS                       R7 R5 K17 ["Enabled"]
       53 LOADB                            R8 1
       54 CALL                             R6 2 0
       55 GETTABLEKS                       R4 R3 K18 ["customClothingShirtSetting"]
       57 GETTABLEKS                       R5 R1 K19 ["CustomShirtAccessory"]
       59 GETTABLEKS                       R7 R4 K14 ["assetId"]
       61 GETTABLEKS                       R6 R7 K6 ["set"]
       63 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       65 LOADB                            R8 1
       66 CALL                             R6 2 0
       67 GETTABLEKS                       R7 R4 K16 ["enabled"]
       69 GETTABLEKS                       R6 R7 K6 ["set"]
       71 GETTABLEKS                       R7 R5 K17 ["Enabled"]
       73 LOADB                            R8 1
       74 CALL                             R6 2 0
       75 GETTABLEKS                       R4 R3 K20 ["customClothingJacketSetting"]
       77 GETTABLEKS                       R5 R1 K21 ["CustomJacketAccessory"]
       79 GETTABLEKS                       R7 R4 K14 ["assetId"]
       81 GETTABLEKS                       R6 R7 K6 ["set"]
       83 GETTABLEKS                       R7 R5 K15 ["AssetId"]
       85 LOADB                            R8 1
       86 CALL                             R6 2 0
       87 GETTABLEKS                       R7 R4 K16 ["enabled"]
       89 GETTABLEKS                       R6 R7 K6 ["set"]
       91 GETTABLEKS                       R7 R5 K17 ["Enabled"]
       93 LOADB                            R8 1
       94 CALL                             R6 2 0
       95 GETTABLEKS                       R4 R3 K22 ["customClothingSweaterSetting"]
       97 GETTABLEKS                       R5 R1 K23 ["CustomSweaterAccessory"]
       99 GETTABLEKS                       R7 R4 K14 ["assetId"]
      101 GETTABLEKS                       R6 R7 K6 ["set"]
      103 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      105 LOADB                            R8 1
      106 CALL                             R6 2 0
      107 GETTABLEKS                       R7 R4 K16 ["enabled"]
      109 GETTABLEKS                       R6 R7 K6 ["set"]
      111 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      113 LOADB                            R8 1
      114 CALL                             R6 2 0
      115 GETTABLEKS                       R4 R3 K24 ["customClothingPantsSetting"]
      117 GETTABLEKS                       R5 R1 K25 ["CustomPantsAccessory"]
      119 GETTABLEKS                       R7 R4 K14 ["assetId"]
      121 GETTABLEKS                       R6 R7 K6 ["set"]
      123 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      125 LOADB                            R8 1
      126 CALL                             R6 2 0
      127 GETTABLEKS                       R7 R4 K16 ["enabled"]
      129 GETTABLEKS                       R6 R7 K6 ["set"]
      131 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      133 LOADB                            R8 1
      134 CALL                             R6 2 0
      135 GETTABLEKS                       R4 R3 K26 ["customClothingShortsSetting"]
      137 GETTABLEKS                       R5 R1 K27 ["CustomShortsAccessory"]
      139 GETTABLEKS                       R7 R4 K14 ["assetId"]
      141 GETTABLEKS                       R6 R7 K6 ["set"]
      143 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      145 LOADB                            R8 1
      146 CALL                             R6 2 0
      147 GETTABLEKS                       R7 R4 K16 ["enabled"]
      149 GETTABLEKS                       R6 R7 K6 ["set"]
      151 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      153 LOADB                            R8 1
      154 CALL                             R6 2 0
      155 GETTABLEKS                       R4 R3 K28 ["customClothingDressSkirtSetting"]
      157 GETTABLEKS                       R5 R1 K29 ["CustomDressSkirtAccessory"]
      159 GETTABLEKS                       R7 R4 K14 ["assetId"]
      161 GETTABLEKS                       R6 R7 K6 ["set"]
      163 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      165 LOADB                            R8 1
      166 CALL                             R6 2 0
      167 GETTABLEKS                       R7 R4 K16 ["enabled"]
      169 GETTABLEKS                       R6 R7 K6 ["set"]
      171 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      173 LOADB                            R8 1
      174 CALL                             R6 2 0
      175 GETTABLEKS                       R4 R3 K30 ["customClothingLeftShoesSetting"]
      177 GETTABLEKS                       R5 R1 K31 ["CustomLeftShoesAccessory"]
      179 GETTABLEKS                       R7 R4 K14 ["assetId"]
      181 GETTABLEKS                       R6 R7 K6 ["set"]
      183 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      185 LOADB                            R8 1
      186 CALL                             R6 2 0
      187 GETTABLEKS                       R7 R4 K16 ["enabled"]
      189 GETTABLEKS                       R6 R7 K6 ["set"]
      191 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      193 LOADB                            R8 1
      194 CALL                             R6 2 0
      195 GETTABLEKS                       R4 R3 K32 ["customClothingRightShoesSetting"]
      197 GETTABLEKS                       R5 R1 K33 ["CustomRightShoesAccessory"]
      199 GETTABLEKS                       R7 R4 K14 ["assetId"]
      201 GETTABLEKS                       R6 R7 K6 ["set"]
      203 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      205 LOADB                            R8 1
      206 CALL                             R6 2 0
      207 GETTABLEKS                       R7 R4 K16 ["enabled"]
      209 GETTABLEKS                       R6 R7 K6 ["set"]
      211 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      213 LOADB                            R8 1
      214 CALL                             R6 2 0
      215 GETTABLEKS                       R4 R3 K34 ["customClothingClassicShirtsSetting"]
      217 GETTABLEKS                       R5 R1 K35 ["CustomClassicShirtsAccessory"]
      219 GETTABLEKS                       R7 R4 K14 ["assetId"]
      221 GETTABLEKS                       R6 R7 K6 ["set"]
      223 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      225 LOADB                            R8 1
      226 CALL                             R6 2 0
      227 GETTABLEKS                       R7 R4 K16 ["enabled"]
      229 GETTABLEKS                       R6 R7 K6 ["set"]
      231 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      233 LOADB                            R8 1
      234 CALL                             R6 2 0
      235 GETTABLEKS                       R4 R3 K36 ["customClothingClassicTShirtsSetting"]
      237 GETTABLEKS                       R5 R1 K37 ["CustomClassicTShirtsAccessory"]
      239 GETTABLEKS                       R7 R4 K14 ["assetId"]
      241 GETTABLEKS                       R6 R7 K6 ["set"]
      243 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      245 LOADB                            R8 1
      246 CALL                             R6 2 0
      247 GETTABLEKS                       R7 R4 K16 ["enabled"]
      249 GETTABLEKS                       R6 R7 K6 ["set"]
      251 GETTABLEKS                       R7 R5 K17 ["Enabled"]
      253 LOADB                            R8 1
      254 CALL                             R6 2 0
      255 GETTABLEKS                       R4 R3 K38 ["customClothingClassicPantsSetting"]
      257 GETTABLEKS                       R5 R1 K39 ["CustomClassicPantsAccessory"]
      259 GETTABLEKS                       R7 R4 K14 ["assetId"]
      261 GETTABLEKS                       R6 R7 K6 ["set"]
      263 GETTABLEKS                       R7 R5 K15 ["AssetId"]
      265 LOADB                            R8 1
      266 CALL                             R6 2 0
      267 GETTABLEKS                       R7 R4 K16 ["enabled"]
      269 GETTABLEKS                       R6 R7 K6 ["set"]
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
       11 GETTABLEKS                       R5 R3 K5 ["characterControllerModeSetting"]
       13 GETTABLEKS                       R4 R5 K6 ["set"]
       15 GETTABLEKS                       R5 R1 K7 ["CharacterControllerMode"]
       17 LOADB                            R6 1
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R5 R3 K8 ["defaultAbilitiesEnableRunningSetting"]
       21 GETTABLEKS                       R4 R5 K6 ["set"]
       23 GETTABLEKS                       R5 R1 K9 ["EnableRunning"]
       25 LOADB                            R6 1
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R5 R3 K10 ["defaultAbilitiesEnableJumpingSetting"]
       29 GETTABLEKS                       R4 R5 K6 ["set"]
       31 GETTABLEKS                       R5 R1 K11 ["EnableJumping"]
       33 LOADB                            R6 1
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R5 R3 K12 ["defaultAbilitiesEnableSittingSetting"]
       37 GETTABLEKS                       R4 R5 K6 ["set"]
       39 GETTABLEKS                       R5 R1 K13 ["EnableSitting"]
       41 LOADB                            R6 1
       42 CALL                             R4 2 0
       43 GETTABLEKS                       R5 R3 K14 ["defaultAbilitiesEnableFallingDownSetting"]
       45 GETTABLEKS                       R4 R5 K6 ["set"]
       47 GETTABLEKS                       R5 R1 K15 ["EnableFallingDown"]
       49 LOADB                            R6 1
       50 CALL                             R4 2 0
       51 GETTABLEKS                       R5 R3 K16 ["defaultAbilitiesEnableGettingUpSetting"]
       53 GETTABLEKS                       R4 R5 K6 ["set"]
       55 GETTABLEKS                       R5 R1 K17 ["EnableGettingUp"]
       57 LOADB                            R6 1
       58 CALL                             R4 2 0
       59 GETTABLEKS                       R5 R3 K18 ["defaultAbilitiesEnableClimbingSetting"]
       61 GETTABLEKS                       R4 R5 K6 ["set"]
       63 GETTABLEKS                       R5 R1 K19 ["EnableClimbing"]
       65 LOADB                            R6 1
       66 CALL                             R4 2 0
       67 GETTABLEKS                       R5 R3 K20 ["defaultAbilitiesEnableSwimmingSetting"]
       69 GETTABLEKS                       R4 R5 K6 ["set"]
       71 GETTABLEKS                       R5 R1 K21 ["EnableSwimming"]
       73 LOADB                            R6 1
       74 CALL                             R4 2 0
       75 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R4 R2 K4 ["workspaceGravity"]
       11 GETTABLEKS                       R3 R4 K5 ["set"]
       13 GETTABLEKS                       R5 R1 K6 ["OtherProperties"]
       15 GETTABLEKS                       R4 R5 K7 ["Gravity"]
       17 CALL                             R3 1 0
       18 GETTABLEKS                       R5 R2 K8 ["navigationBarSettings"]
       20 GETTABLEKS                       R4 R5 K9 ["avatarType"]
       22 GETTABLEKS                       R3 R4 K5 ["set"]
       24 GETTABLEKS                       R5 R1 K10 ["AvatarRules"]
       26 GETTABLEKS                       R4 R5 K11 ["AvatarType"]
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
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R3 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Util"]
       24 GETTABLEKS                       R3 R4 K11 ["AvatarSettingsProviderTypes"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K10 ["Util"]
       33 GETTABLEKS                       R4 R5 K12 ["AvatarSettingsSyncTypes"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K13 [PROTO_0]
       37 DUPCLOSURE                       R5 K14 [PROTO_1]
       38 DUPCLOSURE                       R6 K15 [PROTO_2]
       39 DUPCLOSURE                       R7 K16 [PROTO_3]
       40 DUPCLOSURE                       R8 K17 [PROTO_4]
       41 DUPCLOSURE                       R9 K18 [PROTO_5]
       42 DUPCLOSURE                       R10 K19 [PROTO_6]
       43 DUPCLOSURE                       R11 K20 [PROTO_7]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R10
       50 RETURN                           R11 1
