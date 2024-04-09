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
  DUPTABLE R0 K6 [{"activityHistoryClient", "showSaveOrPublishPlaceToRobloxFn", "useCollaborators", "usePlaceAndUniverseId", "openBrowserLink", "contextType"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activityHistoryClient"]
  SETTABLEKS R1 R0 K0 ["activityHistoryClient"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["showSaveOrPublishPlaceToRobloxFn"]
  JUMPIF R1 [+1]
  DUPCLOSURE R1 K7 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["showSaveOrPublishPlaceToRobloxFn"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["useCollaborators"]
  JUMPIF R1 [+2]
  DUPCLOSURE R1 K8 [PROTO_1]
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K2 ["useCollaborators"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["usePlaceAndUniverseId"]
  JUMPIF R1 [+1]
  DUPCLOSURE R1 K9 [PROTO_2]
  SETTABLEKS R1 R0 K3 ["usePlaceAndUniverseId"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["openBrowserLink"]
  JUMPIF R1 [+1]
  DUPCLOSURE R1 K10 [PROTO_3]
  SETTABLEKS R1 R0 K4 ["openBrowserLink"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["contextType"]
  SETTABLEKS R1 R0 K5 ["contextType"]
  RETURN R0 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useMemo"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWTABLE R3 0 6
  GETTABLEKS R4 R0 K1 ["activityHistoryClient"]
  GETTABLEKS R5 R0 K2 ["showSaveOrPublishPlaceToRobloxFn"]
  GETTABLEKS R6 R0 K3 ["openBrowserLink"]
  GETTABLEKS R7 R0 K4 ["contextType"]
  GETTABLEKS R8 R0 K5 ["useCollaborators"]
  GETTABLEKS R9 R0 K6 ["usePlaceAndUniverseId"]
  SETLIST R3 R4 6 [1]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K8 ["Provider"]
  DUPTABLE R4 K10 [{"value"}]
  SETTABLEKS R1 R4 K9 ["value"]
  GETTABLEKS R5 R0 K11 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETTABLEKS R5 R6 K10 ["Contexts"]
  GETTABLEKS R4 R5 K11 ["ActivityHistoryContext"]
  CALL R3 1 1
  NEWTABLE R4 0 0
  DUPCLOSURE R5 K12 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R5 1
