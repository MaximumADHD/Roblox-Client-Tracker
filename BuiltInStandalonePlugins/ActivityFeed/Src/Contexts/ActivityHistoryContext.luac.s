PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_2:
  LOADN R0 0
  LOADN R1 0
  RETURN R0 2

PROTO_3:
  RETURN R0 0

PROTO_4:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Clients"]
  GETTABLEKS R3 R4 K9 ["ActivityHistoryClient"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Clients"]
  GETTABLEKS R4 R5 K10 ["MockActivityHistoryClient"]
  CALL R3 1 1
  NEWTABLE R4 0 0
  DUPTABLE R5 K18 [{"activityHistoryClient", "showSaveOrPublishPlaceToRobloxFn", "useCollaborators", "usePlaceAndUniverseId", "useConnectToDataModelSessionEffect", "openBrowserLink", "contextType"}]
  SETTABLEKS R3 R5 K11 ["activityHistoryClient"]
  DUPCLOSURE R6 K19 [PROTO_0]
  SETTABLEKS R6 R5 K12 ["showSaveOrPublishPlaceToRobloxFn"]
  DUPCLOSURE R6 K20 [PROTO_1]
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K13 ["useCollaborators"]
  DUPCLOSURE R6 K21 [PROTO_2]
  SETTABLEKS R6 R5 K14 ["usePlaceAndUniverseId"]
  DUPCLOSURE R6 K22 [PROTO_3]
  SETTABLEKS R6 R5 K15 ["useConnectToDataModelSessionEffect"]
  DUPCLOSURE R6 K23 [PROTO_4]
  SETTABLEKS R6 R5 K16 ["openBrowserLink"]
  LOADK R6 K24 ["mock context (default)"]
  SETTABLEKS R6 R5 K17 ["contextType"]
  GETTABLEKS R6 R1 K25 ["createContext"]
  MOVE R7 R5
  CALL R6 1 1
  RETURN R6 1
