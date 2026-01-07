MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Dialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ReactRoblox"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K9 ["Parent"]
  GETTABLEKS R4 R5 K10 ["StoryMiddleware"]
  CALL R3 1 1
  DUPTABLE R4 K16 [{"name", "storyRoots", "mapStory", "roact", "reactRoblox"}]
  LOADK R5 K2 ["Dialog"]
  SETTABLEKS R5 R4 K11 ["name"]
  NEWTABLE R5 0 1
  GETTABLEKS R7 R0 K17 ["Src"]
  GETTABLEKS R6 R7 K18 ["Components"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K12 ["storyRoots"]
  SETTABLEKS R3 R4 K13 ["mapStory"]
  SETTABLEKS R1 R4 K14 ["roact"]
  SETTABLEKS R2 R4 K15 ["reactRoblox"]
  RETURN R4 1
