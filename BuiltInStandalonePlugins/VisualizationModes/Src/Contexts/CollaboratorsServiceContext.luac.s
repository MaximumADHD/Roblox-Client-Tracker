PROTO_0:
  DUPTABLE R1 K1 [{"collaboratorsService"}]
  GETTABLEKS R2 R0 K0 ["collaboratorsService"]
  SETTABLEKS R2 R1 K0 ["collaboratorsService"]
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
  GETIMPORT R2 K9 [pcall]
  GETIMPORT R4 K11 [game]
  GETTABLEKS R3 R4 K12 ["GetService"]
  GETIMPORT R4 K11 [game]
  LOADK R5 K13 ["CollaboratorsService"]
  CALL R2 3 2
  DUPTABLE R4 K15 [{"collaboratorsService"}]
  SETTABLEKS R3 R4 K14 ["collaboratorsService"]
  GETTABLEKS R5 R1 K16 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  DUPCLOSURE R6 K17 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  DUPTABLE R7 K20 [{"Context", "Provider"}]
  SETTABLEKS R5 R7 K18 ["Context"]
  SETTABLEKS R6 R7 K19 ["Provider"]
  RETURN R7 1
