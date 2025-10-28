MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ReimportPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Flags"]
  GETTABLEKS R2 R3 K7 ["GetFFlagEnableReimport"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["TestLoader"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K10 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  GETIMPORT R2 K12 [error]
  LOADK R3 K13 ["roblox-cli should not be loading standalone plugins"]
  CALL R2 1 0
  RETURN R0 0
  GETIMPORT R2 K15 [plugin]
  GETTABLEKS R3 R0 K16 ["Name"]
  SETTABLEKS R3 R2 K16 ["Name"]
  RETURN R0 0
