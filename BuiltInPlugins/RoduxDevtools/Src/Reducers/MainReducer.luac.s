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
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R3 R1 K7 ["combineReducers"]
  DUPTABLE R4 K11 [{"selectedIndex", "searchTerm", "events"}]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R2 K12 ["SelectedIndexReducer"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K8 ["selectedIndex"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R2 K13 ["SearchTermReducer"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K9 ["searchTerm"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R2 K14 ["EventsReducer"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K10 ["events"]
  CALL R3 1 1
  RETURN R3 1
