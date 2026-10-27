PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Guest"]
        3 GETTABLEKS                       R1 R1 K1 ["InstanceGuestRPCInterface"]
        5 GETTABLEKS                       R1 R1 K2 ["createInstanceGuestRPCInterface"]
        7 GETIMPORT                        R2 K4 [game]
        9 MOVE                             R3 R0
       10 GETUPVAL                         R4 1
       11 GETUPVAL                         R5 2
       12 CALL                             R4 1 1
       13 DUPTABLE                         R5 K17 [{"openInsertObjectMenuAsync", "getInstanceId", "listenForVisibilityChanges", "instancePicker", "streamingInterface", "isServiceVisible", "clickScript", "DEPRECATED_openScript", "instanceOpener", "fieldsConfig", "DEBUG_dataModelType", "DEBUG_startTime"}]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R6 R5 K5 ["openInsertObjectMenuAsync"]
       19 GETIMPORT                        R7 K4 [game]
       21 GETTABLEKS                       R7 R7 K18 ["UniqueId"]
       23 JUMPIFNOTEQKS                    R7 K19 ["00000000-0000-0000-0000-000000000000"] ; [+3]
       25 LOADNIL                          R6
       26 JUMP                             ; [+2]
       27 DUPCLOSURE                       R6 K20 [PROTO_1]
       28 CAPTURE                          UPVAL U4
       29 SETTABLEKS                       R6 R5 K6 ["getInstanceId"]
       31 GETUPVAL                         R6 5
       32 SETTABLEKS                       R6 R5 K7 ["listenForVisibilityChanges"]
       34 GETUPVAL                         R6 6
       35 SETTABLEKS                       R6 R5 K8 ["instancePicker"]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K21 ["Flags"]
       40 GETTABLEKS                       R7 R7 K22 ["getFFlagExplorerStreaming"]
       42 CALL                             R7 0 1
       43 JUMPIFNOT                        R7 ; [+3]
       44 GETUPVAL                         R6 7
       45 CALL                             R6 0 1
       46 JUMP                             ; [+1]
       47 LOADNIL                          R6
       48 SETTABLEKS                       R6 R5 K9 ["streamingInterface"]
       50 GETUPVAL                         R6 8
       51 SETTABLEKS                       R6 R5 K10 ["isServiceVisible"]
       53 GETUPVAL                         R7 9
       54 CALL                             R7 0 1
       55 JUMPIFNOT                        R7 ; [+2]
       56 GETUPVAL                         R6 10
       57 JUMP                             ; [+1]
       58 LOADNIL                          R6
       59 SETTABLEKS                       R6 R5 K11 ["clickScript"]
       61 GETUPVAL                         R6 11
       62 SETTABLEKS                       R6 R5 K12 ["DEPRECATED_openScript"]
       64 GETUPVAL                         R6 12
       65 SETTABLEKS                       R6 R5 K13 ["instanceOpener"]
       67 DUPTABLE                         R6 K26 [{"createLiveSyncStatusWatcher", "createInstanceFileSyncStatusWatcher", "createCollaboratorSelectionWatcher"}]
       68 GETUPVAL                         R7 13
       69 SETTABLEKS                       R7 R6 K23 ["createLiveSyncStatusWatcher"]
       71 GETUPVAL                         R7 14
       72 SETTABLEKS                       R7 R6 K24 ["createInstanceFileSyncStatusWatcher"]
       74 GETUPVAL                         R7 15
       75 SETTABLEKS                       R7 R6 K25 ["createCollaboratorSelectionWatcher"]
       77 SETTABLEKS                       R6 R5 K14 ["fieldsConfig"]
       79 GETUPVAL                         R6 2
       80 GETTABLEKS                       R6 R6 K27 ["HostDataModelType"]
       82 GETTABLEKS                       R6 R6 K28 ["Name"]
       84 SETTABLEKS                       R6 R5 K15 ["DEBUG_dataModelType"]
       86 GETIMPORT                        R6 K31 [os.clock]
       88 CALL                             R6 0 1
       89 SETTABLEKS                       R6 R5 K16 ["DEBUG_startTime"]
       91 CALL                             R1 4 -1
       92 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 3
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 4
        9 CALL                             R0 0 0
       10 GETUPVAL                         R0 5
       11 JUMPIFNOT                        R0 ; [+2]
       12 GETUPVAL                         R0 5
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error when unloading: %*"]
        3 GETIMPORT                        R4 K5 [debug.traceback]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K6 ["format"]
        9 CALL                             R2 2 1
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 0
       12 DUPTABLE                         R3 K14 [{["eventName"] = "LuaExplorerUnloadingError", ["description"] = "Fired when something errors in plugin.Unloading", ["backends"], ["throttlingPercentage"], ["lastUpdated"]}]
       13 NEWTABLE                         R4 0 1
       15 LOADK                            R5 K15 ["Points"]
       16 SETLIST                          R4 R5 1 [1]
       18 SETTABLEKS                       R4 R3 K11 ["backends"]
       20 GETIMPORT                        R4 K17 [game]
       22 LOADK                            R6 K18 ["LuaExplorerUnloadingErrorThrottlingHundredthsPercent"]
       23 LOADN                            R7 10000
       24 NAMECALL                         R4 R4 K19 ["DefineFastInt"]
       26 CALL                             R4 3 1
       27 SETTABLEKS                       R4 R3 K12 ["throttlingPercentage"]
       29 NEWTABLE                         R4 0 3
       31 LOADN                            R5 25
       32 LOADN                            R6 4
       33 LOADN                            R7 2
       34 SETLIST                          R4 R5 3 [1]
       36 SETTABLEKS                       R4 R3 K13 ["lastUpdated"]
       38 DUPTABLE                         R4 K22 [{"customFields", "standardizedFields"}]
       39 DUPTABLE                         R5 K25 [{"dataModel", "problem"}]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K26 ["HostDataModelType"]
       43 GETTABLEKS                       R6 R6 K27 ["Name"]
       45 SETTABLEKS                       R6 R5 K23 ["dataModel"]
       47 SETTABLEKS                       R0 R5 K24 ["problem"]
       49 SETTABLEKS                       R5 R4 K20 ["customFields"]
       51 NEWTABLE                         R5 0 6
       53 LOADK                            R6 K28 ["addPlaceId"]
       54 LOADK                            R7 K29 ["addUniverseId"]
       55 LOADK                            R8 K30 ["addPlaceInstanceId"]
       56 LOADK                            R9 K31 ["addSessionId"]
       57 LOADK                            R10 K32 ["addOSInfo"]
       58 LOADK                            R11 K33 ["addSessionInfo"]
       59 SETLIST                          R5 R6 6 [1]
       61 SETTABLEKS                       R5 R4 K21 ["standardizedFields"]
       63 NAMECALL                         R1 R1 K34 ["LogEvent"]
       65 CALL                             R1 3 0
       66 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [xpcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["connectGuest"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["connectGuest"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 3
       13 MOVE                             R6 R0
       14 CALL                             R5 1 2
       15 LOADNIL                          R7
       16 LOADNIL                          R8
       17 GETUPVAL                         R9 4
       18 GETTABLEKS                       R9 R9 K1 ["Flags"]
       20 GETTABLEKS                       R9 R9 K2 ["getFFlagStudioTextDocumentAssetEditor"]
       22 CALL                             R9 0 1
       23 JUMPIFNOT                        R9 ; [+19]
       24 GETUPVAL                         R9 5
       25 CALL                             R9 0 1
       26 MOVE                             R8 R9
       27 GETTABLEKS                       R10 R0 K3 ["HostDataModelType"]
       29 GETIMPORT                        R11 K7 [Enum.StudioDataModelType.Edit]
       31 JUMPIFNOTEQ                      R10 R11 ; [+3]
       33 GETUPVAL                         R9 6
       34 JUMP                             ; [+1]
       35 GETUPVAL                         R9 7
       36 DUPTABLE                         R10 K10 [{"classNames", "open"}]
       37 SETTABLEKS                       R9 R10 K8 ["classNames"]
       39 GETUPVAL                         R11 8
       40 SETTABLEKS                       R11 R10 K9 ["open"]
       42 MOVE                             R7 R10
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R9 R9 K11 ["Guest"]
       46 GETTABLEKS                       R9 R9 K12 ["startGuest"]
       48 DUPTABLE                         R10 K15 [{"guestConnectionObservable", "createGuestRpcInterface"}]
       49 SETTABLEKS                       R3 R10 K13 ["guestConnectionObservable"]
       51 NEWCLOSURE                       R11 P0
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U10
       56 CAPTURE                          UPVAL U11
       57 CAPTURE                          UPVAL U12
       58 CAPTURE                          VAL R5
       59 CAPTURE                          UPVAL U13
       60 CAPTURE                          UPVAL U14
       61 CAPTURE                          UPVAL U15
       62 CAPTURE                          UPVAL U16
       63 CAPTURE                          UPVAL U17
       64 CAPTURE                          REF R7
       65 CAPTURE                          UPVAL U18
       66 CAPTURE                          UPVAL U19
       67 CAPTURE                          UPVAL U20
       68 SETTABLEKS                       R11 R10 K14 ["createGuestRpcInterface"]
       70 CALL                             R9 1 1
       71 GETTABLEKS                       R10 R0 K16 ["Unloading"]
       73 NEWCLOSURE                       R12 P1
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R2
       79 CAPTURE                          REF R8
       80 CAPTURE                          UPVAL U21
       81 CAPTURE                          VAL R0
       82 NAMECALL                         R10 R10 K17 ["Connect"]
       84 CALL                             R10 2 0
       85 CLOSEUPVALS                      R7
       86 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TelemetryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UniqueIdLookupService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["ExplorerPlugin"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Flags"]
       25 GETTABLEKS                       R4 R4 K13 ["DEPRECATED_createGetSafeFFlag"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R2 K14 ["Packages"]
       32 GETTABLEKS                       R5 R5 K15 ["Explorer"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R2 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K16 ["SharedFeatures"]
       41 GETTABLEKS                       R6 R6 K17 ["StudioSelectAll"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K10 [require]
       46 GETTABLEKS                       R7 R2 K11 ["Src"]
       48 GETTABLEKS                       R7 R7 K16 ["SharedFeatures"]
       50 GETTABLEKS                       R7 R7 K18 ["StudioWindowInput"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K10 [require]
       55 GETTABLEKS                       R8 R2 K11 ["Src"]
       57 GETTABLEKS                       R8 R8 K19 ["Guest"]
       59 GETTABLEKS                       R8 R8 K20 ["clickScript"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K10 [require]
       64 GETTABLEKS                       R9 R2 K11 ["Src"]
       66 GETTABLEKS                       R9 R9 K19 ["Guest"]
       68 GETTABLEKS                       R9 R9 K21 ["connectScriptContentEditor"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K10 [require]
       73 GETTABLEKS                       R10 R2 K11 ["Src"]
       75 GETTABLEKS                       R10 R10 K19 ["Guest"]
       77 GETTABLEKS                       R10 R10 K22 ["createInstanceFileSyncStatusWatcher"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K10 [require]
       82 GETTABLEKS                       R11 R2 K11 ["Src"]
       84 GETTABLEKS                       R11 R11 K19 ["Guest"]
       86 GETTABLEKS                       R11 R11 K23 ["createLiveSyncStatusWatcher"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K10 [require]
       91 GETTABLEKS                       R12 R2 K11 ["Src"]
       93 GETTABLEKS                       R12 R12 K19 ["Guest"]
       95 GETTABLEKS                       R12 R12 K24 ["createStudioCollaboratorSelectionWatcher"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K10 [require]
      100 GETTABLEKS                       R13 R2 K11 ["Src"]
      102 GETTABLEKS                       R13 R13 K19 ["Guest"]
      104 GETTABLEKS                       R13 R13 K25 ["createStudioGuestConnection"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K10 [require]
      109 GETTABLEKS                       R14 R2 K11 ["Src"]
      111 GETTABLEKS                       R14 R14 K16 ["SharedFeatures"]
      113 GETTABLEKS                       R14 R14 K26 ["ContextMenu"]
      115 GETTABLEKS                       R14 R14 K27 ["createStudioGuestContextMenuActions"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K10 [require]
      120 GETTABLEKS                       R15 R2 K11 ["Src"]
      122 GETTABLEKS                       R15 R15 K19 ["Guest"]
      124 GETTABLEKS                       R15 R15 K28 ["createStudioInstancePicker"]
      126 CALL                             R14 1 1
      127 GETIMPORT                        R15 K10 [require]
      129 GETTABLEKS                       R16 R2 K11 ["Src"]
      131 GETTABLEKS                       R16 R16 K19 ["Guest"]
      133 GETTABLEKS                       R16 R16 K29 ["Streaming"]
      135 GETTABLEKS                       R16 R16 K30 ["createStudioStreamingInterface"]
      137 CALL                             R15 1 1
      138 GETIMPORT                        R16 K10 [require]
      140 GETTABLEKS                       R17 R2 K11 ["Src"]
      142 GETTABLEKS                       R17 R17 K19 ["Guest"]
      144 GETTABLEKS                       R17 R17 K31 ["editableClassNames"]
      146 CALL                             R16 1 1
      147 GETIMPORT                        R17 K10 [require]
      149 GETTABLEKS                       R18 R2 K11 ["Src"]
      151 GETTABLEKS                       R18 R18 K19 ["Guest"]
      153 GETTABLEKS                       R18 R18 K32 ["isServiceVisible"]
      155 CALL                             R17 1 1
      156 GETIMPORT                        R18 K10 [require]
      158 GETTABLEKS                       R19 R2 K11 ["Src"]
      160 GETTABLEKS                       R19 R19 K19 ["Guest"]
      162 GETTABLEKS                       R19 R19 K33 ["listenForVisibilityChanges"]
      164 CALL                             R18 1 1
      165 GETIMPORT                        R19 K10 [require]
      167 GETTABLEKS                       R20 R2 K11 ["Src"]
      169 GETTABLEKS                       R20 R20 K19 ["Guest"]
      171 GETTABLEKS                       R20 R20 K34 ["luaSourceContainerClassNames"]
      173 CALL                             R19 1 1
      174 GETIMPORT                        R20 K10 [require]
      176 GETTABLEKS                       R21 R2 K11 ["Src"]
      178 GETTABLEKS                       R21 R21 K19 ["Guest"]
      180 GETTABLEKS                       R21 R21 K35 ["openInsertObjectMenuAsync"]
      182 CALL                             R20 1 1
      183 GETIMPORT                        R21 K10 [require]
      185 GETTABLEKS                       R22 R2 K11 ["Src"]
      187 GETTABLEKS                       R22 R22 K19 ["Guest"]
      189 GETTABLEKS                       R22 R22 K36 ["openInstance"]
      191 CALL                             R21 1 1
      192 GETIMPORT                        R22 K10 [require]
      194 GETTABLEKS                       R23 R2 K11 ["Src"]
      196 GETTABLEKS                       R23 R23 K19 ["Guest"]
      198 GETTABLEKS                       R23 R23 K37 ["openScript"]
      200 CALL                             R22 1 1
      201 MOVE                             R23 R3
      202 LOADK                            R24 K38 ["OpenScriptDocOptionsLua"]
      203 CALL                             R23 1 1
      204 DUPCLOSURE                       R24 K39 [PROTO_6]
      205 CAPTURE                          VAL R5
      206 CAPTURE                          VAL R6
      207 CAPTURE                          VAL R12
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R4
      210 CAPTURE                          VAL R8
      211 CAPTURE                          VAL R16
      212 CAPTURE                          VAL R19
      213 CAPTURE                          VAL R21
      214 CAPTURE                          VAL R13
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R1
      217 CAPTURE                          VAL R18
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R17
      220 CAPTURE                          VAL R23
      221 CAPTURE                          VAL R7
      222 CAPTURE                          VAL R22
      223 CAPTURE                          VAL R10
      224 CAPTURE                          VAL R9
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R0
      227 RETURN                           R24 1
