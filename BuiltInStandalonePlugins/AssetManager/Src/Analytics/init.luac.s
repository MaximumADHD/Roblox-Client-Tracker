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
      104 DUPTABLE                         R15 K37 [{["customFields"], ["eventContext"] = "AssetManager", ["standardizedFields"]}]
      105 SETTABLEKS                       R11 R15 K33 ["customFields"]
      107 NEWTABLE                         R16 0 4
      109 GETIMPORT                        R17 K41 [Enum.TelemetryStandardizedField.AddPlaceId]
      111 GETIMPORT                        R18 K43 [Enum.TelemetryStandardizedField.AddUniverseId]
      113 GETIMPORT                        R19 K45 [Enum.TelemetryStandardizedField.AddSessionInfo]
      115 GETIMPORT                        R20 K47 [Enum.TelemetryStandardizedField.AddPlaySessionId]
      117 SETLIST                          R16 R17 4 [1]
      119 SETTABLEKS                       R16 R15 K36 ["standardizedFields"]
      121 NAMECALL                         R12 R12 K48 ["LogEvent"]
      123 CALL                             R12 3 0
      124 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Insert"]
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
       53 GETIMPORT                        R7 K15 [game]
       55 LOADK                            R9 K16 ["TelemetryService"]
       56 NAMECALL                         R7 R7 K17 ["GetService"]
       58 CALL                             R7 2 1
       59 GETIMPORT                        R8 K15 [game]
       61 LOADK                            R10 K18 ["RbxAnalyticsService"]
       62 NAMECALL                         R8 R8 K17 ["GetService"]
       64 CALL                             R8 2 1
       65 GETIMPORT                        R9 K15 [game]
       67 LOADK                            R11 K19 ["HttpService"]
       68 NAMECALL                         R9 R9 K17 ["GetService"]
       70 CALL                             R9 2 1
       71 GETTABLEKS                       R10 R3 K17 ["GetService"]
       73 LOADK                            R11 K20 ["PluginManagementService"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K8 ["Src"]
       79 GETTABLEKS                       R12 R12 K21 ["Flags"]
       81 GETTABLEKS                       R12 R12 K22 ["getFFlagDebugAmrPrintAnalytics"]
       83 CALL                             R11 1 1
       84 NEWTABLE                         R12 2 0
       86 SETTABLEKS                       R6 R12 K9 ["Types"]
       88 DUPTABLE                         R13 K32 [{["eventName"] = "UnifiedEvent", ["eventContext"] = "AssetManager", ["backends"], ["lastUpdated"], ["description"] = "Asset Manager plugin events", ["throttlingPercentage"] = 10000}]
       89 NEWTABLE                         R14 0 2
       91 LOADK                            R15 K33 ["EventIngest"]
       92 LOADK                            R16 K34 ["Points"]
       93 SETLIST                          R14 R15 2 [1]
       95 SETTABLEKS                       R14 R13 K26 ["backends"]
       97 NEWTABLE                         R14 0 3
       99 LOADN                            R15 2026
      100 LOADN                            R16 7
      101 LOADN                            R17 6
      102 SETLIST                          R14 R15 3 [1]
      104 SETTABLEKS                       R14 R13 K27 ["lastUpdated"]
      106 LOADK                            R16 K2 ["AssetManager"]
      107 NAMECALL                         R14 R10 K35 ["GetOTAPluginVersion"]
      109 CALL                             R14 2 1
      110 DUPCLOSURE                       R15 K36 [PROTO_0]
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R13
      121 DUPCLOSURE                       R16 K37 [PROTO_1]
      122 CAPTURE                          VAL R15
      123 SETTABLEKS                       R16 R12 K38 ["sendInsertEvent"]
      125 RETURN                           R12 1
