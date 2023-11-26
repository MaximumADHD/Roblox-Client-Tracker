PROTO_0:
  GETUPVAL R0 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"ColorMap", "MetalnessMap", "NormalMap", "RoughnessMap"}]
  LOADK R1 K0 ["ColorMap"]
  SETTABLEKS R1 R0 K0 ["ColorMap"]
  LOADK R1 K1 ["MetalnessMap"]
  SETTABLEKS R1 R0 K1 ["MetalnessMap"]
  LOADK R1 K2 ["NormalMap"]
  SETTABLEKS R1 R0 K2 ["NormalMap"]
  LOADK R1 K3 ["RoughnessMap"]
  SETTABLEKS R1 R0 K3 ["RoughnessMap"]
  DUPCLOSURE R1 K5 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
