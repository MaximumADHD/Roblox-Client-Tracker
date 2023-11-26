PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"isActive"}]
  GETTABLEKS R5 R1 K2 ["isActive"]
  SETTABLEKS R5 R4 K2 ["isActive"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"message"}]
  GETTABLEKS R5 R1 K2 ["message"]
  SETTABLEKS R5 R4 K2 ["message"]
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
  GETTABLEKS R3 R1 K8 ["createReducer"]
  DUPTABLE R4 K11 [{"isActive", "message"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K9 ["isActive"]
  LOADK R5 K12 [""]
  SETTABLEKS R5 R4 K10 ["message"]
  DUPTABLE R5 K15 [{"SetControlsPanelBlockerActivity", "SetControlsPanelBlockerMessage"}]
  DUPCLOSURE R6 K16 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K13 ["SetControlsPanelBlockerActivity"]
  DUPCLOSURE R6 K17 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K14 ["SetControlsPanelBlockerMessage"]
  CALL R3 2 -1
  RETURN R3 -1
