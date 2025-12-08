MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Graphing"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Util"]
  GETTABLEKS R4 R5 K9 ["CanvasUtil"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["createContext"]
  GETTABLEKS R5 R3 K11 ["createDefaultFunctions"]
  CALL R5 0 -1
  CALL R4 -1 1
  RETURN R4 1
