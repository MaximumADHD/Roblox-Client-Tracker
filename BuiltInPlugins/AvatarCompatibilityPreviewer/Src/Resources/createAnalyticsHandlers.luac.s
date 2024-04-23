PROTO_0:
  DUPTABLE R1 K3 [{"paletteKey", "source", "serializedValue"}]
  GETTABLEKS R3 R0 K4 ["palette"]
  GETTABLEKS R2 R3 K5 ["Key"]
  SETTABLEKS R2 R1 K0 ["paletteKey"]
  GETTABLEKS R3 R0 K6 ["item"]
  GETTABLEKS R2 R3 K1 ["source"]
  SETTABLEKS R2 R1 K1 ["source"]
  GETTABLEKS R4 R0 K6 ["item"]
  GETTABLEKS R3 R4 K1 ["source"]
  JUMPIFNOTEQKS R3 K7 ["builtin"] [+31]
  GETTABLEKS R4 R0 K4 ["palette"]
  GETTABLEKS R3 R4 K8 ["Serializer"]
  JUMPIFNOT R3 [+16]
  GETTABLEKS R5 R0 K4 ["palette"]
  GETTABLEKS R4 R5 K8 ["Serializer"]
  GETTABLEKS R3 R4 K9 ["serialize"]
  GETTABLEKS R5 R0 K6 ["item"]
  GETTABLEKS R4 R5 K10 ["builtinItem"]
  CALL R3 1 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R2 K12 [tostring]
  CALL R2 -1 1
  JUMP [+10]
  GETTABLEKS R4 R0 K6 ["item"]
  GETTABLEKS R3 R4 K10 ["builtinItem"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K12 [tostring]
  CALL R2 1 1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["serializedValue"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["join"]
  DUPTABLE R3 K4 [{"studioSid", "clientId", "placeId"}]
  GETUPVAL R4 1
  NAMECALL R4 R4 K5 ["GetSessionId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["studioSid"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K6 ["GetClientId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["clientId"]
  GETIMPORT R5 K8 [game]
  GETTABLEKS R4 R5 K9 ["PlaceId"]
  SETTABLEKS R4 R3 K3 ["placeId"]
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R3 1
  LOADK R5 K10 ["studio"]
  LOADK R6 K11 ["AvatarCompatibilityPreviewer"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K12 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["ReportCounter"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["ReportStats"]
  CALL R2 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  GETUPVAL R6 1
  NAMECALL R2 R2 K0 ["ReportInfluxSeries"]
  CALL R2 4 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  LOADK R4 K0 ["AddUserItems"]
  DUPTABLE R5 K3 [{"itemsSelected", "itemsSucceeded"}]
  SETTABLEKS R1 R5 K1 ["itemsSelected"]
  SETTABLEKS R2 R5 K2 ["itemsSucceeded"]
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  LOADK R4 K0 ["AutoSetupFailure"]
  DUPTABLE R5 K3 [{"assetUrl", "timeToComplete"}]
  SETTABLEKS R2 R5 K1 ["assetUrl"]
  SETTABLEKS R1 R5 K2 ["timeToComplete"]
  CALL R3 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  LOADK R4 K0 ["AutoSetupFinish"]
  DUPTABLE R5 K3 [{"assetUrl", "timeToComplete"}]
  SETTABLEKS R2 R5 K1 ["assetUrl"]
  SETTABLEKS R1 R5 K2 ["timeToComplete"]
  CALL R3 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  LOADK R4 K0 ["AutoSetupAssetsGenerated"]
  DUPTABLE R5 K3 [{"inputAssetId", "outputAssetIds"}]
  SETTABLEKS R1 R5 K1 ["inputAssetId"]
  GETIMPORT R6 K6 [table.concat]
  MOVE R7 R2
  LOADK R8 K7 [","]
  CALL R6 2 1
  SETTABLEKS R6 R5 K2 ["outputAssetIds"]
  CALL R3 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  LOADK R3 K0 ["BundlesMetadataError"]
  DUPTABLE R4 K2 [{"problem"}]
  SETTABLEKS R1 R4 K1 ["problem"]
  CALL R2 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  LOADK R1 K0 ["ChangedLayers"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  LOADK R3 K0 ["EquipItem"]
  GETUPVAL R4 1
  MOVE R5 R1
  CALL R4 1 1
  CALL R2 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  LOADK R3 K0 ["PaletteOpen"]
  DUPTABLE R4 K2 [{"paletteKey"}]
  SETTABLEKS R1 R4 K1 ["paletteKey"]
  CALL R2 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  LOADK R1 K0 ["PluginOpen"]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R2 0
  LOADK R3 K0 ["TabOpen"]
  DUPTABLE R4 K2 [{"tabKey"}]
  SETTABLEKS R1 R4 K1 ["tabKey"]
  CALL R2 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+7]
  GETUPVAL R2 1
  LOADK R3 K0 ["Publish"]
  DUPTABLE R4 K2 [{"isAutoSetupped"}]
  SETTABLEKS R1 R4 K1 ["isAutoSetupped"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R2 1
  LOADK R3 K0 ["Publish"]
  CALL R2 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  LOADK R3 K0 ["SelectScreenChoice"]
  DUPTABLE R4 K2 [{"choice"}]
  SETTABLEKS R1 R4 K1 ["choice"]
  CALL R2 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R4 0
  LOADK R5 K0 ["AutoSetupSurvey"]
  DUPTABLE R6 K7 [{"userId", "rating", "message", "problems", "inputAssetId", "outputAssetIds"}]
  GETUPVAL R8 1
  JUMPIFNOT R8 [+5]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["GetUserId"]
  CALL R7 1 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K1 ["userId"]
  GETTABLEKS R7 R1 K2 ["rating"]
  SETTABLEKS R7 R6 K2 ["rating"]
  GETTABLEKS R7 R1 K3 ["message"]
  SETTABLEKS R7 R6 K3 ["message"]
  GETUPVAL R8 3
  CALL R8 0 1
  JUMPIFNOT R8 [+11]
  GETIMPORT R7 K11 [table.concat]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K12 ["keys"]
  GETTABLEKS R9 R1 K4 ["problems"]
  CALL R8 1 1
  LOADK R9 K13 [","]
  CALL R7 2 1
  JUMP [+6]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K12 ["keys"]
  GETTABLEKS R8 R1 K4 ["problems"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K4 ["problems"]
  SETTABLEKS R3 R6 K5 ["inputAssetId"]
  GETUPVAL R8 5
  CALL R8 0 1
  JUMPIFNOT R8 [+6]
  GETIMPORT R7 K11 [table.concat]
  MOVE R8 R2
  LOADK R9 K13 [","]
  CALL R7 2 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K6 ["outputAssetIds"]
  CALL R4 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  LOADK R3 K0 ["SetStage"]
  DUPTABLE R4 K2 [{"stageKey"}]
  SETTABLEKS R1 R4 K1 ["stageKey"]
  CALL R2 2 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R0 0
  LOADK R1 K0 ["TestInExperience"]
  CALL R0 1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R2 0
  LOADK R3 K0 ["UnequipItem"]
  GETUPVAL R4 1
  MOVE R5 R1
  CALL R4 1 1
  CALL R2 2 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R0 0
  LOADK R2 K0 ["AutoSetupPassedValidation"]
  LOADNIL R3
  NAMECALL R0 R0 K1 ["ReportCounter"]
  CALL R0 3 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R0 0
  LOADK R2 K0 ["AutoSetupFailedValidation"]
  LOADNIL R3
  NAMECALL R0 R0 K1 ["ReportCounter"]
  CALL R0 3 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R2 0
  LOADK R4 K0 ["AutoSetupValidationDuration"]
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["ReportStats"]
  CALL R2 3 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R2 0
  LOADK R4 K0 ["AutoSetupValidationErrorCount"]
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["ReportStats"]
  CALL R2 3 0
  RETURN R0 0

PROTO_25:
  DUPTABLE R3 K2 [{"inputAssetId", "errorText"}]
  SETTABLEKS R1 R3 K0 ["inputAssetId"]
  SETTABLEKS R2 R3 K1 ["errorText"]
  GETUPVAL R4 0
  LOADK R6 K3 ["AutoSetupValidationError"]
  MOVE R7 R3
  GETUPVAL R8 1
  NAMECALL R4 R4 K4 ["ReportInfluxSeries"]
  CALL R4 4 0
  RETURN R0 0

PROTO_26:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  NEWCLOSURE R4 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  DUPTABLE R5 K21 [{"addUserItems", "autoSetupFailure", "autoSetupFinish", "autoSetupAssetsGenerated", "bundlesMetadataError", "changedLayers", "equipItem", "openPalette", "openPlugin", "openTab", "publish", "selectScreenChoice", "sendAutoSetupSurvey", "setStage", "testInExperience", "unequipItem", "autoSetupPassedValidation", "autoSetupFailedValidation", "autoSetupValidationDuration", "autoSetupValidationErrorCount", "autoSetupValidationError"}]
  NEWCLOSURE R6 P4
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K0 ["addUserItems"]
  NEWCLOSURE R6 P5
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K1 ["autoSetupFailure"]
  NEWCLOSURE R6 P6
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K2 ["autoSetupFinish"]
  GETUPVAL R7 2
  CALL R7 0 1
  JUMPIFNOT R7 [+3]
  NEWCLOSURE R6 P7
  CAPTURE VAL R1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K3 ["autoSetupAssetsGenerated"]
  NEWCLOSURE R6 P8
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K4 ["bundlesMetadataError"]
  NEWCLOSURE R6 P9
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K5 ["changedLayers"]
  NEWCLOSURE R6 P10
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  SETTABLEKS R6 R5 K6 ["equipItem"]
  NEWCLOSURE R6 P11
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K7 ["openPalette"]
  NEWCLOSURE R6 P12
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K8 ["openPlugin"]
  NEWCLOSURE R6 P13
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K9 ["openTab"]
  NEWCLOSURE R6 P14
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K10 ["publish"]
  NEWCLOSURE R6 P15
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K11 ["selectScreenChoice"]
  NEWCLOSURE R6 P16
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  SETTABLEKS R6 R5 K12 ["sendAutoSetupSurvey"]
  NEWCLOSURE R6 P17
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K13 ["setStage"]
  NEWCLOSURE R6 P18
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K14 ["testInExperience"]
  NEWCLOSURE R6 P19
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  SETTABLEKS R6 R5 K15 ["unequipItem"]
  NEWCLOSURE R6 P20
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K16 ["autoSetupPassedValidation"]
  NEWCLOSURE R6 P21
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K17 ["autoSetupFailedValidation"]
  NEWCLOSURE R6 P22
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K18 ["autoSetupValidationDuration"]
  NEWCLOSURE R6 P23
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K19 ["autoSetupValidationErrorCount"]
  NEWCLOSURE R6 P24
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R6 R5 K20 ["autoSetupValidationError"]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["StudioService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K11 ["Src"]
  GETTABLEKS R4 R5 K12 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K4 [game]
  LOADK R6 K13 ["AvatarPreviewerInfluxSeriesThrottlingPercentage"]
  LOADN R7 0
  NAMECALL R4 R4 K14 ["DefineFastInt"]
  CALL R4 3 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K15 ["Flags"]
  GETTABLEKS R6 R7 K16 ["getFFlagAvatarPreviewerAutoSetup"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K15 ["Flags"]
  GETTABLEKS R7 R8 K17 ["getFFlagAvatarPreviewerAutoSetupSurveyProblemsConcat"]
  CALL R6 1 1
  GETIMPORT R7 K4 [game]
  LOADK R9 K18 ["AvatarPreviewerAutoSetupSurveyUserId"]
  LOADB R10 0
  NAMECALL R7 R7 K19 ["DefineFastFlag"]
  CALL R7 3 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R11 R0 K11 ["Src"]
  GETTABLEKS R10 R11 K15 ["Flags"]
  GETTABLEKS R9 R10 K20 ["getFFlagAvatarPreviewerAutoSetupTelemetry"]
  CALL R8 1 1
  DUPCLOSURE R9 K21 [PROTO_0]
  DUPCLOSURE R10 K22 [PROTO_26]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  RETURN R10 1
