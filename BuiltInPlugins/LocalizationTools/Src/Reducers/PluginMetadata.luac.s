PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K4 [{"AllLanguages", "LocalesToLanguages"}]
  GETTABLEKS R5 R1 K5 ["allLanguages"]
  SETTABLEKS R5 R4 K2 ["AllLanguages"]
  GETTABLEKS R5 R1 K6 ["localesToLanguages"]
  SETTABLEKS R5 R4 K3 ["LocalesToLanguages"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"CanManageTranslation"}]
  GETTABLEKS R5 R1 K4 ["canManageTranslation"]
  SETTABLEKS R5 R4 K2 ["CanManageTranslation"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"CloudTableId"}]
  GETTABLEKS R5 R1 K4 ["cloudTableId"]
  SETTABLEKS R5 R4 K2 ["CloudTableId"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["createReducer"]
  DUPTABLE R4 K13 [{"AllLanguages", "LocalesToLanguages", "CanManageTranslation", "CloudTableId"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K9 ["AllLanguages"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K10 ["LocalesToLanguages"]
  LOADNIL R5
  SETTABLEKS R5 R4 K11 ["CanManageTranslation"]
  LOADK R5 K14 [""]
  SETTABLEKS R5 R4 K12 ["CloudTableId"]
  DUPTABLE R5 K18 [{"LoadLanguagesAndLocalesInfo", "LoadManageTranslationPermission", "SetCloudTableId"}]
  DUPCLOSURE R6 K19 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K15 ["LoadLanguagesAndLocalesInfo"]
  DUPCLOSURE R6 K20 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K16 ["LoadManageTranslationPermission"]
  DUPCLOSURE R6 K21 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K17 ["SetCloudTableId"]
  CALL R3 2 -1
  RETURN R3 -1
