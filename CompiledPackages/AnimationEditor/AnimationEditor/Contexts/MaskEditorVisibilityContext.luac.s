PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  DUPTABLE R3 K3 [{"showMaskEditor", "setShowMaskEditor"}]
  SETTABLEKS R1 R3 K1 ["showMaskEditor"]
  SETTABLEKS R2 R3 K2 ["setShowMaskEditor"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Provider"]
  DUPTABLE R6 K7 [{"value"}]
  SETTABLEKS R3 R6 K6 ["value"]
  GETTABLEKS R7 R0 K8 ["children"]
  CALL R4 3 -1
  RETURN R4 -1

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
  DUPTABLE R2 K10 [{"showMaskEditor", "setShowMaskEditor"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K8 ["showMaskEditor"]
  DUPCLOSURE R3 K11 [PROTO_0]
  SETTABLEKS R3 R2 K9 ["setShowMaskEditor"]
  GETTABLEKS R3 R1 K12 ["createContext"]
  MOVE R4 R2
  CALL R3 1 1
  DUPCLOSURE R4 K13 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R3
  DUPTABLE R5 K16 [{"Context", "Provider"}]
  SETTABLEKS R3 R5 K14 ["Context"]
  SETTABLEKS R4 R5 K15 ["Provider"]
  RETURN R5 1
