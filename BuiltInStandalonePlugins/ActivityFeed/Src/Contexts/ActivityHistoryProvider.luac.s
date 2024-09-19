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
  LOADN R0 0
  LOADN R1 0
  RETURN R0 2

PROTO_4:
  RETURN R0 0

PROTO_5:
  RETURN R0 0

PROTO_6:
  RETURN R0 0

PROTO_7:
  DUPTABLE R0 K9 [{"activityHistoryClient", "showSaveOrPublishPlaceToRobloxFn", "useCollaborators", "DEPRECATED_usePlaceAndUniverseId", "usePlaceAndUniverseId", "useConnectToDataModelSessionEffect", "openBrowserLink", "contextType", "getActivityHistoryManager"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activityHistoryClient"]
  SETTABLEKS R1 R0 K0 ["activityHistoryClient"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["showSaveOrPublishPlaceToRobloxFn"]
  JUMPIF R1 [+1]
  DUPCLOSURE R1 K10 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["showSaveOrPublishPlaceToRobloxFn"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["useCollaborators"]
  JUMPIF R1 [+2]
  DUPCLOSURE R1 K11 [PROTO_1]
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K2 ["useCollaborators"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["DEPRECATED_usePlaceAndUniverseId"]
  JUMPIF R1 [+1]
  DUPCLOSURE R1 K12 [PROTO_2]
  SETTABLEKS R1 R0 K3 ["DEPRECATED_usePlaceAndUniverseId"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["usePlaceAndUniverseId"]
  JUMPIF R1 [+1]
  DUPCLOSURE R1 K13 [PROTO_3]
  SETTABLEKS R1 R0 K4 ["usePlaceAndUniverseId"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["useConnectToDataModelSessionEffect"]
  JUMPIF R1 [+1]
  DUPCLOSURE R1 K14 [PROTO_4]
  SETTABLEKS R1 R0 K5 ["useConnectToDataModelSessionEffect"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["openBrowserLink"]
  JUMPIF R1 [+1]
  DUPCLOSURE R1 K15 [PROTO_5]
  SETTABLEKS R1 R0 K6 ["openBrowserLink"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["contextType"]
  SETTABLEKS R1 R0 K7 ["contextType"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["getActivityHistoryManager"]
  JUMPIF R1 [+1]
  DUPCLOSURE R1 K16 [PROTO_6]
  SETTABLEKS R1 R0 K8 ["getActivityHistoryManager"]
  RETURN R0 1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useMemo"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWTABLE R3 0 9
  GETTABLEKS R4 R0 K1 ["activityHistoryClient"]
  GETTABLEKS R5 R0 K2 ["showSaveOrPublishPlaceToRobloxFn"]
  GETTABLEKS R6 R0 K3 ["openBrowserLink"]
  GETTABLEKS R7 R0 K4 ["contextType"]
  GETTABLEKS R8 R0 K5 ["useCollaborators"]
  GETTABLEKS R9 R0 K6 ["DEPRECATED_usePlaceAndUniverseId"]
  GETTABLEKS R10 R0 K7 ["usePlaceAndUniverseId"]
  GETTABLEKS R11 R0 K8 ["useConnectToDataModelSessionEffect"]
  GETTABLEKS R12 R0 K9 ["getActivityHistoryManager"]
  SETLIST R3 R4 9 [1]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K11 ["Provider"]
  DUPTABLE R4 K13 [{"value"}]
  SETTABLEKS R1 R4 K12 ["value"]
  GETTABLEKS R5 R0 K14 ["children"]
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
  GETTABLEKS R4 R5 K8 ["Contexts"]
  GETTABLEKS R3 R4 K9 ["ActivityHistoryContext"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["SharedTypes"]
  CALL R3 1 1
  NEWTABLE R4 0 0
  DUPCLOSURE R5 K12 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R2
  RETURN R5 1
