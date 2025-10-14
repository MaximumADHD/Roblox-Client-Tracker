MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Middleware"]
  GETTABLEKS R2 R3 K6 ["StoryMiddleware"]
  CALL R1 1 1
  DUPTABLE R2 K11 [{"name", "exclude", "storyRoots", "mapStory"}]
  LOADK R3 K12 ["Markdown"]
  SETTABLEKS R3 R2 K7 ["name"]
  NEWTABLE R3 0 1
  LOADK R4 K13 ["_Index"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K8 ["exclude"]
  NEWTABLE R3 0 1
  MOVE R4 R0
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K9 ["storyRoots"]
  SETTABLEKS R1 R2 K10 ["mapStory"]
  RETURN R2 1
