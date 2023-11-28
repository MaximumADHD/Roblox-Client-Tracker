PROTO_0:
  DUPTABLE R0 K6 [{"Move", "AddPoint", "AddTangent", "Done", "DeletePoint", "DeletePoint2"}]
  LOADK R1 K7 ["1"]
  SETTABLEKS R1 R0 K0 ["Move"]
  LOADK R1 K8 ["2"]
  SETTABLEKS R1 R0 K1 ["AddPoint"]
  LOADK R1 K9 ["3"]
  SETTABLEKS R1 R0 K2 ["AddTangent"]
  LOADK R1 K10 ["return"]
  SETTABLEKS R1 R0 K3 ["Done"]
  LOADK R1 K11 ["delete"]
  SETTABLEKS R1 R0 K4 ["DeletePoint"]
  LOADK R1 K12 ["backspace"]
  SETTABLEKS R1 R0 K5 ["DeletePoint2"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
