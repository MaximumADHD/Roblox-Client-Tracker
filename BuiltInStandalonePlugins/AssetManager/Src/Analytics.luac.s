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
       26 DUPTABLE                         R4 K15 [{"RibbonClick", "GuiFocus"}]
       27 LOADK                            R5 K16 ["ribbon_click"]
       28 SETTABLEKS                       R5 R4 K13 ["RibbonClick"]
       30 LOADK                            R5 K17 ["gui_focus"]
       31 SETTABLEKS                       R5 R4 K14 ["GuiFocus"]
       33 GETTABLEKS                       R5 R3 K12 ["Enums"]
       35 SETTABLEKS                       R4 R5 K18 ["ActionType"]
       37 DUPTABLE                         R5 K23 [{"Drag", "RightClickCamera", "RightClickPosition", "DoubleClick"}]
       38 LOADK                            R6 K24 ["drag"]
       39 SETTABLEKS                       R6 R5 K19 ["Drag"]
       41 LOADK                            R6 K25 ["right_click_camera"]
       42 SETTABLEKS                       R6 R5 K20 ["RightClickCamera"]
       44 LOADK                            R6 K26 ["right_click_position"]
       45 SETTABLEKS                       R6 R5 K21 ["RightClickPosition"]
       47 LOADK                            R6 K27 ["double_click"]
       48 SETTABLEKS                       R6 R5 K22 ["DoubleClick"]
       50 GETTABLEKS                       R6 R3 K12 ["Enums"]
       52 SETTABLEKS                       R5 R6 K28 ["InsertType"]
       54 DUPTABLE                         R6 K31 [{"Browse", "Search"}]
       55 LOADK                            R7 K32 ["browse"]
       56 SETTABLEKS                       R7 R6 K29 ["Browse"]
       58 LOADK                            R7 K33 ["search"]
       59 SETTABLEKS                       R7 R6 K30 ["Search"]
       61 GETTABLEKS                       R7 R3 K12 ["Enums"]
       63 SETTABLEKS                       R6 R7 K34 ["InsertSource"]
       65 DUPTABLE                         R7 K37 [{"Grid", "List"}]
       66 LOADK                            R8 K38 ["grid"]
       67 SETTABLEKS                       R8 R7 K35 ["Grid"]
       69 LOADK                            R8 K39 ["list"]
       70 SETTABLEKS                       R8 R7 K36 ["List"]
       72 GETTABLEKS                       R8 R3 K12 ["Enums"]
       74 SETTABLEKS                       R7 R8 K40 ["ViewMode"]
       76 DUPTABLE                         R8 K47 [{"Enabled", "Search", "Upload", "Insert", "InsertRemains30", "InsertRemains120", "InsertRemains600"}]
       77 LOADK                            R9 K48 ["enabled"]
       78 SETTABLEKS                       R9 R8 K41 ["Enabled"]
       80 LOADK                            R9 K33 ["search"]
       81 SETTABLEKS                       R9 R8 K30 ["Search"]
       83 LOADK                            R9 K49 ["upload"]
       84 SETTABLEKS                       R9 R8 K42 ["Upload"]
       86 LOADK                            R9 K50 ["insert"]
       87 SETTABLEKS                       R9 R8 K43 ["Insert"]
       89 LOADK                            R9 K51 ["insert_remains_30"]
       90 SETTABLEKS                       R9 R8 K44 ["InsertRemains30"]
       92 LOADK                            R9 K52 ["insert_remains_120"]
       93 SETTABLEKS                       R9 R8 K45 ["InsertRemains120"]
       95 LOADK                            R9 K53 ["insert_remains_600"]
       96 SETTABLEKS                       R9 R8 K46 ["InsertRemains600"]
       98 GETTABLEKS                       R9 R3 K12 ["Enums"]
      100 SETTABLEKS                       R8 R9 K54 ["EventType"]
      102 DUPCLOSURE                       R9 K55 [PROTO_0]
      103 CAPTURE                          VAL R3
      104 SETTABLEKS                       R9 R3 K56 ["setPlugin"]
      106 DUPCLOSURE                       R9 K57 [PROTO_1]
      107 CAPTURE                          VAL R3
      108 SETTABLEKS                       R9 R3 K58 ["_sendEventSafe"]
      110 DUPCLOSURE                       R9 K59 [PROTO_2]
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R8
      113 SETTABLEKS                       R9 R3 K60 ["sendInsertEvent"]
      115 DUPCLOSURE                       R9 K61 [PROTO_3]
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R8
      118 SETTABLEKS                       R9 R3 K62 ["sendSearchEvent"]
      120 DUPCLOSURE                       R9 K63 [PROTO_4]
      121 CAPTURE                          VAL R3
      122 SETTABLEKS                       R9 R3 K64 ["sendInsertRemains30Event"]
      124 DUPCLOSURE                       R9 K65 [PROTO_5]
      125 CAPTURE                          VAL R3
      126 SETTABLEKS                       R9 R3 K66 ["sendInsertRemains120Event"]
      128 DUPCLOSURE                       R9 K67 [PROTO_6]
      129 CAPTURE                          VAL R3
      130 SETTABLEKS                       R9 R3 K68 ["sendInsertRemains600Event"]
      132 DUPCLOSURE                       R9 K69 [PROTO_7]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R8
      135 SETTABLEKS                       R9 R3 K70 ["sendEnabledEvent"]
      137 DUPCLOSURE                       R9 K71 [PROTO_8]
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R8
      140 SETTABLEKS                       R9 R3 K72 ["sendUploadEvent"]
      142 DUPCLOSURE                       R9 K73 [PROTO_9]
      143 CAPTURE                          VAL R2
      144 SETTABLEKS                       R9 R3 K74 ["createSearchSessionId"]
      146 RETURN                           R3 1
