PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["Fragment"]
  CALL R0 1 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  LOADNIL R2
  GETIMPORT R3 K9 [game]
  LOADK R5 K10 ["FoundationDisableStylingPolyfill"]
  NAMECALL R3 R3 K11 ["GetFastFlag"]
  CALL R3 2 1
  JUMPIF R3 [+3]
  DUPCLOSURE R2 K12 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K13 ["StudioFoundation"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K14 ["Components"]
  GETTABLEKS R2 R4 K15 ["FoundationProviderAdapter"]
  RETURN R2 1
