PROTO_0:
  DUPTABLE R1 K1 [{"timeRange"}]
  GETTABLEKS R2 R0 K0 ["timeRange"]
  SETTABLEKS R2 R1 K0 ["timeRange"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
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
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  DUPTABLE R2 K9 [{"timeRange"}]
  GETIMPORT R3 K12 [NumberRange.new]
  LOADN R4 0
  LOADN R5 10
  CALL R3 2 1
  SETTABLEKS R3 R2 K8 ["timeRange"]
  GETTABLEKS R3 R1 K13 ["createContext"]
  MOVE R4 R2
  CALL R3 1 1
  DUPCLOSURE R4 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  DUPTABLE R5 K17 [{"Context", "Provider"}]
  SETTABLEKS R3 R5 K15 ["Context"]
  SETTABLEKS R4 R5 K16 ["Provider"]
  RETURN R5 1
