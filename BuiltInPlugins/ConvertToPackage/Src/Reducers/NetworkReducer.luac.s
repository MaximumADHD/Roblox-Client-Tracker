PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K4 [{"networkError", "networkErrorAction"}]
  GETTABLEKS R5 R1 K5 ["response"]
  SETTABLEKS R5 R4 K2 ["networkError"]
  GETTABLEKS R5 R1 K3 ["networkErrorAction"]
  SETTABLEKS R5 R4 K3 ["networkErrorAction"]
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
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Actions"]
  GETTABLEKS R5 R6 K10 ["NetworkError"]
  CALL R4 1 1
  DUPTABLE R5 K13 [{"networkError", "networkErrorAction"}]
  LOADNIL R6
  SETTABLEKS R6 R5 K11 ["networkError"]
  LOADNIL R6
  SETTABLEKS R6 R5 K12 ["networkErrorAction"]
  GETTABLEKS R6 R3 K14 ["createReducer"]
  MOVE R7 R5
  NEWTABLE R8 1 0
  GETTABLEKS R9 R4 K15 ["name"]
  DUPCLOSURE R10 K16 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R10 R8 R9
  CALL R6 2 -1
  RETURN R6 -1
