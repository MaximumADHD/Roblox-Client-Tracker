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
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["EnableRibbonPlugin"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R3 K6 [script]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETTABLEKS R1 R2 K7 ["Parent"]
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["TestLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["launch"]
  LOADK R4 K13 ["RigGenerator"]
  GETTABLEKS R5 R1 K14 ["Src"]
  CALL R3 2 0
  GETTABLEKS R3 R2 K15 ["isCli"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETTABLEKS R6 R1 K14 ["Src"]
  GETTABLEKS R5 R6 K16 ["Resources"]
  GETTABLEKS R4 R5 K17 ["Localization"]
  GETTABLEKS R3 R4 K18 ["SourceStrings"]
  GETTABLEKS R7 R1 K14 ["Src"]
  GETTABLEKS R6 R7 K16 ["Resources"]
  GETTABLEKS R5 R6 K17 ["Localization"]
  GETTABLEKS R4 R5 K19 ["LocalizedStrings"]
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K10 ["Packages"]
  GETTABLEKS R6 R7 K20 ["PluginLoader"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K21 ["PluginLoaderBuilder"]
  DUPTABLE R7 K30 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo"}]
  GETIMPORT R8 K31 [plugin]
  SETTABLEKS R8 R7 K22 ["plugin"]
  LOADK R8 K13 ["RigGenerator"]
  SETTABLEKS R8 R7 K23 ["pluginName"]
  SETTABLEKS R4 R7 K24 ["translationResourceTable"]
  SETTABLEKS R3 R7 K25 ["fallbackResourceTable"]
  LOADNIL R8
  SETTABLEKS R8 R7 K26 ["overrideLocaleId"]
  LOADNIL R8
  SETTABLEKS R8 R7 K27 ["localizationNamespace"]
  DUPCLOSURE R8 K32 [PROTO_0]
  SETTABLEKS R8 R7 K28 ["getToolbarName"]
  DUPTABLE R8 K37 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R9 K38 [PROTO_1]
  SETTABLEKS R9 R8 K33 ["getName"]
  DUPCLOSURE R9 K39 [PROTO_2]
  SETTABLEKS R9 R8 K34 ["getDescription"]
  JUMPIFNOT R0 [+2]
  LOADK R9 K40 ["rbxlocaltheme://RibbonCharacter"]
  JUMP [+1]
  LOADK R9 K41 ["rbxlocaltheme://BuildRig"]
  SETTABLEKS R9 R8 K35 ["icon"]
  LOADNIL R9
  SETTABLEKS R9 R8 K36 ["text"]
  SETTABLEKS R8 R7 K29 ["buttonInfo"]
  GETTABLEKS R8 R6 K42 ["build"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K43 ["pluginLoader"]
  NAMECALL R9 R9 K44 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R10 K9 [require]
  GETIMPORT R13 K6 [script]
  GETTABLEKS R12 R13 K7 ["Parent"]
  GETTABLEKS R11 R12 K45 ["main"]
  CALL R10 1 1
  MOVE R11 R10
  GETIMPORT R12 K31 [plugin]
  MOVE R13 R8
  CALL R11 2 0
  RETURN R0 0
