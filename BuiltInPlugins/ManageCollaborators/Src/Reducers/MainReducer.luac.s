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
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Permissions"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K8 ["GranularPermissions"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K9 ["GroupMetadata"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K10 ["GroupRolePermissions"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K11 ["GameOwnerMetadata"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K2 ["Parent"]
  GETTABLEKS R8 R9 K12 ["CollaboratorSearch"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K13 ["LoadState"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K14 ["SaveState"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K15 ["FilterPills"]
  CALL R10 1 1
  LOADNIL R11
  GETIMPORT R12 K17 [game]
  LOADK R14 K18 ["Collab8766_LogCollabSearchItemClickedEventV2"]
  NAMECALL R12 R12 K19 ["GetFastFlag"]
  CALL R12 2 1
  JUMPIFNOT R12 [+10]
  GETIMPORT R13 K4 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K2 ["Parent"]
  GETTABLEKS R14 R15 K20 ["SearchItemLogs"]
  CALL R13 1 1
  MOVE R11 R13
  GETTABLEKS R13 R1 K21 ["combineReducers"]
  DUPTABLE R14 K22 [{"GameOwnerMetadata", "Permissions", "GranularPermissions", "GroupMetadata", "GroupRolePermissions", "CollaboratorSearch", "LoadState", "SaveState", "FilterPills", "SearchItemLogs"}]
  SETTABLEKS R6 R14 K11 ["GameOwnerMetadata"]
  SETTABLEKS R2 R14 K7 ["Permissions"]
  SETTABLEKS R3 R14 K8 ["GranularPermissions"]
  SETTABLEKS R4 R14 K9 ["GroupMetadata"]
  SETTABLEKS R5 R14 K10 ["GroupRolePermissions"]
  SETTABLEKS R7 R14 K12 ["CollaboratorSearch"]
  SETTABLEKS R8 R14 K13 ["LoadState"]
  SETTABLEKS R9 R14 K14 ["SaveState"]
  SETTABLEKS R10 R14 K15 ["FilterPills"]
  JUMPIFNOT R12 [+2]
  MOVE R15 R11
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K20 ["SearchItemLogs"]
  CALL R13 1 1
  RETURN R13 1
