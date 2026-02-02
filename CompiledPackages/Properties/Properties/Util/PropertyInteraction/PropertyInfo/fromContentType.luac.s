PROTO_0:
  DUPTABLE R2 K3 [{"type", "readonly", "extra"}]
  LOADK R3 K4 ["Content"]
  SETTABLEKS R3 R2 K0 ["type"]
  SETTABLEKS R0 R2 K1 ["readonly"]
  DUPTABLE R3 K6 [{"assetType"}]
  SETTABLEKS R1 R3 K5 ["assetType"]
  SETTABLEKS R3 R2 K2 ["extra"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
