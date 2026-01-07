MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["ModuleLoader"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["t"]
  CALL R1 1 1
  NEWTABLE R2 2 0
  GETTABLEKS R3 R1 K7 ["interface"]
  DUPTABLE R4 K11 [{"storyRoots", "name", "packages"}]
  GETTABLEKS R5 R1 K12 ["array"]
  GETTABLEKS R6 R1 K13 ["Instance"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K8 ["storyRoots"]
  GETTABLEKS R5 R1 K14 ["optional"]
  GETTABLEKS R6 R1 K15 ["string"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K9 ["name"]
  GETTABLEKS R5 R1 K14 ["optional"]
  GETTABLEKS R6 R1 K16 ["map"]
  GETTABLEKS R7 R1 K15 ["string"]
  GETTABLEKS R8 R1 K17 ["any"]
  CALL R6 2 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K10 ["packages"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K18 ["IStorybook"]
  GETTABLEKS R3 R1 K7 ["interface"]
  DUPTABLE R4 K22 [{"story", "name", "summary", "controls", "packages"}]
  GETTABLEKS R5 R1 K17 ["any"]
  SETTABLEKS R5 R4 K19 ["story"]
  GETTABLEKS R5 R1 K14 ["optional"]
  GETTABLEKS R6 R1 K15 ["string"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K9 ["name"]
  GETTABLEKS R5 R1 K14 ["optional"]
  GETTABLEKS R6 R1 K15 ["string"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K20 ["summary"]
  GETTABLEKS R5 R1 K14 ["optional"]
  GETTABLEKS R6 R1 K16 ["map"]
  GETTABLEKS R7 R1 K15 ["string"]
  GETTABLEKS R8 R1 K17 ["any"]
  CALL R6 2 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K21 ["controls"]
  GETTABLEKS R5 R1 K14 ["optional"]
  GETTABLEKS R6 R1 K16 ["map"]
  GETTABLEKS R7 R1 K15 ["string"]
  GETTABLEKS R8 R1 K17 ["any"]
  CALL R6 2 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K10 ["packages"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K23 ["IStory"]
  RETURN R2 1
