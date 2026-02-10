MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PropertiesPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagNewProperties"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["TestLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["isCli"]
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETIMPORT R3 K13 [error]
  LOADK R4 K14 ["roblox-cli should not be loading standalone plugins"]
  CALL R3 1 0
  RETURN R0 0
  GETIMPORT R3 K16 [game]
  LOADK R5 K17 ["DebugReactDevToolsPluginName"]
  NAMECALL R3 R3 K18 ["GetFastString"]
  CALL R3 2 1
  JUMPIFNOTEQKS R3 K2 ["PropertiesPlugin"] [+18]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K19 ["ReactDeveloperTools"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K20 ["tryEnableDevtools"]
  DUPTABLE R5 K23 [{"pluginName", "profileOnStart"}]
  LOADK R6 K2 ["PropertiesPlugin"]
  SETTABLEKS R6 R5 K21 ["pluginName"]
  LOADB R6 0
  SETTABLEKS R6 R5 K22 ["profileOnStart"]
  CALL R4 1 0
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K24 ["Bin"]
  GETTABLEKS R5 R6 K25 ["Common"]
  GETTABLEKS R4 R5 K26 ["pluginType"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K27 ["get"]
  CALL R4 0 1
  GETTABLEKS R5 R3 K28 ["Standalone"]
  JUMPIFEQ R4 R5 [+2]
  RETURN R0 0
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K24 ["Bin"]
  GETTABLEKS R6 R7 K25 ["Common"]
  GETTABLEKS R5 R6 K29 ["setup"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K24 ["Bin"]
  GETTABLEKS R7 R8 K25 ["Common"]
  GETTABLEKS R6 R7 K30 ["setupMain"]
  CALL R5 1 1
  MOVE R6 R4
  GETIMPORT R7 K32 [plugin]
  MOVE R8 R5
  CALL R6 2 0
  RETURN R0 0
