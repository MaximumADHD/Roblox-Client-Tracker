PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETIMPORT                        R3 K1 [print]
        5 LOADK                            R4 K2 ["Logging stat"]
        6 GETTABLEKS                       R5 R0 K3 ["eventName"]
        8 MOVE                             R6 R1
        9 MOVE                             R7 R2
       10 CALL                             R3 4 0
       11 GETUPVAL                         R3 1
       12 MOVE                             R5 R0
       13 MOVE                             R6 R2
       14 MOVE                             R7 R1
       15 NAMECALL                         R3 R3 K4 ["LogStat"]
       17 CALL                             R3 4 0
       18 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R2 R0
        1 GETTABLEKS                       R3 R0 K0 ["throttlingPercentage"]
        3 JUMPIF                           R3 ; [+8]
        4 GETIMPORT                        R3 K3 [table.clone]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 MOVE                             R2 R3
        9 LOADN                            R3 16
       10 SETTABLEKS                       R3 R2 K0 ["throttlingPercentage"]
       12 GETUPVAL                         R3 0
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+7]
       15 GETIMPORT                        R3 K5 [print]
       17 LOADK                            R4 K6 ["Logging event"]
       18 GETTABLEKS                       R5 R2 K7 ["eventName"]
       20 MOVE                             R6 R1
       21 CALL                             R3 3 0
       22 GETUPVAL                         R3 1
       23 MOVE                             R5 R2
       24 MOVE                             R6 R1
       25 NAMECALL                         R3 R3 K8 ["LogEvent"]
       27 CALL                             R3 3 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETIMPORT                        R3 K1 [print]
        5 LOADK                            R4 K2 ["Logging counter"]
        6 GETTABLEKS                       R5 R0 K3 ["eventName"]
        8 MOVE                             R6 R1
        9 MOVE                             R7 R2
       10 CALL                             R3 4 0
       11 GETUPVAL                         R3 1
       12 MOVE                             R5 R0
       13 MOVE                             R6 R2
       14 MOVE                             R7 R1
       15 NAMECALL                         R3 R3 K4 ["LogCounter"]
       17 CALL                             R3 4 0
       18 RETURN                           R0 0

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
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R5 R2 K12 ["Flags"]
       22 GETTABLEKS                       R4 R5 K13 ["Shared"]
       24 GETTABLEKS                       R3 R4 K14 ["FFlagDebugLogAssistantUI"]
       26 DUPTABLE                         R4 K19 [{"EventIngest", "Points", "RobloxTelemetryCounter", "RobloxTelemetryStat"}]
       27 LOADK                            R5 K15 ["EventIngest"]
       28 SETTABLEKS                       R5 R4 K15 ["EventIngest"]
       30 LOADK                            R5 K16 ["Points"]
       31 SETTABLEKS                       R5 R4 K16 ["Points"]
       33 LOADK                            R5 K17 ["RobloxTelemetryCounter"]
       34 SETTABLEKS                       R5 R4 K17 ["RobloxTelemetryCounter"]
       36 LOADK                            R5 K18 ["RobloxTelemetryStat"]
       37 SETTABLEKS                       R5 R4 K18 ["RobloxTelemetryStat"]
       39 DUPTABLE                         R5 K21 [{"Backends"}]
       40 SETTABLEKS                       R4 R5 K20 ["Backends"]
       42 DUPCLOSURE                       R6 K22 [PROTO_0]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R6 R5 K23 ["logStat"]
       47 DUPCLOSURE                       R6 K24 [PROTO_1]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R6 R5 K25 ["logEvent"]
       52 DUPCLOSURE                       R6 K26 [PROTO_2]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R6 R5 K27 ["logCounter"]
       57 RETURN                           R5 1
