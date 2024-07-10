PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DataModelSessionStarted"]
  RETURN R0 1

PROTO_1:
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
  LOADK R4 K16 ["EnableRibbonPlugin"]
  NAMECALL R2 R2 K17 ["GetFastFlag"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K19 [plugin]
  GETTABLEKS R3 R0 K20 ["Name"]
  SETTABLEKS R3 R2 K20 ["Name"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K21 ["PluginLoader"]
  GETTABLEKS R3 R4 K22 ["PluginLoaderBuilder"]
  CALL R2 1 1
  GETTABLEKS R6 R0 K12 ["Src"]
  GETTABLEKS R5 R6 K23 ["Resources"]
  GETTABLEKS R4 R5 K24 ["Localization"]
  GETTABLEKS R3 R4 K25 ["SourceStrings"]
  GETTABLEKS R7 R0 K12 ["Src"]
  GETTABLEKS R6 R7 K23 ["Resources"]
  GETTABLEKS R5 R6 K24 ["Localization"]
  GETTABLEKS R4 R5 K26 ["LocalizedStrings"]
  GETIMPORT R6 K19 [plugin]
  GETTABLEKS R5 R6 K27 ["MultipleDocumentInterfaceInstance"]
  DUPTABLE R6 K34 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "extraTriggers", "shouldImmediatelyOpen"}]
  GETIMPORT R7 K19 [plugin]
  SETTABLEKS R7 R6 K18 ["plugin"]
  LOADK R7 K2 ["Ribbon"]
  SETTABLEKS R7 R6 K28 ["pluginName"]
  SETTABLEKS R4 R6 K29 ["translationResourceTable"]
  SETTABLEKS R3 R6 K30 ["fallbackResourceTable"]
  LOADB R7 1
  SETTABLEKS R7 R6 K31 ["noToolbar"]
  DUPTABLE R7 K36 [{"SessionStarted"}]
  DUPCLOSURE R8 K37 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K35 ["SessionStarted"]
  SETTABLEKS R7 R6 K32 ["extraTriggers"]
  DUPCLOSURE R7 K38 [PROTO_1]
  SETTABLEKS R7 R6 K33 ["shouldImmediatelyOpen"]
  GETTABLEKS R7 R2 K39 ["build"]
  MOVE R8 R6
  CALL R7 1 1
  GETTABLEKS R8 R7 K40 ["pluginLoader"]
  NAMECALL R8 R8 K41 ["waitForUserInteraction"]
  CALL R8 1 1
  JUMPIF R8 [+1]
  RETURN R0 0
  GETIMPORT R9 K5 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K42 ["Parent"]
  GETTABLEKS R10 R11 K43 ["main"]
  CALL R9 1 1
  MOVE R10 R9
  GETIMPORT R11 K19 [plugin]
  CALL R10 1 0
  RETURN R0 0
