PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableRibbonPlugin"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DataModelSessionStarted"]
  RETURN R0 1

PROTO_2:
  LOADB R0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 0
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K9 ["Packages"]
  GETTABLEKS R2 R3 K10 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K11 ["launch"]
  LOADK R3 K2 ["Ribbon"]
  GETTABLEKS R4 R0 K12 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K13 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K15 [game]
  LOADK R4 K16 ["EnableRibbonPluginFeature"]
  NAMECALL R2 R2 K17 ["GetEngineFeature"]
  CALL R2 2 1
  JUMPIF R2 [+5]
  GETIMPORT R3 K19 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE REF R2
  CALL R3 1 0
  JUMPIF R2 [+2]
  CLOSEUPVALS R2
  RETURN R0 0
  GETIMPORT R3 K21 [plugin]
  GETTABLEKS R4 R0 K22 ["Name"]
  SETTABLEKS R4 R3 K22 ["Name"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K23 ["PluginLoader"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K24 ["PluginLoaderBuilder"]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K25 ["Resources"]
  GETTABLEKS R6 R7 K26 ["Localization"]
  GETTABLEKS R5 R6 K27 ["SourceStrings"]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K25 ["Resources"]
  GETTABLEKS R7 R8 K26 ["Localization"]
  GETTABLEKS R6 R7 K28 ["LocalizedStrings"]
  GETIMPORT R8 K21 [plugin]
  GETTABLEKS R7 R8 K29 ["MultipleDocumentInterfaceInstance"]
  DUPTABLE R8 K36 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "extraTriggers", "shouldImmediatelyOpen"}]
  GETIMPORT R9 K21 [plugin]
  SETTABLEKS R9 R8 K20 ["plugin"]
  LOADK R9 K2 ["Ribbon"]
  SETTABLEKS R9 R8 K30 ["pluginName"]
  SETTABLEKS R6 R8 K31 ["translationResourceTable"]
  SETTABLEKS R5 R8 K32 ["fallbackResourceTable"]
  LOADB R9 1
  SETTABLEKS R9 R8 K33 ["noToolbar"]
  DUPTABLE R9 K38 [{"SessionStarted"}]
  DUPCLOSURE R10 K39 [PROTO_1]
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K37 ["SessionStarted"]
  SETTABLEKS R9 R8 K34 ["extraTriggers"]
  DUPCLOSURE R9 K40 [PROTO_2]
  SETTABLEKS R9 R8 K35 ["shouldImmediatelyOpen"]
  GETTABLEKS R9 R4 K41 ["build"]
  MOVE R10 R8
  CALL R9 1 1
  GETTABLEKS R10 R9 K42 ["pluginLoader"]
  NAMECALL R10 R10 K43 ["waitForUserInteraction"]
  CALL R10 1 1
  JUMPIF R10 [+2]
  CLOSEUPVALS R2
  RETURN R0 0
  GETIMPORT R11 K5 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K44 ["Parent"]
  GETTABLEKS R12 R13 K45 ["main"]
  CALL R11 1 1
  MOVE R12 R11
  GETIMPORT R13 K21 [plugin]
  CALL R12 1 0
  CLOSEUPVALS R2
  RETURN R0 0
