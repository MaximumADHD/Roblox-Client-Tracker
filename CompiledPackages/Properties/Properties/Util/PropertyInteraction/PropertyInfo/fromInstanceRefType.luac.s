PROTO_0:
  DUPTABLE R2 K3 [{"type", "readonly", "extra"}]
  LOADK R3 K4 ["InstanceRef"]
  SETTABLEKS R3 R2 K0 ["type"]
  SETTABLEKS R0 R2 K1 ["readonly"]
  DUPTABLE R3 K6 [{"className"}]
  SETTABLEKS R1 R3 K5 ["className"]
  SETTABLEKS R3 R2 K2 ["extra"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["PropertyTypes"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  RETURN R2 1
