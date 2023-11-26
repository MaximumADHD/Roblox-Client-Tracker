PROTO_0:
  DUPTABLE R2 K3 [{"type", "tag", "renaming"}]
  LOADK R3 K4 ["SetRenaming"]
  SETTABLEKS R3 R2 K0 ["type"]
  SETTABLEKS R0 R2 K1 ["tag"]
  SETTABLEKS R1 R2 K2 ["renaming"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
