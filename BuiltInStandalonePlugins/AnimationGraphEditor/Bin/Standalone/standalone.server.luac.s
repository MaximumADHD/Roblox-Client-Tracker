MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationGraphEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["getFFlagEnableAnimationGraphEditor"]
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
  GETTABLEKS R4 R5 K16 ["setup"]
  CALL R3 1 1
  MOVE R4 R3
  GETIMPORT R5 K18 [plugin]
  LOADK R6 K19 ["ui"]
  CALL R4 2 0
  RETURN R0 0
