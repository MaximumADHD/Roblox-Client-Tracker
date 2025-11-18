PROTO_0:
  DUPTABLE R1 K2 [{"name", "metaType"}]
  SETTABLEKS R0 R1 K0 ["name"]
  LOADK R2 K3 ["Tag"]
  SETTABLEKS R2 R1 K1 ["metaType"]
  RETURN R1 1

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
