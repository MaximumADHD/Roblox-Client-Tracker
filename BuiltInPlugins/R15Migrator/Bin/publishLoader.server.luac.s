PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnPublishAttempt"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["DebugFlags"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Util"]
  GETTABLEKS R3 R4 K8 ["shouldPluginRun"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R3 R1 K9 ["RunTests"]
  CALL R3 0 1
  JUMPIF R3 [+4]
  GETTABLEKS R3 R1 K10 ["RunningUnderCLI"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K11 ["PluginLoader"]
  GETTABLEKS R4 R5 K12 ["PluginLoaderBuilder"]
  CALL R3 1 1
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K13 ["Resources"]
  GETTABLEKS R5 R6 K14 ["Localization"]
  GETTABLEKS R4 R5 K15 ["SourceStrings"]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K13 ["Resources"]
  GETTABLEKS R6 R7 K14 ["Localization"]
  GETTABLEKS R5 R6 K16 ["LocalizedStrings"]
  GETIMPORT R6 K18 [game]
  LOADK R8 K19 ["StudioPublishService"]
  NAMECALL R6 R6 K20 ["GetService"]
  CALL R6 2 1
  DUPTABLE R7 K29 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "noToolbar", "extraTriggers"}]
  GETIMPORT R8 K30 [plugin]
  SETTABLEKS R8 R7 K21 ["plugin"]
  LOADK R8 K31 ["PublishBlocked"]
  SETTABLEKS R8 R7 K22 ["pluginName"]
  SETTABLEKS R5 R7 K23 ["translationResourceTable"]
  SETTABLEKS R4 R7 K24 ["fallbackResourceTable"]
  LOADNIL R8
  SETTABLEKS R8 R7 K25 ["overrideLocaleId"]
  LOADNIL R8
  SETTABLEKS R8 R7 K26 ["localizationNamespace"]
  LOADB R8 1
  SETTABLEKS R8 R7 K27 ["noToolbar"]
  NEWTABLE R8 1 0
  DUPCLOSURE R9 K32 [PROTO_0]
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K33 ["StudioPublishService.OnPublishAttempt"]
  SETTABLEKS R8 R7 K28 ["extraTriggers"]
  GETTABLEKS R8 R3 K34 ["build"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K35 ["pluginLoader"]
  NAMECALL R9 R9 K36 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K37 ["publishMain"]
  CALL R10 1 1
  MOVE R11 R10
  GETIMPORT R12 K30 [plugin]
  MOVE R13 R8
  CALL R11 2 0
  RETURN R0 0
