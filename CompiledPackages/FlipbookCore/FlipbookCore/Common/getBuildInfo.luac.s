PROTO_0:
  DUPTABLE R0 K3 [{"version", "channel", "hash"}]
  LOADK R1 K4 ["2.3.0"]
  SETTABLEKS R1 R0 K0 ["version"]
  LOADK R1 K5 ["production"]
  SETTABLEKS R1 R0 K1 ["channel"]
  LOADK R1 K6 [""]
  SETTABLEKS R1 R0 K2 ["hash"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
