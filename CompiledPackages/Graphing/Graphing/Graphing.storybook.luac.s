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
  GETTABLEKS R4 R1 K8 ["ReactRoblox"]
  CALL R3 1 1
  DUPTABLE R4 K13 [{"name", "storyRoots", "roact", "reactRoblox"}]
  LOADK R5 K2 ["Graphing"]
  SETTABLEKS R5 R4 K9 ["name"]
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K14 ["Components"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K10 ["storyRoots"]
  SETTABLEKS R2 R4 K11 ["roact"]
  SETTABLEKS R3 R4 K12 ["reactRoblox"]
  RETURN R4 1
