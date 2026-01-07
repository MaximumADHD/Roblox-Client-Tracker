PROTO_0:
  DUPTABLE R1 K1 [{"selectionService"}]
  GETTABLEKS R2 R0 K0 ["selectionService"]
  SETTABLEKS R2 R1 K0 ["selectionService"]
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
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["Selection"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  DUPTABLE R3 K13 [{"selectionService"}]
  SETTABLEKS R1 R3 K12 ["selectionService"]
  GETTABLEKS R4 R2 K14 ["createContext"]
  MOVE R5 R3
  CALL R4 1 1
  DUPCLOSURE R5 K15 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  DUPTABLE R6 K18 [{"Context", "Provider"}]
  SETTABLEKS R4 R6 K16 ["Context"]
  SETTABLEKS R5 R6 K17 ["Provider"]
  RETURN R6 1
