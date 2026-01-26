MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["FFlagIsLuobuBuild"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K15 ["Bin"]
  GETTABLEKS R5 R6 K16 ["Common"]
  GETTABLEKS R4 R5 K17 ["pluginType"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K18 ["get"]
  CALL R5 0 1
  GETTABLEKS R6 R3 K19 ["Standalone"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+57]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K9 ["Packages"]
  GETTABLEKS R6 R7 K20 ["ReactDeveloperTools"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K21 ["tryEnableDevtools"]
  DUPTABLE R7 K24 [{"pluginName", "profileOnStart"}]
  LOADK R8 K2 ["Assistant"]
  SETTABLEKS R8 R7 K22 ["pluginName"]
  LOADB R8 0
  SETTABLEKS R8 R7 K23 ["profileOnStart"]
  CALL R6 1 0
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K25 ["toolInit"]
  CALL R6 1 1
  MOVE R7 R6
  GETIMPORT R8 K27 [plugin]
  DUPTABLE R9 K30 [{"isGuest", "isHost"}]
  SETTABLEKS R4 R9 K28 ["isGuest"]
  LOADB R10 0
  SETTABLEKS R10 R9 K29 ["isHost"]
  CALL R7 2 0
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K15 ["Bin"]
  GETTABLEKS R9 R10 K16 ["Common"]
  GETTABLEKS R8 R9 K31 ["setup"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K15 ["Bin"]
  GETTABLEKS R10 R11 K16 ["Common"]
  GETTABLEKS R9 R10 K32 ["setupMain"]
  CALL R8 1 1
  MOVE R9 R7
  GETIMPORT R10 K27 [plugin]
  MOVE R11 R8
  CALL R9 2 0
  RETURN R0 0
