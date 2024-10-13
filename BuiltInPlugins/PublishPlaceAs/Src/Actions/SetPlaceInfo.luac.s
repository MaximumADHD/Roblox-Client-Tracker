PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["assertNullableType"]
  MOVE R2 R0
  LOADK R3 K1 ["table"]
  LOADK R4 K2 ["SetPlaceInfo arg"]
  CALL R1 3 0
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  GETTABLEKS R2 R1 K3 ["places"]
  GETTABLEKS R3 R1 K4 ["nextPageCursor"]
  GETTABLEKS R4 R1 K5 ["previousPageCursor"]
  GETTABLEKS R5 R1 K6 ["parentGame"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["assertType"]
  MOVE R7 R2
  LOADK R8 K1 ["table"]
  LOADK R9 K8 ["SetPlaceInfo.places"]
  CALL R6 3 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["assertNullableType"]
  MOVE R7 R3
  LOADK R8 K9 ["string"]
  LOADK R9 K10 ["SetPlaceInfo.nextPageCursor"]
  CALL R6 3 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["assertNullableType"]
  MOVE R7 R4
  LOADK R8 K9 ["string"]
  LOADK R9 K11 ["SetPlaceInfo.previousPageCursor"]
  CALL R6 3 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["assertNullableType"]
  MOVE R7 R5
  LOADK R8 K1 ["table"]
  LOADK R9 K12 ["SetPlaceInfo.parentGame { name : String, universeId : Number }"]
  CALL R6 3 0
  JUMPIFEQKNIL R5 [+17]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["assertType"]
  GETTABLEKS R7 R5 K13 ["name"]
  LOADK R8 K9 ["string"]
  LOADK R9 K14 ["SetPlaceInfo.parentGame.name"]
  CALL R6 3 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["assertType"]
  GETTABLEKS R7 R5 K15 ["universeId"]
  LOADK R8 K16 ["number"]
  LOADK R9 K17 ["SetPlaceInfo.parentGame.universeId"]
  CALL R6 3 0
  DUPTABLE R6 K19 [{"placeInfo"}]
  DUPTABLE R7 K21 [{"places", "queryState", "nextPageCursor", "previousPageCursor", "parentGame"}]
  SETTABLEKS R2 R7 K3 ["places"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K22 ["QUERY_STATE"]
  GETTABLEKS R8 R9 K23 ["QUERY_STATE_SUCCESS"]
  SETTABLEKS R8 R7 K20 ["queryState"]
  MOVE R8 R3
  JUMPIF R8 [+3]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K24 ["None"]
  SETTABLEKS R8 R7 K4 ["nextPageCursor"]
  MOVE R8 R4
  JUMPIF R8 [+3]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K24 ["None"]
  SETTABLEKS R8 R7 K5 ["previousPageCursor"]
  MOVE R8 R5
  JUMPIF R8 [+3]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K24 ["None"]
  SETTABLEKS R8 R7 K6 ["parentGame"]
  SETTABLEKS R7 R6 K18 ["placeInfo"]
  RETURN R6 1

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
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["AssertType"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K12 ["Action"]
  CALL R4 1 1
  MOVE R5 R4
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K13 ["Name"]
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  CALL R5 2 -1
  RETURN R5 -1
