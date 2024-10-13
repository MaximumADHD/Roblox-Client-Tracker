PROTO_0:
  DUPTABLE R0 K1 [{"scaleBoundaries"}]
  DUPTABLE R1 K3 [{"boundaries"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K2 ["boundaries"]
  SETTABLEKS R1 R0 K0 ["scaleBoundaries"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  CALL R2 0 1
  RETURN R2 1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"scaleBoundaries"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["scaleBoundaries"]
  DUPTABLE R7 K5 [{"boundaries"}]
  GETTABLEKS R9 R1 K6 ["rulesData"]
  GETTABLEKS R8 R9 K7 ["scales"]
  SETTABLEKS R8 R7 K4 ["boundaries"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["scaleBoundaries"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
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
  DUPCLOSURE R3 K8 [PROTO_0]
  GETTABLEKS R4 R2 K9 ["createReducer"]
  MOVE R5 R3
  CALL R5 0 1
  DUPTABLE R6 K12 [{"ResetStore", "SettingsSaveScaleBoundaries"}]
  DUPCLOSURE R7 K13 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K10 ["ResetStore"]
  DUPCLOSURE R7 K14 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K11 ["SettingsSaveScaleBoundaries"]
  CALL R4 2 -1
  RETURN R4 -1
