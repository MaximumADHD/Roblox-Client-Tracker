PROTO_0:
  DUPTABLE R1 K1 [{"getSettings"}]
  GETTABLEKS R2 R0 K0 ["getSettings"]
  SETTABLEKS R2 R1 K0 ["getSettings"]
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
  LOADK R2 K2 ["FaceControlEditorComponent"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  DUPTABLE R3 K9 [{"getSettings"}]
  GETIMPORT R4 K11 [settings]
  SETTABLEKS R4 R3 K8 ["getSettings"]
  GETTABLEKS R4 R2 K12 ["createContext"]
  MOVE R5 R3
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  DUPTABLE R6 K16 [{"Context", "Provider"}]
  SETTABLEKS R4 R6 K14 ["Context"]
  SETTABLEKS R5 R6 K15 ["Provider"]
  RETURN R6 1
