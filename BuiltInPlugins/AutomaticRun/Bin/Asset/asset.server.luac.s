MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K3 [game]
  LOADK R2 K4 ["ApolloPlaceLoadWait"]
  LOADN R3 5
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K3 [game]
  LOADK R2 K4 ["ApolloPlaceLoadWait"]
  NAMECALL R0 R0 K6 ["GetFastInt"]
  CALL R0 2 1
  GETIMPORT R1 K8 [script]
  LOADK R3 K9 ["AutomaticRun"]
  NAMECALL R1 R1 K10 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K12 [require]
  GETTABLEKS R4 R1 K13 ["Packages"]
  GETTABLEKS R3 R4 K14 ["TestLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K15 ["launch"]
  LOADK R4 K9 ["AutomaticRun"]
  GETTABLEKS R5 R1 K16 ["Src"]
  CALL R3 2 0
  GETTABLEKS R3 R2 K17 ["isCli"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K12 [require]
  GETTABLEKS R6 R1 K18 ["Bin"]
  GETTABLEKS R5 R6 K19 ["Common"]
  GETTABLEKS R4 R5 K20 ["defineLuaFlags"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K21 ["getFFlagDebugEnableAutomaticRun"]
  CALL R4 0 1
  JUMPIF R4 [+1]
  RETURN R0 0
  GETIMPORT R4 K12 [require]
  GETTABLEKS R7 R1 K18 ["Bin"]
  GETTABLEKS R6 R7 K19 ["Common"]
  GETTABLEKS R5 R6 K22 ["pluginType"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K23 ["get"]
  CALL R5 0 1
  GETTABLEKS R6 R4 K24 ["Asset"]
  JUMPIFEQ R5 R6 [+2]
  RETURN R0 0
  GETIMPORT R5 K3 [game]
  LOADK R7 K25 ["RunService"]
  NAMECALL R5 R5 K26 ["GetService"]
  CALL R5 2 1
  NAMECALL R5 R5 K27 ["IsEdit"]
  CALL R5 1 1
  JUMPIFNOT R5 [+27]
  GETIMPORT R5 K29 [wait]
  MOVE R6 R0
  CALL R5 1 0
  DUPTABLE R5 K34 [{"DataModel", "PluginId", "Category", "ItemId"}]
  LOADK R6 K35 ["Standalone"]
  SETTABLEKS R6 R5 K30 ["DataModel"]
  LOADK R6 K36 ["RunTools"]
  SETTABLEKS R6 R5 K31 ["PluginId"]
  LOADK R6 K37 ["Actions"]
  SETTABLEKS R6 R5 K32 ["Category"]
  LOADK R6 K38 ["Run"]
  SETTABLEKS R6 R5 K33 ["ItemId"]
  GETIMPORT R6 K1 [plugin]
  LOADK R8 K37 ["Actions"]
  NAMECALL R6 R6 K39 ["GetPluginComponent"]
  CALL R6 2 1
  MOVE R9 R5
  NAMECALL R7 R6 K40 ["ActivateAsync"]
  CALL R7 2 0
  RETURN R0 0
