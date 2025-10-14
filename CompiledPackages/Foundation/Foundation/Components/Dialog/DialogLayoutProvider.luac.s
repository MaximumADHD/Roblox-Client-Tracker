PROTO_0:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["useState"]
  GETTABLEKS R3 R1 K1 ["titleHeight"]
  CALL R2 1 2
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["useState"]
  GETTABLEKS R5 R1 K2 ["hasMediaBleed"]
  CALL R4 1 2
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K4 ["Provider"]
  DUPTABLE R8 K6 [{"value"}]
  DUPTABLE R9 K10 [{"isTitleVisible", "titleHeight", "setTitleHeight", "hasMediaBleed", "setHasMediaBleed"}]
  GETTABLEKS R10 R1 K7 ["isTitleVisible"]
  SETTABLEKS R10 R9 K7 ["isTitleVisible"]
  SETTABLEKS R2 R9 K1 ["titleHeight"]
  SETTABLEKS R3 R9 K8 ["setTitleHeight"]
  SETTABLEKS R4 R9 K2 ["hasMediaBleed"]
  SETTABLEKS R5 R9 K9 ["setHasMediaBleed"]
  SETTABLEKS R9 R8 K5 ["value"]
  GETTABLEKS R9 R1 K11 ["children"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Utility"]
  GETTABLEKS R4 R5 K9 ["withDefaults"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K10 ["DialogLayoutContext"]
  CALL R4 1 1
  DUPTABLE R5 K14 [{"isTitleVisible", "titleHeight", "hasMediaBleed"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K11 ["isTitleVisible"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["titleHeight"]
  LOADB R6 0
  SETTABLEKS R6 R5 K13 ["hasMediaBleed"]
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R6 1
