MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["types"]
  CALL R0 1 1
  DUPTABLE R1 K15 [{"isStorybookModule", "isStoryModule", "findStorybookModules", "findStoryModulesForStorybook", "findOrphanedStoryModules", "loadStoryModule", "loadStorybookModule", "render", "useStory", "useStorybooks"}]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["isStoryModule"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K5 ["isStorybookModule"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["isStoryModule"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["isStoryModule"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K7 ["findStorybookModules"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["findStorybookModules"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K8 ["findStoryModulesForStorybook"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K8 ["findStoryModulesForStorybook"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K9 ["findOrphanedStoryModules"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K9 ["findOrphanedStoryModules"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K10 ["loadStoryModule"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K10 ["loadStoryModule"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K11 ["loadStorybookModule"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K11 ["loadStorybookModule"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K12 ["render"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K12 ["render"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K16 ["hooks"]
  GETTABLEKS R3 R4 K13 ["useStory"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K13 ["useStory"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K16 ["hooks"]
  GETTABLEKS R3 R4 K14 ["useStorybooks"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K14 ["useStorybooks"]
  RETURN R1 1
