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
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Enums"]
  GETTABLEKS R4 R5 K9 ["DialogSize"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["createContext"]
  DUPTABLE R5 K16 [{"size", "responsiveSize", "setResponsiveSize", "hasHeroMedia", "setHasHeroMedia"}]
  GETTABLEKS R6 R3 K17 ["Small"]
  SETTABLEKS R6 R5 K11 ["size"]
  GETTABLEKS R6 R3 K17 ["Small"]
  SETTABLEKS R6 R5 K12 ["responsiveSize"]
  DUPCLOSURE R6 K18 [PROTO_0]
  SETTABLEKS R6 R5 K13 ["setResponsiveSize"]
  LOADB R6 0
  SETTABLEKS R6 R5 K14 ["hasHeroMedia"]
  DUPCLOSURE R6 K19 [PROTO_1]
  SETTABLEKS R6 R5 K15 ["setHasHeroMedia"]
  CALL R4 1 -1
  RETURN R4 -1
