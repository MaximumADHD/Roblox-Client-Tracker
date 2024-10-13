PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"prebuiltAssetsInfo"}]
  GETTABLEKS R5 R1 K2 ["prebuiltAssetsInfo"]
  SETTABLEKS R5 R4 K2 ["prebuiltAssetsInfo"]
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
  DUPTABLE R4 K10 [{"prebuiltAssetsInfo"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K9 ["prebuiltAssetsInfo"]
  DUPTABLE R5 K12 [{"SetPrebuiltAssetsInfo"}]
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K11 ["SetPrebuiltAssetsInfo"]
  CALL R3 2 -1
  RETURN R3 -1
