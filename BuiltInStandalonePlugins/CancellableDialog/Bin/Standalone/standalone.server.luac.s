MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CancellableDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  GETIMPORT R2 K10 [error]
  LOADK R3 K11 ["roblox-cli should not be loading standalone plugins"]
  CALL R2 1 0
  RETURN R0 0
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K12 ["Bin"]
  GETTABLEKS R4 R5 K13 ["Common"]
  GETTABLEKS R3 R4 K14 ["pluginType"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K15 ["get"]
  CALL R3 0 1
  GETTABLEKS R4 R2 K16 ["Standalone"]
  JUMPIFEQ R3 R4 [+2]
  RETURN R0 0
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K12 ["Bin"]
  GETTABLEKS R5 R6 K13 ["Common"]
  GETTABLEKS R4 R5 K17 ["setup"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K12 ["Bin"]
  GETTABLEKS R6 R7 K13 ["Common"]
  GETTABLEKS R5 R6 K18 ["setupMain"]
  CALL R4 1 1
  MOVE R5 R3
  GETIMPORT R6 K20 [plugin]
  MOVE R7 R4
  CALL R5 2 0
  RETURN R0 0
