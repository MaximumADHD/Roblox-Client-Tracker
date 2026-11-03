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
        0 DUPTABLE                         R2 K3 [{[1] = "FilesAdded", ["filesAdded"]}]
        1 LENGTH                           R3 R1
        2 SETTABLEKS                       R3 R2 K2 ["filesAdded"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+38]
        7 NEWTABLE                         R3 0 0
        9 MOVE                             R4 R1
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETUPVAL                         R9 1
       14 MOVE                             R10 R8
       15 CALL                             R9 1 2
       16 GETUPVAL                         R12 2
       17 GETTABLE                         R11 R12 R10
       18 JUMPIFNOT                        R11 ; [+12]
       19 GETTABLE                         R12 R3 R11
       20 JUMPIF                           R12 ; [+2]
       21 NEWTABLE                         R12 0 0
       23 SETTABLE                         R12 R3 R11
       24 GETTABLE                         R13 R3 R11
       25 FASTCALL2                        TABLE_INSERT R13 R8 ; [+4]
       27 MOVE                             R14 R8
       28 GETIMPORT                        R12 K6 [table.insert]
       30 CALL                             R12 2 0
       31 FORGLOOP                         R4 2 ; [-19]
       33 MOVE                             R4 R3
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 FORGPREP                         R4
       37 GETUPVAL                         R9 3
       38 MOVE                             R11 R8
       39 NAMECALL                         R9 R9 K7 ["JSONEncode"]
       41 CALL                             R9 2 1
       42 SETTABLE                         R9 R2 R7
       43 FORGLOOP                         R4 2 ; [-7]
       45 MOVE                             R5 R2
       46 NAMECALL                         R3 R0 K8 ["logRobloxTelemetryEvent"]
       48 CALL                             R3 2 0
       49 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R4 K3 [{[1] = "ImportComplete", ["completionTime"]}]
        1 SETTABLEKS                       R1 R4 K2 ["completionTime"]
        3 NAMECALL                         R2 R0 K4 ["logRobloxTelemetryEvent"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R6 K5 [{[1] = "ImportSucceeded", ["importAssetType"], ["importAssetId"], ["importFilePath"]}]
        1 SETTABLEKS                       R1 R6 K2 ["importAssetType"]
        3 SETTABLEKS                       R2 R6 K3 ["importAssetId"]
        5 GETUPVAL                         R8 0
        6 CALL                             R8 0 1
        7 JUMPIFNOT                        R8 ; [+2]
        8 MOVE                             R7 R3
        9 JUMP                             ; [+1]
       10 LOADNIL                          R7
       11 SETTABLEKS                       R7 R6 K4 ["importFilePath"]
       13 NAMECALL                         R4 R0 K6 ["logRobloxTelemetryEvent"]
       15 CALL                             R4 2 0
       16 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R6 K5 [{[1] = "ImportFailed", ["importAssetType"], ["errorMessage"], ["importFilePath"]}]
        1 SETTABLEKS                       R1 R6 K2 ["importAssetType"]
        3 SETTABLEKS                       R2 R6 K3 ["errorMessage"]
        5 GETUPVAL                         R8 0
        6 CALL                             R8 0 1
        7 JUMPIFNOT                        R8 ; [+2]
        8 MOVE                             R7 R3
        9 JUMP                             ; [+1]
       10 LOADNIL                          R7
       11 SETTABLEKS                       R7 R6 K4 ["importFilePath"]
       13 NAMECALL                         R4 R0 K6 ["logRobloxTelemetryEvent"]
       15 CALL                             R4 2 0
       16 RETURN                           R0 0

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
       45 DUPTABLE                         R5 K13 [{["eventType"] = "ImportStarted", ["videoImports"], ["audioImports"], ["imageImports"], ["sceneImports"]}]
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K0 ["FileType"]
       49 GETTABLEKS                       R7 R7 K1 ["Video"]
       51 GETTABLE                         R6 R2 R7
       52 SETTABLEKS                       R6 R5 K9 ["videoImports"]
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K0 ["FileType"]
       57 GETTABLEKS                       R7 R7 K2 ["Audio"]
       59 GETTABLE                         R6 R2 R7
       60 SETTABLEKS                       R6 R5 K10 ["audioImports"]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K0 ["FileType"]
       65 GETTABLEKS                       R7 R7 K3 ["Image"]
       67 GETTABLE                         R6 R2 R7
       68 SETTABLEKS                       R6 R5 K11 ["imageImports"]
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R7 R7 K0 ["FileType"]
       73 GETTABLEKS                       R7 R7 K4 ["Scene"]
       75 GETTABLE                         R6 R2 R7
       76 SETTABLEKS                       R6 R5 K12 ["sceneImports"]
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
       20 GETTABLEKS                       R3 R1 K9 ["GetService"]
       22 LOADK                            R4 K11 ["HttpService"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K12 ["Packages"]
       28 GETTABLEKS                       R5 R5 K13 ["Dash"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K12 ["Packages"]
       35 GETTABLEKS                       R6 R6 K14 ["Framework"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R5 K15 ["ContextServices"]
       40 GETTABLEKS                       R6 R6 K16 ["ContextItem"]
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Src"]
       46 GETTABLEKS                       R8 R8 K7 ["Utility"]
       48 GETTABLEKS                       R8 R8 K17 ["Telemetry"]
       50 GETTABLEKS                       R8 R8 K18 ["ImportQueueEvent"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R0 K6 ["Src"]
       57 GETTABLEKS                       R9 R9 K19 ["Types"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K5 [require]
       62 GETTABLEKS                       R10 R0 K6 ["Src"]
       64 GETTABLEKS                       R10 R10 K19 ["Types"]
       66 GETTABLEKS                       R10 R10 K20 ["QueuedSession"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R11 R0 K6 ["Src"]
       73 GETTABLEKS                       R11 R11 K7 ["Utility"]
       75 GETTABLEKS                       R11 R11 K21 ["parseFilename"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K5 [require]
       80 GETTABLEKS                       R12 R0 K6 ["Src"]
       82 GETTABLEKS                       R12 R12 K22 ["Flags"]
       84 GETTABLEKS                       R12 R12 K23 ["getFFlagImportQueueReportFileNames"]
       86 CALL                             R11 1 1
       87 NEWTABLE                         R12 4 0
       89 GETTABLEKS                       R13 R8 K24 ["FileType"]
       91 GETTABLEKS                       R13 R13 K25 ["Scene"]
       93 LOADK                            R14 K26 ["sceneFileNames"]
       94 SETTABLE                         R14 R12 R13
       95 GETTABLEKS                       R13 R8 K24 ["FileType"]
       97 GETTABLEKS                       R13 R13 K27 ["Image"]
       99 LOADK                            R14 K28 ["imageFileNames"]
      100 SETTABLE                         R14 R12 R13
      101 GETTABLEKS                       R13 R8 K24 ["FileType"]
      103 GETTABLEKS                       R13 R13 K29 ["Audio"]
      105 LOADK                            R14 K30 ["audioFileNames"]
      106 SETTABLE                         R14 R12 R13
      107 GETTABLEKS                       R13 R8 K24 ["FileType"]
      109 GETTABLEKS                       R13 R13 K31 ["Video"]
      111 LOADK                            R14 K32 ["videoFileNames"]
      112 SETTABLE                         R14 R12 R13
      113 LOADK                            R15 K17 ["Telemetry"]
      114 NAMECALL                         R13 R6 K33 ["extend"]
      116 CALL                             R13 2 1
      117 DUPCLOSURE                       R14 K34 [PROTO_0]
      118 CAPTURE                          VAL R13
      119 SETTABLEKS                       R14 R13 K35 ["new"]
      121 DUPCLOSURE                       R14 K36 [PROTO_1]
      122 SETTABLEKS                       R14 R13 K37 ["get"]
      124 DUPCLOSURE                       R14 K38 [PROTO_2]
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R2
      128 SETTABLEKS                       R14 R13 K39 ["logRobloxTelemetryEvent"]
      130 DUPCLOSURE                       R14 K40 [PROTO_3]
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R3
      135 SETTABLEKS                       R14 R13 K41 ["logFilesAdded"]
      137 DUPCLOSURE                       R14 K42 [PROTO_4]
      138 SETTABLEKS                       R14 R13 K43 ["logImportComplete"]
      140 DUPCLOSURE                       R14 K44 [PROTO_5]
      141 CAPTURE                          VAL R11
      142 SETTABLEKS                       R14 R13 K45 ["logImportSucceeded"]
      144 DUPCLOSURE                       R14 K46 [PROTO_6]
      145 CAPTURE                          VAL R11
      146 SETTABLEKS                       R14 R13 K47 ["logImportFailed"]
      148 DUPCLOSURE                       R14 K48 [PROTO_7]
      149 CAPTURE                          VAL R8
      150 SETTABLEKS                       R14 R13 K49 ["logImportStarted"]
      152 DUPCLOSURE                       R14 K50 [PROTO_9]
      153 CAPTURE                          VAL R13
      154 SETTABLEKS                       R14 R13 K51 ["mock"]
      156 RETURN                           R13 1
