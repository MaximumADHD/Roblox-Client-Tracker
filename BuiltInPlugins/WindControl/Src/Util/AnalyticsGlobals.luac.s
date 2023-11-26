PROTO_0:
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["textFieldCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["sliderCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["greenCircleCount"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K0 ["textFieldCount"]
  GETTABLEKS R4 R0 K1 ["sliderCount"]
  ADD R2 R3 R4
  GETTABLEKS R3 R0 K2 ["greenCircleCount"]
  ADD R1 R2 R3
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"textFieldCount", "sliderCount", "greenCircleCount"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["textFieldCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["sliderCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["greenCircleCount"]
  DUPCLOSURE R1 K4 [PROTO_0]
  SETTABLEKS R1 R0 K5 ["reset"]
  DUPCLOSURE R1 K6 [PROTO_1]
  SETTABLEKS R1 R0 K7 ["totalCount"]
  RETURN R0 1
