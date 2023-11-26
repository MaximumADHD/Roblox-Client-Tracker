PROTO_0:
  LOADK R3 K0 ["Pivot"]
  RETURN R3 1

PROTO_1:
  LOADK R3 K0 ["EditPivot"]
  RETURN R3 1

PROTO_2:
  LOADK R3 K0 [""]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R1 K1 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagImprovePluginSpeedPivotEditor"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K1 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K9 ["Utility"]
  GETTABLEKS R3 R4 K10 ["DebugFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["RunningUnderCLI"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K1 [require]
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
  DUPTABLE R6 K26 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo"}]
  GETIMPORT R7 K27 [plugin]
  SETTABLEKS R7 R6 K18 ["plugin"]
  LOADK R7 K28 ["EditPivotPlugin"]
  SETTABLEKS R7 R6 K19 ["pluginName"]
  SETTABLEKS R5 R6 K20 ["translationResourceTable"]
  SETTABLEKS R4 R6 K21 ["fallbackResourceTable"]
  LOADNIL R7
  SETTABLEKS R7 R6 K22 ["overrideLocaleId"]
  LOADNIL R7
  SETTABLEKS R7 R6 K23 ["localizationNamespace"]
  DUPCLOSURE R7 K29 [PROTO_0]
  SETTABLEKS R7 R6 K24 ["getToolbarName"]
  DUPTABLE R7 K34 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R8 K35 [PROTO_1]
  SETTABLEKS R8 R7 K30 ["getName"]
  DUPCLOSURE R8 K36 [PROTO_2]
  SETTABLEKS R8 R7 K31 ["getDescription"]
  LOADK R8 K37 [""]
  SETTABLEKS R8 R7 K32 ["icon"]
  LOADNIL R8
  SETTABLEKS R8 R7 K33 ["text"]
  SETTABLEKS R7 R6 K25 ["buttonInfo"]
  GETTABLEKS R7 R3 K38 ["build"]
  MOVE R8 R6
  CALL R7 1 1
  GETTABLEKS R8 R7 K39 ["pluginLoader"]
  NAMECALL R8 R8 K40 ["waitForUserInteraction"]
  CALL R8 1 1
  JUMPIF R8 [+1]
  RETURN R0 0
  GETIMPORT R9 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K4 ["Parent"]
  GETTABLEKS R10 R11 K41 ["main"]
  CALL R9 1 1
  MOVE R10 R9
  GETIMPORT R11 K27 [plugin]
  MOVE R12 R7
  CALL R10 2 0
  RETURN R0 0
