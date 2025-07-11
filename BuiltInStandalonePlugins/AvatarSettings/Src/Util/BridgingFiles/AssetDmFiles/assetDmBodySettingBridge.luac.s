PROTO_0:
  DUPTABLE R1 K2 [{"ruleInstance", "property"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K0 ["ruleInstance"]
  SETTABLEKS R0 R1 K1 ["property"]
  RETURN R1 1

PROTO_1:
  DUPTABLE R1 K2 [{"ruleInstance", "property"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K0 ["ruleInstance"]
  SETTABLEKS R0 R1 K1 ["property"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["avatarBodyRules"]
  CALL R1 0 1
  FASTCALL1 ASSERT R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K2 [assert]
  CALL R2 1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  GETUPVAL R4 1
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K6 ["ScaleMode"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K7 ["bodyScaleSetting"]
  CALL R4 3 0
  GETUPVAL R4 1
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K8 ["CustomHeight"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K9 ["bodyScaleCustomHeight"]
  CALL R4 3 0
  GETUPVAL R4 1
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K10 ["AppearanceMode"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K11 ["bodyAppearanceSetting"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K12 ["CustomFace"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["bodyAppearanceCustomPartsFace"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K14 ["CustomHead"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K15 ["bodyAppearanceCustomPartsHead"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K16 ["CustomMood"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K17 ["bodyAppearanceCustomPartsMood"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K18 ["CustomEyebrow"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K19 ["bodyAppearanceCustomPartsEyebrow"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K20 ["CustomEyelash"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K21 ["bodyAppearanceCustomPartsEyelash"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K22 ["CustomTorso"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K23 ["bodyAppearanceCustomPartsTorso"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K24 ["CustomLeftArm"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K25 ["bodyAppearanceCustomPartsLeftArm"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K26 ["CustomRightArm"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K27 ["bodyAppearanceCustomPartsRightArm"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K28 ["CustomLeftLeg"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K29 ["bodyAppearanceCustomPartsLeftLeg"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K30 ["CustomRightLeg"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K31 ["bodyAppearanceCustomPartsRightLeg"]
  CALL R4 3 0
  GETUPVAL R4 1
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K32 ["BuildMode"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K33 ["bodyBuildSetting"]
  CALL R4 3 0
  GETUPVAL R4 1
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K34 ["CustomHeightScale"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K35 ["bodyBuildCustomHeight"]
  CALL R4 3 0
  GETUPVAL R4 1
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K36 ["CustomWidthScale"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K37 ["bodyBuildCustomWidth"]
  CALL R4 3 0
  GETUPVAL R4 1
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K38 ["CustomHeadScale"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K39 ["bodyBuildCustomHead"]
  CALL R4 3 0
  GETUPVAL R4 1
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K40 ["CustomBodyTypeScale"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K41 ["bodyBuildCustomBodyType"]
  CALL R4 3 0
  GETUPVAL R4 1
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ruleInstance", "property"}]
  SETTABLEKS R1 R6 K3 ["ruleInstance"]
  LOADK R7 K42 ["CustomProportionsScale"]
  SETTABLEKS R7 R6 K4 ["property"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K43 ["bodyBuildCustomProportions"]
  CALL R4 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K8 ["BridgingFiles"]
  GETTABLEKS R3 R4 K9 ["AssetDmFiles"]
  GETTABLEKS R2 R3 K10 ["assetDmInvokeUtils"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Util"]
  GETTABLEKS R5 R6 K8 ["BridgingFiles"]
  GETTABLEKS R4 R5 K9 ["AssetDmFiles"]
  GETTABLEKS R3 R4 K11 ["assetDmTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K7 ["Util"]
  GETTABLEKS R6 R7 K8 ["BridgingFiles"]
  GETTABLEKS R5 R6 K9 ["AssetDmFiles"]
  GETTABLEKS R4 R5 K12 ["assetDmUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Util"]
  GETTABLEKS R5 R6 K13 ["InvokeKeys"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K14 ["createInvokes"]
  GETTABLEKS R6 R1 K15 ["createAssetIdInvokes"]
  DUPCLOSURE R7 K16 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  RETURN R7 1
