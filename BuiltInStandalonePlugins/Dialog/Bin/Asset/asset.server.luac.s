MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Dialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["launch"]
  LOADK R3 K2 ["Dialog"]
  GETTABLEKS R4 R0 K9 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K10 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K12 [game]
  LOADK R4 K13 ["DebugEnableDialogStorybook"]
  LOADB R5 0
  NAMECALL R2 R2 K14 ["DefineFastFlag"]
  CALL R2 3 1
  JUMPIFNOT R2 [+42]
  GETIMPORT R3 K12 [game]
  LOADK R5 K15 ["ReplicatedStorage"]
  NAMECALL R3 R3 K16 ["GetService"]
  CALL R3 2 1
  LOADK R6 K2 ["Dialog"]
  NAMECALL R4 R3 K17 ["FindFirstChild"]
  CALL R4 2 1
  JUMPIFNOT R4 [+3]
  NAMECALL R5 R4 K18 ["Destroy"]
  CALL R5 1 0
  GETTABLEKS R9 R0 K6 ["Packages"]
  GETTABLEKS R8 R9 K20 ["_Index"]
  GETTABLEKS R7 R8 K21 ["DeveloperFramework"]
  GETTABLEKS R6 R7 K21 ["DeveloperFramework"]
  GETTABLEKS R5 R6 K19 ["DeveloperFramework.storybook"]
  NAMECALL R5 R5 K18 ["Destroy"]
  CALL R5 1 0
  SETTABLEKS R3 R0 K22 ["Parent"]
  GETIMPORT R5 K25 [Instance.new]
  LOADK R6 K26 ["ObjectValue"]
  CALL R5 1 1
  LOADK R6 K27 ["Plugin"]
  SETTABLEKS R6 R5 K28 ["Name"]
  GETIMPORT R6 K30 [plugin]
  SETTABLEKS R6 R5 K31 ["Value"]
  SETTABLEKS R0 R5 K22 ["Parent"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K32 ["Bin"]
  GETTABLEKS R5 R6 K33 ["Common"]
  GETTABLEKS R4 R5 K34 ["defineLuaFlags"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K35 ["getEngineFeatureStudioDialogManager"]
  CALL R4 0 1
  JUMPIF R4 [+1]
  RETURN R0 0
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K32 ["Bin"]
  GETTABLEKS R6 R7 K33 ["Common"]
  GETTABLEKS R5 R6 K36 ["pluginType"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K37 ["get"]
  CALL R5 0 1
  GETTABLEKS R6 R4 K38 ["Asset"]
  JUMPIFEQ R5 R6 [+2]
  RETURN R0 0
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K32 ["Bin"]
  GETTABLEKS R7 R8 K33 ["Common"]
  GETTABLEKS R6 R7 K39 ["setup"]
  CALL R5 1 1
  MOVE R6 R5
  GETIMPORT R7 K30 [plugin]
  CALL R6 1 0
  RETURN R0 0
