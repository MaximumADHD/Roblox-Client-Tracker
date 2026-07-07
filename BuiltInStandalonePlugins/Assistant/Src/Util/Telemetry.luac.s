PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETIMPORT                        R3 K2 [print]
        6 LOADK                            R4 K3 ["Logging stat"]
        7 GETTABLEKS                       R5 R0 K4 ["eventName"]
        9 MOVE                             R6 R1
       10 MOVE                             R7 R2
       11 CALL                             R3 4 0
       12 GETUPVAL                         R3 1
       13 MOVE                             R5 R0
       14 MOVE                             R6 R2
       15 MOVE                             R7 R1
       16 NAMECALL                         R3 R3 K5 ["LogStat"]
       18 CALL                             R3 4 0
       19 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R2 R0
        1 GETTABLEKS                       R3 R0 K0 ["throttlingPercentage"]
        3 JUMPIF                           R3 ; [+8]
        4 GETIMPORT                        R3 K3 [table.clone]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 MOVE                             R2 R3
        9 LOADN                            R3 10000
       10 SETTABLEKS                       R3 R2 K0 ["throttlingPercentage"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K4 ["FFlagDebugLogAssistantUI"]
       15 JUMPIFNOT                        R3 ; [+7]
       16 GETIMPORT                        R3 K6 [print]
       18 LOADK                            R4 K7 ["Logging event"]
       19 GETTABLEKS                       R5 R2 K8 ["eventName"]
       21 MOVE                             R6 R1
       22 CALL                             R3 3 0
       23 GETUPVAL                         R3 1
       24 MOVE                             R5 R2
       25 MOVE                             R6 R1
       26 NAMECALL                         R3 R3 K9 ["LogEvent"]
       28 CALL                             R3 3 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETIMPORT                        R3 K2 [print]
        6 LOADK                            R4 K3 ["Logging counter"]
        7 GETTABLEKS                       R5 R0 K4 ["eventName"]
        9 MOVE                             R6 R1
       10 MOVE                             R7 R2
       11 CALL                             R3 4 0
       12 GETUPVAL                         R3 1
       13 MOVE                             R5 R0
       14 MOVE                             R6 R2
       15 MOVE                             R7 R1
       16 NAMECALL                         R3 R3 K5 ["LogCounter"]
       18 CALL                             R3 4 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["TelemetryService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Flags"]
       19 CALL                             R2 1 1
       20 DUPTABLE                         R3 K16 [{["EventIngest"] = "EventIngest", ["Points"] = "Points", ["RobloxTelemetryCounter"] = "RobloxTelemetryCounter", ["RobloxTelemetryStat"] = "RobloxTelemetryStat"}]
       21 DUPTABLE                         R4 K18 [{"Backends"}]
       22 SETTABLEKS                       R3 R4 K17 ["Backends"]
       24 DUPCLOSURE                       R5 K19 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R5 R4 K20 ["logStat"]
       29 DUPCLOSURE                       R5 K21 [PROTO_1]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R5 R4 K22 ["logEvent"]
       34 DUPCLOSURE                       R5 K23 [PROTO_2]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R5 R4 K24 ["logCounter"]
       39 RETURN                           R4 1
