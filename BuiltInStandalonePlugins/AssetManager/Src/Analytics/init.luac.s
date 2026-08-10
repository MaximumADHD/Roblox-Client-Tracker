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
       25 GETTABLEKS                       R7 R6 K8 ["Id"]
       27 GETTABLEKS                       R8 R6 K9 ["Type"]
       29 GETTABLEKS                       R10 R5 K9 ["Type"]
       31 GETUPVAL                         R11 1
       32 GETTABLEKS                       R11 R11 K10 ["ScopeType"]
       34 GETTABLEKS                       R11 R11 K11 ["Folder"]
       36 JUMPIFNOTEQ                      R10 R11 ; [+4]
       38 GETTABLEKS                       R9 R5 K8 ["Id"]
       40 JUMP                             ; [+1]
       41 LOADN                            R9 0
       42 DUPTABLE                         R10 K21 [{"eventName", "pluginOtaVersionHash", "pluginOtaVersionNumber", "clientId", "isCompact", "viewMode", "currentRootId", "currentRootType", "currentFolderId"}]
       43 SETTABLEKS                       R0 R10 K12 ["eventName"]
       45 GETUPVAL                         R11 2
       46 SETTABLEKS                       R11 R10 K13 ["pluginOtaVersionHash"]
       48 GETUPVAL                         R11 3
       49 SETTABLEKS                       R11 R10 K14 ["pluginOtaVersionNumber"]
       51 GETUPVAL                         R11 4
       52 NAMECALL                         R11 R11 K22 ["GetClientId"]
       54 CALL                             R11 1 1
       55 SETTABLEKS                       R11 R10 K15 ["clientId"]
       57 SETTABLEKS                       R3 R10 K16 ["isCompact"]
       59 SETTABLEKS                       R4 R10 K17 ["viewMode"]
       61 SETTABLEKS                       R7 R10 K18 ["currentRootId"]
       63 SETTABLEKS                       R8 R10 K19 ["currentRootType"]
       65 SETTABLEKS                       R9 R10 K20 ["currentFolderId"]
       67 GETUPVAL                         R11 5
       68 GETTABLEKS                       R11 R11 K23 ["join"]
       70 MOVE                             R12 R10
       71 DUPTABLE                         R13 K25 [{"eventMetadataSerialized"}]
       72 GETUPVAL                         R14 6
       73 MOVE                             R16 R1
       74 NAMECALL                         R14 R14 K26 ["JSONEncode"]
       76 CALL                             R14 2 1
       77 SETTABLEKS                       R14 R13 K24 ["eventMetadataSerialized"]
       79 CALL                             R11 2 1
       80 GETUPVAL                         R12 7
       81 CALL                             R12 0 1
       82 JUMPIFNOT                        R12 ; [+19]
       83 GETIMPORT                        R12 K28 [print]
       85 LOADK                            R14 K29 ["Sending AssetManager UnifiedEvent: %*"]
       86 MOVE                             R16 R0
       87 NAMECALL                         R14 R14 K30 ["format"]
       89 CALL                             R14 2 1
       90 MOVE                             R13 R14
       91 CALL                             R12 1 0
       92 GETIMPORT                        R12 K28 [print]
       94 LOADK                            R13 K31 ["Context Fields: "]
       95 MOVE                             R14 R10
       96 CALL                             R12 2 0
       97 GETIMPORT                        R12 K28 [print]
       99 LOADK                            R13 K32 ["Event Metadata: "]
      100 MOVE                             R14 R1
      101 CALL                             R12 2 0
      102 GETUPVAL                         R12 8
      103 GETUPVAL                         R14 9
      104 GETTABLEKS                       R14 R14 K33 ["ASSETMANAGER_UNIFIED_EVENT_CONFIG"]
      106 DUPTABLE                         R15 K38 [{["customFields"], ["eventContext"] = "AssetManager", ["standardizedFields"]}]
      107 SETTABLEKS                       R11 R15 K34 ["customFields"]
      109 NEWTABLE                         R16 0 4
      111 GETIMPORT                        R17 K42 [Enum.TelemetryStandardizedField.AddPlaceId]
      113 GETIMPORT                        R18 K44 [Enum.TelemetryStandardizedField.AddUniverseId]
      115 GETIMPORT                        R19 K46 [Enum.TelemetryStandardizedField.AddSessionInfo]
      117 GETIMPORT                        R20 K48 [Enum.TelemetryStandardizedField.AddPlaySessionId]
      119 SETLIST                          R16 R17 4 [1]
      121 SETTABLEKS                       R16 R15 K37 ["standardizedFields"]
      123 NAMECALL                         R12 R12 K49 ["LogEvent"]
      125 CALL                             R12 3 0
      126 GETUPVAL                         R12 10
      127 CALL                             R12 0 1
      128 JUMPIFNOT                        R12 ; [+24]
      129 GETUPVAL                         R12 5
      130 GETTABLEKS                       R12 R12 K23 ["join"]
      132 GETUPVAL                         R13 9
      133 GETTABLEKS                       R13 R13 K50 ["ASSETMANAGER_COUNTER_CONFIG"]
      135 DUPTABLE                         R14 K51 [{"eventName"}]
      136 LOADK                            R16 K52 ["%*%*"]
      137 GETUPVAL                         R18 9
      138 GETTABLEKS                       R18 R18 K53 ["ASSETMANAGER_PREFIX"]
      140 MOVE                             R19 R0
      141 NAMECALL                         R16 R16 K30 ["format"]
      143 CALL                             R16 3 1
      144 MOVE                             R15 R16
      145 SETTABLEKS                       R15 R14 K12 ["eventName"]
      147 CALL                             R12 2 1
      148 GETUPVAL                         R13 8
      149 MOVE                             R15 R12
      150 NAMECALL                         R13 R13 K54 ["LogCounter"]
      152 CALL                             R13 2 0
      153 RETURN                           R0 0

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
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K8 ["Src"]
       95 GETTABLEKS                       R14 R14 K22 ["Flags"]
       97 GETTABLEKS                       R14 R14 K24 ["getFFlagAmrAddHealthlineMetrics"]
       99 CALL                             R13 1 1
      100 NEWTABLE                         R14 16 0
      102 SETTABLEKS                       R6 R14 K9 ["Types"]
      104 LOADK                            R17 K2 ["AssetManager"]
      105 NAMECALL                         R15 R11 K25 ["GetOTAPluginVersion"]
      107 CALL                             R15 2 1
      108 DUPCLOSURE                       R16 K26 [PROTO_0]
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R13
      120 DUPCLOSURE                       R17 K27 [PROTO_1]
      121 CAPTURE                          VAL R16
      122 SETTABLEKS                       R17 R14 K28 ["sendInsertEvent"]
      124 DUPCLOSURE                       R17 K29 [PROTO_2]
      125 CAPTURE                          VAL R16
      126 SETTABLEKS                       R17 R14 K30 ["sendSearchEvent"]
      128 DUPCLOSURE                       R17 K31 [PROTO_3]
      129 CAPTURE                          VAL R16
      130 SETTABLEKS                       R17 R14 K32 ["sendEnabledEvent"]
      132 DUPCLOSURE                       R17 K33 [PROTO_4]
      133 CAPTURE                          VAL R16
      134 SETTABLEKS                       R17 R14 K34 ["sendUploadEvent"]
      136 DUPCLOSURE                       R17 K35 [PROTO_5]
      137 CAPTURE                          VAL R16
      138 SETTABLEKS                       R17 R14 K36 ["sendShareEvent"]
      140 DUPCLOSURE                       R17 K37 [PROTO_6]
      141 CAPTURE                          VAL R16
      142 SETTABLEKS                       R17 R14 K38 ["sendCreateFolderEvent"]
      144 DUPCLOSURE                       R17 K39 [PROTO_7]
      145 CAPTURE                          VAL R16
      146 SETTABLEKS                       R17 R14 K40 ["sendUpdateFolderEvent"]
      148 DUPCLOSURE                       R17 K41 [PROTO_8]
      149 CAPTURE                          VAL R16
      150 SETTABLEKS                       R17 R14 K42 ["sendDeleteFolderEvent"]
      152 DUPCLOSURE                       R17 K43 [PROTO_9]
      153 CAPTURE                          VAL R16
      154 SETTABLEKS                       R17 R14 K44 ["sendMoveFolderEvent"]
      156 RETURN                           R14 1
