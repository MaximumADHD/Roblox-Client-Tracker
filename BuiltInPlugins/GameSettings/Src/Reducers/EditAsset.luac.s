PROTO_0:
  GETUPVAL R2 0
  RETURN R2 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"editPlaceId"}]
  GETTABLEKS R5 R1 K2 ["editPlaceId"]
  SETTABLEKS R5 R4 K2 ["editPlaceId"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"editDevProductId"}]
  GETTABLEKS R6 R1 K2 ["editDevProductId"]
  JUMPIFEQKNIL R6 [+4]
  GETTABLEKS R5 R1 K2 ["editDevProductId"]
  JUMPIF R5 [+3]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["None"]
  SETTABLEKS R5 R4 K2 ["editDevProductId"]
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
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  DUPTABLE R3 K10 [{"editPlaceId", "editDevProductId"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K8 ["editPlaceId"]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["editDevProductId"]
  GETTABLEKS R4 R2 K11 ["createReducer"]
  MOVE R5 R3
  DUPTABLE R6 K15 [{"ResetStore", "SetEditPlaceId", "SetEditDevProductId"}]
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K12 ["ResetStore"]
  DUPCLOSURE R7 K17 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K13 ["SetEditPlaceId"]
  DUPCLOSURE R7 K18 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K14 ["SetEditDevProductId"]
  CALL R4 2 -1
  RETURN R4 -1
