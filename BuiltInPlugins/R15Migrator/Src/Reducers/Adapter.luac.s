PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getAdapterData"]
  CALL R0 0 2
  DUPTABLE R2 K3 [{"adapted", "adaptedWithScripts"}]
  SETTABLEKS R0 R2 K1 ["adapted"]
  SETTABLEKS R1 R2 K2 ["adaptedWithScripts"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K4 [{"adapted", "adaptedWithScripts"}]
  GETTABLEKS R5 R1 K2 ["adapted"]
  SETTABLEKS R5 R4 K2 ["adapted"]
  GETTABLEKS R5 R1 K3 ["adaptedWithScripts"]
  SETTABLEKS R5 R4 K3 ["adaptedWithScripts"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  MOVE R2 R0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["getAdapterData"]
  CALL R4 0 2
  DUPTABLE R3 K5 [{"adapted", "adaptedWithScripts"}]
  SETTABLEKS R4 R3 K3 ["adapted"]
  SETTABLEKS R5 R3 K4 ["adaptedWithScripts"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Actions"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K11 ["SetAdapted"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R3 K12 ["ResetAllAdapter"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K13 ["Modules"]
  GETTABLEKS R7 R8 K14 ["NpcManager"]
  CALL R6 1 1
  DUPCLOSURE R7 K15 [PROTO_0]
  CAPTURE VAL R6
  GETTABLEKS R8 R1 K16 ["createReducer"]
  GETTABLEKS R10 R6 K17 ["getAdapterData"]
  CALL R10 0 2
  DUPTABLE R9 K20 [{"adapted", "adaptedWithScripts"}]
  SETTABLEKS R10 R9 K18 ["adapted"]
  SETTABLEKS R11 R9 K19 ["adaptedWithScripts"]
  NEWTABLE R10 2 0
  GETTABLEKS R11 R4 K21 ["name"]
  DUPCLOSURE R12 K22 [PROTO_1]
  CAPTURE VAL R2
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R5 K21 ["name"]
  DUPCLOSURE R12 K23 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLE R12 R10 R11
  CALL R8 2 1
  RETURN R8 1
