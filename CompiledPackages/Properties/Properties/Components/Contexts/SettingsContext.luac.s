PROTO_0:
  DUPTABLE R1 K2 [{"colorDisplayModeObservable", "setColorDisplayMode"}]
  GETTABLEKS R2 R0 K0 ["colorDisplayModeObservable"]
  SETTABLEKS R2 R1 K0 ["colorDisplayModeObservable"]
  GETTABLEKS R2 R0 K1 ["setColorDisplayMode"]
  SETTABLEKS R2 R1 K1 ["setColorDisplayMode"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["Provider"]
  DUPTABLE R4 K5 [{"value"}]
  SETTABLEKS R1 R4 K4 ["value"]
  GETTABLEKS R5 R0 K6 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["Observable"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Util"]
  GETTABLEKS R4 R5 K10 ["createUnimplemented"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K11 ["createElement"]
  DUPTABLE R5 K14 [{"colorDisplayModeObservable", "setColorDisplayMode"}]
  GETTABLEKS R6 R1 K15 ["create"]
  LOADK R7 K16 ["RGB"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K12 ["colorDisplayModeObservable"]
  MOVE R6 R3
  LOADK R7 K13 ["setColorDisplayMode"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K13 ["setColorDisplayMode"]
  GETTABLEKS R6 R2 K17 ["createContext"]
  MOVE R7 R5
  CALL R6 1 1
  DUPCLOSURE R7 K18 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R6
  DUPTABLE R8 K21 [{"Context", "Provider"}]
  SETTABLEKS R6 R8 K19 ["Context"]
  SETTABLEKS R7 R8 K20 ["Provider"]
  RETURN R8 1
