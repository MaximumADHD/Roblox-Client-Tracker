PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["transition"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K5 ["shared"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETTABLEKS R0 R1 K7 ["ReactSharedInternals"]
  GETTABLEKS R1 R0 K8 ["ReactCurrentBatchConfig"]
  DUPTABLE R2 K11 [{"NoTransition", "requestCurrentTransition"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K9 ["NoTransition"]
  DUPCLOSURE R3 K12 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K10 ["requestCurrentTransition"]
  RETURN R2 1
