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
       42 DUPTABLE                         R10 K19 [{"eventName", "clientId", "isCompact", "viewMode", "currentRootId", "currentRootType", "currentFolderId"}]
       43 SETTABLEKS                       R0 R10 K12 ["eventName"]
       45 GETUPVAL                         R11 2
       46 NAMECALL                         R11 R11 K20 ["GetClientId"]
       48 CALL                             R11 1 1
       49 SETTABLEKS                       R11 R10 K13 ["clientId"]
       51 SETTABLEKS                       R3 R10 K14 ["isCompact"]
       53 SETTABLEKS                       R4 R10 K15 ["viewMode"]
       55 SETTABLEKS                       R7 R10 K16 ["currentRootId"]
       57 SETTABLEKS                       R8 R10 K17 ["currentRootType"]
       59 SETTABLEKS                       R9 R10 K18 ["currentFolderId"]
       61 GETUPVAL                         R11 3
       62 GETTABLEKS                       R11 R11 K21 ["join"]
       64 MOVE                             R12 R10
       65 DUPTABLE                         R13 K23 [{"eventMetadataSerialized"}]
       66 GETUPVAL                         R14 4
       67 MOVE                             R16 R1
       68 NAMECALL                         R14 R14 K24 ["JSONEncode"]
       70 CALL                             R14 2 1
       71 SETTABLEKS                       R14 R13 K22 ["eventMetadataSerialized"]
       73 CALL                             R11 2 1
       74 GETUPVAL                         R12 5
       75 CALL                             R12 0 1
       76 JUMPIFNOT                        R12 ; [+19]
       77 GETIMPORT                        R12 K26 [print]
       79 LOADK                            R14 K27 ["Sending AssetManager UnifiedEvent: %*"]
       80 MOVE                             R16 R0
       81 NAMECALL                         R14 R14 K28 ["format"]
       83 CALL                             R14 2 1
       84 MOVE                             R13 R14
       85 CALL                             R12 1 0
       86 GETIMPORT                        R12 K26 [print]
       88 LOADK                            R13 K29 ["Context Fields: "]
       89 MOVE                             R14 R10
       90 CALL                             R12 2 0
       91 GETIMPORT                        R12 K26 [print]
       93 LOADK                            R13 K30 ["Event Metadata: "]
       94 MOVE                             R14 R1
       95 CALL                             R12 2 0
       96 GETUPVAL                         R12 6
       97 GETUPVAL                         R14 7
       98 DUPTABLE                         R15 K35 [{["customFields"], ["eventContext"] = "AssetManager", ["standardizedFields"]}]
       99 SETTABLEKS                       R11 R15 K31 ["customFields"]
      101 NEWTABLE                         R16 0 4
      103 GETIMPORT                        R17 K39 [Enum.TelemetryStandardizedField.AddPlaceId]
      105 GETIMPORT                        R18 K41 [Enum.TelemetryStandardizedField.AddUniverseId]
      107 GETIMPORT                        R19 K43 [Enum.TelemetryStandardizedField.AddSessionInfo]
      109 GETIMPORT                        R20 K45 [Enum.TelemetryStandardizedField.AddPlaySessionId]
      111 SETLIST                          R16 R17 4 [1]
      113 SETTABLEKS                       R16 R15 K34 ["standardizedFields"]
      115 NAMECALL                         R12 R12 K46 ["LogEvent"]
      117 CALL                             R12 3 0
      118 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Insert"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TelemetryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RbxAnalyticsService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["HttpService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["AssetManager"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["Packages"]
       29 GETTABLEKS                       R5 R5 K13 ["Dash"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R3 K14 ["Src"]
       36 GETTABLEKS                       R6 R6 K15 ["Types"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R3 K14 ["Src"]
       43 GETTABLEKS                       R7 R7 K16 ["Util"]
       45 GETTABLEKS                       R7 R7 K17 ["getViewTypeTelemetryString"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K11 [require]
       50 GETIMPORT                        R8 K7 [script]
       52 GETTABLEKS                       R8 R8 K15 ["Types"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETTABLEKS                       R9 R3 K14 ["Src"]
       59 GETTABLEKS                       R9 R9 K18 ["Flags"]
       61 GETTABLEKS                       R9 R9 K19 ["getFFlagDebugAmrPrintAnalytics"]
       63 CALL                             R8 1 1
       64 NEWTABLE                         R9 2 0
       66 SETTABLEKS                       R7 R9 K15 ["Types"]
       68 DUPTABLE                         R10 K29 [{["eventName"] = "UnifiedEvent", ["eventContext"] = "AssetManager", ["backends"], ["lastUpdated"], ["description"] = "Asset Manager plugin events", ["throttlingPercentage"] = 10000}]
       69 NEWTABLE                         R11 0 2
       71 LOADK                            R12 K30 ["EventIngest"]
       72 LOADK                            R13 K31 ["Points"]
       73 SETLIST                          R11 R12 2 [1]
       75 SETTABLEKS                       R11 R10 K23 ["backends"]
       77 NEWTABLE                         R11 0 3
       79 LOADN                            R12 2026
       80 LOADN                            R13 7
       81 LOADN                            R14 6
       82 SETLIST                          R11 R12 3 [1]
       84 SETTABLEKS                       R11 R10 K24 ["lastUpdated"]
       86 DUPCLOSURE                       R11 K32 [PROTO_0]
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R10
       95 DUPCLOSURE                       R12 K33 [PROTO_1]
       96 CAPTURE                          VAL R11
       97 SETTABLEKS                       R12 R9 K34 ["sendInsertEvent"]
       99 RETURN                           R9 1
