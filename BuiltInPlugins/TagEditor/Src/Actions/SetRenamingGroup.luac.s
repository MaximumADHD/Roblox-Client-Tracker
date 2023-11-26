PROTO_0:
  DUPTABLE R2 K3 [{"type", "group", "renaming"}]
  LOADK R3 K4 ["SetRenamingGroup"]
  SETTABLEKS R3 R2 K0 ["type"]
  SETTABLEKS R0 R2 K1 ["group"]
  SETTABLEKS R1 R2 K2 ["renaming"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
