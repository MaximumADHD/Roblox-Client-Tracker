PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["transition"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K5 ["Shared"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K6 ["ReactSharedInternals"]
  GETTABLEKS R2 R1 K7 ["ReactCurrentBatchConfig"]
  DUPTABLE R3 K10 [{"NoTransition", "requestCurrentTransition"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K8 ["NoTransition"]
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K9 ["requestCurrentTransition"]
  RETURN R3 1
