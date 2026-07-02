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

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 DUPTABLE                         R2 K3 [{"openPlugin", "visualizationModeToggled", "visualizationModeEnabledDuration"}]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R3 R2 K0 ["openPlugin"]
        9 NEWCLOSURE                       R3 P2
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 SETTABLEKS                       R3 R2 K1 ["visualizationModeToggled"]
       16 NEWCLOSURE                       R3 P3
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R3 R2 K2 ["visualizationModeEnabledDuration"]
       20 RETURN                           R2 1

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
       42 DUPTABLE                         R6 K25 [{["eventName"] = "SBT_VisModeEnabled", ["lastUpdated"], ["description"] = "Visualization mode enabled from the plugin.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
       43 NEWTABLE                         R7 0 3
       45 LOADN                            R8 2024
       46 LOADN                            R9 11
       47 LOADN                            R10 13
       48 SETLIST                          R7 R8 3 [1]
       50 SETTABLEKS                       R7 R6 K19 ["lastUpdated"]
       52 NEWTABLE                         R7 0 1
       54 LOADK                            R8 K26 ["RobloxTelemetryCounter"]
       55 SETLIST                          R7 R8 1 [1]
       57 SETTABLEKS                       R7 R6 K24 ["backends"]
       59 DUPCLOSURE                       R7 K27 [PROTO_4]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R6
       65 RETURN                           R7 1
