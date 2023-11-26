PROTO_0:
  DUPTABLE R0 K2 [{"threadId", "displayString"}]
  LOADN R1 255
  SETTABLEKS R1 R0 K0 ["threadId"]
  LOADK R1 K3 [""]
  SETTABLEKS R1 R0 K1 ["displayString"]
  RETURN R0 1

PROTO_1:
  DUPTABLE R1 K2 [{"threadId", "displayString"}]
  GETTABLEKS R3 R0 K0 ["threadId"]
  ORK R2 R3 K3 [-1]
  SETTABLEKS R2 R1 K0 ["threadId"]
  GETTABLEKS R3 R0 K1 ["displayString"]
  ORK R2 R3 K4 [""]
  SETTABLEKS R2 R1 K1 ["displayString"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPCLOSURE R1 K1 [PROTO_1]
  DUPTABLE R2 K4 [{"new", "fromData"}]
  SETTABLEKS R0 R2 K2 ["new"]
  SETTABLEKS R1 R2 K3 ["fromData"]
  RETURN R2 1
