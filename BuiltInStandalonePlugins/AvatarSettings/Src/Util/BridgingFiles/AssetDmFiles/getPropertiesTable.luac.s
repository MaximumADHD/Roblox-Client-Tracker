PROTO_0:
  GETTABLEKS R1 R0 K0 ["ruleInstance"]
  GETTABLEKS R3 R0 K1 ["property"]
  LOADK R4 K2 ["Id"]
  CONCAT R2 R3 R4
  GETTABLEKS R4 R0 K1 ["property"]
  LOADK R5 K3 ["Enabled"]
  CONCAT R3 R4 R5
  DUPTABLE R4 K5 [{"AssetId", "Enabled"}]
  GETTABLE R5 R1 R2
  SETTABLEKS R5 R4 K4 ["AssetId"]
  GETTABLE R5 R1 R3
  SETTABLEKS R5 R4 K3 ["Enabled"]
  RETURN R4 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["avatarRules"]
  CALL R0 0 1
  DUPTABLE R1 K2 [{"AvatarType"}]
  GETTABLEKS R2 R0 K1 ["AvatarType"]
  SETTABLEKS R2 R1 K1 ["AvatarType"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["avatarBodyRules"]
  CALL R0 0 1
  FASTCALL2K ASSERT R0 K1 [+5]
  MOVE R2 R0
  LOADK R3 K1 ["AvatarBodyRules not found"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  DUPTABLE R1 K14 [{"ScaleMode", "CustomHeight", "AppearanceMode", "KeepPlayerHead", "BuildMode", "CustomHeightScale", "CustomWidthScale", "CustomHeadScale", "CustomBodyTypeScale", "CustomProportionsScale"}]
  GETTABLEKS R2 R0 K4 ["ScaleMode"]
  SETTABLEKS R2 R1 K4 ["ScaleMode"]
  GETTABLEKS R2 R0 K5 ["CustomHeight"]
  SETTABLEKS R2 R1 K5 ["CustomHeight"]
  GETTABLEKS R2 R0 K6 ["AppearanceMode"]
  SETTABLEKS R2 R1 K6 ["AppearanceMode"]
  GETTABLEKS R2 R0 K7 ["KeepPlayerHead"]
  SETTABLEKS R2 R1 K7 ["KeepPlayerHead"]
  GETTABLEKS R2 R0 K8 ["BuildMode"]
  SETTABLEKS R2 R1 K8 ["BuildMode"]
  GETTABLEKS R2 R0 K9 ["CustomHeightScale"]
  SETTABLEKS R2 R1 K9 ["CustomHeightScale"]
  GETTABLEKS R2 R0 K10 ["CustomWidthScale"]
  SETTABLEKS R2 R1 K10 ["CustomWidthScale"]
  GETTABLEKS R2 R0 K11 ["CustomHeadScale"]
  SETTABLEKS R2 R1 K11 ["CustomHeadScale"]
  GETTABLEKS R2 R0 K12 ["CustomBodyTypeScale"]
  SETTABLEKS R2 R1 K12 ["CustomBodyTypeScale"]
  GETTABLEKS R2 R0 K13 ["CustomProportionsScale"]
  SETTABLEKS R2 R1 K13 ["CustomProportionsScale"]
  NEWTABLE R2 0 10
  DUPTABLE R3 K17 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R3 K15 ["ruleInstance"]
  LOADK R4 K18 ["CustomFace"]
  SETTABLEKS R4 R3 K16 ["property"]
  DUPTABLE R4 K17 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R4 K15 ["ruleInstance"]
  LOADK R5 K19 ["CustomHead"]
  SETTABLEKS R5 R4 K16 ["property"]
  DUPTABLE R5 K17 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R5 K15 ["ruleInstance"]
  LOADK R6 K20 ["CustomMood"]
  SETTABLEKS R6 R5 K16 ["property"]
  DUPTABLE R6 K17 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R6 K15 ["ruleInstance"]
  LOADK R7 K21 ["CustomEyelash"]
  SETTABLEKS R7 R6 K16 ["property"]
  DUPTABLE R7 K17 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R7 K15 ["ruleInstance"]
  LOADK R8 K22 ["CustomEyebrow"]
  SETTABLEKS R8 R7 K16 ["property"]
  DUPTABLE R8 K17 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R8 K15 ["ruleInstance"]
  LOADK R9 K23 ["CustomTorso"]
  SETTABLEKS R9 R8 K16 ["property"]
  DUPTABLE R9 K17 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R9 K15 ["ruleInstance"]
  LOADK R10 K24 ["CustomLeftArm"]
  SETTABLEKS R10 R9 K16 ["property"]
  DUPTABLE R10 K17 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R10 K15 ["ruleInstance"]
  LOADK R11 K25 ["CustomRightArm"]
  SETTABLEKS R11 R10 K16 ["property"]
  DUPTABLE R11 K17 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R11 K15 ["ruleInstance"]
  LOADK R12 K26 ["CustomLeftLeg"]
  SETTABLEKS R12 R11 K16 ["property"]
  DUPTABLE R12 K17 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R12 K15 ["ruleInstance"]
  LOADK R13 K27 ["CustomRightLeg"]
  SETTABLEKS R13 R12 K16 ["property"]
  SETLIST R2 R3 10 [1]
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R7 K16 ["property"]
  GETTABLEKS R10 R7 K15 ["ruleInstance"]
  GETTABLEKS R12 R7 K16 ["property"]
  LOADK R13 K28 ["Id"]
  CONCAT R11 R12 R13
  GETTABLEKS R13 R7 K16 ["property"]
  LOADK R14 K29 ["Enabled"]
  CONCAT R12 R13 R14
  DUPTABLE R9 K31 [{"AssetId", "Enabled"}]
  GETTABLE R13 R10 R11
  SETTABLEKS R13 R9 K30 ["AssetId"]
  GETTABLE R13 R10 R12
  SETTABLEKS R13 R9 K29 ["Enabled"]
  SETTABLE R9 R1 R8
  FORGLOOP R3 2 [-21]
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["avatarCollisionRules"]
  CALL R0 0 1
  FASTCALL2K ASSERT R0 K1 [+5]
  MOVE R2 R0
  LOADK R3 K1 ["AvatarCollisionRules not found"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  DUPTABLE R1 K8 [{"CollisionMode", "HitAndTouchDetectionMode", "AvatarSettingsLegacyCollisionMode", "SingleColliderSize"}]
  GETTABLEKS R2 R0 K4 ["CollisionMode"]
  SETTABLEKS R2 R1 K4 ["CollisionMode"]
  GETTABLEKS R2 R0 K5 ["HitAndTouchDetectionMode"]
  SETTABLEKS R2 R1 K5 ["HitAndTouchDetectionMode"]
  GETTABLEKS R2 R0 K9 ["LegacyCollisionMode"]
  SETTABLEKS R2 R1 K6 ["AvatarSettingsLegacyCollisionMode"]
  GETTABLEKS R2 R0 K7 ["SingleColliderSize"]
  SETTABLEKS R2 R1 K7 ["SingleColliderSize"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["avatarAnimationRules"]
  CALL R0 0 1
  FASTCALL2K ASSERT R0 K1 [+5]
  MOVE R2 R0
  LOADK R3 K1 ["AvatarAnimationRules not found"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  DUPTABLE R1 K6 [{"AnimationPacksMode", "AnimationClipsMode"}]
  GETTABLEKS R2 R0 K4 ["AnimationPacksMode"]
  SETTABLEKS R2 R1 K4 ["AnimationPacksMode"]
  GETTABLEKS R2 R0 K5 ["AnimationClipsMode"]
  SETTABLEKS R2 R1 K5 ["AnimationClipsMode"]
  NEWTABLE R2 0 10
  DUPTABLE R3 K9 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R3 K7 ["ruleInstance"]
  LOADK R4 K10 ["CustomRunAnimation"]
  SETTABLEKS R4 R3 K8 ["property"]
  DUPTABLE R4 K9 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R4 K7 ["ruleInstance"]
  LOADK R5 K11 ["CustomWalkAnimation"]
  SETTABLEKS R5 R4 K8 ["property"]
  DUPTABLE R5 K9 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R5 K7 ["ruleInstance"]
  LOADK R6 K12 ["CustomFallAnimation"]
  SETTABLEKS R6 R5 K8 ["property"]
  DUPTABLE R6 K9 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R6 K7 ["ruleInstance"]
  LOADK R7 K13 ["CustomJumpAnimation"]
  SETTABLEKS R7 R6 K8 ["property"]
  DUPTABLE R7 K9 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R7 K7 ["ruleInstance"]
  LOADK R8 K14 ["CustomIdleAnimation"]
  SETTABLEKS R8 R7 K8 ["property"]
  DUPTABLE R8 K9 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R8 K7 ["ruleInstance"]
  LOADK R9 K15 ["CustomIdleAlt1Animation"]
  SETTABLEKS R9 R8 K8 ["property"]
  DUPTABLE R9 K9 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R9 K7 ["ruleInstance"]
  LOADK R10 K16 ["CustomIdleAlt2Animation"]
  SETTABLEKS R10 R9 K8 ["property"]
  DUPTABLE R10 K9 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R10 K7 ["ruleInstance"]
  LOADK R11 K17 ["CustomSwimAnimation"]
  SETTABLEKS R11 R10 K8 ["property"]
  DUPTABLE R11 K9 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R11 K7 ["ruleInstance"]
  LOADK R12 K18 ["CustomSwimIdleAnimation"]
  SETTABLEKS R12 R11 K8 ["property"]
  DUPTABLE R12 K9 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R12 K7 ["ruleInstance"]
  LOADK R13 K19 ["CustomClimbAnimation"]
  SETTABLEKS R13 R12 K8 ["property"]
  SETLIST R2 R3 10 [1]
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R7 K8 ["property"]
  GETTABLEKS R10 R7 K7 ["ruleInstance"]
  GETTABLEKS R12 R7 K8 ["property"]
  LOADK R13 K20 ["Id"]
  CONCAT R11 R12 R13
  GETTABLEKS R13 R7 K8 ["property"]
  LOADK R14 K21 ["Enabled"]
  CONCAT R12 R13 R14
  DUPTABLE R9 K23 [{"AssetId", "Enabled"}]
  GETTABLE R13 R10 R11
  SETTABLEKS R13 R9 K22 ["AssetId"]
  GETTABLE R13 R10 R12
  SETTABLEKS R13 R9 K21 ["Enabled"]
  SETTABLE R9 R1 R8
  FORGLOOP R3 2 [-21]
  RETURN R1 1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["avatarAccessoryRules"]
  CALL R0 0 1
  FASTCALL2K ASSERT R0 K1 [+5]
  MOVE R2 R0
  LOADK R3 K1 ["AvatarAccessoryRules not found"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  DUPTABLE R1 K10 [{"EnableSound", "EnableVFX", "AccessoryMode", "LimitMethod", "LimitBounds", "CustomAccessoryMode"}]
  GETTABLEKS R2 R0 K4 ["EnableSound"]
  SETTABLEKS R2 R1 K4 ["EnableSound"]
  GETTABLEKS R2 R0 K5 ["EnableVFX"]
  SETTABLEKS R2 R1 K5 ["EnableVFX"]
  GETTABLEKS R2 R0 K6 ["AccessoryMode"]
  SETTABLEKS R2 R1 K6 ["AccessoryMode"]
  GETTABLEKS R2 R0 K7 ["LimitMethod"]
  SETTABLEKS R2 R1 K7 ["LimitMethod"]
  GETTABLEKS R2 R0 K8 ["LimitBounds"]
  SETTABLEKS R2 R1 K8 ["LimitBounds"]
  GETTABLEKS R2 R0 K9 ["CustomAccessoryMode"]
  SETTABLEKS R2 R1 K9 ["CustomAccessoryMode"]
  NEWTABLE R2 0 8
  DUPTABLE R3 K13 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R3 K11 ["ruleInstance"]
  LOADK R4 K14 ["CustomHairAccessory"]
  SETTABLEKS R4 R3 K12 ["property"]
  DUPTABLE R4 K13 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R4 K11 ["ruleInstance"]
  LOADK R5 K15 ["CustomHeadAccessory"]
  SETTABLEKS R5 R4 K12 ["property"]
  DUPTABLE R5 K13 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R5 K11 ["ruleInstance"]
  LOADK R6 K16 ["CustomFaceAccessory"]
  SETTABLEKS R6 R5 K12 ["property"]
  DUPTABLE R6 K13 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R6 K11 ["ruleInstance"]
  LOADK R7 K17 ["CustomNeckAccessory"]
  SETTABLEKS R7 R6 K12 ["property"]
  DUPTABLE R7 K13 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R7 K11 ["ruleInstance"]
  LOADK R8 K18 ["CustomShoulderAccessory"]
  SETTABLEKS R8 R7 K12 ["property"]
  DUPTABLE R8 K13 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R8 K11 ["ruleInstance"]
  LOADK R9 K19 ["CustomFrontAccessory"]
  SETTABLEKS R9 R8 K12 ["property"]
  DUPTABLE R9 K13 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R9 K11 ["ruleInstance"]
  LOADK R10 K20 ["CustomBackAccessory"]
  SETTABLEKS R10 R9 K12 ["property"]
  DUPTABLE R10 K13 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R10 K11 ["ruleInstance"]
  LOADK R11 K21 ["CustomWaistAccessory"]
  SETTABLEKS R11 R10 K12 ["property"]
  SETLIST R2 R3 8 [1]
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R7 K12 ["property"]
  GETTABLEKS R10 R7 K11 ["ruleInstance"]
  GETTABLEKS R12 R7 K12 ["property"]
  LOADK R13 K22 ["Id"]
  CONCAT R11 R12 R13
  GETTABLEKS R13 R7 K12 ["property"]
  LOADK R14 K23 ["Enabled"]
  CONCAT R12 R13 R14
  DUPTABLE R9 K25 [{"AssetId", "Enabled"}]
  GETTABLE R13 R10 R11
  SETTABLEKS R13 R9 K24 ["AssetId"]
  GETTABLE R13 R10 R12
  SETTABLEKS R13 R9 K23 ["Enabled"]
  SETTABLE R9 R1 R8
  FORGLOOP R3 2 [-21]
  RETURN R1 1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["avatarClothingRules"]
  CALL R0 0 1
  FASTCALL2K ASSERT R0 K1 [+5]
  MOVE R2 R0
  LOADK R3 K1 ["AvatarClothingRules not found"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  DUPTABLE R1 K7 [{"ClothingMode", "LimitBounds", "CustomClothingMode"}]
  GETTABLEKS R2 R0 K4 ["ClothingMode"]
  SETTABLEKS R2 R1 K4 ["ClothingMode"]
  GETTABLEKS R2 R0 K5 ["LimitBounds"]
  SETTABLEKS R2 R1 K5 ["LimitBounds"]
  GETTABLEKS R2 R0 K6 ["CustomClothingMode"]
  SETTABLEKS R2 R1 K6 ["CustomClothingMode"]
  NEWTABLE R2 0 12
  DUPTABLE R3 K10 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R3 K8 ["ruleInstance"]
  LOADK R4 K11 ["CustomTShirtAccessory"]
  SETTABLEKS R4 R3 K9 ["property"]
  DUPTABLE R4 K10 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R4 K8 ["ruleInstance"]
  LOADK R5 K12 ["CustomShirtAccessory"]
  SETTABLEKS R5 R4 K9 ["property"]
  DUPTABLE R5 K10 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R5 K8 ["ruleInstance"]
  LOADK R6 K13 ["CustomJacketAccessory"]
  SETTABLEKS R6 R5 K9 ["property"]
  DUPTABLE R6 K10 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R6 K8 ["ruleInstance"]
  LOADK R7 K14 ["CustomSweaterAccessory"]
  SETTABLEKS R7 R6 K9 ["property"]
  DUPTABLE R7 K10 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R7 K8 ["ruleInstance"]
  LOADK R8 K15 ["CustomPantsAccessory"]
  SETTABLEKS R8 R7 K9 ["property"]
  DUPTABLE R8 K10 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R8 K8 ["ruleInstance"]
  LOADK R9 K16 ["CustomShortsAccessory"]
  SETTABLEKS R9 R8 K9 ["property"]
  DUPTABLE R9 K10 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R9 K8 ["ruleInstance"]
  LOADK R10 K17 ["CustomDressSkirtAccessory"]
  SETTABLEKS R10 R9 K9 ["property"]
  DUPTABLE R10 K10 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R10 K8 ["ruleInstance"]
  LOADK R11 K18 ["CustomLeftShoesAccessory"]
  SETTABLEKS R11 R10 K9 ["property"]
  DUPTABLE R11 K10 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R11 K8 ["ruleInstance"]
  LOADK R12 K19 ["CustomRightShoesAccessory"]
  SETTABLEKS R12 R11 K9 ["property"]
  DUPTABLE R12 K10 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R12 K8 ["ruleInstance"]
  LOADK R13 K20 ["CustomClassicShirtsAccessory"]
  SETTABLEKS R13 R12 K9 ["property"]
  DUPTABLE R13 K10 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R13 K8 ["ruleInstance"]
  LOADK R14 K21 ["CustomClassicTShirtsAccessory"]
  SETTABLEKS R14 R13 K9 ["property"]
  DUPTABLE R14 K10 [{"ruleInstance", "property"}]
  SETTABLEKS R0 R14 K8 ["ruleInstance"]
  LOADK R15 K22 ["CustomClassicPantsAccessory"]
  SETTABLEKS R15 R14 K9 ["property"]
  SETLIST R2 R3 12 [1]
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R7 K9 ["property"]
  GETTABLEKS R10 R7 K8 ["ruleInstance"]
  GETTABLEKS R12 R7 K9 ["property"]
  LOADK R13 K23 ["Id"]
  CONCAT R11 R12 R13
  GETTABLEKS R13 R7 K9 ["property"]
  LOADK R14 K24 ["Enabled"]
  CONCAT R12 R13 R14
  DUPTABLE R9 K26 [{"AssetId", "Enabled"}]
  GETTABLE R13 R10 R11
  SETTABLEKS R13 R9 K25 ["AssetId"]
  GETTABLE R13 R10 R12
  SETTABLEKS R13 R9 K24 ["Enabled"]
  SETTABLE R9 R1 R8
  FORGLOOP R3 2 [-21]
  RETURN R1 1

PROTO_7:
  DUPTABLE R0 K1 [{"Gravity"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Gravity"]
  SETTABLEKS R1 R0 K0 ["Gravity"]
  RETURN R0 1

PROTO_8:
  DUPTABLE R0 K7 [{"AvatarRules", "AvatarBodyRules", "AvatarCollisionRules", "AvatarAnimationRules", "AvatarAccessoryRules", "AvatarClothingRules", "OtherProperties"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["avatarRules"]
  CALL R2 0 1
  DUPTABLE R1 K10 [{"AvatarType"}]
  GETTABLEKS R3 R2 K9 ["AvatarType"]
  SETTABLEKS R3 R1 K9 ["AvatarType"]
  SETTABLEKS R1 R0 K0 ["AvatarRules"]
  GETUPVAL R1 1
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["AvatarBodyRules"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K11 ["avatarCollisionRules"]
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K12 [+5]
  MOVE R4 R2
  LOADK R5 K12 ["AvatarCollisionRules not found"]
  GETIMPORT R3 K14 [assert]
  CALL R3 2 0
  DUPTABLE R1 K19 [{"CollisionMode", "HitAndTouchDetectionMode", "AvatarSettingsLegacyCollisionMode", "SingleColliderSize"}]
  GETTABLEKS R3 R2 K15 ["CollisionMode"]
  SETTABLEKS R3 R1 K15 ["CollisionMode"]
  GETTABLEKS R3 R2 K16 ["HitAndTouchDetectionMode"]
  SETTABLEKS R3 R1 K16 ["HitAndTouchDetectionMode"]
  GETTABLEKS R3 R2 K20 ["LegacyCollisionMode"]
  SETTABLEKS R3 R1 K17 ["AvatarSettingsLegacyCollisionMode"]
  GETTABLEKS R3 R2 K18 ["SingleColliderSize"]
  SETTABLEKS R3 R1 K18 ["SingleColliderSize"]
  SETTABLEKS R1 R0 K2 ["AvatarCollisionRules"]
  GETUPVAL R1 2
  CALL R1 0 1
  SETTABLEKS R1 R0 K3 ["AvatarAnimationRules"]
  GETUPVAL R1 3
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["AvatarAccessoryRules"]
  GETUPVAL R1 4
  CALL R1 0 1
  SETTABLEKS R1 R0 K5 ["AvatarClothingRules"]
  DUPTABLE R1 K22 [{"Gravity"}]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K21 ["Gravity"]
  SETTABLEKS R2 R1 K21 ["Gravity"]
  SETTABLEKS R1 R0 K6 ["OtherProperties"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["Workspace"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["AvatarSettingsSyncTypes"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K13 ["BridgingFiles"]
  GETTABLEKS R5 R6 K14 ["AssetDmFiles"]
  GETTABLEKS R4 R5 K15 ["assetDmTypes"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Util"]
  GETTABLEKS R7 R8 K13 ["BridgingFiles"]
  GETTABLEKS R6 R7 K14 ["AssetDmFiles"]
  GETTABLEKS R5 R6 K16 ["assetDmUtils"]
  CALL R4 1 1
  DUPCLOSURE R5 K17 [PROTO_0]
  DUPCLOSURE R6 K18 [PROTO_1]
  CAPTURE VAL R4
  DUPCLOSURE R7 K19 [PROTO_2]
  CAPTURE VAL R4
  DUPCLOSURE R8 K20 [PROTO_3]
  CAPTURE VAL R4
  DUPCLOSURE R9 K21 [PROTO_4]
  CAPTURE VAL R4
  DUPCLOSURE R10 K22 [PROTO_5]
  CAPTURE VAL R4
  DUPCLOSURE R11 K23 [PROTO_6]
  CAPTURE VAL R4
  DUPCLOSURE R12 K24 [PROTO_7]
  CAPTURE VAL R1
  DUPCLOSURE R13 K25 [PROTO_8]
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R1
  RETURN R13 1
