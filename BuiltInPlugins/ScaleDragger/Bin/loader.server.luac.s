PROTO_0:
  LOADK R3 K0 ["Home"]
  RETURN R3 1

PROTO_1:
  LOADK R3 K0 ["Scale"]
  RETURN R3 1

PROTO_2:
  LOADK R3 K0 ["Scale an Object"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Packages"]
  GETTABLEKS R1 R2 K4 ["DraggerFramework"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["PluginLoader"]
  GETTABLEKS R3 R4 K8 ["PluginLoaderBuilder"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K9 ["Resources"]
  GETTABLEKS R3 R4 K10 ["SourceStrings"]
  GETTABLEKS R5 R1 K9 ["Resources"]
  GETTABLEKS R4 R5 K11 ["LocalizedStrings"]
  DUPTABLE R5 K20 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo"}]
  GETIMPORT R6 K21 [plugin]
  SETTABLEKS R6 R5 K12 ["plugin"]
  LOADK R6 K22 ["ScaleDragger"]
  SETTABLEKS R6 R5 K13 ["pluginName"]
  SETTABLEKS R4 R5 K14 ["translationResourceTable"]
  SETTABLEKS R3 R5 K15 ["fallbackResourceTable"]
  LOADNIL R6
  SETTABLEKS R6 R5 K16 ["overrideLocaleId"]
  LOADNIL R6
  SETTABLEKS R6 R5 K17 ["localizationNamespace"]
  DUPCLOSURE R6 K23 [PROTO_0]
  SETTABLEKS R6 R5 K18 ["getToolbarName"]
  DUPTABLE R6 K28 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R7 K29 [PROTO_1]
  SETTABLEKS R7 R6 K24 ["getName"]
  DUPCLOSURE R7 K30 [PROTO_2]
  SETTABLEKS R7 R6 K25 ["getDescription"]
  LOADK R7 K31 [""]
  SETTABLEKS R7 R6 K26 ["icon"]
  LOADNIL R7
  SETTABLEKS R7 R6 K27 ["text"]
  SETTABLEKS R6 R5 K19 ["buttonInfo"]
  GETTABLEKS R6 R2 K32 ["build"]
  MOVE R7 R5
  CALL R6 1 1
  GETTABLEKS R7 R6 K33 ["pluginLoader"]
  NAMECALL R7 R7 K34 ["waitForUserInteraction"]
  CALL R7 1 1
  JUMPIF R7 [+1]
  RETURN R0 0
  GETIMPORT R8 K6 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K35 ["main"]
  CALL R8 1 1
  MOVE R9 R8
  GETIMPORT R10 K21 [plugin]
  MOVE R11 R6
  CALL R9 2 0
  RETURN R0 0
