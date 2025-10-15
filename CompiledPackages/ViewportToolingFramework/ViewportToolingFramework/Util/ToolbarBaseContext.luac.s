MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ViewportToolingFramework"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  DUPTABLE R2 K9 [{"Direction"}]
  LOADK R3 K10 ["Horizontal"]
  SETTABLEKS R3 R2 K8 ["Direction"]
  GETTABLEKS R3 R1 K11 ["createContext"]
  MOVE R4 R2
  CALL R3 1 1
  RETURN R3 1
