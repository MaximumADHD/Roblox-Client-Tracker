PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["TextButton"]
  NEWTABLE R3 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Event"]
  GETTABLEKS R4 R5 K3 ["Activated"]
  GETTABLEKS R5 R0 K4 ["OnClick"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["Tag"]
  LOADK R5 K6 ["Component-ResolveButton"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K8 [{"Icon"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K9 ["ImageLabel"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K7 ["Icon"]
  CALL R1 3 -1
  RETURN R1 -1

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
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
