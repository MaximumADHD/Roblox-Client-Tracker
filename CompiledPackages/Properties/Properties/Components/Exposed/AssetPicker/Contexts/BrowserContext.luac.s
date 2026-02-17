PROTO_0:
  DUPTABLE R1 K1 [{"browseAssetsAsync"}]
  GETTABLEKS R2 R0 K0 ["browseAssetsAsync"]
  SETTABLEKS R2 R1 K0 ["browseAssetsAsync"]
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
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["createUnimplemented"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K10 ["createElement"]
  DUPTABLE R4 K12 [{"browseAssetsAsync"}]
  MOVE R5 R2
  LOADK R6 K11 ["browseAssetsAsync"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K11 ["browseAssetsAsync"]
  GETTABLEKS R5 R1 K13 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  DUPTABLE R7 K17 [{"Context", "Provider"}]
  SETTABLEKS R5 R7 K15 ["Context"]
  SETTABLEKS R6 R7 K16 ["Provider"]
  RETURN R7 1
