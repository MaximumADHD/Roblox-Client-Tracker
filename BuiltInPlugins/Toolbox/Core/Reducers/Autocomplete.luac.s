PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"autocompleteResults"}]
  GETTABLEKS R5 R1 K2 ["autocompleteResults"]
  SETTABLEKS R5 R4 K2 ["autocompleteResults"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Core"]
  GETTABLEKS R6 R7 K9 ["Actions"]
  GETTABLEKS R5 R6 K10 ["SetAutocompleteResults"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K11 ["createReducer"]
  DUPTABLE R6 K13 [{"autocompleteResults"}]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K12 ["autocompleteResults"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R4 K14 ["name"]
  DUPCLOSURE R9 K15 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R9 R7 R8
  CALL R5 2 -1
  RETURN R5 -1
