PROTO_0:
  GETTABLEKS R2 R1 K0 ["enabled"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"mainSwitchEnabled"}]
  SETTABLEKS R2 R5 K3 ["mainSwitchEnabled"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
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
  GETTABLEKS R3 R2 K8 ["createReducer"]
  DUPTABLE R4 K10 [{"mainSwitchEnabled"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K9 ["mainSwitchEnabled"]
  DUPTABLE R5 K12 [{"OnPlayerEmulationEnabledChanged"}]
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K11 ["OnPlayerEmulationEnabledChanged"]
  CALL R3 2 -1
  RETURN R3 -1
