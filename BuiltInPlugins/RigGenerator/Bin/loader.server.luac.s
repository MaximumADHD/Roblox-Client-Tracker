PROTO_0:
  LOADK R3 K0 ["Rig Generator"]
  RETURN R3 1

PROTO_1:
  LOADK R3 K0 ["Generate Rig"]
  RETURN R3 1

PROTO_2:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["launch"]
  LOADK R3 K8 ["RigGenerator"]
  GETTABLEKS R4 R0 K9 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K10 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K11 ["Resources"]
  GETTABLEKS R3 R4 K12 ["Localization"]
  GETTABLEKS R2 R3 K13 ["SourceStrings"]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K11 ["Resources"]
  GETTABLEKS R4 R5 K12 ["Localization"]
  GETTABLEKS R3 R4 K14 ["LocalizedStrings"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K15 ["PluginLoader"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K16 ["PluginLoaderBuilder"]
  DUPTABLE R6 K25 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo"}]
  GETIMPORT R7 K26 [plugin]
  SETTABLEKS R7 R6 K17 ["plugin"]
  LOADK R7 K8 ["RigGenerator"]
  SETTABLEKS R7 R6 K18 ["pluginName"]
  SETTABLEKS R3 R6 K19 ["translationResourceTable"]
  SETTABLEKS R2 R6 K20 ["fallbackResourceTable"]
  LOADNIL R7
  SETTABLEKS R7 R6 K21 ["overrideLocaleId"]
  LOADNIL R7
  SETTABLEKS R7 R6 K22 ["localizationNamespace"]
  DUPCLOSURE R7 K27 [PROTO_0]
  SETTABLEKS R7 R6 K23 ["getToolbarName"]
  DUPTABLE R7 K32 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R8 K33 [PROTO_1]
  SETTABLEKS R8 R7 K28 ["getName"]
  DUPCLOSURE R8 K34 [PROTO_2]
  SETTABLEKS R8 R7 K29 ["getDescription"]
  LOADK R8 K35 [""]
  SETTABLEKS R8 R7 K30 ["icon"]
  LOADNIL R8
  SETTABLEKS R8 R7 K31 ["text"]
  SETTABLEKS R7 R6 K24 ["buttonInfo"]
  GETTABLEKS R7 R5 K36 ["build"]
  MOVE R8 R6
  CALL R7 1 1
  GETTABLEKS R8 R7 K37 ["pluginLoader"]
  NAMECALL R8 R8 K38 ["waitForUserInteraction"]
  CALL R8 1 1
  JUMPIF R8 [+1]
  RETURN R0 0
  GETIMPORT R9 K4 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K39 ["main"]
  CALL R9 1 1
  MOVE R10 R9
  GETIMPORT R11 K26 [plugin]
  MOVE R12 R7
  CALL R10 2 0
  RETURN R0 0
