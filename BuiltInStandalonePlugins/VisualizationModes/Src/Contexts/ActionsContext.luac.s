PROTO_0:
  DUPTABLE R1 K1 [{"actionsComponent"}]
  GETTABLEKS R2 R0 K0 ["actionsComponent"]
  SETTABLEKS R2 R1 K0 ["actionsComponent"]
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
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  DUPTABLE R3 K11 [{"actionsComponent"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K10 ["actionsComponent"]
  GETTABLEKS R4 R1 K12 ["createContext"]
  MOVE R5 R3
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  DUPTABLE R6 K16 [{"Context", "Provider"}]
  SETTABLEKS R4 R6 K14 ["Context"]
  SETTABLEKS R5 R6 K15 ["Provider"]
  RETURN R6 1
