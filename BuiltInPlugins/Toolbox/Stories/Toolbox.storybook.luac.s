MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R1 K6 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K7 ["UI"]
  GETTABLEKS R3 R4 K8 ["Stories"]
  GETTABLEKS R2 R3 K9 ["getStoryMiddleware"]
  CALL R2 0 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K10 ["Roact"]
  CALL R3 1 1
  DUPTABLE R4 K15 [{"name", "mapStory", "storyRoots", "roact"}]
  LOADK R5 K16 ["Toolbox"]
  SETTABLEKS R5 R4 K11 ["name"]
  SETTABLEKS R2 R4 K12 ["mapStory"]
  NEWTABLE R5 0 2
  GETTABLEKS R6 R0 K8 ["Stories"]
  GETTABLEKS R8 R0 K17 ["Core"]
  GETTABLEKS R7 R8 K18 ["Components"]
  SETLIST R5 R6 2 [1]
  SETTABLEKS R5 R4 K13 ["storyRoots"]
  SETTABLEKS R3 R4 K14 ["roact"]
  RETURN R4 1
