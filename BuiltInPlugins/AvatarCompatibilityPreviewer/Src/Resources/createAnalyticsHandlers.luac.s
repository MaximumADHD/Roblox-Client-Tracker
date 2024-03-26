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
  GETUPVAL R3 0
  LOADK R4 K0 ["AddUserItems"]
  DUPTABLE R5 K3 [{"itemsSelected", "itemsSucceeded"}]
  SETTABLEKS R1 R5 K1 ["itemsSelected"]
  SETTABLEKS R2 R5 K2 ["itemsSucceeded"]
  CALL R3 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  LOADK R4 K0 ["AutoSetupFailure"]
  DUPTABLE R5 K3 [{"assetUrl", "timeToComplete"}]
  SETTABLEKS R2 R5 K1 ["assetUrl"]
  SETTABLEKS R1 R5 K2 ["timeToComplete"]
  CALL R3 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  LOADK R4 K0 ["AutoSetupFinish"]
  DUPTABLE R5 K3 [{"assetUrl", "timeToComplete"}]
  SETTABLEKS R2 R5 K1 ["assetUrl"]
  SETTABLEKS R1 R5 K2 ["timeToComplete"]
  CALL R3 2 0
  RETURN R0 0

PROTO_5:
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

PROTO_6:
  GETUPVAL R2 0
  LOADK R3 K0 ["BundlesMetadataError"]
  DUPTABLE R4 K2 [{"problem"}]
  SETTABLEKS R1 R4 K1 ["problem"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADK R1 K0 ["ChangedLayers"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  LOADK R3 K0 ["EquipItem"]
  GETUPVAL R4 1
  MOVE R5 R1
  CALL R4 1 1
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  LOADK R3 K0 ["PaletteOpen"]
  DUPTABLE R4 K2 [{"paletteKey"}]
  SETTABLEKS R1 R4 K1 ["paletteKey"]
  CALL R2 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  LOADK R1 K0 ["PluginOpen"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  LOADK R3 K0 ["TabOpen"]
  DUPTABLE R4 K2 [{"tabKey"}]
  SETTABLEKS R1 R4 K1 ["tabKey"]
  CALL R2 2 0
  RETURN R0 0

PROTO_12:
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

PROTO_13:
  GETUPVAL R2 0
  LOADK R3 K0 ["SelectScreenChoice"]
  DUPTABLE R4 K2 [{"choice"}]
  SETTABLEKS R1 R4 K1 ["choice"]
  CALL R2 2 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R3 0
  LOADK R4 K0 ["AutoSetupSurvey"]
  DUPTABLE R5 K6 [{"userId", "rating", "message", "problems", "outputAssetIds"}]
  GETUPVAL R7 1
  JUMPIFNOT R7 [+5]
  GETUPVAL R6 2
  NAMECALL R6 R6 K7 ["GetUserId"]
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K1 ["userId"]
  GETTABLEKS R6 R1 K2 ["rating"]
  SETTABLEKS R6 R5 K2 ["rating"]
  GETTABLEKS R6 R1 K3 ["message"]
  SETTABLEKS R6 R5 K3 ["message"]
  GETUPVAL R7 3
  CALL R7 0 1
  JUMPIFNOT R7 [+11]
  GETIMPORT R6 K10 [table.concat]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K11 ["keys"]
  GETTABLEKS R8 R1 K4 ["problems"]
  CALL R7 1 1
  LOADK R8 K12 [","]
  CALL R6 2 1
  JUMP [+6]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K11 ["keys"]
  GETTABLEKS R7 R1 K4 ["problems"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K4 ["problems"]
  GETUPVAL R7 5
  CALL R7 0 1
  JUMPIFNOT R7 [+6]
  GETIMPORT R6 K10 [table.concat]
  MOVE R7 R2
  LOADK R8 K12 [","]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K5 ["outputAssetIds"]
  CALL R3 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  LOADK R3 K0 ["SetStage"]
  DUPTABLE R4 K2 [{"stageKey"}]
  SETTABLEKS R1 R4 K1 ["stageKey"]
  CALL R2 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  LOADK R1 K0 ["TestInExperience"]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  LOADK R3 K0 ["UnequipItem"]
  GETUPVAL R4 1
  MOVE R5 R1
  CALL R4 1 1
  CALL R2 2 0
  RETURN R0 0

PROTO_18:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  DUPTABLE R2 K16 [{"addUserItems", "autoSetupFailure", "autoSetupFinish", "autoSetupAssetsGenerated", "bundlesMetadataError", "changedLayers", "equipItem", "openPalette", "openPlugin", "openTab", "publish", "selectScreenChoice", "sendAutoSetupSurvey", "setStage", "testInExperience", "unequipItem"}]
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K0 ["addUserItems"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K1 ["autoSetupFailure"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K2 ["autoSetupFinish"]
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+3]
  NEWCLOSURE R3 P4
  CAPTURE VAL R1
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K3 ["autoSetupAssetsGenerated"]
  NEWCLOSURE R3 P5
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K4 ["bundlesMetadataError"]
  NEWCLOSURE R3 P6
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K5 ["changedLayers"]
  NEWCLOSURE R3 P7
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K6 ["equipItem"]
  NEWCLOSURE R3 P8
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K7 ["openPalette"]
  NEWCLOSURE R3 P9
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K8 ["openPlugin"]
  NEWCLOSURE R3 P10
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K9 ["openTab"]
  NEWCLOSURE R3 P11
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K10 ["publish"]
  NEWCLOSURE R3 P12
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K11 ["selectScreenChoice"]
  NEWCLOSURE R3 P13
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R3 R2 K12 ["sendAutoSetupSurvey"]
  NEWCLOSURE R3 P14
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K13 ["setStage"]
  NEWCLOSURE R3 P15
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K14 ["testInExperience"]
  NEWCLOSURE R3 P16
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K15 ["unequipItem"]
  RETURN R2 1

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
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K13 ["Flags"]
  GETTABLEKS R5 R6 K14 ["getFFlagAvatarPreviewerAutoSetup"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K13 ["Flags"]
  GETTABLEKS R6 R7 K15 ["getFFlagAvatarPreviewerAutoSetupSurveyProblemsConcat"]
  CALL R5 1 1
  GETIMPORT R6 K4 [game]
  LOADK R8 K16 ["AvatarPreviewerAutoSetupSurveyUserId"]
  LOADB R9 0
  NAMECALL R6 R6 K17 ["DefineFastFlag"]
  CALL R6 3 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K13 ["Flags"]
  GETTABLEKS R8 R9 K18 ["getFFlagAvatarPreviewerAutoSetupTelemetry"]
  CALL R7 1 1
  DUPCLOSURE R8 K19 [PROTO_0]
  DUPCLOSURE R9 K20 [PROTO_18]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R5
  RETURN R9 1
