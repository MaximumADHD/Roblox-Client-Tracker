PROTO_0:
  MOVE R2 R1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R1 R2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  DUPTABLE R3 K5 [{"studioSid", "clientId", "placeId"}]
  GETUPVAL R4 1
  NAMECALL R4 R4 K6 ["GetSessionId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["studioSid"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K7 ["GetClientId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["clientId"]
  GETIMPORT R5 K9 [game]
  GETTABLEKS R4 R5 K10 ["PlaceId"]
  SETTABLEKS R4 R3 K4 ["placeId"]
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K11 ["LogAnalytics"]
  CALL R3 0 1
  JUMPIFNOT R3 [+18]
  GETIMPORT R3 K13 [print]
  LOADK R4 K14 ["%s SendEvent eventName=%s args=%s"]
  LOADK R6 K15 ["MaterialManager"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R8 R0
  GETIMPORT R7 K17 [tostring]
  CALL R7 1 1
  GETUPVAL R8 3
  MOVE R10 R2
  NAMECALL R8 R8 K18 ["JSONEncode"]
  CALL R8 2 -1
  NAMECALL R4 R4 K19 ["format"]
  CALL R4 -1 -1
  CALL R3 -1 0
  GETUPVAL R3 1
  LOADK R5 K20 ["studio"]
  LOADK R6 K15 ["MaterialManager"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K21 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_1:
  ORK R1 R1 K0 [1]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["LogAnalytics"]
  CALL R2 0 1
  JUMPIFNOT R2 [+18]
  GETIMPORT R2 K3 [print]
  LOADK R3 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R5 K5 ["MaterialManager"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K7 [tostring]
  CALL R6 1 1
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K7 [tostring]
  CALL R7 1 1
  NAMECALL R3 R3 K8 ["format"]
  CALL R3 4 -1
  CALL R2 -1 0
  GETUPVAL R2 1
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K9 ["ReportCounter"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  MOVE R3 R1
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  MOVE R1 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["LogAnalytics"]
  CALL R3 0 1
  JUMPIFNOT R3 [+23]
  GETIMPORT R3 K2 [print]
  LOADK R4 K3 ["%s SendEvent eventName=%s args=%s throttlingPercent=%s"]
  LOADK R6 K4 ["MaterialManager"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R8 R0
  GETIMPORT R7 K6 [tostring]
  CALL R7 1 1
  GETUPVAL R8 1
  MOVE R10 R1
  NAMECALL R8 R8 K7 ["JSONEncode"]
  CALL R8 2 1
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R10 R2
  GETIMPORT R9 K6 [tostring]
  CALL R9 1 1
  NAMECALL R4 R4 K8 ["format"]
  CALL R4 5 -1
  CALL R3 -1 0
  GETUPVAL R3 2
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R3 K9 ["ReportInfluxSeries"]
  CALL R3 4 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  LOADK R4 K0 ["BaseMaterialForVariant"]
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 0

PROTO_4:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["NewMaterialVariantCounter"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["NewMaterialVariantCounter"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_5:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["ShowInExplorer"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["ShowInExplorer"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_6:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["ClickOnCategoriesOpen"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["ClickOnCategoriesOpen"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_7:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["ImportTextureMap"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["ImportTextureMap"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_8:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["UploadAssetIdTextureMap"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["UploadAssetIdTextureMap"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_9:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["UploadTextureMapSuccess"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["UploadTextureMapSuccess"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_10:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["DeleteMaterialVariant"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["DeleteMaterialVariant"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_11:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["ApplyToSelectionButton"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["ApplyToSelectionButton"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_12:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["ApplyToSelectionAction"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["ApplyToSelectionAction"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_13:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["MaterialAsTool"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["MaterialAsTool"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_14:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["SetOverrideToggled"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["SetOverrideToggled"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_15:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["SearchBar"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["SearchBar"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_16:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["ImportTextureMapError"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["ImportTextureMapError"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_17:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["UploadFromURLTextureMapError"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["UploadFromURLTextureMapError"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_18:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["UploadTextureMapFromFileError"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["UploadTextureMapFromFileError"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_19:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R4 K5 ["MaterialManager"]
  LOADK R6 K6 ["UploadTextureMapGeneralError"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K8 [tostring]
  CALL R6 1 1
  NAMECALL R2 R2 K9 ["format"]
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K6 ["UploadTextureMapGeneralError"]
  MOVE R4 R0
  NAMECALL R1 R1 K10 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_20:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  DUPTABLE R4 K17 [{"newMaterialVariant", "newMaterialVariantCounter", "showInExplorer", "clickOnCategoriesOpen", "importTextureMap", "uploadAssetIdTextureMap", "uploadTextureMapSuccess", "deleteMaterialVariant", "applyToSelectionButton", "applyToSelectionAction", "materialAsTool", "setOverrideToggled", "searchBar", "importTextureMapError", "uploadFromURLTextureMapError", "uploadTextureMapFromFileError", "uploadTextureMapGeneralError"}]
  NEWCLOSURE R5 P3
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K0 ["newMaterialVariant"]
  NEWCLOSURE R5 P4
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K1 ["newMaterialVariantCounter"]
  NEWCLOSURE R5 P5
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K2 ["showInExplorer"]
  NEWCLOSURE R5 P6
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K3 ["clickOnCategoriesOpen"]
  NEWCLOSURE R5 P7
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K4 ["importTextureMap"]
  NEWCLOSURE R5 P8
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K5 ["uploadAssetIdTextureMap"]
  NEWCLOSURE R5 P9
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K6 ["uploadTextureMapSuccess"]
  NEWCLOSURE R5 P10
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K7 ["deleteMaterialVariant"]
  NEWCLOSURE R5 P11
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K8 ["applyToSelectionButton"]
  NEWCLOSURE R5 P12
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K9 ["applyToSelectionAction"]
  GETUPVAL R6 3
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+3]
  NEWCLOSURE R5 P13
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K10 ["materialAsTool"]
  NEWCLOSURE R5 P14
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K11 ["setOverrideToggled"]
  NEWCLOSURE R5 P15
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K12 ["searchBar"]
  NEWCLOSURE R5 P16
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K13 ["importTextureMapError"]
  NEWCLOSURE R5 P17
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K14 ["uploadFromURLTextureMapError"]
  NEWCLOSURE R5 P18
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K15 ["uploadTextureMapFromFileError"]
  NEWCLOSURE R5 P19
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K16 ["uploadTextureMapGeneralError"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["DebugFlags"]
  CALL R2 1 1
  GETIMPORT R3 K11 [game]
  LOADK R5 K12 ["HttpService"]
  NAMECALL R3 R3 K13 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K14 ["Flags"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R4 K15 ["getFFlagMaterialActionAsTool"]
  CALL R5 1 1
  DUPCLOSURE R6 K16 [PROTO_20]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R6 1
