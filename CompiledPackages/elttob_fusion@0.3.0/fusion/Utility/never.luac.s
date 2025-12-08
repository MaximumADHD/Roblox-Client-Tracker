PROTO_0:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["This codepath should not be reachable"]
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
