MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["safeGetFastFlag"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["SharedFlags"]
  GETTABLEKS R3 R4 K9 ["getFFlagLuaStartPageFoundation"]
  CALL R2 1 1
  CALL R2 0 1
  JUMPIF R2 [+2]
  LOADNIL R3
  RETURN R3 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Foundation"]
  CALL R3 1 1
  MOVE R4 R1
  LOADK R5 K12 ["FoundationStyleSheetContext"]
  CALL R4 1 1
  JUMPIFNOT R4 [+9]
  MOVE R4 R1
  LOADK R5 K13 ["FoundationStylingPolyfill"]
  CALL R4 1 1
  JUMPIF R4 [+5]
  GETIMPORT R4 K15 [print]
  LOADK R5 K16 ["StartPage: Foundation is enabled"]
  CALL R4 1 0
  RETURN R3 1
  GETIMPORT R4 K18 [warn]
  LOADK R5 K19 ["To enable Foundation you must set FoundationStyleSheetContext=true and FoundationStylingPolyfill=false flags"]
  CALL R4 1 0
  LOADNIL R4
  RETURN R4 1
