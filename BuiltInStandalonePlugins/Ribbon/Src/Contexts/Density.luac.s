MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["createContext"]
  MOVE R3 R2
  DUPTABLE R4 K10 [{"mode"}]
  LOADK R5 K11 ["DensityDefault"]
  SETTABLEKS R5 R4 K9 ["mode"]
  CALL R3 1 -1
  RETURN R3 -1
