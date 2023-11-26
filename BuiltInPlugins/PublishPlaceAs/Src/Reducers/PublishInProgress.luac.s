PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"publishInProgress"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["publishInProgress"]
  GETTABLEKS R7 R1 K2 ["publishInProgress"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["publishInProgress"]
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
  DUPTABLE R3 K9 [{"publishInProgress"}]
  DUPTABLE R4 K15 [{"universe", "place", "isPublish", "failCount", "requestInFlight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K10 ["universe"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["place"]
  LOADB R5 0
  SETTABLEKS R5 R4 K12 ["isPublish"]
  LOADN R5 0
  SETTABLEKS R5 R4 K13 ["failCount"]
  LOADB R5 0
  SETTABLEKS R5 R4 K14 ["requestInFlight"]
  SETTABLEKS R4 R3 K8 ["publishInProgress"]
  GETTABLEKS R4 R1 K16 ["createReducer"]
  MOVE R5 R3
  DUPTABLE R6 K18 [{"SetPublishInProgress"}]
  DUPCLOSURE R7 K19 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K17 ["SetPublishInProgress"]
  CALL R4 2 -1
  RETURN R4 -1
