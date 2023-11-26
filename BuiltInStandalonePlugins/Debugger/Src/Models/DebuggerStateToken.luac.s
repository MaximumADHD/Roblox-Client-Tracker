PROTO_0:
  DUPTABLE R1 K1 [{"debuggerConnectionId"}]
  GETTABLEKS R2 R0 K0 ["debuggerConnectionId"]
  SETTABLEKS R2 R1 K0 ["debuggerConnectionId"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPTABLE R1 K2 [{"fromData"}]
  SETTABLEKS R0 R1 K1 ["fromData"]
  RETURN R1 1
