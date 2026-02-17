MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R1 K5 ["MarkdownCore"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K6 ["StoryMiddleware"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R1 K7 ["Dev"]
  GETTABLEKS R4 R5 K8 ["Roact"]
  CALL R3 1 1
  DUPTABLE R4 K14 [{"name", "exclude", "storyRoots", "mapStory", "roact"}]
  LOADK R5 K15 ["InlineLayout"]
  SETTABLEKS R5 R4 K9 ["name"]
  NEWTABLE R5 0 1
  LOADK R6 K16 ["_Index"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K10 ["exclude"]
  NEWTABLE R5 0 1
  MOVE R6 R0
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K11 ["storyRoots"]
  SETTABLEKS R2 R4 K12 ["mapStory"]
  SETTABLEKS R3 R4 K13 ["roact"]
  RETURN R4 1
