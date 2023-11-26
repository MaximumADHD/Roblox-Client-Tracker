PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"selectedGroup"}]
  GETTABLEKS R5 R1 K2 ["selectedGroup"]
  SETTABLEKS R5 R4 K2 ["selectedGroup"]
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
  DUPTABLE R3 K9 [{"selectedGroup"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K8 ["selectedGroup"]
  GETTABLEKS R4 R1 K10 ["createReducer"]
  MOVE R5 R3
  DUPTABLE R6 K12 [{"SetSelectedGroup"}]
  DUPCLOSURE R7 K13 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K11 ["SetSelectedGroup"]
  CALL R4 2 -1
  RETURN R4 -1
