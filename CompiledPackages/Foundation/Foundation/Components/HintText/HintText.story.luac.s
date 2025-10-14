PROTO_0:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"text", "hasError"}]
  GETTABLEKS R5 R1 K2 ["text"]
  SETTABLEKS R5 R4 K2 ["text"]
  GETTABLEKS R5 R1 K3 ["hasError"]
  SETTABLEKS R5 R4 K3 ["hasError"]
  CALL R2 2 -1
  RETURN R2 -1

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
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["HintText"]
  CALL R3 1 1
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  DUPTABLE R5 K14 [{"summary", "story", "controls"}]
  LOADK R6 K15 ["Helper text put below inputs"]
  SETTABLEKS R6 R5 K11 ["summary"]
  SETTABLEKS R4 R5 K12 ["story"]
  DUPTABLE R6 K18 [{"text", "hasError"}]
  LOADK R7 K19 ["Helper text"]
  SETTABLEKS R7 R6 K16 ["text"]
  LOADB R7 0
  SETTABLEKS R7 R6 K17 ["hasError"]
  SETTABLEKS R6 R5 K13 ["controls"]
  RETURN R5 1
