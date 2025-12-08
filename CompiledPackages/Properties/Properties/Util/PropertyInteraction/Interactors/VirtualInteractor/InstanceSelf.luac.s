PROTO_0:
  RETURN R0 1

PROTO_1:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["Cannot write readonly property Instance.Self"]
  CALL R2 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["VirtualPropertyDataTypes"]
  CALL R0 1 1
  DUPCLOSURE R1 K6 [PROTO_0]
  DUPCLOSURE R2 K7 [PROTO_1]
  DUPTABLE R3 K10 [{"read", "write"}]
  SETTABLEKS R1 R3 K8 ["read"]
  SETTABLEKS R2 R3 K9 ["write"]
  RETURN R3 1
