MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationGraphEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K9 ["Bin"]
  GETTABLEKS R4 R5 K10 ["Common"]
  GETTABLEKS R3 R4 K11 ["defineLuaFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["getFFlagEnableAnimationGraphEditor"]
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Bin"]
  GETTABLEKS R5 R6 K10 ["Common"]
  GETTABLEKS R4 R5 K13 ["setup"]
  CALL R3 1 1
  MOVE R4 R3
  GETIMPORT R5 K15 [plugin]
  LOADK R6 K16 ["editabledatamodel"]
  CALL R4 2 0
  RETURN R0 0
