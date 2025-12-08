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
  GETTABLEKS R4 R1 K8 ["ReactRoblox"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K9 ["StoryMiddleware"]
  CALL R4 1 1
  DUPTABLE R5 K15 [{"name", "roact", "reactRoblox", "storyRoots", "mapStory"}]
  LOADK R6 K2 ["StudioFoundation"]
  SETTABLEKS R6 R5 K10 ["name"]
  SETTABLEKS R2 R5 K11 ["roact"]
  SETTABLEKS R3 R5 K12 ["reactRoblox"]
  NEWTABLE R6 0 1
  MOVE R7 R0
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K13 ["storyRoots"]
  SETTABLEKS R4 R5 K14 ["mapStory"]
  RETURN R5 1
