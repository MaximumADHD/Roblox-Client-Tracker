PROTO_0:
  DUPTABLE R3 K3 [{"debuggerStateToken", "threadId", "frameNumber"}]
  SETTABLEKS R0 R3 K0 ["debuggerStateToken"]
  SETTABLEKS R1 R3 K1 ["threadId"]
  SETTABLEKS R2 R3 K2 ["frameNumber"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["DebuggerStateToken"]
  CALL R0 1 1
  DUPCLOSURE R1 K6 [PROTO_0]
  DUPTABLE R2 K8 [{"ctor"}]
  SETTABLEKS R1 R2 K7 ["ctor"]
  RETURN R2 1
