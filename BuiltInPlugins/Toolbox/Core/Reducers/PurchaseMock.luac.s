PROTO_0:
  DUPTABLE R2 K4 [{"robuxBalance", "status", "assetId", "cachedOwnedAssets"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K0 ["robuxBalance"]
  LOADN R3 0
  SETTABLEKS R3 R2 K1 ["status"]
  LOADNIL R3
  SETTABLEKS R3 R2 K2 ["assetId"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K3 ["cachedOwnedAssets"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
