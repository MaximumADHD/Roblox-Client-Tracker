MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K1 [script]
  LOADK R3 K3 ["Foundation"]
  NAMECALL R1 R1 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R2 R1 K2 ["Parent"]
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R0 K7 ["StoryMiddleware"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R2 K8 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R0 K9 ["GetStories"]
  CALL R5 1 1
  DUPTABLE R6 K15 [{"name", "group", "roact", "storyRoots", "mapStory"}]
  LOADK R7 K16 ["Public"]
  SETTABLEKS R7 R6 K10 ["name"]
  LOADK R7 K3 ["Foundation"]
  SETTABLEKS R7 R6 K11 ["group"]
  SETTABLEKS R4 R6 K12 ["roact"]
  MOVE R7 R5
  LOADB R8 1
  CALL R7 1 1
  SETTABLEKS R7 R6 K13 ["storyRoots"]
  SETTABLEKS R3 R6 K14 ["mapStory"]
  RETURN R6 1
