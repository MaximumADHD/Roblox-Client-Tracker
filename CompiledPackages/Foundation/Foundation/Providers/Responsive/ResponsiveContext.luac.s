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
  GETTABLEKS R6 R0 K8 ["Utility"]
  GETTABLEKS R5 R6 K9 ["Responsive"]
  GETTABLEKS R4 R5 K10 ["BreakpointConfig"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R7 R0 K8 ["Utility"]
  GETTABLEKS R6 R7 K9 ["Responsive"]
  GETTABLEKS R5 R6 K11 ["GridConfig"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K12 ["createContext"]
  DUPTABLE R6 K14 [{"config"}]
  DUPTABLE R7 K17 [{"breakpoint", "grid"}]
  SETTABLEKS R3 R7 K15 ["breakpoint"]
  SETTABLEKS R4 R7 K16 ["grid"]
  SETTABLEKS R7 R6 K13 ["config"]
  CALL R5 1 -1
  RETURN R5 -1
