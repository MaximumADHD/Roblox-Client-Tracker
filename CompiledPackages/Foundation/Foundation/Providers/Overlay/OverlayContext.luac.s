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
  DUPTABLE R4 K10 [{"instance"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K9 ["instance"]
  CALL R3 1 -1
  RETURN R3 -1
