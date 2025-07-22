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
  LOADK R2 K2 ["EnableRibbonPlugin"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["TestLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["launch"]
  LOADK R4 K12 ["RigGenerator"]
  GETTABLEKS R5 R1 K13 ["Src"]
  CALL R3 2 0
  GETTABLEKS R3 R2 K14 ["isCli"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETTABLEKS R6 R1 K13 ["Src"]
  GETTABLEKS R5 R6 K15 ["Resources"]
  GETTABLEKS R4 R5 K16 ["Localization"]
  GETTABLEKS R3 R4 K17 ["SourceStrings"]
  GETTABLEKS R7 R1 K13 ["Src"]
  GETTABLEKS R6 R7 K15 ["Resources"]
  GETTABLEKS R5 R6 K16 ["Localization"]
  GETTABLEKS R4 R5 K18 ["LocalizedStrings"]
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K9 ["Packages"]
  GETTABLEKS R6 R7 K19 ["PluginLoader"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K20 ["PluginLoaderBuilder"]
  DUPTABLE R7 K29 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo"}]
  GETIMPORT R8 K30 [plugin]
  SETTABLEKS R8 R7 K21 ["plugin"]
  LOADK R8 K12 ["RigGenerator"]
  SETTABLEKS R8 R7 K22 ["pluginName"]
  SETTABLEKS R4 R7 K23 ["translationResourceTable"]
  SETTABLEKS R3 R7 K24 ["fallbackResourceTable"]
  LOADNIL R8
  SETTABLEKS R8 R7 K25 ["overrideLocaleId"]
  LOADNIL R8
  SETTABLEKS R8 R7 K26 ["localizationNamespace"]
  DUPCLOSURE R8 K31 [PROTO_0]
  SETTABLEKS R8 R7 K27 ["getToolbarName"]
  DUPTABLE R8 K36 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R9 K37 [PROTO_1]
  SETTABLEKS R9 R8 K32 ["getName"]
  DUPCLOSURE R9 K38 [PROTO_2]
  SETTABLEKS R9 R8 K33 ["getDescription"]
  JUMPIFNOT R0 [+2]
  LOADK R9 K39 ["rbxlocaltheme://RibbonCharacter"]
  JUMP [+1]
  LOADK R9 K40 ["rbxlocaltheme://BuildRig"]
  SETTABLEKS R9 R8 K34 ["icon"]
  LOADNIL R9
  SETTABLEKS R9 R8 K35 ["text"]
  SETTABLEKS R8 R7 K28 ["buttonInfo"]
  GETTABLEKS R8 R6 K41 ["build"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K42 ["pluginLoader"]
  NAMECALL R9 R9 K43 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R10 K8 [require]
  GETIMPORT R13 K5 [script]
  GETTABLEKS R12 R13 K6 ["Parent"]
  GETTABLEKS R11 R12 K44 ["main"]
  CALL R10 1 1
  MOVE R11 R10
  GETIMPORT R12 K30 [plugin]
  MOVE R13 R8
  CALL R11 2 0
  RETURN R0 0
