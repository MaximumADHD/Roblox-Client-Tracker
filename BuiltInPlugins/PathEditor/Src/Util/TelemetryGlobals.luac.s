PROTO_0:
  GETTABLEKS R3 R0 K0 ["selectModeCount"]
  GETTABLEKS R4 R0 K1 ["addPointModeCount"]
  ADD R2 R3 R4
  GETTABLEKS R3 R0 K2 ["addTangentModeCount"]
  ADD R1 R2 R3
  RETURN R1 1

PROTO_1:
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["selectModeCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["addPointModeCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["addTangentModeCount"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"selectModeCount", "addPointModeCount", "addTangentModeCount"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["selectModeCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["addPointModeCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["addTangentModeCount"]
  DUPCLOSURE R1 K4 [PROTO_0]
  SETTABLEKS R1 R0 K5 ["totalCount"]
  DUPCLOSURE R1 K6 [PROTO_1]
  SETTABLEKS R1 R0 K7 ["reset"]
  RETURN R0 1
