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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Flags"]
  GETTABLEKS R3 R4 K9 ["getFFlagTerrainEditorAdvancedNoiseValidation"]
  CALL R2 1 1
  DUPTABLE R3 K23 [{"BrushSize", "Button", "ConfirmGeneration", "DelayedSlider", "Label", "Image", "Material", "MaterialRanges", "MultiSelection", "PlaneLock", "Seed", "TerrainType", "Upgrade"}]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K10 ["BrushSize"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["BrushSize"]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K11 ["Button"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["Button"]
  MOVE R5 R1
  CALL R5 0 1
  JUMPIFNOT R5 [+8]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K12 ["ConfirmGeneration"]
  CALL R4 1 1
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K12 ["ConfirmGeneration"]
  MOVE R5 R1
  CALL R5 0 1
  JUMPIFNOT R5 [+8]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K13 ["DelayedSlider"]
  CALL R4 1 1
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K13 ["DelayedSlider"]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K14 ["Label"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["Label"]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K15 ["Image"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["Image"]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K16 ["Material"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["Material"]
  MOVE R5 R1
  CALL R5 0 1
  JUMPIFNOT R5 [+8]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K17 ["MaterialRanges"]
  CALL R4 1 1
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K17 ["MaterialRanges"]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K18 ["MultiSelection"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K18 ["MultiSelection"]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K19 ["PlaneLock"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K19 ["PlaneLock"]
  MOVE R5 R2
  CALL R5 0 1
  JUMPIFNOT R5 [+8]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K20 ["Seed"]
  CALL R4 1 1
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K20 ["Seed"]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K21 ["TerrainType"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K21 ["TerrainType"]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K22 ["Upgrade"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K22 ["Upgrade"]
  RETURN R3 1
