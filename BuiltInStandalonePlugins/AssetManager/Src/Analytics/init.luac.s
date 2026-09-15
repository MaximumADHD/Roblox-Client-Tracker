PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["LayoutController"]
        2 NAMECALL                         R3 R3 K1 ["getIsCompact"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R5 R2 K0 ["LayoutController"]
        8 NAMECALL                         R5 R5 K2 ["getBrowserLayout"]
       10 CALL                             R5 1 1
       11 GETTABLEKS                       R5 R5 K3 ["ViewType"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R5 R2 K4 ["ItemsController"]
       16 NAMECALL                         R5 R5 K5 ["getCurrentShownScope"]
       18 CALL                             R5 1 1
       19 GETTABLEKS                       R6 R2 K6 ["ExplorerController"]
       21 MOVE                             R8 R5
       22 NAMECALL                         R6 R6 K7 ["getScopeRoot"]
       24 CALL                             R6 2 1
       25 GETTABLEKS                       R7 R2 K8 ["SearchController"]
       27 NAMECALL                         R7 R7 K9 ["getSearchId"]
       29 CALL                             R7 1 1
       30 LOADN                            R8 -1
       31 LOADK                            R9 K10 ["Unknown"]
       32 LOADN                            R10 -1
       33 JUMPIFNOT                        R6 ; [+17]
       34 GETTABLEKS                       R8 R6 K11 ["Id"]
       36 GETTABLEKS                       R9 R6 K12 ["Type"]
       38 GETTABLEKS                       R11 R5 K12 ["Type"]
       40 GETUPVAL                         R12 1
       41 GETTABLEKS                       R12 R12 K13 ["ScopeType"]
       43 GETTABLEKS                       R12 R12 K14 ["Folder"]
       45 JUMPIFNOTEQ                      R11 R12 ; [+4]
       47 GETTABLEKS                       R10 R5 K11 ["Id"]
       49 JUMP                             ; [+1]
       50 LOADN                            R10 0
       51 DUPTABLE                         R11 K25 [{"eventName", "pluginOtaVersionHash", "pluginOtaVersionNumber", "clientId", "isCompact", "viewMode", "currentRootId", "currentRootType", "currentFolderId", "searchId"}]
       52 SETTABLEKS                       R0 R11 K15 ["eventName"]
       54 GETUPVAL                         R12 2
       55 SETTABLEKS                       R12 R11 K16 ["pluginOtaVersionHash"]
       57 GETUPVAL                         R12 3
       58 SETTABLEKS                       R12 R11 K17 ["pluginOtaVersionNumber"]
       60 GETUPVAL                         R12 4
       61 NAMECALL                         R12 R12 K26 ["GetClientId"]
       63 CALL                             R12 1 1
       64 SETTABLEKS                       R12 R11 K18 ["clientId"]
       66 SETTABLEKS                       R3 R11 K19 ["isCompact"]
       68 SETTABLEKS                       R4 R11 K20 ["viewMode"]
       70 SETTABLEKS                       R8 R11 K21 ["currentRootId"]
       72 SETTABLEKS                       R9 R11 K22 ["currentRootType"]
       74 SETTABLEKS                       R10 R11 K23 ["currentFolderId"]
       76 JUMPIFEQKS                       R7 K27 [""] ; [+3]
       78 MOVE                             R12 R7
       79 JUMP                             ; [+1]
       80 LOADNIL                          R12
       81 SETTABLEKS                       R12 R11 K24 ["searchId"]
       83 GETUPVAL                         R12 5
       84 GETTABLEKS                       R12 R12 K28 ["join"]
       86 MOVE                             R13 R11
       87 DUPTABLE                         R14 K30 [{"eventMetadataSerialized"}]
       88 GETUPVAL                         R15 6
       89 MOVE                             R17 R1
       90 NAMECALL                         R15 R15 K31 ["JSONEncode"]
       92 CALL                             R15 2 1
       93 SETTABLEKS                       R15 R14 K29 ["eventMetadataSerialized"]
       95 CALL                             R12 2 1
       96 GETUPVAL                         R13 7
       97 CALL                             R13 0 1
       98 JUMPIFNOT                        R13 ; [+29]
       99 GETUPVAL                         R13 8
      100 JUMPIFNOT                        R13 ; [+9]
      101 GETIMPORT                        R13 K33 [print]
      103 LOADK                            R14 K34 ["[SKIPPED DUE TO LOCAL BUILD] AssetManager UnifiedEvent: %*"]
      104 MOVE                             R16 R0
      105 NAMECALL                         R14 R14 K35 ["format"]
      107 CALL                             R14 2 1
      108 CALL                             R13 1 0
      109 JUMP                             ; [+8]
      110 GETIMPORT                        R13 K33 [print]
      112 LOADK                            R14 K36 ["Sending AssetManager UnifiedEvent: %*"]
      113 MOVE                             R16 R0
      114 NAMECALL                         R14 R14 K35 ["format"]
      116 CALL                             R14 2 1
      117 CALL                             R13 1 0
      118 GETIMPORT                        R13 K33 [print]
      120 LOADK                            R14 K37 ["Context Fields: "]
      121 MOVE                             R15 R11
      122 CALL                             R13 2 0
      123 GETIMPORT                        R13 K33 [print]
      125 LOADK                            R14 K38 ["Event Metadata: "]
      126 MOVE                             R15 R1
      127 CALL                             R13 2 0
      128 GETUPVAL                         R13 8
      129 JUMPIF                           R13 ; [+47]
      130 GETUPVAL                         R13 9
      131 GETUPVAL                         R15 10
      132 GETTABLEKS                       R15 R15 K39 ["ASSETMANAGER_UNIFIED_EVENT_CONFIG"]
      134 DUPTABLE                         R16 K44 [{["customFields"], ["eventContext"] = "AssetManager", ["standardizedFields"]}]
      135 SETTABLEKS                       R12 R16 K40 ["customFields"]
      137 NEWTABLE                         R17 0 4
      139 GETIMPORT                        R18 K48 [Enum.TelemetryStandardizedField.AddPlaceId]
      141 GETIMPORT                        R19 K50 [Enum.TelemetryStandardizedField.AddUniverseId]
      143 GETIMPORT                        R20 K52 [Enum.TelemetryStandardizedField.AddSessionInfo]
      145 GETIMPORT                        R21 K54 [Enum.TelemetryStandardizedField.AddPlaySessionId]
      147 SETLIST                          R17 R18 4 [1]
      149 SETTABLEKS                       R17 R16 K43 ["standardizedFields"]
      151 NAMECALL                         R13 R13 K55 ["LogEvent"]
      153 CALL                             R13 3 0
      154 GETUPVAL                         R13 5
      155 GETTABLEKS                       R13 R13 K28 ["join"]
      157 GETUPVAL                         R14 10
      158 GETTABLEKS                       R14 R14 K56 ["ASSETMANAGER_COUNTER_CONFIG"]
      160 DUPTABLE                         R15 K57 [{"eventName"}]
      161 LOADK                            R16 K58 ["%*%*"]
      162 GETUPVAL                         R18 10
      163 GETTABLEKS                       R18 R18 K59 ["ASSETMANAGER_PREFIX"]
      165 MOVE                             R19 R0
      166 NAMECALL                         R16 R16 K35 ["format"]
      168 CALL                             R16 3 1
      169 SETTABLEKS                       R16 R15 K15 ["eventName"]
      171 CALL                             R13 2 1
      172 GETUPVAL                         R14 9
      173 MOVE                             R16 R13
      174 NAMECALL                         R14 R14 K60 ["LogCounter"]
      176 CALL                             R14 2 0
      177 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Insert"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Search"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Enabled"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Upload"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Share"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["CreateFolder"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["UpdateFolder"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["DeleteFolder"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["MoveFolder"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Tutorial"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["ContextMenuItemClicked"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

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
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Version"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Src"]
       41 GETTABLEKS                       R6 R6 K10 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["isLocalBuild"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K8 ["Src"]
       50 GETTABLEKS                       R7 R7 K10 ["Util"]
       52 GETTABLEKS                       R7 R7 K14 ["getViewTypeTelemetryString"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETIMPORT                        R8 K1 [script]
       59 GETTABLEKS                       R8 R8 K9 ["Types"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETIMPORT                        R9 K1 [script]
       66 GETTABLEKS                       R9 R9 K15 ["Constants"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R3 K16 ["GetService"]
       71 LOADK                            R10 K17 ["TelemetryService"]
       72 CALL                             R9 1 1
       73 GETTABLEKS                       R10 R3 K16 ["GetService"]
       75 LOADK                            R11 K18 ["RbxAnalyticsService"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K20 [game]
       79 LOADK                            R13 K21 ["HttpService"]
       80 NAMECALL                         R11 R11 K16 ["GetService"]
       82 CALL                             R11 2 1
       83 GETTABLEKS                       R12 R3 K16 ["GetService"]
       85 LOADK                            R13 K22 ["PluginManagementService"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K8 ["Src"]
       91 GETTABLEKS                       R14 R14 K23 ["Flags"]
       93 GETTABLEKS                       R14 R14 K24 ["getFFlagDebugAmrPrintAnalytics"]
       95 CALL                             R13 1 1
       96 NEWTABLE                         R14 16 0
       98 SETTABLEKS                       R7 R14 K9 ["Types"]
      100 LOADK                            R17 K2 ["AssetManager"]
      101 NAMECALL                         R15 R12 K25 ["GetOTAPluginVersion"]
      103 CALL                             R15 2 1
      104 DUPCLOSURE                       R16 K26 [PROTO_0]
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R8
      116 DUPCLOSURE                       R17 K27 [PROTO_1]
      117 CAPTURE                          VAL R16
      118 SETTABLEKS                       R17 R14 K28 ["sendInsertEvent"]
      120 DUPCLOSURE                       R17 K29 [PROTO_2]
      121 CAPTURE                          VAL R16
      122 SETTABLEKS                       R17 R14 K30 ["sendSearchEvent"]
      124 DUPCLOSURE                       R17 K31 [PROTO_3]
      125 CAPTURE                          VAL R16
      126 SETTABLEKS                       R17 R14 K32 ["sendEnabledEvent"]
      128 DUPCLOSURE                       R17 K33 [PROTO_4]
      129 CAPTURE                          VAL R16
      130 SETTABLEKS                       R17 R14 K34 ["sendUploadEvent"]
      132 DUPCLOSURE                       R17 K35 [PROTO_5]
      133 CAPTURE                          VAL R16
      134 SETTABLEKS                       R17 R14 K36 ["sendShareEvent"]
      136 DUPCLOSURE                       R17 K37 [PROTO_6]
      137 CAPTURE                          VAL R16
      138 SETTABLEKS                       R17 R14 K38 ["sendCreateFolderEvent"]
      140 DUPCLOSURE                       R17 K39 [PROTO_7]
      141 CAPTURE                          VAL R16
      142 SETTABLEKS                       R17 R14 K40 ["sendUpdateFolderEvent"]
      144 DUPCLOSURE                       R17 K41 [PROTO_8]
      145 CAPTURE                          VAL R16
      146 SETTABLEKS                       R17 R14 K42 ["sendDeleteFolderEvent"]
      148 DUPCLOSURE                       R17 K43 [PROTO_9]
      149 CAPTURE                          VAL R16
      150 SETTABLEKS                       R17 R14 K44 ["sendMoveFolderEvent"]
      152 DUPCLOSURE                       R17 K45 [PROTO_10]
      153 CAPTURE                          VAL R16
      154 SETTABLEKS                       R17 R14 K46 ["sendTutorialEvent"]
      156 DUPCLOSURE                       R17 K47 [PROTO_11]
      157 CAPTURE                          VAL R16
      158 SETTABLEKS                       R17 R14 K48 ["sendContextMenuItemClickedEvent"]
      160 RETURN                           R14 1
