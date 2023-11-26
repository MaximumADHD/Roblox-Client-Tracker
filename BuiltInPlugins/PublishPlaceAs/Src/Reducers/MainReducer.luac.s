MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Reducers"]
  GETTABLEKS R3 R4 K9 ["ExistingGame"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Reducers"]
  GETTABLEKS R4 R5 K10 ["NewGameSettings"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K7 ["Src"]
  GETTABLEKS R6 R7 K8 ["Reducers"]
  GETTABLEKS R5 R6 K11 ["Policy"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K7 ["Src"]
  GETTABLEKS R7 R8 K8 ["Reducers"]
  GETTABLEKS R6 R7 K12 ["PublishInProgress"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K7 ["Src"]
  GETTABLEKS R8 R9 K8 ["Reducers"]
  GETTABLEKS R7 R8 K13 ["PublishedPlace"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K7 ["Src"]
  GETTABLEKS R9 R10 K8 ["Reducers"]
  GETTABLEKS R8 R9 K14 ["Screen"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K7 ["Src"]
  GETTABLEKS R10 R11 K8 ["Reducers"]
  GETTABLEKS R9 R10 K15 ["GroupsHavePermission"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K7 ["Src"]
  GETTABLEKS R11 R12 K8 ["Reducers"]
  GETTABLEKS R10 R11 K16 ["SelectedGroup"]
  CALL R9 1 1
  GETTABLEKS R10 R1 K17 ["combineReducers"]
  DUPTABLE R11 K18 [{"Screen", "ExistingGame", "NewGameSettings", "PublishedPlace", "PublishInProgress", "GroupsHavePermission", "Policy", "SelectedGroup"}]
  SETTABLEKS R7 R11 K14 ["Screen"]
  SETTABLEKS R2 R11 K9 ["ExistingGame"]
  SETTABLEKS R3 R11 K10 ["NewGameSettings"]
  SETTABLEKS R6 R11 K13 ["PublishedPlace"]
  SETTABLEKS R5 R11 K12 ["PublishInProgress"]
  SETTABLEKS R8 R11 K15 ["GroupsHavePermission"]
  SETTABLEKS R4 R11 K11 ["Policy"]
  SETTABLEKS R9 R11 K16 ["SelectedGroup"]
  CALL R10 1 1
  RETURN R10 1
