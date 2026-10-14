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
       12 GETUPVAL                         R6 3
       13 CALL                             R4 2 1
       14 DUPTABLE                         R5 K19 [{["openInsertObjectMenuAsync"], ["getInstanceId"], ["listenForVisibilityChanges"], ["instancePicker"], ["streamingInterface"], ["isServiceVisible"], ["clickScript"], ["DEPRECATED_openScript"], ["instanceOpener"], ["fieldsConfig"], ["enableOpenContextMenuDelayHack"] = True, ["DEBUG_dataModelType"], ["DEBUG_startTime"]}]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R6 R5 K5 ["openInsertObjectMenuAsync"]
       20 GETIMPORT                        R7 K4 [game]
       22 GETTABLEKS                       R7 R7 K20 ["UniqueId"]
       24 JUMPIFNOTEQKS                    R7 K21 ["00000000-0000-0000-0000-000000000000"] ; [+3]
       26 LOADNIL                          R6
       27 JUMP                             ; [+2]
       28 DUPCLOSURE                       R6 K22 [PROTO_1]
       29 CAPTURE                          UPVAL U5
       30 SETTABLEKS                       R6 R5 K6 ["getInstanceId"]
       32 GETUPVAL                         R6 6
       33 SETTABLEKS                       R6 R5 K7 ["listenForVisibilityChanges"]
       35 GETUPVAL                         R6 7
       36 SETTABLEKS                       R6 R5 K8 ["instancePicker"]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K23 ["Flags"]
       41 GETTABLEKS                       R7 R7 K24 ["getFFlagExplorerStreaming"]
       43 CALL                             R7 0 1
       44 JUMPIFNOT                        R7 ; [+3]
       45 GETUPVAL                         R6 8
       46 CALL                             R6 0 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R6
       49 SETTABLEKS                       R6 R5 K9 ["streamingInterface"]
       51 GETUPVAL                         R6 9
       52 SETTABLEKS                       R6 R5 K10 ["isServiceVisible"]
       54 GETUPVAL                         R7 10
       55 CALL                             R7 0 1
       56 JUMPIFNOT                        R7 ; [+2]
       57 GETUPVAL                         R6 11
       58 JUMP                             ; [+1]
       59 LOADNIL                          R6
       60 SETTABLEKS                       R6 R5 K11 ["clickScript"]
       62 GETUPVAL                         R6 12
       63 SETTABLEKS                       R6 R5 K12 ["DEPRECATED_openScript"]
       65 GETUPVAL                         R6 13
       66 SETTABLEKS                       R6 R5 K13 ["instanceOpener"]
       68 DUPTABLE                         R6 K28 [{"createLiveSyncStatusWatcher", "createInstanceFileSyncStatusWatcher", "createCollaboratorSelectionWatcher"}]
       69 GETUPVAL                         R7 14
       70 SETTABLEKS                       R7 R6 K25 ["createLiveSyncStatusWatcher"]
       72 GETUPVAL                         R7 15
       73 SETTABLEKS                       R7 R6 K26 ["createInstanceFileSyncStatusWatcher"]
       75 GETUPVAL                         R7 16
       76 SETTABLEKS                       R7 R6 K27 ["createCollaboratorSelectionWatcher"]
       78 SETTABLEKS                       R6 R5 K14 ["fieldsConfig"]
       80 GETUPVAL                         R6 2
       81 GETTABLEKS                       R6 R6 K29 ["HostDataModelType"]
       83 GETTABLEKS                       R6 R6 K30 ["Name"]
       85 SETTABLEKS                       R6 R5 K17 ["DEBUG_dataModelType"]
       87 GETIMPORT                        R6 K33 [os.clock]
       89 CALL                             R6 0 1
       90 SETTABLEKS                       R6 R5 K18 ["DEBUG_startTime"]
       92 CALL                             R1 4 -1
       93 RETURN                           R1 -1

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
       14 GETUPVAL                         R0 6
       15 GETTABLEKS                       R0 R0 K0 ["Flags"]
       17 GETTABLEKS                       R0 R0 K1 ["getFFlagExplorerFixContextMenu"]
       19 CALL                             R0 0 1
       20 JUMPIF                           R0 ; [+4]
       21 GETUPVAL                         R0 7
       22 GETTABLEKS                       R0 R0 K2 ["destroy"]
       24 CALL                             R0 0 0
       25 RETURN                           R0 0

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
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Flags"]
        3 GETTABLEKS                       R2 R2 K1 ["getFFlagExplorerFixContextMenu"]
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 LOADNIL                          R1
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K2 ["connectGuest"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K2 ["connectGuest"]
       20 CALL                             R3 0 1
       21 GETUPVAL                         R4 4
       22 MOVE                             R5 R0
       23 CALL                             R4 1 2
       24 GETUPVAL                         R6 5
       25 MOVE                             R7 R0
       26 CALL                             R6 1 2
       27 LOADNIL                          R8
       28 LOADNIL                          R9
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R10 R10 K0 ["Flags"]
       32 GETTABLEKS                       R10 R10 K3 ["getFFlagStudioTextDocumentAssetEditor"]
       34 CALL                             R10 0 1
       35 JUMPIFNOT                        R10 ; [+19]
       36 GETUPVAL                         R10 6
       37 CALL                             R10 0 1
       38 MOVE                             R9 R10
       39 GETTABLEKS                       R11 R0 K4 ["HostDataModelType"]
       41 GETIMPORT                        R12 K8 [Enum.StudioDataModelType.Edit]
       43 JUMPIFNOTEQ                      R11 R12 ; [+3]
       45 GETUPVAL                         R10 7
       46 JUMP                             ; [+1]
       47 GETUPVAL                         R10 8
       48 DUPTABLE                         R11 K11 [{"classNames", "open"}]
       49 SETTABLEKS                       R10 R11 K9 ["classNames"]
       51 GETUPVAL                         R12 9
       52 SETTABLEKS                       R12 R11 K10 ["open"]
       54 MOVE                             R8 R11
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R10 R10 K12 ["Guest"]
       58 GETTABLEKS                       R10 R10 K13 ["startGuest"]
       60 DUPTABLE                         R11 K16 [{"guestConnectionObservable", "createGuestRpcInterface"}]
       61 SETTABLEKS                       R4 R11 K14 ["guestConnectionObservable"]
       63 NEWCLOSURE                       R12 P0
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          UPVAL U10
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U11
       69 CAPTURE                          UPVAL U12
       70 CAPTURE                          UPVAL U13
       71 CAPTURE                          VAL R6
       72 CAPTURE                          UPVAL U14
       73 CAPTURE                          UPVAL U15
       74 CAPTURE                          UPVAL U16
       75 CAPTURE                          UPVAL U17
       76 CAPTURE                          UPVAL U18
       77 CAPTURE                          REF R8
       78 CAPTURE                          UPVAL U19
       79 CAPTURE                          UPVAL U20
       80 CAPTURE                          UPVAL U21
       81 SETTABLEKS                       R12 R11 K15 ["createGuestRpcInterface"]
       83 CALL                             R10 1 1
       84 GETTABLEKS                       R11 R0 K17 ["Unloading"]
       86 NEWCLOSURE                       R13 P1
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R3
       92 CAPTURE                          REF R9
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          VAL R1
       95 CAPTURE                          UPVAL U22
       96 CAPTURE                          VAL R0
       97 NAMECALL                         R11 R11 K18 ["Connect"]
       99 CALL                             R11 2 0
      100 CLOSEUPVALS                      R8
      101 RETURN                           R0 0

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
       23 GETTABLEKS                       R4 R4 K12 ["SharedFeatures"]
       25 GETTABLEKS                       R4 R4 K13 ["ContextMenu"]
       27 GETTABLEKS                       R4 R4 K14 ["DEPRECATED_createContextMenuActionWatcher"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K10 [require]
       32 GETTABLEKS                       R5 R2 K15 ["Packages"]
       34 GETTABLEKS                       R5 R5 K16 ["Explorer"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K10 [require]
       39 GETTABLEKS                       R6 R2 K11 ["Src"]
       41 GETTABLEKS                       R6 R6 K12 ["SharedFeatures"]
       43 GETTABLEKS                       R6 R6 K17 ["StudioSelectAll"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K10 [require]
       48 GETTABLEKS                       R7 R2 K11 ["Src"]
       50 GETTABLEKS                       R7 R7 K12 ["SharedFeatures"]
       52 GETTABLEKS                       R7 R7 K18 ["StudioWindowInput"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K10 [require]
       57 GETTABLEKS                       R8 R2 K11 ["Src"]
       59 GETTABLEKS                       R8 R8 K19 ["Guest"]
       61 GETTABLEKS                       R8 R8 K20 ["clickScript"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K10 [require]
       66 GETTABLEKS                       R9 R2 K11 ["Src"]
       68 GETTABLEKS                       R9 R9 K19 ["Guest"]
       70 GETTABLEKS                       R9 R9 K21 ["connectScriptContentEditor"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K10 [require]
       75 GETTABLEKS                       R10 R2 K11 ["Src"]
       77 GETTABLEKS                       R10 R10 K22 ["Flags"]
       79 GETTABLEKS                       R10 R10 K23 ["createGetSafeFFlag"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K10 [require]
       84 GETTABLEKS                       R11 R2 K11 ["Src"]
       86 GETTABLEKS                       R11 R11 K19 ["Guest"]
       88 GETTABLEKS                       R11 R11 K24 ["createInstanceFileSyncStatusWatcher"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K10 [require]
       93 GETTABLEKS                       R12 R2 K11 ["Src"]
       95 GETTABLEKS                       R12 R12 K19 ["Guest"]
       97 GETTABLEKS                       R12 R12 K25 ["createLiveSyncStatusWatcher"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K10 [require]
      102 GETTABLEKS                       R13 R2 K11 ["Src"]
      104 GETTABLEKS                       R13 R13 K19 ["Guest"]
      106 GETTABLEKS                       R13 R13 K26 ["createStudioCollaboratorSelectionWatcher"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K10 [require]
      111 GETTABLEKS                       R14 R2 K11 ["Src"]
      113 GETTABLEKS                       R14 R14 K19 ["Guest"]
      115 GETTABLEKS                       R14 R14 K27 ["createStudioGuestConnection"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K10 [require]
      120 GETTABLEKS                       R15 R2 K11 ["Src"]
      122 GETTABLEKS                       R15 R15 K12 ["SharedFeatures"]
      124 GETTABLEKS                       R15 R15 K13 ["ContextMenu"]
      126 GETTABLEKS                       R15 R15 K28 ["createStudioGuestContextMenuActions"]
      128 CALL                             R14 1 1
      129 GETIMPORT                        R15 K10 [require]
      131 GETTABLEKS                       R16 R2 K11 ["Src"]
      133 GETTABLEKS                       R16 R16 K19 ["Guest"]
      135 GETTABLEKS                       R16 R16 K29 ["createStudioInstancePicker"]
      137 CALL                             R15 1 1
      138 GETIMPORT                        R16 K10 [require]
      140 GETTABLEKS                       R17 R2 K11 ["Src"]
      142 GETTABLEKS                       R17 R17 K19 ["Guest"]
      144 GETTABLEKS                       R17 R17 K30 ["Streaming"]
      146 GETTABLEKS                       R17 R17 K31 ["createStudioStreamingInterface"]
      148 CALL                             R16 1 1
      149 GETIMPORT                        R17 K10 [require]
      151 GETTABLEKS                       R18 R2 K11 ["Src"]
      153 GETTABLEKS                       R18 R18 K19 ["Guest"]
      155 GETTABLEKS                       R18 R18 K32 ["editableClassNames"]
      157 CALL                             R17 1 1
      158 GETIMPORT                        R18 K10 [require]
      160 GETTABLEKS                       R19 R2 K11 ["Src"]
      162 GETTABLEKS                       R19 R19 K19 ["Guest"]
      164 GETTABLEKS                       R19 R19 K33 ["isServiceVisible"]
      166 CALL                             R18 1 1
      167 GETIMPORT                        R19 K10 [require]
      169 GETTABLEKS                       R20 R2 K11 ["Src"]
      171 GETTABLEKS                       R20 R20 K19 ["Guest"]
      173 GETTABLEKS                       R20 R20 K34 ["listenForVisibilityChanges"]
      175 CALL                             R19 1 1
      176 GETIMPORT                        R20 K10 [require]
      178 GETTABLEKS                       R21 R2 K11 ["Src"]
      180 GETTABLEKS                       R21 R21 K19 ["Guest"]
      182 GETTABLEKS                       R21 R21 K35 ["luaSourceContainerClassNames"]
      184 CALL                             R20 1 1
      185 GETIMPORT                        R21 K10 [require]
      187 GETTABLEKS                       R22 R2 K11 ["Src"]
      189 GETTABLEKS                       R22 R22 K19 ["Guest"]
      191 GETTABLEKS                       R22 R22 K36 ["openInsertObjectMenuAsync"]
      193 CALL                             R21 1 1
      194 GETIMPORT                        R22 K10 [require]
      196 GETTABLEKS                       R23 R2 K11 ["Src"]
      198 GETTABLEKS                       R23 R23 K19 ["Guest"]
      200 GETTABLEKS                       R23 R23 K37 ["openInstance"]
      202 CALL                             R22 1 1
      203 GETIMPORT                        R23 K10 [require]
      205 GETTABLEKS                       R24 R2 K11 ["Src"]
      207 GETTABLEKS                       R24 R24 K19 ["Guest"]
      209 GETTABLEKS                       R24 R24 K38 ["openScript"]
      211 CALL                             R23 1 1
      212 MOVE                             R24 R9
      213 LOADK                            R25 K39 ["OpenScriptDocOptionsLua"]
      214 CALL                             R24 1 1
      215 DUPCLOSURE                       R25 K40 [PROTO_6]
      216 CAPTURE                          VAL R4
      217 CAPTURE                          VAL R3
      218 CAPTURE                          VAL R5
      219 CAPTURE                          VAL R6
      220 CAPTURE                          VAL R13
      221 CAPTURE                          VAL R15
      222 CAPTURE                          VAL R8
      223 CAPTURE                          VAL R17
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R22
      226 CAPTURE                          VAL R14
      227 CAPTURE                          VAL R21
      228 CAPTURE                          VAL R1
      229 CAPTURE                          VAL R19
      230 CAPTURE                          VAL R16
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R24
      233 CAPTURE                          VAL R7
      234 CAPTURE                          VAL R23
      235 CAPTURE                          VAL R11
      236 CAPTURE                          VAL R10
      237 CAPTURE                          VAL R12
      238 CAPTURE                          VAL R0
      239 RETURN                           R25 1
