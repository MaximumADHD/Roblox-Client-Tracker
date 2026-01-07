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
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Enums"]
  GETTABLEKS R4 R5 K9 ["ColorMode"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["createContext"]
  DUPTABLE R5 K13 [{"isIconSize", "colorMode"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K11 ["isIconSize"]
  GETTABLEKS R6 R3 K14 ["Color"]
  SETTABLEKS R6 R5 K12 ["colorMode"]
  CALL R4 1 1
  DUPCLOSURE R5 K15 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  DUPTABLE R6 K18 [{"Provider", "usePresentationContext"}]
  GETTABLEKS R7 R4 K16 ["Provider"]
  SETTABLEKS R7 R6 K16 ["Provider"]
  SETTABLEKS R5 R6 K17 ["usePresentationContext"]
  RETURN R6 1
