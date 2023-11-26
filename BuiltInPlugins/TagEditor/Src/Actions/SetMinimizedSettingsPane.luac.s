PROTO_0:
  DUPTABLE R1 K2 [{"type", "minimized"}]
  LOADK R2 K3 ["SetMinimizedSettingsPane"]
  SETTABLEKS R2 R1 K0 ["type"]
  SETTABLEKS R0 R1 K1 ["minimized"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
