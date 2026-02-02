MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Fields"]
  GETTABLEKS R2 R3 K7 ["FieldTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Flags"]
  GETTABLEKS R3 R4 K9 ["getFFlagBehaviorVisualState"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Flags"]
  GETTABLEKS R4 R5 K10 ["getFFlagEnableReimport"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Flags"]
  GETTABLEKS R5 R6 K11 ["getFFlagLuaExplorerFileSync"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K8 ["Flags"]
  GETTABLEKS R6 R7 K12 ["getFFlagLuaExplorerHierarchySync"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K8 ["Flags"]
  GETTABLEKS R7 R8 K13 ["getFFlagLuaExplorerPackages"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K8 ["Flags"]
  GETTABLEKS R8 R9 K14 ["getFFlagSimCsgEnableNewStudioButtons"]
  CALL R7 1 1
  NEWTABLE R8 8 0
  GETIMPORT R9 K1 [script]
  NAMECALL R9 R9 K15 ["GetChildren"]
  CALL R9 1 3
  FORGPREP R9
  LOADK R17 K16 ["ModuleScript"]
  NAMECALL R15 R13 K17 ["IsA"]
  CALL R15 2 1
  FASTCALL2K ASSERT R15 K18 [+4]
  LOADK R16 K18 ["All children of AllFields must be a ModuleScript"]
  GETIMPORT R14 K20 [assert]
  CALL R14 2 0
  GETIMPORT R14 K5 [require]
  MOVE R15 R13
  CALL R14 1 1
  GETTABLEKS R15 R14 K21 ["key"]
  SETTABLE R14 R8 R15
  FORGLOOP R9 2 [-18]
  MOVE R9 R6
  CALL R9 0 1
  JUMPIF R9 [+3]
  LOADNIL R9
  SETTABLEKS R9 R8 K22 ["packageStatus"]
  MOVE R9 R4
  CALL R9 0 1
  JUMPIF R9 [+6]
  MOVE R9 R5
  CALL R9 0 1
  JUMPIF R9 [+3]
  LOADNIL R9
  SETTABLEKS R9 R8 K23 ["liveSyncStatus"]
  MOVE R9 R2
  CALL R9 0 1
  JUMPIF R9 [+3]
  LOADNIL R9
  SETTABLEKS R9 R8 K24 ["isAuroraDisabled"]
  MOVE R9 R3
  CALL R9 0 1
  JUMPIF R9 [+3]
  LOADNIL R9
  SETTABLEKS R9 R8 K25 ["reimportStatus"]
  MOVE R9 R7
  CALL R9 0 1
  JUMPIF R9 [+3]
  LOADNIL R9
  SETTABLEKS R9 R8 K26 ["negateSelection"]
  RETURN R8 1
