PROTO_0:
  DUPTABLE R2 K4 [{"top", "bottom", "left", "right"}]
  SETTABLEKS R1 R2 K0 ["top"]
  SETTABLEKS R1 R2 K1 ["bottom"]
  SETTABLEKS R0 R2 K2 ["left"]
  SETTABLEKS R0 R2 K3 ["right"]
  RETURN R2 1

PROTO_1:
  DUPTABLE R1 K4 [{"top", "bottom", "left", "right"}]
  SETTABLEKS R0 R1 K0 ["top"]
  SETTABLEKS R0 R1 K1 ["bottom"]
  SETTABLEKS R0 R1 K2 ["left"]
  SETTABLEKS R0 R1 K3 ["right"]
  RETURN R1 1

PROTO_2:
  DUPTABLE R4 K4 [{"top", "bottom", "left", "right"}]
  SETTABLEKS R0 R4 K0 ["top"]
  SETTABLEKS R2 R4 K1 ["bottom"]
  SETTABLEKS R3 R4 K2 ["left"]
  SETTABLEKS R1 R4 K3 ["right"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"rectangle", "square", "quad"}]
  DUPCLOSURE R1 K4 [PROTO_0]
  SETTABLEKS R1 R0 K0 ["rectangle"]
  DUPCLOSURE R1 K5 [PROTO_1]
  SETTABLEKS R1 R0 K1 ["square"]
  DUPCLOSURE R1 K6 [PROTO_2]
  SETTABLEKS R1 R0 K2 ["quad"]
  RETURN R0 1
