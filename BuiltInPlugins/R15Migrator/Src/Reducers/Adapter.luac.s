PROTO_0:
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
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Actions"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R3 K10 ["SetAdapted"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K12 ["AdapterTagging"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K13 ["getTaggedData"]
  CALL R7 0 2
  GETTABLEKS R9 R1 K14 ["createReducer"]
  DUPTABLE R10 K17 [{"adapted", "adaptedWithScripts"}]
  SETTABLEKS R7 R10 K15 ["adapted"]
  SETTABLEKS R8 R10 K16 ["adaptedWithScripts"]
  NEWTABLE R11 1 0
  GETTABLEKS R12 R4 K18 ["name"]
  DUPCLOSURE R13 K19 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  CALL R9 2 1
  RETURN R9 1
