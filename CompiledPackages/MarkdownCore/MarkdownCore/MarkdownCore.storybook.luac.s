MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["StoryMiddleware"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K2 ["Parent"]
  GETTABLEKS R4 R5 K6 ["Dev"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  DUPTABLE R3 K13 [{"name", "exclude", "storyRoots", "mapStory", "roact"}]
  LOADK R4 K14 ["MarkdownCore"]
  SETTABLEKS R4 R3 K8 ["name"]
  NEWTABLE R4 0 1
  LOADK R5 K15 ["_Index"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K9 ["exclude"]
  NEWTABLE R4 0 1
  MOVE R5 R0
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K10 ["storyRoots"]
  SETTABLEKS R1 R3 K11 ["mapStory"]
  SETTABLEKS R2 R3 K12 ["roact"]
  RETURN R3 1
