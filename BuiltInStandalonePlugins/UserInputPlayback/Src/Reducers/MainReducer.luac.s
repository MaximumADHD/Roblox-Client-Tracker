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
  GETTABLEKS R3 R4 K9 ["RecordTabReducer"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Reducers"]
  GETTABLEKS R4 R5 K10 ["PlaybackTabReducer"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K7 ["Src"]
  GETTABLEKS R6 R7 K8 ["Reducers"]
  GETTABLEKS R5 R6 K11 ["EventTypeEnabledReducer"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K7 ["Src"]
  GETTABLEKS R7 R8 K8 ["Reducers"]
  GETTABLEKS R6 R7 K12 ["CommonReducer"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K13 ["combineReducers"]
  DUPTABLE R7 K19 [{"recordTab", "recordTabFilter", "playbackTab", "playbackTabFilter", "common"}]
  SETTABLEKS R2 R7 K14 ["recordTab"]
  GETTABLEKS R8 R4 K20 ["makeReducerForName"]
  LOADK R9 K15 ["recordTabFilter"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K15 ["recordTabFilter"]
  SETTABLEKS R3 R7 K16 ["playbackTab"]
  GETTABLEKS R8 R4 K20 ["makeReducerForName"]
  LOADK R9 K17 ["playbackTabFilter"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K17 ["playbackTabFilter"]
  SETTABLEKS R5 R7 K18 ["common"]
  CALL R6 1 1
  RETURN R6 1
