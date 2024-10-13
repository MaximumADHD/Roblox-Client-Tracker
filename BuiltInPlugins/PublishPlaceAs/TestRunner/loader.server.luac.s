PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["GamePublishFinished"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["GamePublishCancelled"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnSaveOrPublishPlaceToRoblox"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["TestRunner"]
  GETTABLEKS R1 R2 K6 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R1 K1 [require]
  GETTABLEKS R3 R0 K7 ["PluginLoader"]
  GETTABLEKS R2 R3 K8 ["PluginLoaderBuilder"]
  CALL R1 1 1
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Resources"]
  GETTABLEKS R2 R3 K11 ["SourceStrings"]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Resources"]
  GETTABLEKS R3 R4 K12 ["LocalizedStrings"]
  GETIMPORT R4 K14 [game]
  LOADK R6 K15 ["StudioPublishService"]
  NAMECALL R4 R4 K16 ["GetService"]
  CALL R4 2 1
  DUPTABLE R5 K25 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "noToolbar", "extraTriggers"}]
  GETIMPORT R6 K26 [plugin]
  SETTABLEKS R6 R5 K17 ["plugin"]
  LOADK R6 K27 ["PublishPlaceAs"]
  SETTABLEKS R6 R5 K18 ["pluginName"]
  SETTABLEKS R3 R5 K19 ["translationResourceTable"]
  SETTABLEKS R2 R5 K20 ["fallbackResourceTable"]
  LOADNIL R6
  SETTABLEKS R6 R5 K21 ["overrideLocaleId"]
  LOADNIL R6
  SETTABLEKS R6 R5 K22 ["localizationNamespace"]
  LOADB R6 1
  SETTABLEKS R6 R5 K23 ["noToolbar"]
  NEWTABLE R6 4 0
  DUPCLOSURE R7 K28 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R7 R6 K29 ["StudioPublishService.GamePublishFinished"]
  DUPCLOSURE R7 K30 [PROTO_1]
  CAPTURE VAL R4
  SETTABLEKS R7 R6 K31 ["StudioPublishService.GamePublishCancelled"]
  DUPCLOSURE R7 K32 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R7 R6 K33 ["StudioPublishService.OnSaveOrPublishPlaceToRoblox"]
  SETTABLEKS R6 R5 K24 ["extraTriggers"]
  GETTABLEKS R6 R1 K34 ["build"]
  MOVE R7 R5
  CALL R6 1 1
  GETTABLEKS R7 R6 K35 ["pluginLoader"]
  NAMECALL R7 R7 K36 ["waitForUserInteraction"]
  CALL R7 1 1
  JUMPIF R7 [+1]
  RETURN R0 0
  GETIMPORT R8 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K4 ["Parent"]
  GETTABLEKS R11 R12 K4 ["Parent"]
  GETTABLEKS R10 R11 K9 ["Src"]
  GETTABLEKS R9 R10 K37 ["main"]
  CALL R8 1 1
  MOVE R9 R8
  GETIMPORT R10 K26 [plugin]
  MOVE R11 R6
  CALL R9 2 0
  RETURN R0 0
