PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnPublishAttempt"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["DebugFlags"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["shouldPluginRun"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R3 R1 K10 ["RunTests"]
  CALL R3 0 1
  JUMPIF R3 [+4]
  GETTABLEKS R3 R1 K11 ["RunningUnderCLI"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K12 ["PluginLoader"]
  GETTABLEKS R4 R5 K13 ["PluginLoaderBuilder"]
  CALL R3 1 1
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K14 ["Resources"]
  GETTABLEKS R5 R6 K15 ["Localization"]
  GETTABLEKS R4 R5 K16 ["SourceStrings"]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K14 ["Resources"]
  GETTABLEKS R6 R7 K15 ["Localization"]
  GETTABLEKS R5 R6 K17 ["LocalizedStrings"]
  GETIMPORT R6 K19 [game]
  LOADK R8 K20 ["StudioPublishService"]
  NAMECALL R6 R6 K21 ["GetService"]
  CALL R6 2 1
  DUPTABLE R7 K30 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "noToolbar", "extraTriggers"}]
  GETIMPORT R8 K31 [plugin]
  SETTABLEKS R8 R7 K22 ["plugin"]
  LOADK R8 K32 ["PublishBlocked"]
  SETTABLEKS R8 R7 K23 ["pluginName"]
  SETTABLEKS R5 R7 K24 ["translationResourceTable"]
  SETTABLEKS R4 R7 K25 ["fallbackResourceTable"]
  LOADNIL R8
  SETTABLEKS R8 R7 K26 ["overrideLocaleId"]
  LOADNIL R8
  SETTABLEKS R8 R7 K27 ["localizationNamespace"]
  LOADB R8 1
  SETTABLEKS R8 R7 K28 ["noToolbar"]
  NEWTABLE R8 1 0
  DUPCLOSURE R9 K33 [PROTO_0]
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K34 ["StudioPublishService.OnPublishAttempt"]
  SETTABLEKS R8 R7 K29 ["extraTriggers"]
  GETTABLEKS R8 R3 K35 ["build"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K36 ["pluginLoader"]
  NAMECALL R9 R9 K37 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R10 K5 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K38 ["Parent"]
  GETTABLEKS R11 R12 K39 ["publishMain"]
  CALL R10 1 1
  MOVE R11 R10
  GETIMPORT R12 K31 [plugin]
  MOVE R13 R8
  CALL R11 2 0
  RETURN R0 0
