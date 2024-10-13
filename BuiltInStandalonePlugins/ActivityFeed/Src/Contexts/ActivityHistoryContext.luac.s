PROTO_0:
  RETURN R0 0

PROTO_1:
  LOADNIL R0
  RETURN R0 1

PROTO_2:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_3:
  LOADN R0 0
  LOADN R1 0
  RETURN R0 2

PROTO_4:
  LOADN R0 0
  LOADN R1 0
  RETURN R0 2

PROTO_5:
  RETURN R0 0

PROTO_6:
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
  GETTABLEKS R3 R4 K9 ["MockActivityHistoryClient"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["SharedTypes"]
  CALL R3 1 1
  NEWTABLE R4 0 0
  DUPTABLE R5 K21 [{"activityHistoryClient", "showSaveOrPublishPlaceToRobloxFn", "getActivityHistoryManager", "useCollaborators", "DEPRECATED_usePlaceAndUniverseId", "usePlaceAndUniverseId", "useConnectToDataModelSessionEffect", "openBrowserLink", "contextType"}]
  SETTABLEKS R2 R5 K12 ["activityHistoryClient"]
  DUPCLOSURE R6 K22 [PROTO_0]
  SETTABLEKS R6 R5 K13 ["showSaveOrPublishPlaceToRobloxFn"]
  DUPCLOSURE R6 K23 [PROTO_1]
  SETTABLEKS R6 R5 K14 ["getActivityHistoryManager"]
  DUPCLOSURE R6 K24 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K15 ["useCollaborators"]
  DUPCLOSURE R6 K25 [PROTO_3]
  SETTABLEKS R6 R5 K16 ["DEPRECATED_usePlaceAndUniverseId"]
  DUPCLOSURE R6 K26 [PROTO_4]
  SETTABLEKS R6 R5 K17 ["usePlaceAndUniverseId"]
  DUPCLOSURE R6 K27 [PROTO_5]
  SETTABLEKS R6 R5 K18 ["useConnectToDataModelSessionEffect"]
  DUPCLOSURE R6 K28 [PROTO_6]
  SETTABLEKS R6 R5 K19 ["openBrowserLink"]
  LOADK R6 K29 ["mock context (default)"]
  SETTABLEKS R6 R5 K20 ["contextType"]
  GETTABLEKS R6 R1 K30 ["createContext"]
  MOVE R7 R5
  CALL R6 1 1
  RETURN R6 1
