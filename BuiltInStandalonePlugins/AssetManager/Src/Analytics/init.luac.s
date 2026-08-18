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
       25 LOADN                            R7 -1
       26 LOADK                            R8 K8 ["Unknown"]
       27 LOADN                            R9 -1
       28 JUMPIFNOT                        R6 ; [+17]
       29 GETTABLEKS                       R7 R6 K9 ["Id"]
       31 GETTABLEKS                       R8 R6 K10 ["Type"]
       33 GETTABLEKS                       R10 R5 K10 ["Type"]
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R11 R11 K11 ["ScopeType"]
       38 GETTABLEKS                       R11 R11 K12 ["Folder"]
       40 JUMPIFNOTEQ                      R10 R11 ; [+4]
       42 GETTABLEKS                       R9 R5 K9 ["Id"]
       44 JUMP                             ; [+1]
       45 LOADN                            R9 0
       46 DUPTABLE                         R10 K22 [{"eventName", "pluginOtaVersionHash", "pluginOtaVersionNumber", "clientId", "isCompact", "viewMode", "currentRootId", "currentRootType", "currentFolderId"}]
       47 SETTABLEKS                       R0 R10 K13 ["eventName"]
       49 GETUPVAL                         R11 2
       50 SETTABLEKS                       R11 R10 K14 ["pluginOtaVersionHash"]
       52 GETUPVAL                         R11 3
       53 SETTABLEKS                       R11 R10 K15 ["pluginOtaVersionNumber"]
       55 GETUPVAL                         R11 4
       56 NAMECALL                         R11 R11 K23 ["GetClientId"]
       58 CALL                             R11 1 1
       59 SETTABLEKS                       R11 R10 K16 ["clientId"]
       61 SETTABLEKS                       R3 R10 K17 ["isCompact"]
       63 SETTABLEKS                       R4 R10 K18 ["viewMode"]
       65 SETTABLEKS                       R7 R10 K19 ["currentRootId"]
       67 SETTABLEKS                       R8 R10 K20 ["currentRootType"]
       69 SETTABLEKS                       R9 R10 K21 ["currentFolderId"]
       71 GETUPVAL                         R11 5
       72 GETTABLEKS                       R11 R11 K24 ["join"]
       74 MOVE                             R12 R10
       75 DUPTABLE                         R13 K26 [{"eventMetadataSerialized"}]
       76 GETUPVAL                         R14 6
       77 MOVE                             R16 R1
       78 NAMECALL                         R14 R14 K27 ["JSONEncode"]
       80 CALL                             R14 2 1
       81 SETTABLEKS                       R14 R13 K25 ["eventMetadataSerialized"]
       83 CALL                             R11 2 1
       84 GETUPVAL                         R12 7
       85 CALL                             R12 0 1
       86 JUMPIFNOT                        R12 ; [+19]
       87 GETIMPORT                        R12 K29 [print]
       89 LOADK                            R14 K30 ["Sending AssetManager UnifiedEvent: %*"]
       90 MOVE                             R16 R0
       91 NAMECALL                         R14 R14 K31 ["format"]
       93 CALL                             R14 2 1
       94 MOVE                             R13 R14
       95 CALL                             R12 1 0
       96 GETIMPORT                        R12 K29 [print]
       98 LOADK                            R13 K32 ["Context Fields: "]
       99 MOVE                             R14 R10
      100 CALL                             R12 2 0
      101 GETIMPORT                        R12 K29 [print]
      103 LOADK                            R13 K33 ["Event Metadata: "]
      104 MOVE                             R14 R1
      105 CALL                             R12 2 0
      106 GETUPVAL                         R12 8
      107 GETUPVAL                         R14 9
      108 GETTABLEKS                       R14 R14 K34 ["ASSETMANAGER_UNIFIED_EVENT_CONFIG"]
      110 DUPTABLE                         R15 K39 [{["customFields"], ["eventContext"] = "AssetManager", ["standardizedFields"]}]
      111 SETTABLEKS                       R11 R15 K35 ["customFields"]
      113 NEWTABLE                         R16 0 4
      115 GETIMPORT                        R17 K43 [Enum.TelemetryStandardizedField.AddPlaceId]
      117 GETIMPORT                        R18 K45 [Enum.TelemetryStandardizedField.AddUniverseId]
      119 GETIMPORT                        R19 K47 [Enum.TelemetryStandardizedField.AddSessionInfo]
      121 GETIMPORT                        R20 K49 [Enum.TelemetryStandardizedField.AddPlaySessionId]
      123 SETLIST                          R16 R17 4 [1]
      125 SETTABLEKS                       R16 R15 K38 ["standardizedFields"]
      127 NAMECALL                         R12 R12 K50 ["LogEvent"]
      129 CALL                             R12 3 0
      130 GETUPVAL                         R12 5
      131 GETTABLEKS                       R12 R12 K24 ["join"]
      133 GETUPVAL                         R13 9
      134 GETTABLEKS                       R13 R13 K51 ["ASSETMANAGER_COUNTER_CONFIG"]
      136 DUPTABLE                         R14 K52 [{"eventName"}]
      137 LOADK                            R16 K53 ["%*%*"]
      138 GETUPVAL                         R18 9
      139 GETTABLEKS                       R18 R18 K54 ["ASSETMANAGER_PREFIX"]
      141 MOVE                             R19 R0
      142 NAMECALL                         R16 R16 K31 ["format"]
      144 CALL                             R16 3 1
      145 MOVE                             R15 R16
      146 SETTABLEKS                       R15 R14 K13 ["eventName"]
      148 CALL                             R12 2 1
      149 GETUPVAL                         R13 8
      150 MOVE                             R15 R12
      151 NAMECALL                         R13 R13 K55 ["LogCounter"]
      153 CALL                             R13 2 0
      154 RETURN                           R0 0

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
