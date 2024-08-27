MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K3 [script]
  LOADK R2 K4 ["AutomaticRun"]
  NAMECALL R0 R0 K5 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K7 [require]
  GETTABLEKS R3 R0 K8 ["Packages"]
  GETTABLEKS R2 R3 K9 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K10 ["launch"]
  LOADK R3 K4 ["AutomaticRun"]
  GETTABLEKS R4 R0 K11 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K12 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K7 [require]
  GETTABLEKS R5 R0 K13 ["Bin"]
  GETTABLEKS R4 R5 K14 ["Common"]
  GETTABLEKS R3 R4 K15 ["defineLuaFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K16 ["getFFlagDebugEnableAutomaticRun"]
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K7 [require]
  GETTABLEKS R6 R0 K13 ["Bin"]
  GETTABLEKS R5 R6 K14 ["Common"]
  GETTABLEKS R4 R5 K17 ["pluginType"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K18 ["get"]
  CALL R4 0 1
  GETTABLEKS R5 R3 K19 ["Asset"]
  JUMPIFEQ R4 R5 [+2]
  RETURN R0 0
  GETIMPORT R4 K21 [game]
  LOADK R6 K22 ["RunService"]
  NAMECALL R4 R4 K23 ["GetService"]
  CALL R4 2 1
  NAMECALL R4 R4 K24 ["IsEdit"]
  CALL R4 1 1
  JUMPIFNOT R4 [+27]
  GETIMPORT R4 K26 [wait]
  LOADN R5 5
  CALL R4 1 0
  DUPTABLE R4 K31 [{"DataModel", "PluginId", "Category", "ItemId"}]
  LOADK R5 K32 ["Standalone"]
  SETTABLEKS R5 R4 K27 ["DataModel"]
  LOADK R5 K33 ["RunTools"]
  SETTABLEKS R5 R4 K28 ["PluginId"]
  LOADK R5 K34 ["Actions"]
  SETTABLEKS R5 R4 K29 ["Category"]
  LOADK R5 K35 ["Run"]
  SETTABLEKS R5 R4 K30 ["ItemId"]
  GETIMPORT R5 K1 [plugin]
  LOADK R7 K34 ["Actions"]
  NAMECALL R5 R5 K36 ["GetPluginComponent"]
  CALL R5 2 1
  MOVE R8 R4
  NAMECALL R6 R5 K37 ["ActivateAsync"]
  CALL R6 2 0
  RETURN R0 0
