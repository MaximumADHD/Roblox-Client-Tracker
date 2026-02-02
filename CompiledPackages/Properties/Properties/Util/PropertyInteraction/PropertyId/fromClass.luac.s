PROTO_0:
  DUPTABLE R3 K3 [{"name", "className", "metaType"}]
  SETTABLEKS R0 R3 K0 ["name"]
  SETTABLEKS R1 R3 K1 ["className"]
  SETTABLEKS R2 R3 K2 ["metaType"]
  RETURN R3 1

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
