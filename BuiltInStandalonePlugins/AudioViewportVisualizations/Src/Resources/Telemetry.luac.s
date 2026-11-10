PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PlaceSessionBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+1]
        6 JUMPIF                           R2 ; [+17]
        7 GETIMPORT                        R3 K3 [warn]
        9 LOADK                            R4 K4 ["AudioViewportVisualizations telemetry disabled: PlaceSessionBridge unavailable (%*)"]
       10 JUMPIFNOT                        R1 ; [+2]
       11 LOADK                            R6 K5 ["nil"]
       12 JUMP                             ; [+5]
       13 FASTCALL1                        TOSTRING R2 ; [+3]
       14 MOVE                             R7 R2
       15 GETIMPORT                        R6 K7 [tostring]
       17 CALL                             R6 1 1
       18 NAMECALL                         R4 R4 K8 ["format"]
       20 CALL                             R4 2 1
       21 CALL                             R3 1 0
       22 LOADB                            R3 0
       23 RETURN                           R3 1
       24 SETUPVAL                         R2 0
       25 GETIMPORT                        R3 K1 [pcall]
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          VAL R0
       29 CALL                             R3 1 2
       30 JUMPIFNOT                        R3 ; [+1]
       31 JUMPIF                           R4 ; [+17]
       32 GETIMPORT                        R5 K3 [warn]
       34 LOADK                            R6 K9 ["AudioViewportVisualizations telemetry disabled: Actions unavailable (%*)"]
       35 JUMPIFNOT                        R3 ; [+2]
       36 LOADK                            R8 K5 ["nil"]
       37 JUMP                             ; [+5]
       38 FASTCALL1                        TOSTRING R4 ; [+3]
       39 MOVE                             R9 R4
       40 GETIMPORT                        R8 K7 [tostring]
       42 CALL                             R8 1 1
       43 NAMECALL                         R6 R6 K8 ["format"]
       45 CALL                             R6 2 1
       46 CALL                             R5 1 0
       47 LOADB                            R5 0
       48 RETURN                           R5 1
       49 SETUPVAL                         R4 1
       50 LOADB                            R5 1
       51 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetFocusedSessionIdAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 2
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 SETLIST                          R2 R3 2 [1]
        7 NAMECALL                         R0 R0 K0 ["GetAsync"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 JUMPIF                           R0 ; [+3]
        8 LOADB                            R2 0
        9 LOADB                            R3 0
       10 RETURN                           R2 2
       11 GETTABLEN                        R2 R1 1
       12 GETTABLEN                        R3 R1 2
       13 LOADB                            R4 0
       14 JUMPIFEQKNIL                     R2 ; [+7]
       16 GETTABLEKS                       R5 R2 K2 ["Checked"]
       18 JUMPIFEQKB                       R5 TRUE ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 LOADB                            R5 0
       23 JUMPIFEQKNIL                     R3 ; [+7]
       25 GETTABLEKS                       R6 R3 K2 ["Checked"]
       27 JUMPIFEQKB                       R6 TRUE ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 RETURN                           R4 2

PROTO_7:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [string.match]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K3 ["^%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x%-(%d+)$"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+6]
        9 FASTCALL1                        TONUMBER R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K5 [tonumber]
       13 CALL                             R2 1 1
       14 RETURN                           R2 1
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_8:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R2 1 2
        7 JUMPIF                           R2 ; [+3]
        8 LOADB                            R0 0
        9 LOADB                            R1 0
       10 JUMP                             ; [+20]
       11 GETTABLEN                        R4 R3 1
       12 GETTABLEN                        R5 R3 2
       13 LOADB                            R0 0
       14 JUMPIFEQKNIL                     R4 ; [+7]
       16 GETTABLEKS                       R6 R4 K2 ["Checked"]
       18 JUMPIFEQKB                       R6 TRUE ; [+2]
       20 LOADB                            R0 0 +1
       21 LOADB                            R0 1
       22 LOADB                            R1 0
       23 JUMPIFEQKNIL                     R5 ; [+7]
       25 GETTABLEKS                       R6 R5 K2 ["Checked"]
       27 JUMPIFEQKB                       R6 TRUE ; [+2]
       29 LOADB                            R1 0 +1
       30 LOADB                            R1 1
       31 JUMPIFNOT                        R0 ; [+4]
       32 GETUPVAL                         R2 3
       33 LOADB                            R3 1
       34 SETTABLEKS                       R3 R2 K3 ["showSourcesEnabled"]
       36 JUMPIFNOT                        R1 ; [+4]
       37 GETUPVAL                         R2 3
       38 LOADB                            R3 1
       39 SETTABLEKS                       R3 R2 K4 ["showInactiveEnabled"]
       41 RETURN                           R0 0

PROTO_9:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 JUMPIFEQKS                       R0 K0 [""] ; [+4]
        4 GETUPVAL                         R2 0
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 DUPTABLE                         R1 K5 [{["placeId"], ["showSourcesEnabled"] = False, ["showInactiveEnabled"] = False}]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K7 ["placeIdFromSessionId"]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 ORK                              R2 R3 K6 [0]
       15 SETTABLEKS                       R2 R1 K1 ["placeId"]
       17 GETUPVAL                         R2 0
       18 SETTABLE                         R1 R2 R0
       19 GETIMPORT                        R2 K10 [task.spawn]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K2 [{"customFields", "standardizedFields"}]
        3 SETTABLEKS                       R0 R4 K0 ["customFields"]
        5 NEWTABLE                         R5 0 4
        7 GETIMPORT                        R6 K6 [Enum.TelemetryStandardizedField.AddPlaceId]
        9 GETIMPORT                        R7 K8 [Enum.TelemetryStandardizedField.AddUniverseId]
       11 GETIMPORT                        R8 K10 [Enum.TelemetryStandardizedField.AddPlaceInstanceId]
       13 GETIMPORT                        R9 K12 [Enum.TelemetryStandardizedField.AddSessionInfo]
       15 SETLIST                          R5 R6 4 [1]
       17 SETTABLEKS                       R5 R4 K1 ["standardizedFields"]
       19 NAMECALL                         R1 R1 K13 ["LogEvent"]
       21 CALL                             R1 3 1
       22 JUMPIFNOTEQKB                    R1 FALSE ; [+11]
       24 GETIMPORT                        R2 K15 [warn]
       26 LOADK                            R3 K16 ["AudioViewportVisualizations telemetry: %* was rejected as invalid"]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K17 ["eventName"]
       30 NAMECALL                         R3 R3 K18 ["format"]
       32 CALL                             R3 2 1
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K5 [{"UserID", "PlaceID", "SessionID", "ShowSourcesEnabled", "ShowInactiveEnabled"}]
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K6 ["GetUserId"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["UserID"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K7 ["placeId"]
       11 SETTABLEKS                       R2 R1 K1 ["PlaceID"]
       13 GETUPVAL                         R2 3
       14 SETTABLEKS                       R2 R1 K2 ["SessionID"]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K8 ["showSourcesEnabled"]
       19 SETTABLEKS                       R2 R1 K3 ["ShowSourcesEnabled"]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K9 ["showInactiveEnabled"]
       24 SETTABLEKS                       R2 R1 K4 ["ShowInactiveEnabled"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R2 0
        2 GETTABLE                         R1 R2 R0
        3 JUMP                             ; [+1]
        4 LOADNIL                          R1
        5 JUMPIFEQKNIL                     R0 ; [+3]
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 LOADNIL                          R3
       12 SETTABLE                         R3 R2 R0
       13 GETIMPORT                        R2 K1 [pcall]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 CALL                             R2 1 2
       21 JUMPIF                           R2 ; [+13]
       22 GETIMPORT                        R4 K3 [warn]
       24 LOADK                            R5 K4 ["AudioViewportVisualizations telemetry: could not log session %* (%*)"]
       25 MOVE                             R7 R0
       26 FASTCALL1                        TOSTRING R3 ; [+3]
       27 MOVE                             R9 R3
       28 GETIMPORT                        R8 K6 [tostring]
       30 CALL                             R8 1 1
       31 NAMECALL                         R5 R5 K7 ["format"]
       33 CALL                             R5 3 1
       34 CALL                             R4 1 0
       35 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP                         R0
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R3
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 1 ; [-4]
       10 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K2 [table.clone]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 3
        6 FORGPREP                         R0
        7 GETUPVAL                         R5 2
        8 MOVE                             R6 R3
        9 CALL                             R5 1 0
       10 FORGLOOP                         R0 1 ; [-4]
       12 GETUPVAL                         R0 3
       13 LOADNIL                          R1
       14 LOADNIL                          R2
       15 FORGPREP                         R0
       16 NAMECALL                         R5 R4 K3 ["Disconnect"]
       18 CALL                             R5 1 0
       19 FORGLOOP                         R0 2 ; [-4]
       21 GETIMPORT                        R0 K5 [table.clear]
       23 GETUPVAL                         R1 3
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+2]
        6 MOVE                             R0 R2
        7 JUMP                             ; [+1]
        8 LOADNIL                          R0
        9 JUMPIFNOT                        R0 ; [+3]
       10 GETUPVAL                         R2 1
       11 GETTABLE                         R1 R2 R0
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 JUMPIFNOT                        R1 ; [+3]
       15 GETUPVAL                         R2 2
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["Checked"]
        2 JUMPIFEQKB                       R1 TRUE ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R1 K3 [task.spawn]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["BindToChangedAsync"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 GETUPVAL                         R1 3
       10 JUMPIFNOT                        R1 ; [+4]
       11 NAMECALL                         R1 R0 K2 ["Disconnect"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 4
       16 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       18 MOVE                             R3 R0
       19 GETIMPORT                        R1 K5 [table.insert]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_18:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 GETIMPORT                        R3 K1 [pcall]
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CALL                             R3 1 2
       13 JUMPIF                           R3 ; [+14]
       14 GETIMPORT                        R5 K3 [warn]
       16 LOADK                            R6 K4 ["AudioViewportVisualizations telemetry: could not watch %* (%*)"]
       17 GETTABLEKS                       R8 R0 K5 ["ItemId"]
       19 FASTCALL1                        TOSTRING R4 ; [+3]
       20 MOVE                             R10 R4
       21 GETIMPORT                        R9 K7 [tostring]
       23 CALL                             R9 1 1
       24 NAMECALL                         R6 R6 K8 ["format"]
       26 CALL                             R6 3 1
       27 CALL                             R5 1 0
       28 RETURN                           R0 0

PROTO_19:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["showSourcesEnabled"]
        3 RETURN                           R0 0

PROTO_20:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["showInactiveEnabled"]
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPCLOSURE                       R2 K0 [PROTO_19]
        3 CALL                             R0 2 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 DUPCLOSURE                       R2 K1 [PROTO_20]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+2]
        7 MOVE                             R1 R3
        8 JUMP                             ; [+1]
        9 LOADNIL                          R1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 LOADB                            R1 1
        7 SETUPVAL                         R1 1
        8 GETUPVAL                         R1 2
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 GETIMPORT                        R1 K2 [task.spawn]
       15 GETUPVAL                         R2 3
       16 CALL                             R1 1 0
       17 GETUPVAL                         R2 4
       18 GETUPVAL                         R3 5
       19 GETTABLEKS                       R3 R3 K3 ["PlaceSessionStarted"]
       21 GETUPVAL                         R5 6
       22 NAMECALL                         R3 R3 K4 ["Connect"]
       24 CALL                             R3 2 -1
       25 FASTCALL                         TABLE_INSERT ; [+2]
       26 GETIMPORT                        R1 K7 [table.insert]
       28 CALL                             R1 -1 0
       29 GETUPVAL                         R2 4
       30 GETUPVAL                         R3 5
       31 GETTABLEKS                       R3 R3 K8 ["PlaceSessionEnded"]
       33 GETUPVAL                         R5 7
       34 NAMECALL                         R3 R3 K4 ["Connect"]
       36 CALL                             R3 2 -1
       37 FASTCALL                         TABLE_INSERT ; [+2]
       38 GETIMPORT                        R1 K7 [table.insert]
       40 CALL                             R1 -1 0
       41 GETUPVAL                         R2 4
       42 GETTABLEKS                       R3 R0 K9 ["Unloading"]
       44 GETUPVAL                         R5 8
       45 NAMECALL                         R3 R3 K4 ["Connect"]
       47 CALL                             R3 2 -1
       48 FASTCALL                         TABLE_INSERT ; [+2]
       49 GETIMPORT                        R1 K7 [table.insert]
       51 CALL                             R1 -1 0
       52 GETIMPORT                        R1 K2 [task.spawn]
       54 NEWCLOSURE                       R2 P0
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U5
       57 CALL                             R1 1 0
       58 RETURN                           R0 0

PROTO_24:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+1]
        2 GETUPVAL                         R1 1
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["StudioService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["TelemetryService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Bin"]
       23 GETTABLEKS                       R4 R4 K12 ["Common"]
       25 GETTABLEKS                       R4 R4 K13 ["defineLuaFlags"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K14 ["getFFlagEnableAudioViewportVisualizationsTelemetry"]
       30 GETTABLEKS                       R5 R3 K15 ["getFIntAudioViewportVisualizationsUsageThrottleHundredthsPercent"]
       32 GETIMPORT                        R6 K10 [require]
       34 GETTABLEKS                       R7 R0 K16 ["Src"]
       36 GETTABLEKS                       R7 R7 K17 ["Resources"]
       38 GETTABLEKS                       R7 R7 K18 ["ActionUris"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R6 K19 ["TOGGLE_ACTION_URI"]
       43 GETTABLEKS                       R8 R6 K20 ["SHOW_INACTIVE_ACTION_URI"]
       45 DUPTABLE                         R9 K28 [{["eventName"] = "AudioViewportVisualizationsUsage", ["lastUpdated"], ["description"] = "Report whether show sources and show inactive sources were enabled at any point during the session.", ["backends"], ["throttlingPercentage"]}]
       46 NEWTABLE                         R10 0 3
       48 LOADN                            R11 2026
       49 LOADN                            R12 10
       50 LOADN                            R13 21
       51 SETLIST                          R10 R11 3 [1]
       53 SETTABLEKS                       R10 R9 K23 ["lastUpdated"]
       55 NEWTABLE                         R10 0 1
       57 GETIMPORT                        R11 K32 [Enum.TelemetryBackend.EventIngest]
       59 SETLIST                          R10 R11 1 [1]
       61 SETTABLEKS                       R10 R9 K26 ["backends"]
       63 MOVE                             R10 R5
       64 CALL                             R10 0 1
       65 SETTABLEKS                       R10 R9 K27 ["throttlingPercentage"]
       67 NEWTABLE                         R10 4 0
       69 MOVE                             R11 R2
       70 LOADB                            R12 0
       71 LOADNIL                          R13
       72 LOADNIL                          R14
       73 NEWTABLE                         R15 0 0
       75 NEWTABLE                         R16 0 0
       77 LOADB                            R17 0
       78 NEWCLOSURE                       R18 P0
       79 CAPTURE                          REF R13
       80 CAPTURE                          REF R14
       81 NEWCLOSURE                       R19 P1
       82 CAPTURE                          REF R13
       83 NEWCLOSURE                       R20 P2
       84 CAPTURE                          REF R14
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R8
       87 DUPCLOSURE                       R21 K33 [PROTO_7]
       88 SETTABLEKS                       R21 R10 K34 ["placeIdFromSessionId"]
       90 NEWCLOSURE                       R21 P4
       91 CAPTURE                          VAL R15
       92 CAPTURE                          VAL R10
       93 CAPTURE                          REF R14
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R8
       96 NEWCLOSURE                       R22 P5
       97 CAPTURE                          REF R11
       98 CAPTURE                          VAL R9
       99 DUPCLOSURE                       R23 K35 [PROTO_12]
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R22
      102 CAPTURE                          VAL R1
      103 DUPCLOSURE                       R24 K36 [PROTO_13]
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R23
      106 NEWCLOSURE                       R25 P8
      107 CAPTURE                          REF R17
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R23
      110 CAPTURE                          VAL R16
      111 NEWCLOSURE                       R26 P9
      112 CAPTURE                          REF R13
      113 CAPTURE                          VAL R15
      114 CAPTURE                          REF R14
      115 CAPTURE                          REF R17
      116 CAPTURE                          VAL R16
      117 DUPCLOSURE                       R27 K37 [PROTO_21]
      118 CAPTURE                          VAL R26
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R8
      121 NEWCLOSURE                       R28 P11
      122 CAPTURE                          VAL R4
      123 CAPTURE                          REF R12
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R27
      126 CAPTURE                          VAL R16
      127 CAPTURE                          REF R13
      128 CAPTURE                          VAL R21
      129 CAPTURE                          VAL R23
      130 CAPTURE                          VAL R25
      131 SETTABLEKS                       R28 R10 K38 ["init"]
      133 NEWCLOSURE                       R28 P12
      134 CAPTURE                          REF R11
      135 CAPTURE                          VAL R2
      136 SETTABLEKS                       R28 R10 K39 ["_setTelemetryServiceForTesting"]
      138 CLOSEUPVALS                      R11
      139 RETURN                           R10 1
