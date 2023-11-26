PROTO_0:
  GETTABLEKS R1 R0 K0 ["values"]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["valuesChanged"]
  RETURN R1 1

PROTO_2:
  NAMECALL R1 R0 K0 ["destroy"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["ContextServices"]
  GETTABLEKS R2 R3 K8 ["ContextItem"]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K9 ["TerrainInterfaces"]
  DUPTABLE R4 K21 [{"DEPRECATED_Theme", "Terrain", "PluginActivationController", "PluginActionsController", "TerrainGeneration", "TerrainImporter", "SeaLevel", "ImageLoader", "CalloutController", "ShorelineController", "SmoothVoxelsController"}]
  LOADK R7 K10 ["DEPRECATED_Theme"]
  DUPTABLE R8 K25 [{"getValues", "getChangedSignal", "destroy"}]
  DUPCLOSURE R9 K26 [PROTO_0]
  SETTABLEKS R9 R8 K22 ["getValues"]
  DUPCLOSURE R9 K27 [PROTO_1]
  SETTABLEKS R9 R8 K23 ["getChangedSignal"]
  DUPCLOSURE R9 K28 [PROTO_2]
  SETTABLEKS R9 R8 K24 ["destroy"]
  NAMECALL R5 R2 K29 ["createSimple"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K10 ["DEPRECATED_Theme"]
  LOADK R7 K11 ["Terrain"]
  NAMECALL R5 R2 K29 ["createSimple"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["Terrain"]
  GETIMPORT R5 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K30 ["Util"]
  GETTABLEKS R6 R7 K12 ["PluginActivationController"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K12 ["PluginActivationController"]
  GETIMPORT R5 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K30 ["Util"]
  GETTABLEKS R6 R7 K13 ["PluginActionsController"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K13 ["PluginActionsController"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R3 K31 ["TerrainGenerationInstance"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K14 ["TerrainGeneration"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R3 K32 ["TerrainImporterInstance"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K15 ["TerrainImporter"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R3 K33 ["TerrainSeaLevel"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K16 ["SeaLevel"]
  GETIMPORT R5 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K30 ["Util"]
  GETTABLEKS R6 R7 K17 ["ImageLoader"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K17 ["ImageLoader"]
  GETIMPORT R5 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K30 ["Util"]
  GETTABLEKS R6 R7 K18 ["CalloutController"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K18 ["CalloutController"]
  GETIMPORT R5 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K30 ["Util"]
  GETTABLEKS R6 R7 K19 ["ShorelineController"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K19 ["ShorelineController"]
  GETIMPORT R5 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K30 ["Util"]
  GETTABLEKS R6 R7 K20 ["SmoothVoxelsController"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K20 ["SmoothVoxelsController"]
  RETURN R4 1
