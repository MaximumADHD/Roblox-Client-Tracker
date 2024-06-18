PROTO_0:
  LOADK R0 K0 ["Asset"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Asset", "Standalone", "get"}]
  LOADK R1 K0 ["Asset"]
  SETTABLEKS R1 R0 K0 ["Asset"]
  LOADK R1 K1 ["Standalone"]
  SETTABLEKS R1 R0 K1 ["Standalone"]
  DUPCLOSURE R1 K4 [PROTO_0]
  SETTABLEKS R1 R0 K2 ["get"]
  RETURN R0 1
