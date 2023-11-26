MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K3 ["Reducers"]
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["SelectedIndexReducer"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R0 K7 ["SearchTermReducer"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R0 K8 ["EventsReducer"]
  CALL R3 1 1
  NEWTABLE R4 0 0
  RETURN R4 1
