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
  GETTABLEKS R4 R2 K11 ["Utility"]
  GETTABLEKS R3 R4 K12 ["Flags"]
  LOADB R4 1
  SETTABLEKS R4 R3 K13 ["FoundationDisableStylingPolyfill"]
  RETURN R2 1
