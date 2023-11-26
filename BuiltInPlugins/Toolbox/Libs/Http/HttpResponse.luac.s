PROTO_0:
  DUPTABLE R5 K5 [{"responseTimeMs", "responseCode", "responseBody", "requestType", "url"}]
  SETTABLEKS R1 R5 K0 ["responseTimeMs"]
  SETTABLEKS R2 R5 K1 ["responseCode"]
  SETTABLEKS R0 R5 K2 ["responseBody"]
  SETTABLEKS R3 R5 K3 ["requestType"]
  SETTABLEKS R4 R5 K4 ["url"]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["new"]
  RETURN R0 1
