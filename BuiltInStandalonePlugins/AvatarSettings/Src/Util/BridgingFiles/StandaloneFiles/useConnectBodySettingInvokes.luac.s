PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["numberRangeToDecimal"]
  MOVE R2 R0
  LOADN R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["settings"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Expected settings to be present in AvatarSettingsContext"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  DUPCLOSURE R2 K4 [PROTO_0]
  CAPTURE UPVAL U0
  GETTABLEKS R4 R0 K0 ["settings"]
  GETTABLEKS R3 R4 K5 ["bodySettings"]
  GETUPVAL R4 1
  MOVE R5 R1
  GETTABLEKS R6 R3 K6 ["bodyScaleSetting"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["bodyScaleSetting"]
  CALL R4 3 0
  GETUPVAL R4 1
  MOVE R5 R1
  GETTABLEKS R6 R3 K7 ["bodyScaleCustomHeight"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K7 ["bodyScaleCustomHeight"]
  MOVE R8 R2
  CALL R4 4 0
  GETUPVAL R4 1
  MOVE R5 R1
  GETTABLEKS R6 R3 K8 ["bodyAppearanceSetting"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K8 ["bodyAppearanceSetting"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R1
  GETTABLEKS R6 R3 K9 ["bodyAppearanceCustomPartsFace"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K9 ["bodyAppearanceCustomPartsFace"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R1
  GETTABLEKS R6 R3 K10 ["bodyAppearanceCustomPartsHead"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["bodyAppearanceCustomPartsHead"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R1
  GETTABLEKS R6 R3 K11 ["bodyAppearanceCustomPartsMood"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K11 ["bodyAppearanceCustomPartsMood"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R1
  GETTABLEKS R6 R3 K12 ["bodyAppearanceCustomPartsEyebrow"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K12 ["bodyAppearanceCustomPartsEyebrow"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R1
  GETTABLEKS R6 R3 K13 ["bodyAppearanceCustomPartsEyelash"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["bodyAppearanceCustomPartsEyelash"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R1
  GETTABLEKS R6 R3 K14 ["bodyAppearanceCustomPartsTorso"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K14 ["bodyAppearanceCustomPartsTorso"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R1
  GETTABLEKS R6 R3 K15 ["bodyAppearanceCustomPartsLeftArm"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K15 ["bodyAppearanceCustomPartsLeftArm"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R1
  GETTABLEKS R6 R3 K16 ["bodyAppearanceCustomPartsRightArm"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K16 ["bodyAppearanceCustomPartsRightArm"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R1
  GETTABLEKS R6 R3 K17 ["bodyAppearanceCustomPartsLeftLeg"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K17 ["bodyAppearanceCustomPartsLeftLeg"]
  CALL R4 3 0
  GETUPVAL R4 3
  MOVE R5 R1
  GETTABLEKS R6 R3 K18 ["bodyAppearanceCustomPartsRightLeg"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K18 ["bodyAppearanceCustomPartsRightLeg"]
  CALL R4 3 0
  GETUPVAL R4 1
  MOVE R5 R1
  GETTABLEKS R6 R3 K19 ["bodyBuildSetting"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K19 ["bodyBuildSetting"]
  CALL R4 3 0
  GETUPVAL R4 1
  MOVE R5 R1
  GETTABLEKS R6 R3 K20 ["bodyBuildCustomHeight"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K20 ["bodyBuildCustomHeight"]
  CALL R4 3 0
  GETUPVAL R4 1
  MOVE R5 R1
  GETTABLEKS R6 R3 K21 ["bodyBuildCustomWidth"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K21 ["bodyBuildCustomWidth"]
  CALL R4 3 0
  GETUPVAL R4 1
  MOVE R5 R1
  GETTABLEKS R6 R3 K22 ["bodyBuildCustomHead"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K22 ["bodyBuildCustomHead"]
  CALL R4 3 0
  GETUPVAL R4 1
  MOVE R5 R1
  GETTABLEKS R6 R3 K23 ["bodyBuildCustomBodyType"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K23 ["bodyBuildCustomBodyType"]
  CALL R4 3 0
  GETUPVAL R4 1
  MOVE R5 R1
  GETTABLEKS R6 R3 K24 ["bodyBuildCustomProportions"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K24 ["bodyBuildCustomProportions"]
  CALL R4 3 0
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
  GETTABLEKS R3 R4 K11 ["Round"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K12 ["InvokeKeys"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K10 ["Util"]
  GETTABLEKS R7 R8 K13 ["BridgingFiles"]
  GETTABLEKS R6 R7 K14 ["StandaloneFiles"]
  GETTABLEKS R5 R6 K15 ["standaloneInvokeUtils"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K16 ["useCreateInvokes"]
  GETTABLEKS R6 R4 K17 ["useCreateAssetIdInvokes"]
  DUPCLOSURE R7 K18 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R6
  RETURN R7 1
