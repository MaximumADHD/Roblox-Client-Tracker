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
       98 JUMPIFNOT                        R13 ; [+19]
       99 GETIMPORT                        R13 K33 [print]
      101 LOADK                            R15 K34 ["Sending AssetManager UnifiedEvent: %*"]
      102 MOVE                             R17 R0
      103 NAMECALL                         R15 R15 K35 ["format"]
      105 CALL                             R15 2 1
      106 MOVE                             R14 R15
      107 CALL                             R13 1 0
      108 GETIMPORT                        R13 K33 [print]
      110 LOADK                            R14 K36 ["Context Fields: "]
      111 MOVE                             R15 R11
      112 CALL                             R13 2 0
      113 GETIMPORT                        R13 K33 [print]
      115 LOADK                            R14 K37 ["Event Metadata: "]
      116 MOVE                             R15 R1
      117 CALL                             R13 2 0
      118 GETUPVAL                         R13 8
      119 GETUPVAL                         R15 9
      120 GETTABLEKS                       R15 R15 K38 ["ASSETMANAGER_UNIFIED_EVENT_CONFIG"]
      122 DUPTABLE                         R16 K43 [{["customFields"], ["eventContext"] = "AssetManager", ["standardizedFields"]}]
      123 SETTABLEKS                       R12 R16 K39 ["customFields"]
      125 NEWTABLE                         R17 0 4
      127 GETIMPORT                        R18 K47 [Enum.TelemetryStandardizedField.AddPlaceId]
      129 GETIMPORT                        R19 K49 [Enum.TelemetryStandardizedField.AddUniverseId]
      131 GETIMPORT                        R20 K51 [Enum.TelemetryStandardizedField.AddSessionInfo]
      133 GETIMPORT                        R21 K53 [Enum.TelemetryStandardizedField.AddPlaySessionId]
      135 SETLIST                          R17 R18 4 [1]
      137 SETTABLEKS                       R17 R16 K42 ["standardizedFields"]
      139 NAMECALL                         R13 R13 K54 ["LogEvent"]
      141 CALL                             R13 3 0
      142 GETUPVAL                         R13 5
      143 GETTABLEKS                       R13 R13 K28 ["join"]
      145 GETUPVAL                         R14 9
      146 GETTABLEKS                       R14 R14 K55 ["ASSETMANAGER_COUNTER_CONFIG"]
      148 DUPTABLE                         R15 K56 [{"eventName"}]
      149 LOADK                            R17 K57 ["%*%*"]
      150 GETUPVAL                         R19 9
      151 GETTABLEKS                       R19 R19 K58 ["ASSETMANAGER_PREFIX"]
      153 MOVE                             R20 R0
      154 NAMECALL                         R17 R17 K35 ["format"]
      156 CALL                             R17 3 1
      157 MOVE                             R16 R17
      158 SETTABLEKS                       R16 R15 K15 ["eventName"]
      160 CALL                             R13 2 1
      161 GETUPVAL                         R14 8
      162 MOVE                             R16 R13
      163 NAMECALL                         R14 R14 K59 ["LogCounter"]
      165 CALL                             R14 2 0
      166 RETURN                           R0 0

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
       43 GETTABLEKS                       R6 R6 K13 ["getViewTypeTelemetryString"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K9 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETIMPORT                        R8 K1 [script]
       57 GETTABLEKS                       R8 R8 K14 ["Constants"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K16 [game]
       62 LOADK                            R10 K17 ["TelemetryService"]
       63 NAMECALL                         R8 R8 K18 ["GetService"]
       65 CALL                             R8 2 1
       66 GETIMPORT                        R9 K16 [game]
       68 LOADK                            R11 K19 ["RbxAnalyticsService"]
       69 NAMECALL                         R9 R9 K18 ["GetService"]
       71 CALL                             R9 2 1
       72 GETIMPORT                        R10 K16 [game]
       74 LOADK                            R12 K20 ["HttpService"]
       75 NAMECALL                         R10 R10 K18 ["GetService"]
       77 CALL                             R10 2 1
       78 GETTABLEKS                       R11 R3 K18 ["GetService"]
       80 LOADK                            R12 K21 ["PluginManagementService"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K8 ["Src"]
       86 GETTABLEKS                       R13 R13 K22 ["Flags"]
       88 GETTABLEKS                       R13 R13 K23 ["getFFlagDebugAmrPrintAnalytics"]
       90 CALL                             R12 1 1
       91 NEWTABLE                         R13 16 0
       93 SETTABLEKS                       R6 R13 K9 ["Types"]
       95 LOADK                            R16 K2 ["AssetManager"]
       96 NAMECALL                         R14 R11 K24 ["GetOTAPluginVersion"]
       98 CALL                             R14 2 1
       99 DUPCLOSURE                       R15 K25 [PROTO_0]
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R7
      110 DUPCLOSURE                       R16 K26 [PROTO_1]
      111 CAPTURE                          VAL R15
      112 SETTABLEKS                       R16 R13 K27 ["sendInsertEvent"]
      114 DUPCLOSURE                       R16 K28 [PROTO_2]
      115 CAPTURE                          VAL R15
      116 SETTABLEKS                       R16 R13 K29 ["sendSearchEvent"]
      118 DUPCLOSURE                       R16 K30 [PROTO_3]
      119 CAPTURE                          VAL R15
      120 SETTABLEKS                       R16 R13 K31 ["sendEnabledEvent"]
      122 DUPCLOSURE                       R16 K32 [PROTO_4]
      123 CAPTURE                          VAL R15
      124 SETTABLEKS                       R16 R13 K33 ["sendUploadEvent"]
      126 DUPCLOSURE                       R16 K34 [PROTO_5]
      127 CAPTURE                          VAL R15
      128 SETTABLEKS                       R16 R13 K35 ["sendShareEvent"]
      130 DUPCLOSURE                       R16 K36 [PROTO_6]
      131 CAPTURE                          VAL R15
      132 SETTABLEKS                       R16 R13 K37 ["sendCreateFolderEvent"]
      134 DUPCLOSURE                       R16 K38 [PROTO_7]
      135 CAPTURE                          VAL R15
      136 SETTABLEKS                       R16 R13 K39 ["sendUpdateFolderEvent"]
      138 DUPCLOSURE                       R16 K40 [PROTO_8]
      139 CAPTURE                          VAL R15
      140 SETTABLEKS                       R16 R13 K41 ["sendDeleteFolderEvent"]
      142 DUPCLOSURE                       R16 K42 [PROTO_9]
      143 CAPTURE                          VAL R15
      144 SETTABLEKS                       R16 R13 K43 ["sendMoveFolderEvent"]
      146 RETURN                           R13 1
