MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagTerrainEditorGenerationFeature"]
  CALL R1 1 1
  DUPTABLE R2 K22 [{"BrushSize", "Button", "ConfirmGeneration", "DelayedSlider", "Label", "Image", "Material", "MaterialRanges", "MultiSelection", "PlaneLock", "Seed", "TerrainType", "Upgrade"}]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K9 ["BrushSize"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K9 ["BrushSize"]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K10 ["Button"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K10 ["Button"]
  MOVE R4 R1
  CALL R4 0 1
  JUMPIFNOT R4 [+8]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K11 ["ConfirmGeneration"]
  CALL R3 1 1
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K11 ["ConfirmGeneration"]
  MOVE R4 R1
  CALL R4 0 1
  JUMPIFNOT R4 [+8]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K12 ["DelayedSlider"]
  CALL R3 1 1
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K12 ["DelayedSlider"]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K13 ["Label"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K13 ["Label"]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K14 ["Image"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K14 ["Image"]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K15 ["Material"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K15 ["Material"]
  MOVE R4 R1
  CALL R4 0 1
  JUMPIFNOT R4 [+8]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K16 ["MaterialRanges"]
  CALL R3 1 1
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K16 ["MaterialRanges"]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K17 ["MultiSelection"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K17 ["MultiSelection"]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K18 ["PlaneLock"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K18 ["PlaneLock"]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K19 ["Seed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K19 ["Seed"]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K20 ["TerrainType"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K20 ["TerrainType"]
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K21 ["Upgrade"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K21 ["Upgrade"]
  RETURN R2 1
