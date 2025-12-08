MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Flags"]
  GETTABLEKS R3 R4 K9 ["getFFlagLuaExplorerUseRDLColors"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K12 [".Explorer-LoadingSpinner"]
  NEWTABLE R6 0 0
  NEWTABLE R7 0 1
  MOVE R8 R3
  LOADK R9 K13 [">> .Explorer-LoadingSpinner-Background"]
  DUPTABLE R10 K15 [{"BackgroundColor3"}]
  MOVE R12 R2
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADK R11 K16 ["$RDLSemanticColorSurface100"]
  JUMP [+1]
  LOADK R11 K17 ["$LegacyMainBackground"]
  SETTABLEKS R11 R10 K14 ["BackgroundColor3"]
  NEWTABLE R11 0 1
  MOVE R12 R3
  LOADK R13 K18 [".Explorer-SelectionKind-Selected"]
  DUPTABLE R14 K15 [{"BackgroundColor3"}]
  LOADK R15 K19 ["$ExplorerSelected"]
  SETTABLEKS R15 R14 K14 ["BackgroundColor3"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
