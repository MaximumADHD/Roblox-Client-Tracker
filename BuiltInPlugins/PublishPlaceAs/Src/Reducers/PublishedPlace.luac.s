PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"isPublishing"}]
  GETTABLEKS R5 R1 K2 ["isPublishing"]
  SETTABLEKS R5 R4 K2 ["isPublishing"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"publishInfo"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["publishInfo"]
  GETTABLEKS R7 R1 K2 ["publishInfo"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["publishInfo"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K4 [{"publishInfo", "isPublishing"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["publishInfo"]
  GETTABLEKS R7 R1 K2 ["publishInfo"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["publishInfo"]
  GETTABLEKS R5 R1 K3 ["isPublishing"]
  SETTABLEKS R5 R4 K3 ["isPublishing"]
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
  DUPTABLE R3 K10 [{"isPublishing", "publishInfo"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["isPublishing"]
  DUPTABLE R4 K17 [{"id", "name", "parentGameName", "parentGameId", "settings", "message"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K11 ["id"]
  LOADK R5 K18 [""]
  SETTABLEKS R5 R4 K12 ["name"]
  LOADK R5 K18 [""]
  SETTABLEKS R5 R4 K13 ["parentGameName"]
  LOADN R5 0
  SETTABLEKS R5 R4 K14 ["parentGameId"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K15 ["settings"]
  LOADK R5 K18 [""]
  SETTABLEKS R5 R4 K16 ["message"]
  SETTABLEKS R4 R3 K9 ["publishInfo"]
  GETTABLEKS R4 R1 K19 ["createReducer"]
  MOVE R5 R3
  DUPTABLE R6 K23 [{"SetIsPublishing", "SetPublishInfo", "ResetInfo"}]
  DUPCLOSURE R7 K24 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K20 ["SetIsPublishing"]
  DUPCLOSURE R7 K25 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K21 ["SetPublishInfo"]
  DUPCLOSURE R7 K26 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K22 ["ResetInfo"]
  CALL R4 2 -1
  RETURN R4 -1
