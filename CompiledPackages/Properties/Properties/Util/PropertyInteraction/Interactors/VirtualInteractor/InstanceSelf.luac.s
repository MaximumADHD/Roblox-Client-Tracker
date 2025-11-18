PROTO_0:
  RETURN R0 1

PROTO_1:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["Cannot write readonly property Instance.Self"]
  CALL R2 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Util"]
  GETTABLEKS R3 R4 K7 ["PropertyInteraction"]
  GETTABLEKS R2 R3 K8 ["PropertyId"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K9 ["Parent"]
  GETTABLEKS R3 R4 K10 ["VirtualPropertyDataTypes"]
  CALL R2 1 1
  DUPCLOSURE R3 K11 [PROTO_0]
  DUPCLOSURE R4 K12 [PROTO_1]
  DUPTABLE R5 K16 [{"id", "read", "write"}]
  GETTABLEKS R6 R1 K17 ["fromClass"]
  LOADK R7 K18 ["Self"]
  LOADK R8 K19 ["Instance"]
  LOADK R9 K20 ["Virtual"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K13 ["id"]
  SETTABLEKS R3 R5 K14 ["read"]
  SETTABLEKS R4 R5 K15 ["write"]
  RETURN R5 1
