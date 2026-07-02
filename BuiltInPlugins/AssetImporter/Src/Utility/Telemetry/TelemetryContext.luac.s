PROTO_0:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["TelemetryContext.new expects a Telemetry instance."]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 DUPTABLE                         R1 K4 [{"telemetry"}]
        8 SETTABLEKS                       R0 R1 K3 ["telemetry"]
       10 GETUPVAL                         R4 0
       11 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K6 [setmetatable]
       16 CALL                             R2 2 0
       17 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["telemetry"]
        2 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+1]
        2 GETUPVAL                         R3 0
        3 MOVE                             R2 R3
        4 GETTABLEKS                       R3 R0 K0 ["telemetry"]
        6 MOVE                             R5 R2
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K1 ["join"]
       10 DUPTABLE                         R7 K4 [{"studioSessionId", "clientId"}]
       11 GETUPVAL                         R8 2
       12 NAMECALL                         R8 R8 K5 ["GetSessionId"]
       14 CALL                             R8 1 1
       15 SETTABLEKS                       R8 R7 K2 ["studioSessionId"]
       17 GETUPVAL                         R8 2
       18 NAMECALL                         R8 R8 K6 ["GetClientId"]
       20 CALL                             R8 1 1
       21 SETTABLEKS                       R8 R7 K3 ["clientId"]
       23 MOVE                             R8 R1
       24 CALL                             R6 2 -1
       25 NAMECALL                         R3 R3 K7 ["logRobloxTelemetryEvent"]
       27 CALL                             R3 -1 0
       28 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R4 K3 [{[1] = "FilesAdded", ["filesAdded"]}]
        1 SETTABLEKS                       R1 R4 K2 ["filesAdded"]
        3 NAMECALL                         R2 R0 K4 ["logRobloxTelemetryEvent"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R4 K3 [{[1] = "ImportComplete", ["completionTime"]}]
        1 SETTABLEKS                       R1 R4 K2 ["completionTime"]
        3 NAMECALL                         R2 R0 K4 ["logRobloxTelemetryEvent"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R5 K4 [{[1] = "ImportSucceeded", ["importAssetType"], ["importAssetId"]}]
        1 SETTABLEKS                       R1 R5 K2 ["importAssetType"]
        3 SETTABLEKS                       R2 R5 K3 ["importAssetId"]
        5 NAMECALL                         R3 R0 K5 ["logRobloxTelemetryEvent"]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R5 K4 [{[1] = "ImportFailed", ["importAssetType"], ["errorMessage"]}]
        1 SETTABLEKS                       R1 R5 K2 ["importAssetType"]
        3 SETTABLEKS                       R2 R5 K3 ["errorMessage"]
        5 NAMECALL                         R3 R0 K5 ["logRobloxTelemetryEvent"]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["FileType"]
        5 GETTABLEKS                       R3 R3 K1 ["Video"]
        7 LOADN                            R4 0
        8 SETTABLE                         R4 R2 R3
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["FileType"]
       12 GETTABLEKS                       R3 R3 K2 ["Audio"]
       14 LOADN                            R4 0
       15 SETTABLE                         R4 R2 R3
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["FileType"]
       19 GETTABLEKS                       R3 R3 K3 ["Image"]
       21 LOADN                            R4 0
       22 SETTABLE                         R4 R2 R3
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K0 ["FileType"]
       26 GETTABLEKS                       R3 R3 K4 ["Scene"]
       28 LOADN                            R4 0
       29 SETTABLE                         R4 R2 R3
       30 MOVE                             R3 R1
       31 LOADNIL                          R4
       32 LOADNIL                          R5
       33 FORGPREP                         R3
       34 GETTABLEKS                       R9 R7 K5 ["fileType"]
       36 GETTABLE                         R8 R2 R9
       37 JUMPIFNOT                        R8 ; [+5]
       38 GETTABLEKS                       R8 R7 K5 ["fileType"]
       40 GETTABLE                         R9 R2 R8
       41 ADDK                             R9 R9 K6 [1]
       42 SETTABLE                         R9 R2 R8
       43 FORGLOOP                         R3 2 ; [-10]
       45 DUPTABLE                         R5 K13 [{["eventType"] = "ImportStarted", ["videoImports"], ["audioImports"], ["imageImports"], ["meshImports"]}]
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K0 ["FileType"]
       49 GETTABLEKS                       R7 R7 K1 ["Video"]
       51 GETTABLE                         R6 R2 R7
       52 SETTABLEKS                       R6 R5 K9 ["videoImports"]
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K0 ["FileType"]
       57 GETTABLEKS                       R7 R7 K1 ["Video"]
       59 GETTABLE                         R6 R2 R7
       60 SETTABLEKS                       R6 R5 K10 ["audioImports"]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K0 ["FileType"]
       65 GETTABLEKS                       R7 R7 K1 ["Video"]
       67 GETTABLE                         R6 R2 R7
       68 SETTABLEKS                       R6 R5 K11 ["imageImports"]
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R7 R7 K0 ["FileType"]
       73 GETTABLEKS                       R7 R7 K1 ["Video"]
       75 GETTABLE                         R6 R2 R7
       76 SETTABLEKS                       R6 R5 K12 ["meshImports"]
       78 NAMECALL                         R3 R0 K14 ["logRobloxTelemetryEvent"]
       80 CALL                             R3 2 0
       81 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 DUPTABLE                         R2 K2 [{"logRobloxTelemetryEvent"}]
        4 MOVE                             R3 R0
        5 JUMPIF                           R3 ; [+1]
        6 DUPCLOSURE                       R3 K3 [PROTO_8]
        7 SETTABLEKS                       R3 R2 K1 ["logRobloxTelemetryEvent"]
        9 CALL                             R1 1 1
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["RbxAnalyticsService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Dash"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["ContextServices"]
       36 GETTABLEKS                       R5 R5 K15 ["ContextItem"]
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K6 ["Src"]
       42 GETTABLEKS                       R7 R7 K7 ["Utility"]
       44 GETTABLEKS                       R7 R7 K16 ["Telemetry"]
       46 GETTABLEKS                       R7 R7 K17 ["ImportQueueEvent"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Src"]
       53 GETTABLEKS                       R8 R8 K18 ["Types"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Src"]
       60 GETTABLEKS                       R9 R9 K18 ["Types"]
       62 GETTABLEKS                       R9 R9 K19 ["QueuedSession"]
       64 CALL                             R8 1 1
       65 LOADK                            R11 K16 ["Telemetry"]
       66 NAMECALL                         R9 R5 K20 ["extend"]
       68 CALL                             R9 2 1
       69 DUPCLOSURE                       R10 K21 [PROTO_0]
       70 CAPTURE                          VAL R9
       71 SETTABLEKS                       R10 R9 K22 ["new"]
       73 DUPCLOSURE                       R10 K23 [PROTO_1]
       74 SETTABLEKS                       R10 R9 K24 ["get"]
       76 DUPCLOSURE                       R10 K25 [PROTO_2]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R2
       80 SETTABLEKS                       R10 R9 K26 ["logRobloxTelemetryEvent"]
       82 DUPCLOSURE                       R10 K27 [PROTO_3]
       83 SETTABLEKS                       R10 R9 K28 ["logFilesAdded"]
       85 DUPCLOSURE                       R10 K29 [PROTO_4]
       86 SETTABLEKS                       R10 R9 K30 ["logImportComplete"]
       88 DUPCLOSURE                       R10 K31 [PROTO_5]
       89 SETTABLEKS                       R10 R9 K32 ["logImportSucceeded"]
       91 DUPCLOSURE                       R10 K33 [PROTO_6]
       92 SETTABLEKS                       R10 R9 K34 ["logImportFailed"]
       94 DUPCLOSURE                       R10 K35 [PROTO_7]
       95 CAPTURE                          VAL R7
       96 SETTABLEKS                       R10 R9 K36 ["logImportStarted"]
       98 DUPCLOSURE                       R10 K37 [PROTO_9]
       99 CAPTURE                          VAL R9
      100 SETTABLEKS                       R10 R9 K38 ["mock"]
      102 RETURN                           R9 1
