MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["logIfDebug"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["safeGetFastFlag"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K9 ["Flags"]
  GETTABLEKS R4 R5 K11 ["getFFlagAmrFoundation"]
  CALL R3 1 1
  CALL R3 0 1
  JUMPIF R3 [+2]
  LOADNIL R4
  RETURN R4 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Foundation"]
  CALL R4 1 1
  MOVE R5 R2
  LOADK R6 K14 ["FoundationStylingPolyfill"]
  CALL R5 1 1
  JUMPIF R5 [+4]
  MOVE R5 R1
  LOADK R6 K15 ["AssetManager: Foundation is enabled"]
  CALL R5 1 0
  RETURN R4 1
  MOVE R5 R1
  LOADK R6 K16 ["To enable Foundation you must have FoundationStylingPolyfill=false flags"]
  CALL R5 1 0
  LOADNIL R5
  RETURN R5 1
