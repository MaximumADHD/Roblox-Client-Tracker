PROTO_0:
  DUPTABLE R4 K4 [{"responseTimeMs", "responseCode", "responseBody", "requestOptions"}]
  SETTABLEKS R1 R4 K0 ["responseTimeMs"]
  SETTABLEKS R2 R4 K1 ["responseCode"]
  SETTABLEKS R0 R4 K2 ["responseBody"]
  SETTABLEKS R3 R4 K3 ["requestOptions"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["new"]
  RETURN R0 1
