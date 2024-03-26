PROTO_0:
  DUPTABLE R0 K3 [{"activityHistoryClient", "showSaveOrPublishPlaceToRobloxFn", "contextType"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activityHistoryClient"]
  SETTABLEKS R1 R0 K0 ["activityHistoryClient"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["showSaveOrPublishPlaceToRobloxFn"]
  SETTABLEKS R1 R0 K1 ["showSaveOrPublishPlaceToRobloxFn"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["contextType"]
  SETTABLEKS R1 R0 K2 ["contextType"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useMemo"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 3
  GETTABLEKS R4 R0 K1 ["activityHistoryClient"]
  GETTABLEKS R5 R0 K2 ["showSaveOrPublishPlaceToRobloxFn"]
  GETTABLEKS R6 R0 K3 ["contextType"]
  SETLIST R3 R4 3 [1]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["Provider"]
  DUPTABLE R4 K7 [{"value"}]
  SETTABLEKS R1 R4 K6 ["value"]
  GETTABLEKS R5 R0 K8 ["children"]
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
  DUPCLOSURE R4 K12 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R4 1
