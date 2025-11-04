PROTO_0:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["_plugin"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["_plugin"]
  JUMPIF R3 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["_plugin"]
  MOVE R5 R0
  DUPTABLE R6 K3 [{"Event", "Args"}]
  SETTABLEKS R1 R6 K1 ["Event"]
  MOVE R7 R2
  JUMPIF R7 [+2]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K2 ["Args"]
  NAMECALL R3 R3 K4 ["Invoke"]
  CALL R3 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_sendEventSafe"]
  LOADK R2 K1 ["SendAnalyticsEvent"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Insert"]
  MOVE R4 R0
  CALL R1 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_sendEventSafe"]
  LOADK R2 K1 ["SendAnalyticsEvent"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Search"]
  MOVE R4 R0
  CALL R1 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_sendEventSafe"]
  LOADK R2 K1 ["SendAnalyticsEvent"]
  LOADK R3 K2 ["insert_remains_30"]
  MOVE R4 R0
  CALL R1 3 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_sendEventSafe"]
  LOADK R2 K1 ["SendAnalyticsEvent"]
  LOADK R3 K2 ["insert_remains_120"]
  MOVE R4 R0
  CALL R1 3 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_sendEventSafe"]
  LOADK R2 K1 ["SendAnalyticsEvent"]
  LOADK R3 K2 ["insert_remains_600"]
  MOVE R4 R0
  CALL R1 3 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_sendEventSafe"]
  LOADK R2 K1 ["SendAnalyticsEvent"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Enabled"]
  MOVE R4 R0
  CALL R1 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_sendEventSafe"]
  LOADK R1 K1 ["SendAnalyticsEvent"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Upload"]
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GenerateGUID"]
  CALL R0 1 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K9 [game]
  LOADK R4 K10 ["HttpService"]
  NAMECALL R2 R2 K11 ["GetService"]
  CALL R2 2 1
  NEWTABLE R3 16 0
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K12 ["Enums"]
  DUPTABLE R4 K15 [{"RibbonClick", "GuiFocus"}]
  LOADK R5 K16 ["ribbon_click"]
  SETTABLEKS R5 R4 K13 ["RibbonClick"]
  LOADK R5 K17 ["gui_focus"]
  SETTABLEKS R5 R4 K14 ["GuiFocus"]
  GETTABLEKS R5 R3 K12 ["Enums"]
  SETTABLEKS R4 R5 K18 ["ActionType"]
  DUPTABLE R5 K23 [{"Drag", "RightClickCamera", "RightClickPosition", "DoubleClick"}]
  LOADK R6 K24 ["drag"]
  SETTABLEKS R6 R5 K19 ["Drag"]
  LOADK R6 K25 ["right_click_camera"]
  SETTABLEKS R6 R5 K20 ["RightClickCamera"]
  LOADK R6 K26 ["right_click_position"]
  SETTABLEKS R6 R5 K21 ["RightClickPosition"]
  LOADK R6 K27 ["double_click"]
  SETTABLEKS R6 R5 K22 ["DoubleClick"]
  GETTABLEKS R6 R3 K12 ["Enums"]
  SETTABLEKS R5 R6 K28 ["InsertType"]
  DUPTABLE R6 K31 [{"Browse", "Search"}]
  LOADK R7 K32 ["browse"]
  SETTABLEKS R7 R6 K29 ["Browse"]
  LOADK R7 K33 ["search"]
  SETTABLEKS R7 R6 K30 ["Search"]
  GETTABLEKS R7 R3 K12 ["Enums"]
  SETTABLEKS R6 R7 K34 ["InsertSource"]
  DUPTABLE R7 K37 [{"Grid", "List"}]
  LOADK R8 K38 ["grid"]
  SETTABLEKS R8 R7 K35 ["Grid"]
  LOADK R8 K39 ["list"]
  SETTABLEKS R8 R7 K36 ["List"]
  GETTABLEKS R8 R3 K12 ["Enums"]
  SETTABLEKS R7 R8 K40 ["ViewMode"]
  DUPTABLE R8 K47 [{"Enabled", "Search", "Upload", "Insert", "InsertRemains30", "InsertRemains120", "InsertRemains600"}]
  LOADK R9 K48 ["enabled"]
  SETTABLEKS R9 R8 K41 ["Enabled"]
  LOADK R9 K33 ["search"]
  SETTABLEKS R9 R8 K30 ["Search"]
  LOADK R9 K49 ["upload"]
  SETTABLEKS R9 R8 K42 ["Upload"]
  LOADK R9 K50 ["insert"]
  SETTABLEKS R9 R8 K43 ["Insert"]
  LOADK R9 K51 ["insert_remains_30"]
  SETTABLEKS R9 R8 K44 ["InsertRemains30"]
  LOADK R9 K52 ["insert_remains_120"]
  SETTABLEKS R9 R8 K45 ["InsertRemains120"]
  LOADK R9 K53 ["insert_remains_600"]
  SETTABLEKS R9 R8 K46 ["InsertRemains600"]
  GETTABLEKS R9 R3 K12 ["Enums"]
  SETTABLEKS R8 R9 K54 ["EventType"]
  DUPCLOSURE R9 K55 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R9 R3 K56 ["setPlugin"]
  DUPCLOSURE R9 K57 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R9 R3 K58 ["_sendEventSafe"]
  DUPCLOSURE R9 K59 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R8
  SETTABLEKS R9 R3 K60 ["sendInsertEvent"]
  DUPCLOSURE R9 K61 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R8
  SETTABLEKS R9 R3 K62 ["sendSearchEvent"]
  DUPCLOSURE R9 K63 [PROTO_4]
  CAPTURE VAL R3
  SETTABLEKS R9 R3 K64 ["sendInsertRemains30Event"]
  DUPCLOSURE R9 K65 [PROTO_5]
  CAPTURE VAL R3
  SETTABLEKS R9 R3 K66 ["sendInsertRemains120Event"]
  DUPCLOSURE R9 K67 [PROTO_6]
  CAPTURE VAL R3
  SETTABLEKS R9 R3 K68 ["sendInsertRemains600Event"]
  DUPCLOSURE R9 K69 [PROTO_7]
  CAPTURE VAL R3
  CAPTURE VAL R8
  SETTABLEKS R9 R3 K70 ["sendEnabledEvent"]
  DUPCLOSURE R9 K71 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R8
  SETTABLEKS R9 R3 K72 ["sendUploadEvent"]
  DUPCLOSURE R9 K73 [PROTO_9]
  CAPTURE VAL R2
  SETTABLEKS R9 R3 K74 ["createSearchSessionId"]
  RETURN R3 1
