PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["join"]
        3 DUPTABLE                         R3 K5 [{"studioSid", "clientId", "placeId", "userId"}]
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R4 R4 K6 ["GetSessionId"]
        7 CALL                             R4 1 1
        8 SETTABLEKS                       R4 R3 K1 ["studioSid"]
       10 GETUPVAL                         R4 1
       11 NAMECALL                         R4 R4 K7 ["GetClientId"]
       13 CALL                             R4 1 1
       14 SETTABLEKS                       R4 R3 K2 ["clientId"]
       16 GETIMPORT                        R4 K9 [game]
       18 GETTABLEKS                       R4 R4 K10 ["PlaceId"]
       20 SETTABLEKS                       R4 R3 K3 ["placeId"]
       22 GETUPVAL                         R4 2
       23 NAMECALL                         R4 R4 K11 ["GetUserId"]
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R3 K4 ["userId"]
       28 MOVE                             R4 R1
       29 CALL                             R2 2 1
       30 GETUPVAL                         R3 1
       31 LOADK                            R5 K12 ["studio"]
       32 LOADK                            R6 K13 ["VisualizationModes"]
       33 MOVE                             R7 R0
       34 MOVE                             R8 R2
       35 NAMECALL                         R3 R3 K14 ["SendEventDeferred"]
       37 CALL                             R3 5 0
       38 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["PluginOpen"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["VisualizationModeToggled"]
        2 DUPTABLE                         R4 K5 [{"actionSource", "visualizationMode", "visualizationModeCategory", "visualizationModeEnabled"}]
        3 GETTABLEKS                       R5 R1 K1 ["actionSource"]
        5 SETTABLEKS                       R5 R4 K1 ["actionSource"]
        7 GETTABLEKS                       R5 R1 K2 ["visualizationMode"]
        9 SETTABLEKS                       R5 R4 K2 ["visualizationMode"]
       11 GETTABLEKS                       R5 R1 K3 ["visualizationModeCategory"]
       13 SETTABLEKS                       R5 R4 K3 ["visualizationModeCategory"]
       15 GETTABLEKS                       R5 R1 K6 ["isEnabled"]
       17 SETTABLEKS                       R5 R4 K4 ["visualizationModeEnabled"]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 1
       21 CALL                             R2 0 1
       22 JUMPIFNOT                        R2 ; [+17]
       23 GETUPVAL                         R2 2
       24 GETUPVAL                         R4 3
       25 DUPTABLE                         R5 K8 [{"customFields"}]
       26 DUPTABLE                         R6 K11 [{"mode", "category"}]
       27 GETTABLEKS                       R7 R1 K2 ["visualizationMode"]
       29 SETTABLEKS                       R7 R6 K9 ["mode"]
       31 GETTABLEKS                       R7 R1 K3 ["visualizationModeCategory"]
       33 SETTABLEKS                       R7 R6 K10 ["category"]
       35 SETTABLEKS                       R6 R5 K7 ["customFields"]
       37 NAMECALL                         R2 R2 K12 ["LogCounter"]
       39 CALL                             R2 3 0
       40 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+19]
        3 DUPTABLE                         R2 K6 [{[1], ["ui"] = "VisualizationModes", ["app"] = "Studio", ["clientId"]}]
        4 GETTABLEKS                       R3 R1 K0 ["tintMode"]
        6 SETTABLEKS                       R3 R2 K0 ["tintMode"]
        8 GETUPVAL                         R3 1
        9 NAMECALL                         R3 R3 K7 ["GetClientId"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K5 ["clientId"]
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R5 3
       16 DUPTABLE                         R6 K9 [{"customFields"}]
       17 SETTABLEKS                       R2 R6 K8 ["customFields"]
       19 NAMECALL                         R3 R3 K10 ["LogEvent"]
       21 CALL                             R3 3 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["VisualizationModeEnabledDuration"]
        2 DUPTABLE                         R4 K4 [{"visualizationMode", "visualizationModeCategory", "durationSeconds"}]
        3 GETTABLEKS                       R5 R1 K1 ["visualizationMode"]
        5 SETTABLEKS                       R5 R4 K1 ["visualizationMode"]
        7 GETTABLEKS                       R5 R1 K2 ["visualizationModeCategory"]
        9 SETTABLEKS                       R5 R4 K2 ["visualizationModeCategory"]
       11 GETTABLEKS                       R5 R1 K3 ["durationSeconds"]
       13 SETTABLEKS                       R5 R4 K3 ["durationSeconds"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 DUPTABLE                         R4 K4 [{"openPlugin", "visualizationModeToggled", "slimTintModeSelected", "visualizationModeEnabledDuration"}]
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          VAL R3
       10 SETTABLEKS                       R5 R4 K0 ["openPlugin"]
       12 NEWCLOSURE                       R5 P2
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U4
       17 SETTABLEKS                       R5 R4 K1 ["visualizationModeToggled"]
       19 NEWCLOSURE                       R5 P3
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U6
       24 SETTABLEKS                       R5 R4 K2 ["slimTintModeSelected"]
       26 NEWCLOSURE                       R5 P4
       27 CAPTURE                          VAL R3
       28 SETTABLEKS                       R5 R4 K3 ["visualizationModeEnabledDuration"]
       30 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
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
       21 GETTABLEKS                       R4 R0 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["Dash"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Flags"]
       39 GETTABLEKS                       R6 R6 K16 ["getFFlagStudioSendVisualizationModeCounter"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Src"]
       46 GETTABLEKS                       R7 R7 K15 ["Flags"]
       48 GETTABLEKS                       R7 R7 K17 ["getFFlagSlimTintModeTelemetry"]
       50 CALL                             R6 1 1
       51 DUPTABLE                         R7 K26 [{["eventName"] = "SBT_VisModeEnabled", ["lastUpdated"], ["description"] = "Visualization mode enabled from the plugin.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
       52 NEWTABLE                         R8 0 3
       54 LOADN                            R9 2024
       55 LOADN                            R10 11
       56 LOADN                            R11 13
       57 SETLIST                          R8 R9 3 [1]
       59 SETTABLEKS                       R8 R7 K20 ["lastUpdated"]
       61 NEWTABLE                         R8 0 1
       63 LOADK                            R9 K27 ["RobloxTelemetryCounter"]
       64 SETLIST                          R8 R9 1 [1]
       66 SETTABLEKS                       R8 R7 K25 ["backends"]
       68 DUPTABLE                         R8 K32 [{["eventName"] = "SlimTintModeSelected", ["lastUpdated"], ["description"] = "SLIM tint mode selected by a user. Shared by the Developer Console and Visualization Modes.", ["backends"], ["throttlingPercentage"] = 10000}]
       69 NEWTABLE                         R9 0 3
       71 LOADN                            R10 2026
       72 LOADN                            R11 10
       73 LOADN                            R12 13
       74 SETLIST                          R9 R10 3 [1]
       76 SETTABLEKS                       R9 R8 K20 ["lastUpdated"]
       78 NEWTABLE                         R9 0 2
       80 LOADK                            R10 K33 ["Points"]
       81 LOADK                            R11 K34 ["EventIngest"]
       82 SETLIST                          R9 R10 2 [1]
       84 SETTABLEKS                       R9 R8 K25 ["backends"]
       86 DUPCLOSURE                       R9 K35 [PROTO_5]
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R8
       94 RETURN                           R9 1
