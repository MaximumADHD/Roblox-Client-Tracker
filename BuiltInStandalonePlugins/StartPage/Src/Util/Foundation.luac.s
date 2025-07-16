MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFFlagLuaStartPageFoundation"]
  CALL R1 1 1
  CALL R1 0 1
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["StudioFoundation"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K12 ["Util"]
  GETTABLEKS R4 R5 K13 ["isStyleSheetPolyfillOn"]
  CALL R4 0 1
  JUMPIFNOT R4 [+6]
  GETIMPORT R5 K15 [warn]
  LOADK R6 K16 ["To enable Foundation you must set FoundationDisableStylingPolyfill flag to true"]
  CALL R5 1 0
  LOADNIL R5
  RETURN R5 1
  GETIMPORT R5 K18 [print]
  LOADK R6 K19 ["StartPage: Foundation is enabled!"]
  CALL R5 1 0
  RETURN R2 1
