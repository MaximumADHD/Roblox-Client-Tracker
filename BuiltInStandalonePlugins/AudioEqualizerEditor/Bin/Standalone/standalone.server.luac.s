MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AudioEqualizerEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["getFFlagEnableAudioEqualizerEditor"]
  CALL R2 0 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["TestLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["isCli"]
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETIMPORT R3 K14 [error]
  LOADK R4 K15 ["roblox-cli should not be loading standalone plugins"]
  CALL R3 1 0
  RETURN R0 0
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Bin"]
  GETTABLEKS R5 R6 K7 ["Common"]
  GETTABLEKS R4 R5 K16 ["pluginType"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K17 ["Src"]
  GETTABLEKS R6 R7 K18 ["Util"]
  GETTABLEKS R5 R6 K19 ["AnalyzerUtil"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K20 ["setPlugin"]
  GETIMPORT R6 K22 [plugin]
  CALL R5 1 0
  GETTABLEKS R5 R3 K23 ["get"]
  CALL R5 0 1
  GETTABLEKS R6 R3 K24 ["Standalone"]
  JUMPIFEQ R5 R6 [+2]
  RETURN R0 0
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Bin"]
  GETTABLEKS R7 R8 K7 ["Common"]
  GETTABLEKS R6 R7 K25 ["setup"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Bin"]
  GETTABLEKS R8 R9 K7 ["Common"]
  GETTABLEKS R7 R8 K26 ["setupMain"]
  CALL R6 1 1
  MOVE R7 R5
  GETIMPORT R8 K22 [plugin]
  MOVE R9 R6
  CALL R7 2 0
  RETURN R0 0
