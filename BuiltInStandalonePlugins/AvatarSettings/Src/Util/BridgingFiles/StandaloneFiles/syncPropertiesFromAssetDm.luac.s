PROTO_0:
  GETTABLEKS R3 R0 K0 ["assetId"]
  GETTABLEKS R2 R3 K1 ["set"]
  GETTABLEKS R3 R1 K2 ["AssetId"]
  LOADB R4 1
  CALL R2 2 0
  GETTABLEKS R3 R0 K3 ["enabled"]
  GETTABLEKS R2 R3 K1 ["set"]
  GETTABLEKS R3 R1 K4 ["Enabled"]
  LOADB R4 1
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["settings"]
  FASTCALL2K ASSERT R2 K1 [+5]
  MOVE R4 R2
  LOADK R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETTABLEKS R3 R2 K4 ["bodySettings"]
  GETTABLEKS R5 R3 K5 ["bodyScaleSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K7 ["ScaleMode"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K8 ["bodyScaleCustomHeight"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K9 ["CustomHeight"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K10 ["bodyAppearanceSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K11 ["AppearanceMode"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R4 R3 K12 ["bodyAppearanceCustomPartsFace"]
  GETTABLEKS R5 R1 K13 ["CustomFace"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K18 ["bodyAppearanceCustomPartsHead"]
  GETTABLEKS R5 R1 K19 ["CustomHead"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K20 ["bodyAppearanceCustomPartsMood"]
  GETTABLEKS R5 R1 K21 ["CustomMood"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K22 ["bodyAppearanceCustomPartsEyebrow"]
  GETTABLEKS R5 R1 K23 ["CustomEyebrow"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K24 ["bodyAppearanceCustomPartsEyelash"]
  GETTABLEKS R5 R1 K25 ["CustomEyelash"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K26 ["bodyAppearanceCustomPartsTorso"]
  GETTABLEKS R5 R1 K27 ["CustomTorso"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K28 ["bodyAppearanceCustomPartsLeftArm"]
  GETTABLEKS R5 R1 K29 ["CustomLeftArm"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K30 ["bodyAppearanceCustomPartsRightArm"]
  GETTABLEKS R5 R1 K31 ["CustomRightArm"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K32 ["bodyAppearanceCustomPartsLeftLeg"]
  GETTABLEKS R5 R1 K33 ["CustomLeftLeg"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K34 ["bodyAppearanceCustomPartsRightLeg"]
  GETTABLEKS R5 R1 K35 ["CustomRightLeg"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R5 R3 K36 ["bodyBuildSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K37 ["BuildMode"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K38 ["bodyBuildCustomHeight"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K39 ["CustomHeightScale"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K40 ["bodyBuildCustomWidth"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K41 ["CustomWidthScale"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K42 ["bodyBuildCustomHead"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K43 ["CustomHeadScale"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K44 ["bodyBuildCustomBodyType"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K45 ["CustomBodyTypeScale"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K46 ["bodyBuildCustomProportions"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K47 ["CustomProportionsScale"]
  LOADB R6 1
  CALL R4 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["settings"]
  FASTCALL2K ASSERT R2 K1 [+5]
  MOVE R4 R2
  LOADK R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETTABLEKS R3 R2 K4 ["movementSettings"]
  GETTABLEKS R5 R3 K5 ["collisionSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K7 ["CollisionMode"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K8 ["collisionHitAndTouchDetectionSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K9 ["HitAndTouchDetectionMode"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K10 ["collisionMethodSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K11 ["AvatarSettingsLegacyCollisionMode"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K12 ["collisionSizeSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K13 ["SingleColliderSize"]
  LOADB R6 1
  CALL R4 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["settings"]
  FASTCALL2K ASSERT R2 K1 [+5]
  MOVE R4 R2
  LOADK R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETTABLEKS R3 R2 K4 ["animationSettings"]
  GETTABLEKS R5 R3 K5 ["animationPacksSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K7 ["AnimationPacksMode"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K8 ["animationClipsSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K9 ["AnimationClipsMode"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R4 R3 K10 ["animationClipsRunSetting"]
  GETTABLEKS R5 R1 K11 ["CustomRunAnimation"]
  GETTABLEKS R7 R4 K12 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K13 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K14 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K16 ["animationClipsWalkSetting"]
  GETTABLEKS R5 R1 K17 ["CustomWalkAnimation"]
  GETTABLEKS R7 R4 K12 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K13 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K14 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K18 ["animationClipsFallSetting"]
  GETTABLEKS R5 R1 K19 ["CustomFallAnimation"]
  GETTABLEKS R7 R4 K12 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K13 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K14 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K20 ["animationClipsJumpSetting"]
  GETTABLEKS R5 R1 K21 ["CustomJumpAnimation"]
  GETTABLEKS R7 R4 K12 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K13 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K14 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K22 ["animationClipsIdleSetting"]
  GETTABLEKS R5 R1 K23 ["CustomIdleAnimation"]
  GETTABLEKS R7 R4 K12 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K13 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K14 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K24 ["animationClipsIdleAlt1Setting"]
  GETTABLEKS R5 R1 K25 ["CustomIdleAlt1Animation"]
  GETTABLEKS R7 R4 K12 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K13 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K14 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K26 ["animationClipsIdleAlt2Setting"]
  GETTABLEKS R5 R1 K27 ["CustomIdleAlt2Animation"]
  GETTABLEKS R7 R4 K12 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K13 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K14 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K28 ["animationClipsSwimSetting"]
  GETTABLEKS R5 R1 K29 ["CustomSwimAnimation"]
  GETTABLEKS R7 R4 K12 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K13 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K14 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K30 ["animationClipsSwimIdleSetting"]
  GETTABLEKS R5 R1 K31 ["CustomSwimIdleAnimation"]
  GETTABLEKS R7 R4 K12 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K13 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K14 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K32 ["animationClipsClimbSetting"]
  GETTABLEKS R5 R1 K33 ["CustomClimbAnimation"]
  GETTABLEKS R7 R4 K12 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K13 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K14 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["settings"]
  FASTCALL2K ASSERT R2 K1 [+5]
  MOVE R4 R2
  LOADK R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETTABLEKS R3 R2 K4 ["accessoriesSettings"]
  GETTABLEKS R5 R3 K5 ["accessoryBehaviorEnableSoundSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K7 ["EnableSound"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K8 ["accessoryBehaviorEnableVFXSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K9 ["EnableVFX"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K10 ["accessoryScaleSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K11 ["AccessoryMode"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K12 ["accessoryScaleLimitMethodSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K13 ["LimitMethod"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K14 ["accessoryScaleLimitBoundsSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K15 ["LimitBounds"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K16 ["customAccessoriesSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K17 ["CustomAccessoryMode"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R4 R3 K18 ["customAccessoriesHairSetting"]
  GETTABLEKS R5 R1 K19 ["CustomHairAccessory"]
  GETTABLEKS R7 R4 K20 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K21 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K22 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K23 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K24 ["customAccessoriesHeadSetting"]
  GETTABLEKS R5 R1 K25 ["CustomHeadAccessory"]
  GETTABLEKS R7 R4 K20 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K21 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K22 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K23 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K26 ["customAccessoriesFaceSetting"]
  GETTABLEKS R5 R1 K27 ["CustomFaceAccessory"]
  GETTABLEKS R7 R4 K20 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K21 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K22 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K23 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K28 ["customAccessoriesNeckSetting"]
  GETTABLEKS R5 R1 K29 ["CustomNeckAccessory"]
  GETTABLEKS R7 R4 K20 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K21 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K22 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K23 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K30 ["customAccessoriesShoulderSetting"]
  GETTABLEKS R5 R1 K31 ["CustomShoulderAccessory"]
  GETTABLEKS R7 R4 K20 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K21 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K22 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K23 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K32 ["customAccessoriesFrontSetting"]
  GETTABLEKS R5 R1 K33 ["CustomFrontAccessory"]
  GETTABLEKS R7 R4 K20 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K21 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K22 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K23 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K34 ["customAccessoriesBackSetting"]
  GETTABLEKS R5 R1 K35 ["CustomBackAccessory"]
  GETTABLEKS R7 R4 K20 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K21 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K22 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K23 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K36 ["customAccessoriesWaistSetting"]
  GETTABLEKS R5 R1 K37 ["CustomWaistAccessory"]
  GETTABLEKS R7 R4 K20 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K21 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K22 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K23 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["settings"]
  FASTCALL2K ASSERT R2 K1 [+5]
  MOVE R4 R2
  LOADK R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETTABLEKS R3 R2 K4 ["clothingSettings"]
  GETTABLEKS R5 R3 K5 ["clothingScaleSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K7 ["ClothingMode"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K8 ["clothingScaleLimitBoundsSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K9 ["LimitBounds"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R5 R3 K10 ["customClothingSetting"]
  GETTABLEKS R4 R5 K6 ["set"]
  GETTABLEKS R5 R1 K11 ["CustomClothingMode"]
  LOADB R6 1
  CALL R4 2 0
  GETTABLEKS R4 R3 K12 ["customClothingTShirtSetting"]
  GETTABLEKS R5 R1 K13 ["CustomTShirtAccessory"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K18 ["customClothingShirtSetting"]
  GETTABLEKS R5 R1 K19 ["CustomShirtAccessory"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K20 ["customClothingJacketSetting"]
  GETTABLEKS R5 R1 K21 ["CustomJacketAccessory"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K22 ["customClothingSweaterSetting"]
  GETTABLEKS R5 R1 K23 ["CustomSweaterAccessory"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K24 ["customClothingPantsSetting"]
  GETTABLEKS R5 R1 K25 ["CustomPantsAccessory"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K26 ["customClothingShortsSetting"]
  GETTABLEKS R5 R1 K27 ["CustomShortsAccessory"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K28 ["customClothingDressSkirtSetting"]
  GETTABLEKS R5 R1 K29 ["CustomDressSkirtAccessory"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K30 ["customClothingLeftShoesSetting"]
  GETTABLEKS R5 R1 K31 ["CustomLeftShoesAccessory"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K32 ["customClothingRightShoesSetting"]
  GETTABLEKS R5 R1 K33 ["CustomRightShoesAccessory"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K34 ["customClothingClassicShirtsSetting"]
  GETTABLEKS R5 R1 K35 ["CustomClassicShirtsAccessory"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K36 ["customClothingClassicTShirtsSetting"]
  GETTABLEKS R5 R1 K37 ["CustomClassicTShirtsAccessory"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R4 R3 K38 ["customClothingClassicPantsSetting"]
  GETTABLEKS R5 R1 K39 ["CustomClassicPantsAccessory"]
  GETTABLEKS R7 R4 K14 ["assetId"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K15 ["AssetId"]
  LOADB R8 1
  CALL R6 2 0
  GETTABLEKS R7 R4 K16 ["enabled"]
  GETTABLEKS R6 R7 K6 ["set"]
  GETTABLEKS R7 R5 K17 ["Enabled"]
  LOADB R8 1
  CALL R6 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["settings"]
  FASTCALL2K ASSERT R2 K1 [+5]
  MOVE R4 R2
  LOADK R5 K1 ["Expected settings to be present in AvatarSettingsContext"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K4 ["workspaceGravity"]
  GETTABLEKS R3 R4 K5 ["set"]
  GETTABLEKS R5 R1 K6 ["OtherProperties"]
  GETTABLEKS R4 R5 K7 ["Gravity"]
  CALL R3 1 0
  GETTABLEKS R5 R2 K8 ["navigationBarSettings"]
  GETTABLEKS R4 R5 K9 ["avatarType"]
  GETTABLEKS R3 R4 K5 ["set"]
  GETTABLEKS R5 R1 K10 ["AvatarRules"]
  GETTABLEKS R4 R5 K11 ["AvatarType"]
  LOADB R5 1
  CALL R3 2 0
  GETUPVAL R3 0
  MOVE R4 R0
  GETTABLEKS R5 R1 K12 ["AvatarBodyRules"]
  CALL R3 2 0
  GETUPVAL R3 1
  MOVE R4 R0
  GETTABLEKS R5 R1 K13 ["AvatarCollisionRules"]
  CALL R3 2 0
  GETUPVAL R3 2
  MOVE R4 R0
  GETTABLEKS R5 R1 K14 ["AvatarAnimationRules"]
  CALL R3 2 0
  GETUPVAL R3 3
  MOVE R4 R0
  GETTABLEKS R5 R1 K15 ["AvatarAccessoryRules"]
  CALL R3 2 0
  GETUPVAL R3 4
  MOVE R4 R0
  GETTABLEKS R5 R1 K16 ["AvatarClothingRules"]
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Components"]
  GETTABLEKS R3 R4 K8 ["Contexts"]
  GETTABLEKS R2 R3 K9 ["AvatarSettingsContext"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["AvatarSettingsProviderTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K12 ["AvatarSettingsSyncTypes"]
  CALL R3 1 1
  DUPCLOSURE R4 K13 [PROTO_0]
  DUPCLOSURE R5 K14 [PROTO_1]
  DUPCLOSURE R6 K15 [PROTO_2]
  DUPCLOSURE R7 K16 [PROTO_3]
  DUPCLOSURE R8 K17 [PROTO_4]
  DUPCLOSURE R9 K18 [PROTO_5]
  DUPCLOSURE R10 K19 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  RETURN R10 1
