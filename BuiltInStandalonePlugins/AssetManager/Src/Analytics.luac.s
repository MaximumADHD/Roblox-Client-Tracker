PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 FASTCALL1                        TYPE R5 ; [+3]
        5 MOVE                             R7 R5
        6 GETIMPORT                        R6 K1 [type]
        8 CALL                             R6 1 1
        9 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+7]
       11 GETIMPORT                        R6 K4 [table.concat]
       13 MOVE                             R7 R5
       14 LOADK                            R8 K5 [","]
       15 CALL                             R6 2 1
       16 SETTABLE                         R6 R0 R4
       17 FORGLOOP                         R1 2 ; [-14]
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 DUPTABLE                         R2 K2 [{"eventType", "clientId"}]
        5 SETTABLEKS                       R0 R2 K0 ["eventType"]
        7 GETUPVAL                         R3 1
        8 NAMECALL                         R3 R3 K3 ["GetClientId"]
       10 CALL                             R3 1 1
       11 SETTABLEKS                       R3 R2 K1 ["clientId"]
       13 GETIMPORT                        R3 K6 [table.clone]
       15 MOVE                             R4 R1
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 2
       18 MOVE                             R5 R3
       19 CALL                             R4 1 0
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K7 ["join"]
       23 MOVE                             R5 R2
       24 MOVE                             R6 R3
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 4
       27 GETUPVAL                         R7 5
       28 DUPTABLE                         R8 K12 [{["customFields"], ["eventContext"] = "AssetManager", ["standardizedFields"]}]
       29 SETTABLEKS                       R4 R8 K8 ["customFields"]
       31 NEWTABLE                         R9 0 4
       33 GETIMPORT                        R10 K16 [Enum.TelemetryStandardizedField.AddPlaceId]
       35 GETIMPORT                        R11 K18 [Enum.TelemetryStandardizedField.AddUniverseId]
       37 GETIMPORT                        R12 K20 [Enum.TelemetryStandardizedField.AddSessionInfo]
       39 GETIMPORT                        R13 K22 [Enum.TelemetryStandardizedField.AddPlaySessionId]
       41 SETLIST                          R9 R10 4 [1]
       43 SETTABLEKS                       R9 R8 K11 ["standardizedFields"]
       45 NAMECALL                         R5 R5 K23 ["LogEvent"]
       47 CALL                             R5 3 0
       48 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_plugin"]
        3 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Insert"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["_sendEventSafe_DEPRECATED"]
        9 LOADK                            R2 K2 ["SendAnalyticsEvent"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["Insert"]
       13 MOVE                             R4 R0
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Search"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["_sendEventSafe_DEPRECATED"]
        9 LOADK                            R2 K2 ["SendAnalyticsEvent"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["Search"]
       13 MOVE                             R4 R0
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["InsertRemains30"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["_sendEventSafe_DEPRECATED"]
        9 LOADK                            R2 K2 ["SendAnalyticsEvent"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["InsertRemains30"]
       13 MOVE                             R4 R0
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["InsertRemains120"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["_sendEventSafe_DEPRECATED"]
        9 LOADK                            R2 K2 ["SendAnalyticsEvent"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["InsertRemains120"]
       13 MOVE                             R4 R0
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["InsertRemains600"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["_sendEventSafe_DEPRECATED"]
        9 LOADK                            R2 K2 ["SendAnalyticsEvent"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["InsertRemains600"]
       13 MOVE                             R4 R0
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Enabled"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["_sendEventSafe_DEPRECATED"]
        9 LOADK                            R2 K2 ["SendAnalyticsEvent"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["Enabled"]
       13 MOVE                             R4 R0
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Upload"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["_sendEventSafe_DEPRECATED"]
        9 LOADK                            R2 K2 ["SendAnalyticsEvent"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["Upload"]
       13 MOVE                             R4 R0
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["FolderOperation"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["_sendEventSafe_DEPRECATED"]
        9 LOADK                            R2 K2 ["SendAnalyticsEvent"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["FolderOperation"]
       13 MOVE                             R4 R0
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Share"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["_sendEventSafe_DEPRECATED"]
        9 LOADK                            R2 K2 ["SendAnalyticsEvent"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["Share"]
       13 MOVE                             R4 R0
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_13:
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K11 [game]
       23 LOADK                            R5 K12 ["HttpService"]
       24 NAMECALL                         R3 R3 K13 ["GetService"]
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K11 [game]
       29 LOADK                            R6 K14 ["RbxAnalyticsService"]
       30 NAMECALL                         R4 R4 K13 ["GetService"]
       32 CALL                             R4 2 1
       33 GETIMPORT                        R5 K11 [game]
       35 LOADK                            R7 K15 ["TelemetryService"]
       36 NAMECALL                         R5 R5 K13 ["GetService"]
       38 CALL                             R5 2 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R7 K16 ["Flags"]
       45 GETTABLEKS                       R7 R7 K17 ["getFFlagAmrUpdatedAnalytics"]
       47 CALL                             R6 1 1
       48 NEWTABLE                         R7 16 0
       50 NEWTABLE                         R8 0 0
       52 SETTABLEKS                       R8 R7 K18 ["Enums"]
       54 DUPTABLE                         R8 K27 [{["Create"] = "create", ["Update"] = "update", ["Delete"] = "delete", ["Move"] = "move"}]
       55 GETTABLEKS                       R9 R7 K18 ["Enums"]
       57 SETTABLEKS                       R8 R9 K28 ["FolderOperation"]
       59 DUPTABLE                         R9 K33 [{["OpenUse"] = "openUse", ["Collaborator"] = "collaborator"}]
       60 GETTABLEKS                       R10 R7 K18 ["Enums"]
       62 SETTABLEKS                       R9 R10 K34 ["ShareType"]
       64 DUPTABLE                         R10 K39 [{["RibbonClick"] = "ribbon_click", ["GuiFocus"] = "gui_focus"}]
       65 GETTABLEKS                       R11 R7 K18 ["Enums"]
       67 SETTABLEKS                       R10 R11 K40 ["ActionType"]
       69 DUPTABLE                         R11 K49 [{["Drag"] = "drag", ["RightClickCamera"] = "right_click_camera", ["RightClickPosition"] = "right_click_position", ["DoubleClick"] = "double_click"}]
       70 GETTABLEKS                       R12 R7 K18 ["Enums"]
       72 SETTABLEKS                       R11 R12 K50 ["InsertType"]
       74 DUPTABLE                         R12 K55 [{["Browse"] = "browse", ["Search"] = "search"}]
       75 GETTABLEKS                       R13 R7 K18 ["Enums"]
       77 SETTABLEKS                       R12 R13 K56 ["InsertSource"]
       79 DUPTABLE                         R13 K63 [{["Grid"] = "grid", ["List"] = "list", ["Unknown"] = "unknown"}]
       80 GETTABLEKS                       R14 R7 K18 ["Enums"]
       82 SETTABLEKS                       R13 R14 K64 ["ViewMode"]
       84 DUPTABLE                         R14 K80 [{["Enabled"] = "enabled", ["Search"] = "search", ["Upload"] = "upload", ["Insert"] = "insert", ["InsertRemains30"] = "insert_remains_30", ["InsertRemains120"] = "insert_remains_120", ["InsertRemains600"] = "insert_remains_600", ["FolderOperation"] = "folder_operation", ["Share"] = "share"}]
       85 GETTABLEKS                       R15 R7 K18 ["Enums"]
       87 SETTABLEKS                       R14 R15 K81 ["EventType"]
       89 DUPTABLE                         R15 K91 [{["eventName"] = "Event", ["eventContext"] = "AssetManager", ["backends"], ["lastUpdated"], ["description"] = "Asset Manager plugin events", ["throttlingPercentage"] = 10000}]
       90 NEWTABLE                         R16 0 2
       92 LOADK                            R17 K92 ["EventIngest"]
       93 LOADK                            R18 K93 ["Points"]
       94 SETLIST                          R16 R17 2 [1]
       96 SETTABLEKS                       R16 R15 K85 ["backends"]
       98 NEWTABLE                         R16 0 3
      100 LOADN                            R17 2026
      101 LOADN                            R18 6
      102 LOADN                            R19 23
      103 SETLIST                          R16 R17 3 [1]
      105 SETTABLEKS                       R16 R15 K86 ["lastUpdated"]
      107 DUPCLOSURE                       R16 K94 [PROTO_0]
      108 DUPCLOSURE                       R17 K95 [PROTO_1]
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R15
      115 DUPCLOSURE                       R18 K96 [PROTO_2]
      116 CAPTURE                          VAL R7
      117 SETTABLEKS                       R18 R7 K97 ["setPlugin"]
      119 DUPCLOSURE                       R18 K98 [PROTO_3]
      120 CAPTURE                          VAL R7
      121 SETTABLEKS                       R18 R7 K99 ["_sendEventSafe_DEPRECATED"]
      123 DUPCLOSURE                       R18 K100 [PROTO_4]
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R7
      127 SETTABLEKS                       R18 R7 K101 ["sendInsertEvent"]
      129 DUPCLOSURE                       R18 K102 [PROTO_5]
      130 CAPTURE                          VAL R17
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R7
      133 SETTABLEKS                       R18 R7 K103 ["sendSearchEvent"]
      135 DUPCLOSURE                       R18 K104 [PROTO_6]
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R7
      139 SETTABLEKS                       R18 R7 K105 ["sendInsertRemains30Event"]
      141 DUPCLOSURE                       R18 K106 [PROTO_7]
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R7
      145 SETTABLEKS                       R18 R7 K107 ["sendInsertRemains120Event"]
      147 DUPCLOSURE                       R18 K108 [PROTO_8]
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R7
      151 SETTABLEKS                       R18 R7 K109 ["sendInsertRemains600Event"]
      153 DUPCLOSURE                       R18 K110 [PROTO_9]
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R7
      157 SETTABLEKS                       R18 R7 K111 ["sendEnabledEvent"]
      159 DUPCLOSURE                       R18 K112 [PROTO_10]
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R7
      163 SETTABLEKS                       R18 R7 K113 ["sendUploadEvent"]
      165 DUPCLOSURE                       R18 K114 [PROTO_11]
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R7
      169 SETTABLEKS                       R18 R7 K115 ["sendFolderOperationEvent"]
      171 DUPCLOSURE                       R18 K116 [PROTO_12]
      172 CAPTURE                          VAL R17
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R7
      175 SETTABLEKS                       R18 R7 K117 ["sendShareEvent"]
      177 DUPCLOSURE                       R18 K118 [PROTO_13]
      178 CAPTURE                          VAL R3
      179 SETTABLEKS                       R18 R7 K119 ["createSearchSessionId"]
      181 RETURN                           R7 1
