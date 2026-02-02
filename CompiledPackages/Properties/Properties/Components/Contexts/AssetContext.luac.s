PROTO_0:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_1:
  DUPTABLE R1 K1 [{"getUserAssetsAsync"}]
  GETTABLEKS R2 R0 K0 ["getUserAssetsAsync"]
  SETTABLEKS R2 R1 K0 ["getUserAssetsAsync"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Provider"]
  DUPTABLE R4 K4 [{"value"}]
  SETTABLEKS R1 R4 K3 ["value"]
  GETTABLEKS R5 R0 K5 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["createElement"]
  DUPTABLE R4 K10 [{"getUserAssetsAsync"}]
  DUPCLOSURE R5 K11 [PROTO_0]
  SETTABLEKS R5 R4 K9 ["getUserAssetsAsync"]
  GETTABLEKS R5 R2 K12 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  DUPCLOSURE R6 K13 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R5
  DUPTABLE R7 K16 [{"Context", "Provider"}]
  SETTABLEKS R5 R7 K14 ["Context"]
  SETTABLEKS R6 R7 K15 ["Provider"]
  RETURN R7 1
