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
        0 DUPTABLE                         R2 K2 [{"eventType", "clientId"}]
        1 SETTABLEKS                       R0 R2 K0 ["eventType"]
        3 GETUPVAL                         R3 0
        4 NAMECALL                         R3 R3 K3 ["GetClientId"]
        6 CALL                             R3 1 1
        7 SETTABLEKS                       R3 R2 K1 ["clientId"]
        9 GETIMPORT                        R3 K6 [table.clone]
       11 MOVE                             R4 R1
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R3
       15 CALL                             R4 1 0
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K7 ["join"]
       19 MOVE                             R5 R2
       20 MOVE                             R6 R3
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 3
       23 GETUPVAL                         R7 4
       24 DUPTABLE                         R8 K12 [{["customFields"], ["eventContext"] = "AssetManager", ["standardizedFields"]}]
       25 SETTABLEKS                       R4 R8 K8 ["customFields"]
       27 NEWTABLE                         R9 0 4
       29 GETIMPORT                        R10 K16 [Enum.TelemetryStandardizedField.AddPlaceId]
       31 GETIMPORT                        R11 K18 [Enum.TelemetryStandardizedField.AddUniverseId]
       33 GETIMPORT                        R12 K20 [Enum.TelemetryStandardizedField.AddSessionInfo]
       35 GETIMPORT                        R13 K22 [Enum.TelemetryStandardizedField.AddPlaySessionId]
       37 SETLIST                          R9 R10 4 [1]
       39 SETTABLEKS                       R9 R8 K11 ["standardizedFields"]
       41 NAMECALL                         R5 R5 K23 ["LogEvent"]
       43 CALL                             R5 3 0
       44 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Insert"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Search"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["InsertRemains30"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["InsertRemains120"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["InsertRemains600"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Enabled"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Upload"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["FolderOperation"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Share"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_11:
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Services"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K13 [game]
       32 LOADK                            R6 K14 ["HttpService"]
       33 NAMECALL                         R4 R4 K15 ["GetService"]
       35 CALL                             R4 2 1
       36 GETIMPORT                        R5 K13 [game]
       38 LOADK                            R7 K16 ["RbxAnalyticsService"]
       39 NAMECALL                         R5 R5 K15 ["GetService"]
       41 CALL                             R5 2 1
       42 GETTABLEKS                       R6 R3 K15 ["GetService"]
       44 LOADK                            R7 K17 ["TelemetryService"]
       45 CALL                             R6 1 1
       46 NEWTABLE                         R7 16 0
       48 NEWTABLE                         R8 0 0
       50 SETTABLEKS                       R8 R7 K18 ["Enums"]
       52 DUPTABLE                         R8 K27 [{["Create"] = "create", ["Update"] = "update", ["Delete"] = "delete", ["Move"] = "move"}]
       53 GETTABLEKS                       R9 R7 K18 ["Enums"]
       55 SETTABLEKS                       R8 R9 K28 ["FolderOperation"]
       57 DUPTABLE                         R9 K33 [{["OpenUse"] = "openUse", ["Collaborator"] = "collaborator"}]
       58 GETTABLEKS                       R10 R7 K18 ["Enums"]
       60 SETTABLEKS                       R9 R10 K34 ["ShareType"]
       62 DUPTABLE                         R10 K39 [{["RibbonClick"] = "ribbon_click", ["GuiFocus"] = "gui_focus"}]
       63 GETTABLEKS                       R11 R7 K18 ["Enums"]
       65 SETTABLEKS                       R10 R11 K40 ["ActionType"]
       67 DUPTABLE                         R11 K49 [{["Drag"] = "drag", ["RightClickCamera"] = "right_click_camera", ["RightClickPosition"] = "right_click_position", ["DoubleClick"] = "double_click"}]
       68 GETTABLEKS                       R12 R7 K18 ["Enums"]
       70 SETTABLEKS                       R11 R12 K50 ["InsertType"]
       72 DUPTABLE                         R12 K55 [{["Browse"] = "browse", ["Search"] = "search"}]
       73 GETTABLEKS                       R13 R7 K18 ["Enums"]
       75 SETTABLEKS                       R12 R13 K56 ["InsertSource"]
       77 DUPTABLE                         R13 K63 [{["Grid"] = "grid", ["List"] = "list", ["Unknown"] = "unknown"}]
       78 GETTABLEKS                       R14 R7 K18 ["Enums"]
       80 SETTABLEKS                       R13 R14 K64 ["ViewMode"]
       82 DUPTABLE                         R14 K80 [{["Enabled"] = "enabled", ["Search"] = "search", ["Upload"] = "upload", ["Insert"] = "insert", ["InsertRemains30"] = "insert_remains_30", ["InsertRemains120"] = "insert_remains_120", ["InsertRemains600"] = "insert_remains_600", ["FolderOperation"] = "folder_operation", ["Share"] = "share"}]
       83 GETTABLEKS                       R15 R7 K18 ["Enums"]
       85 SETTABLEKS                       R14 R15 K81 ["EventType"]
       87 DUPTABLE                         R15 K91 [{["eventName"] = "Event", ["eventContext"] = "AssetManager", ["backends"], ["lastUpdated"], ["description"] = "Asset Manager plugin events", ["throttlingPercentage"] = 10000}]
       88 NEWTABLE                         R16 0 2
       90 LOADK                            R17 K92 ["EventIngest"]
       91 LOADK                            R18 K93 ["Points"]
       92 SETLIST                          R16 R17 2 [1]
       94 SETTABLEKS                       R16 R15 K85 ["backends"]
       96 NEWTABLE                         R16 0 3
       98 LOADN                            R17 2026
       99 LOADN                            R18 6
      100 LOADN                            R19 23
      101 SETLIST                          R16 R17 3 [1]
      103 SETTABLEKS                       R16 R15 K86 ["lastUpdated"]
      105 DUPCLOSURE                       R16 K94 [PROTO_0]
      106 DUPCLOSURE                       R17 K95 [PROTO_1]
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R15
      112 DUPCLOSURE                       R18 K96 [PROTO_2]
      113 CAPTURE                          VAL R17
      114 CAPTURE                          VAL R14
      115 SETTABLEKS                       R18 R7 K97 ["sendInsertEvent"]
      117 DUPCLOSURE                       R18 K98 [PROTO_3]
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R14
      120 SETTABLEKS                       R18 R7 K99 ["sendSearchEvent"]
      122 DUPCLOSURE                       R18 K100 [PROTO_4]
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R14
      125 SETTABLEKS                       R18 R7 K101 ["sendInsertRemains30Event"]
      127 DUPCLOSURE                       R18 K102 [PROTO_5]
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R14
      130 SETTABLEKS                       R18 R7 K103 ["sendInsertRemains120Event"]
      132 DUPCLOSURE                       R18 K104 [PROTO_6]
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R14
      135 SETTABLEKS                       R18 R7 K105 ["sendInsertRemains600Event"]
      137 DUPCLOSURE                       R18 K106 [PROTO_7]
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R14
      140 SETTABLEKS                       R18 R7 K107 ["sendEnabledEvent"]
      142 DUPCLOSURE                       R18 K108 [PROTO_8]
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R14
      145 SETTABLEKS                       R18 R7 K109 ["sendUploadEvent"]
      147 DUPCLOSURE                       R18 K110 [PROTO_9]
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R14
      150 SETTABLEKS                       R18 R7 K111 ["sendFolderOperationEvent"]
      152 DUPCLOSURE                       R18 K112 [PROTO_10]
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R14
      155 SETTABLEKS                       R18 R7 K113 ["sendShareEvent"]
      157 DUPCLOSURE                       R18 K114 [PROTO_11]
      158 CAPTURE                          VAL R4
      159 SETTABLEKS                       R18 R7 K115 ["createSearchSessionId"]
      161 RETURN                           R7 1
