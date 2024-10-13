PROTO_0:
  GETUPVAL R2 0
  RETURN R2 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"templates"}]
  GETTABLEKS R5 R1 K4 ["templatesArrayToAdd"]
  SETTABLEKS R5 R4 K2 ["templates"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"templates"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["immutableSetExistingDictionaryEntry"]
  GETTABLEKS R6 R0 K2 ["templates"]
  GETTABLEKS R7 R1 K5 ["templateToClobber"]
  GETTABLEKS R8 R1 K6 ["newTemplateModel"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K2 ["templates"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R1 K5 ["Packages"]
  GETTABLEKS R3 R4 K6 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R1 K5 ["Packages"]
  GETTABLEKS R4 R5 K7 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K8 ["Util"]
  GETTABLEKS R5 R6 K9 ["UtilityFunctionsTable"]
  CALL R4 1 1
  DUPTABLE R5 K11 [{"templates"}]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K10 ["templates"]
  GETTABLEKS R6 R3 K12 ["createReducer"]
  MOVE R7 R5
  DUPTABLE R8 K16 [{"ResetStore", "TemplatesAdd", "TemplatesClobberTemplate"}]
  DUPCLOSURE R9 K17 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K13 ["ResetStore"]
  DUPCLOSURE R9 K18 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K14 ["TemplatesAdd"]
  DUPCLOSURE R9 K19 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K15 ["TemplatesClobberTemplate"]
  CALL R6 2 -1
  RETURN R6 -1
