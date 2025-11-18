MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StudioFoundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["SharedPluginConstants"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R0 K9 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K10 ["createContext"]
  GETTABLEKS R6 R3 K11 ["DEFAULT_STUDIO_THEME_NAME"]
  CALL R5 1 1
  GETIMPORT R6 K14 [table.freeze]
  DUPTABLE R7 K17 [{"Context", "Provider"}]
  SETTABLEKS R5 R7 K15 ["Context"]
  GETTABLEKS R8 R5 K16 ["Provider"]
  SETTABLEKS R8 R7 K16 ["Provider"]
  CALL R6 1 -1
  RETURN R6 -1
