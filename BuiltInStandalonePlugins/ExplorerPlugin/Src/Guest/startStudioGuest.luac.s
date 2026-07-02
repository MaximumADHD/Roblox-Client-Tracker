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
       14 DUPTABLE                         R5 K18 [{["openInsertObjectMenuAsync"], ["getInstanceId"], ["listenForVisibilityChanges"], ["instancePicker"], ["streamingInterface"], ["isServiceVisible"], ["clickScript"], ["openScript"], ["fieldsConfig"], ["enableOpenContextMenuDelayHack"] = True, ["DEBUG_dataModelType"], ["DEBUG_startTime"]}]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R6 R5 K5 ["openInsertObjectMenuAsync"]
       20 GETUPVAL                         R7 5
       21 CALL                             R7 0 1
       22 JUMPIFNOT                        R7 ; [+6]
       23 GETIMPORT                        R7 K4 [game]
       25 GETTABLEKS                       R7 R7 K19 ["UniqueId"]
       27 JUMPIFNOTEQKS                    R7 K20 ["00000000-0000-0000-0000-000000000000"] ; [+3]
       29 LOADNIL                          R6
       30 JUMP                             ; [+2]
       31 DUPCLOSURE                       R6 K21 [PROTO_1]
       32 CAPTURE                          UPVAL U6
       33 SETTABLEKS                       R6 R5 K6 ["getInstanceId"]
       35 GETUPVAL                         R6 7
       36 SETTABLEKS                       R6 R5 K7 ["listenForVisibilityChanges"]
       38 GETUPVAL                         R6 8
       39 SETTABLEKS                       R6 R5 K8 ["instancePicker"]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K22 ["Flags"]
       44 GETTABLEKS                       R7 R7 K23 ["getFFlagExplorerStreaming"]
       46 CALL                             R7 0 1
       47 JUMPIFNOT                        R7 ; [+3]
       48 GETUPVAL                         R6 9
       49 CALL                             R6 0 1
       50 JUMP                             ; [+1]
       51 LOADNIL                          R6
       52 SETTABLEKS                       R6 R5 K9 ["streamingInterface"]
       54 GETUPVAL                         R6 10
       55 SETTABLEKS                       R6 R5 K10 ["isServiceVisible"]
       57 GETUPVAL                         R7 11
       58 CALL                             R7 0 1
       59 JUMPIFNOT                        R7 ; [+2]
       60 GETUPVAL                         R6 12
       61 JUMP                             ; [+1]
       62 LOADNIL                          R6
       63 SETTABLEKS                       R6 R5 K11 ["clickScript"]
       65 GETUPVAL                         R6 13
       66 SETTABLEKS                       R6 R5 K12 ["openScript"]
       68 DUPTABLE                         R6 K27 [{"createLiveSyncStatusWatcher", "createInstanceFileSyncStatusWatcher", "createCollaboratorSelectionWatcher"}]
       69 GETUPVAL                         R7 14
       70 SETTABLEKS                       R7 R6 K24 ["createLiveSyncStatusWatcher"]
       72 GETUPVAL                         R7 15
       73 SETTABLEKS                       R7 R6 K25 ["createInstanceFileSyncStatusWatcher"]
       75 GETUPVAL                         R7 16
       76 SETTABLEKS                       R7 R6 K26 ["createCollaboratorSelectionWatcher"]
       78 SETTABLEKS                       R6 R5 K13 ["fieldsConfig"]
       80 GETUPVAL                         R6 2
       81 GETTABLEKS                       R6 R6 K28 ["HostDataModelType"]
       83 GETTABLEKS                       R6 R6 K29 ["Name"]
       85 SETTABLEKS                       R6 R5 K16 ["DEBUG_dataModelType"]
       87 GETIMPORT                        R6 K32 [os.clock]
       89 CALL                             R6 0 1
       90 SETTABLEKS                       R6 R5 K17 ["DEBUG_startTime"]
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
       11 GETTABLEKS                       R0 R0 K0 ["Flags"]
       13 GETTABLEKS                       R0 R0 K1 ["getFFlagExplorerFixContextMenu"]
       15 CALL                             R0 0 1
       16 JUMPIF                           R0 ; [+4]
       17 GETUPVAL                         R0 6
       18 GETTABLEKS                       R0 R0 K2 ["destroy"]
       20 CALL                             R0 0 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Error when unloading: %*"]
        3 GETIMPORT                        R5 K5 [debug.traceback]
        5 MOVE                             R6 R0
        6 CALL                             R5 1 1
        7 NAMECALL                         R3 R3 K6 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 DUPTABLE                         R3 K14 [{["eventName"] = "LuaExplorerUnloadingError", ["description"] = "Fired when something errors in plugin.Unloading", ["backends"], ["throttlingPercentage"], ["lastUpdated"]}]
       14 NEWTABLE                         R4 0 1
       16 LOADK                            R5 K15 ["Points"]
       17 SETLIST                          R4 R5 1 [1]
       19 SETTABLEKS                       R4 R3 K11 ["backends"]
       21 GETIMPORT                        R4 K17 [game]
       23 LOADK                            R6 K18 ["LuaExplorerUnloadingErrorThrottlingHundredthsPercent"]
       24 LOADN                            R7 10000
       25 NAMECALL                         R4 R4 K19 ["DefineFastInt"]
       27 CALL                             R4 3 1
       28 SETTABLEKS                       R4 R3 K12 ["throttlingPercentage"]
       30 NEWTABLE                         R4 0 3
       32 LOADN                            R5 25
       33 LOADN                            R6 4
       34 LOADN                            R7 2
       35 SETLIST                          R4 R5 3 [1]
       37 SETTABLEKS                       R4 R3 K13 ["lastUpdated"]
       39 DUPTABLE                         R4 K22 [{"customFields", "standardizedFields"}]
       40 DUPTABLE                         R5 K25 [{"dataModel", "problem"}]
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K26 ["HostDataModelType"]
       44 GETTABLEKS                       R6 R6 K27 ["Name"]
       46 SETTABLEKS                       R6 R5 K23 ["dataModel"]
       48 SETTABLEKS                       R0 R5 K24 ["problem"]
       50 SETTABLEKS                       R5 R4 K20 ["customFields"]
       52 NEWTABLE                         R5 0 6
       54 LOADK                            R6 K28 ["addPlaceId"]
       55 LOADK                            R7 K29 ["addUniverseId"]
       56 LOADK                            R8 K30 ["addPlaceInstanceId"]
       57 LOADK                            R9 K31 ["addSessionId"]
       58 LOADK                            R10 K32 ["addOSInfo"]
       59 LOADK                            R11 K33 ["addSessionInfo"]
       60 SETLIST                          R5 R6 6 [1]
       62 SETTABLEKS                       R5 R4 K21 ["standardizedFields"]
       64 NAMECALL                         R1 R1 K34 ["LogEvent"]
       66 CALL                             R1 3 0
       67 RETURN                           R0 0

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
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

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
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K3 ["Guest"]
       30 GETTABLEKS                       R8 R8 K4 ["startGuest"]
       32 DUPTABLE                         R9 K7 [{"guestConnectionObservable", "createGuestRpcInterface"}]
       33 SETTABLEKS                       R4 R9 K5 ["guestConnectionObservable"]
       35 NEWCLOSURE                       R10 P0
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          UPVAL U9
       43 CAPTURE                          UPVAL U10
       44 CAPTURE                          VAL R6
       45 CAPTURE                          UPVAL U11
       46 CAPTURE                          UPVAL U12
       47 CAPTURE                          UPVAL U13
       48 CAPTURE                          UPVAL U14
       49 CAPTURE                          UPVAL U15
       50 CAPTURE                          UPVAL U16
       51 CAPTURE                          UPVAL U17
       52 CAPTURE                          UPVAL U18
       53 SETTABLEKS                       R10 R9 K6 ["createGuestRpcInterface"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R9 R0 K8 ["Unloading"]
       58 NEWCLOSURE                       R11 P1
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          VAL R1
       66 CAPTURE                          UPVAL U19
       67 CAPTURE                          VAL R0
       68 NAMECALL                         R9 R9 K9 ["Connect"]
       70 CALL                             R9 2 0
       71 RETURN                           R0 0

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
       68 GETTABLEKS                       R9 R9 K21 ["Flags"]
       70 GETTABLEKS                       R9 R9 K22 ["createGetSafeFFlag"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K10 [require]
       75 GETTABLEKS                       R10 R2 K11 ["Src"]
       77 GETTABLEKS                       R10 R10 K19 ["Guest"]
       79 GETTABLEKS                       R10 R10 K23 ["createInstanceFileSyncStatusWatcher"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K10 [require]
       84 GETTABLEKS                       R11 R2 K11 ["Src"]
       86 GETTABLEKS                       R11 R11 K19 ["Guest"]
       88 GETTABLEKS                       R11 R11 K24 ["createLiveSyncStatusWatcher"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K10 [require]
       93 GETTABLEKS                       R12 R2 K11 ["Src"]
       95 GETTABLEKS                       R12 R12 K19 ["Guest"]
       97 GETTABLEKS                       R12 R12 K25 ["createStudioCollaboratorSelectionWatcher"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K10 [require]
      102 GETTABLEKS                       R13 R2 K11 ["Src"]
      104 GETTABLEKS                       R13 R13 K19 ["Guest"]
      106 GETTABLEKS                       R13 R13 K26 ["createStudioGuestConnection"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K10 [require]
      111 GETTABLEKS                       R14 R2 K11 ["Src"]
      113 GETTABLEKS                       R14 R14 K12 ["SharedFeatures"]
      115 GETTABLEKS                       R14 R14 K13 ["ContextMenu"]
      117 GETTABLEKS                       R14 R14 K27 ["createStudioGuestContextMenuActions"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K10 [require]
      122 GETTABLEKS                       R15 R2 K11 ["Src"]
      124 GETTABLEKS                       R15 R15 K19 ["Guest"]
      126 GETTABLEKS                       R15 R15 K28 ["createStudioInstancePicker"]
      128 CALL                             R14 1 1
      129 GETIMPORT                        R15 K10 [require]
      131 GETTABLEKS                       R16 R2 K11 ["Src"]
      133 GETTABLEKS                       R16 R16 K19 ["Guest"]
      135 GETTABLEKS                       R16 R16 K29 ["Streaming"]
      137 GETTABLEKS                       R16 R16 K30 ["createStudioStreamingInterface"]
      139 CALL                             R15 1 1
      140 GETIMPORT                        R16 K10 [require]
      142 GETTABLEKS                       R17 R2 K11 ["Src"]
      144 GETTABLEKS                       R17 R17 K19 ["Guest"]
      146 GETTABLEKS                       R17 R17 K31 ["isServiceVisible"]
      148 CALL                             R16 1 1
      149 GETIMPORT                        R17 K10 [require]
      151 GETTABLEKS                       R18 R2 K11 ["Src"]
      153 GETTABLEKS                       R18 R18 K19 ["Guest"]
      155 GETTABLEKS                       R18 R18 K32 ["listenForVisibilityChanges"]
      157 CALL                             R17 1 1
      158 GETIMPORT                        R18 K10 [require]
      160 GETTABLEKS                       R19 R2 K11 ["Src"]
      162 GETTABLEKS                       R19 R19 K19 ["Guest"]
      164 GETTABLEKS                       R19 R19 K33 ["openInsertObjectMenuAsync"]
      166 CALL                             R18 1 1
      167 GETIMPORT                        R19 K10 [require]
      169 GETTABLEKS                       R20 R2 K11 ["Src"]
      171 GETTABLEKS                       R20 R20 K19 ["Guest"]
      173 GETTABLEKS                       R20 R20 K34 ["openScript"]
      175 CALL                             R19 1 1
      176 MOVE                             R20 R8
      177 LOADK                            R21 K35 ["OpenScriptDocOptionsLua"]
      178 CALL                             R20 1 1
      179 MOVE                             R21 R8
      180 LOADK                            R22 K36 ["UniqueIdOverLuau"]
      181 CALL                             R21 1 1
      182 DUPCLOSURE                       R22 K37 [PROTO_6]
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R16
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R10
      200 CAPTURE                          VAL R9
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R0
      203 RETURN                           R22 1
