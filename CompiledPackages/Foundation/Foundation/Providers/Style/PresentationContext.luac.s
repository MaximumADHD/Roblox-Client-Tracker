PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useContext"]
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

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
  DUPTABLE R4 K11 [{"isIconSize", "isInverse"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K9 ["isIconSize"]
  LOADB R5 0
  SETTABLEKS R5 R4 K10 ["isInverse"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  DUPTABLE R5 K15 [{"Provider", "usePresentationContext"}]
  GETTABLEKS R6 R3 K13 ["Provider"]
  SETTABLEKS R6 R5 K13 ["Provider"]
  SETTABLEKS R4 R5 K14 ["usePresentationContext"]
  RETURN R5 1
