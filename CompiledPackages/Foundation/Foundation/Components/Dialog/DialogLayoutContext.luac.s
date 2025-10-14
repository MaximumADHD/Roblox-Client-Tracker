PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["createContext"]
  DUPTABLE R4 K14 [{"isTitleVisible", "titleHeight", "setTitleHeight", "hasMediaBleed", "setHasMediaBleed"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K9 ["isTitleVisible"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["titleHeight"]
  DUPCLOSURE R5 K15 [PROTO_0]
  SETTABLEKS R5 R4 K11 ["setTitleHeight"]
  LOADB R5 0
  SETTABLEKS R5 R4 K12 ["hasMediaBleed"]
  DUPCLOSURE R5 K16 [PROTO_1]
  SETTABLEKS R5 R4 K13 ["setHasMediaBleed"]
  CALL R3 1 -1
  RETURN R3 -1
