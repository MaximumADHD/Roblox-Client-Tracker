PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  GETTABLEKS R2 R0 K1 ["responsiveSize"]
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useState"]
  GETTABLEKS R4 R0 K2 ["hasHeroMedia"]
  CALL R3 1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["Provider"]
  DUPTABLE R7 K6 [{"value"}]
  DUPTABLE R8 K10 [{"size", "responsiveSize", "setResponsiveSize", "hasHeroMedia", "setHasHeroMedia"}]
  GETTABLEKS R9 R0 K7 ["size"]
  SETTABLEKS R9 R8 K7 ["size"]
  SETTABLEKS R1 R8 K1 ["responsiveSize"]
  SETTABLEKS R2 R8 K8 ["setResponsiveSize"]
  SETTABLEKS R3 R8 K2 ["hasHeroMedia"]
  SETTABLEKS R4 R8 K9 ["setHasHeroMedia"]
  SETTABLEKS R8 R7 K5 ["value"]
  GETTABLEKS R8 R0 K11 ["children"]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R5 R0 K8 ["Enums"]
  GETTABLEKS R4 R5 K9 ["DialogSize"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K10 ["DialogLayoutContext"]
  CALL R4 1 1
  DUPCLOSURE R5 K11 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R5 1
