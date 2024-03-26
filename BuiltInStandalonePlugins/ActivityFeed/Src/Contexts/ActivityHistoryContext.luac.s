PROTO_0:
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
  DUPTABLE R4 K14 [{"activityHistoryClient", "showSaveOrPublishPlaceToRobloxFn", "contextType"}]
  SETTABLEKS R3 R4 K11 ["activityHistoryClient"]
  DUPCLOSURE R5 K15 [PROTO_0]
  SETTABLEKS R5 R4 K12 ["showSaveOrPublishPlaceToRobloxFn"]
  LOADK R5 K16 ["mock context (default)"]
  SETTABLEKS R5 R4 K13 ["contextType"]
  GETTABLEKS R5 R1 K17 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  RETURN R5 1
