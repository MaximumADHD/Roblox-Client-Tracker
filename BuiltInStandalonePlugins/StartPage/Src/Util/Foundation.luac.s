MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Utility"]
  GETTABLEKS R2 R3 K9 ["Flags"]
  LOADB R3 1
  SETTABLEKS R3 R2 K10 ["FoundationDisableStylingPolyfill"]
  GETTABLEKS R3 R1 K8 ["Utility"]
  GETTABLEKS R2 R3 K9 ["Flags"]
  LOADB R3 1
  SETTABLEKS R3 R2 K11 ["FoundationUpdateBadgeDesign"]
  GETTABLEKS R3 R1 K8 ["Utility"]
  GETTABLEKS R2 R3 K9 ["Flags"]
  LOADB R3 1
  SETTABLEKS R3 R2 K12 ["FoundationBaseMenuScroll"]
  RETURN R1 1
