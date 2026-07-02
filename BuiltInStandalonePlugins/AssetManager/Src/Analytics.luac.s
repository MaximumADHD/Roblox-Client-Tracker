PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_plugin"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_plugin"]
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["_plugin"]
        8 MOVE                             R5 R0
        9 DUPTABLE                         R6 K3 [{"Event", "Args"}]
       10 SETTABLEKS                       R1 R6 K1 ["Event"]
       12 MOVE                             R7 R2
       13 JUMPIF                           R7 ; [+2]
       14 NEWTABLE                         R7 0 0
       16 SETTABLEKS                       R7 R6 K2 ["Args"]
       18 NAMECALL                         R3 R3 K4 ["Invoke"]
       20 CALL                             R3 3 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_sendEventSafe"]
        3 LOADK                            R2 K1 ["SendAnalyticsEvent"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["Insert"]
        7 MOVE                             R4 R0
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_sendEventSafe"]
        3 LOADK                            R2 K1 ["SendAnalyticsEvent"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["Search"]
        7 MOVE                             R4 R0
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_sendEventSafe"]
        3 LOADK                            R2 K1 ["SendAnalyticsEvent"]
        4 LOADK                            R3 K2 ["insert_remains_30"]
        5 MOVE                             R4 R0
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_sendEventSafe"]
        3 LOADK                            R2 K1 ["SendAnalyticsEvent"]
        4 LOADK                            R3 K2 ["insert_remains_120"]
        5 MOVE                             R4 R0
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_sendEventSafe"]
        3 LOADK                            R2 K1 ["SendAnalyticsEvent"]
        4 LOADK                            R3 K2 ["insert_remains_600"]
        5 MOVE                             R4 R0
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_sendEventSafe"]
        3 LOADK                            R2 K1 ["SendAnalyticsEvent"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["Enabled"]
        7 MOVE                             R4 R0
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_sendEventSafe"]
        3 LOADK                            R1 K1 ["SendAnalyticsEvent"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K2 ["Upload"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["HttpService"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 NEWTABLE                         R3 16 0
       22 NEWTABLE                         R4 0 0
       24 SETTABLEKS                       R4 R3 K12 ["Enums"]
       26 DUPTABLE                         R4 K17 [{["RibbonClick"] = "ribbon_click", ["GuiFocus"] = "gui_focus"}]
       27 GETTABLEKS                       R5 R3 K12 ["Enums"]
       29 SETTABLEKS                       R4 R5 K18 ["ActionType"]
       31 DUPTABLE                         R5 K27 [{["Drag"] = "drag", ["RightClickCamera"] = "right_click_camera", ["RightClickPosition"] = "right_click_position", ["DoubleClick"] = "double_click"}]
       32 GETTABLEKS                       R6 R3 K12 ["Enums"]
       34 SETTABLEKS                       R5 R6 K28 ["InsertType"]
       36 DUPTABLE                         R6 K33 [{["Browse"] = "browse", ["Search"] = "search"}]
       37 GETTABLEKS                       R7 R3 K12 ["Enums"]
       39 SETTABLEKS                       R6 R7 K34 ["InsertSource"]
       41 DUPTABLE                         R7 K39 [{["Grid"] = "grid", ["List"] = "list"}]
       42 GETTABLEKS                       R8 R3 K12 ["Enums"]
       44 SETTABLEKS                       R7 R8 K40 ["ViewMode"]
       46 DUPTABLE                         R8 K53 [{["Enabled"] = "enabled", ["Search"] = "search", ["Upload"] = "upload", ["Insert"] = "insert", ["InsertRemains30"] = "insert_remains_30", ["InsertRemains120"] = "insert_remains_120", ["InsertRemains600"] = "insert_remains_600"}]
       47 GETTABLEKS                       R9 R3 K12 ["Enums"]
       49 SETTABLEKS                       R8 R9 K54 ["EventType"]
       51 DUPCLOSURE                       R9 K55 [PROTO_0]
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R9 R3 K56 ["setPlugin"]
       55 DUPCLOSURE                       R9 K57 [PROTO_1]
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R9 R3 K58 ["_sendEventSafe"]
       59 DUPCLOSURE                       R9 K59 [PROTO_2]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R8
       62 SETTABLEKS                       R9 R3 K60 ["sendInsertEvent"]
       64 DUPCLOSURE                       R9 K61 [PROTO_3]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R8
       67 SETTABLEKS                       R9 R3 K62 ["sendSearchEvent"]
       69 DUPCLOSURE                       R9 K63 [PROTO_4]
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R9 R3 K64 ["sendInsertRemains30Event"]
       73 DUPCLOSURE                       R9 K65 [PROTO_5]
       74 CAPTURE                          VAL R3
       75 SETTABLEKS                       R9 R3 K66 ["sendInsertRemains120Event"]
       77 DUPCLOSURE                       R9 K67 [PROTO_6]
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R9 R3 K68 ["sendInsertRemains600Event"]
       81 DUPCLOSURE                       R9 K69 [PROTO_7]
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R8
       84 SETTABLEKS                       R9 R3 K70 ["sendEnabledEvent"]
       86 DUPCLOSURE                       R9 K71 [PROTO_8]
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R8
       89 SETTABLEKS                       R9 R3 K72 ["sendUploadEvent"]
       91 DUPCLOSURE                       R9 K73 [PROTO_9]
       92 CAPTURE                          VAL R2
       93 SETTABLEKS                       R9 R3 K74 ["createSearchSessionId"]
       95 RETURN                           R3 1
