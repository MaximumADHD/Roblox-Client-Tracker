PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["table"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["Expected children to be a table"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["provideMockContext"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["TestHelpers"]
  GETTABLEKS R3 R1 K9 ["ContextServices"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Contexts"]
  GETTABLEKS R5 R6 K12 ["UsernameContext"]
  CALL R4 1 1
  NEWTABLE R5 0 3
  GETTABLEKS R7 R3 K13 ["Analytics"]
  GETTABLEKS R6 R7 K14 ["mock"]
  CALL R6 0 1
  GETTABLEKS R8 R3 K15 ["Localization"]
  GETTABLEKS R7 R8 K14 ["mock"]
  CALL R7 0 1
  GETTABLEKS R8 R4 K16 ["new"]
  CALL R8 0 -1
  SETLIST R5 R6 -1 [1]
  DUPCLOSURE R6 K17 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R5
  RETURN R6 1
