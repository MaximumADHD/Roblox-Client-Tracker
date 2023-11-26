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
  GETTABLEKS R3 R4 K9 ["GameMetadata"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Reducers"]
  GETTABLEKS R4 R5 K10 ["GameOwnerMetadata"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K7 ["Src"]
  GETTABLEKS R6 R7 K8 ["Reducers"]
  GETTABLEKS R5 R6 K11 ["PageLoadState"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K7 ["Src"]
  GETTABLEKS R7 R8 K8 ["Reducers"]
  GETTABLEKS R6 R7 K12 ["PageSaveState"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K7 ["Src"]
  GETTABLEKS R8 R9 K8 ["Reducers"]
  GETTABLEKS R7 R8 K13 ["Settings"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K7 ["Src"]
  GETTABLEKS R9 R10 K8 ["Reducers"]
  GETTABLEKS R8 R9 K14 ["Status"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K7 ["Src"]
  GETTABLEKS R10 R11 K8 ["Reducers"]
  GETTABLEKS R9 R10 K15 ["ComponentLoadState"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K7 ["Src"]
  GETTABLEKS R11 R12 K8 ["Reducers"]
  GETTABLEKS R10 R11 K16 ["EditAsset"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R14 R0 K17 ["Pages"]
  GETTABLEKS R13 R14 K18 ["PermissionsPage"]
  GETTABLEKS R12 R13 K8 ["Reducers"]
  GETTABLEKS R11 R12 K19 ["CollaboratorSearch"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R15 R0 K17 ["Pages"]
  GETTABLEKS R14 R15 K20 ["AvatarPage"]
  GETTABLEKS R13 R14 K8 ["Reducers"]
  GETTABLEKS R12 R13 K21 ["MorpherEditorRoot"]
  CALL R11 1 1
  GETTABLEKS R12 R1 K22 ["combineReducers"]
  DUPTABLE R13 K24 [{"Settings", "Status", "MorpherEditorRoot", "CollaboratorSearch", "PageLoadState", "PageSaveState", "Metadata", "GameOwnerMetadata", "EditAsset", "ComponentLoadState"}]
  SETTABLEKS R6 R13 K13 ["Settings"]
  SETTABLEKS R7 R13 K14 ["Status"]
  SETTABLEKS R11 R13 K21 ["MorpherEditorRoot"]
  SETTABLEKS R10 R13 K19 ["CollaboratorSearch"]
  SETTABLEKS R4 R13 K11 ["PageLoadState"]
  SETTABLEKS R5 R13 K12 ["PageSaveState"]
  SETTABLEKS R2 R13 K23 ["Metadata"]
  SETTABLEKS R3 R13 K10 ["GameOwnerMetadata"]
  SETTABLEKS R9 R13 K16 ["EditAsset"]
  SETTABLEKS R8 R13 K15 ["ComponentLoadState"]
  CALL R12 1 -1
  RETURN R12 -1
