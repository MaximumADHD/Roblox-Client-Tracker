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
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ImprovePluginSpeed_RigGenerator"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R2 K5 [script]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R0 R1 K6 ["Parent"]
  GETIMPORT R1 K8 [require]
  GETTABLEKS R3 R0 K9 ["Packages"]
  GETTABLEKS R2 R3 K10 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K11 ["launch"]
  LOADK R3 K12 ["RigGenerator"]
  GETTABLEKS R4 R0 K13 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K14 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R5 R0 K13 ["Src"]
  GETTABLEKS R4 R5 K15 ["Resources"]
  GETTABLEKS R3 R4 K16 ["Localization"]
  GETTABLEKS R2 R3 K17 ["SourceStrings"]
  GETTABLEKS R6 R0 K13 ["Src"]
  GETTABLEKS R5 R6 K15 ["Resources"]
  GETTABLEKS R4 R5 K16 ["Localization"]
  GETTABLEKS R3 R4 K18 ["LocalizedStrings"]
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K19 ["PluginLoader"]
  GETTABLEKS R5 R6 K20 ["PluginLoaderBuilder"]
  CALL R4 1 1
  DUPTABLE R5 K29 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo"}]
  GETIMPORT R6 K30 [plugin]
  SETTABLEKS R6 R5 K21 ["plugin"]
  LOADK R6 K12 ["RigGenerator"]
  SETTABLEKS R6 R5 K22 ["pluginName"]
  SETTABLEKS R3 R5 K23 ["translationResourceTable"]
  SETTABLEKS R2 R5 K24 ["fallbackResourceTable"]
  LOADNIL R6
  SETTABLEKS R6 R5 K25 ["overrideLocaleId"]
  LOADNIL R6
  SETTABLEKS R6 R5 K26 ["localizationNamespace"]
  DUPCLOSURE R6 K31 [PROTO_0]
  SETTABLEKS R6 R5 K27 ["getToolbarName"]
  DUPTABLE R6 K36 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R7 K37 [PROTO_1]
  SETTABLEKS R7 R6 K32 ["getName"]
  DUPCLOSURE R7 K38 [PROTO_2]
  SETTABLEKS R7 R6 K33 ["getDescription"]
  LOADK R7 K39 ["rbxlocaltheme://BuildRig"]
  SETTABLEKS R7 R6 K34 ["icon"]
  LOADNIL R7
  SETTABLEKS R7 R6 K35 ["text"]
  SETTABLEKS R6 R5 K28 ["buttonInfo"]
  GETTABLEKS R6 R4 K40 ["build"]
  MOVE R7 R5
  CALL R6 1 1
  GETTABLEKS R7 R6 K41 ["pluginLoader"]
  NAMECALL R7 R7 K42 ["waitForUserInteraction"]
  CALL R7 1 1
  JUMPIF R7 [+1]
  RETURN R0 0
  GETIMPORT R8 K8 [require]
  GETIMPORT R11 K5 [script]
  GETTABLEKS R10 R11 K6 ["Parent"]
  GETTABLEKS R9 R10 K43 ["main"]
  CALL R8 1 1
  MOVE R9 R8
  GETIMPORT R10 K30 [plugin]
  MOVE R11 R6
  CALL R9 2 0
  RETURN R0 0
