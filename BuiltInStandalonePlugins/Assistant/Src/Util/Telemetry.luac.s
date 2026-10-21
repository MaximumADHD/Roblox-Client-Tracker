PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetSessionId"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETIMPORT                        R1 K2 [table.clone]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMP                             ; [+5]
        6 DUPTABLE                         R1 K4 [{"customFields"}]
        7 NEWTABLE                         R2 0 0
        9 SETTABLEKS                       R2 R1 K3 ["customFields"]
       11 GETIMPORT                        R2 K2 [table.clone]
       13 GETTABLEKS                       R3 R1 K3 ["customFields"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K3 ["customFields"]
       18 GETTABLEKS                       R2 R1 K3 ["customFields"]
       20 GETIMPORT                        R4 K6 [pcall]
       22 DUPCLOSURE                       R5 K7 [PROTO_0]
       23 CAPTURE                          UPVAL U0
       24 CALL                             R4 1 2
       25 JUMPIFNOT                        R4 ; [+2]
       26 MOVE                             R3 R5
       27 JUMP                             ; [+1]
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R2 K8 ["studioSid"]
       31 RETURN                           R1 1

PROTO_3:
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

PROTO_4:
        0 MOVE                             R2 R0
        1 GETTABLEKS                       R3 R0 K0 ["throttlingPercentage"]
        3 JUMPIF                           R3 ; [+8]
        4 GETIMPORT                        R3 K3 [table.clone]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 MOVE                             R2 R3
        9 LOADN                            R3 10000
       10 SETTABLEKS                       R3 R2 K0 ["throttlingPercentage"]
       12 MOVE                             R3 R1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K4 ["FFlagAssistantLogStudioSessionId"]
       16 JUMPIFNOT                        R4 ; [+4]
       17 GETUPVAL                         R4 1
       18 MOVE                             R5 R1
       19 CALL                             R4 1 1
       20 MOVE                             R3 R4
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K5 ["FFlagDebugLogAssistantUI"]
       24 JUMPIFNOT                        R4 ; [+7]
       25 GETIMPORT                        R4 K7 [print]
       27 LOADK                            R5 K8 ["Logging event"]
       28 GETTABLEKS                       R6 R2 K9 ["eventName"]
       30 MOVE                             R7 R3
       31 CALL                             R4 3 0
       32 GETUPVAL                         R4 2
       33 MOVE                             R6 R2
       34 MOVE                             R7 R3
       35 NAMECALL                         R4 R4 K10 ["LogEvent"]
       37 CALL                             R4 3 0
       38 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RbxAnalyticsService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["TelemetryService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 MOVE                             R3 R2
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R0 K11 ["Src"]
       24 GETTABLEKS                       R5 R5 K12 ["Flags"]
       26 CALL                             R4 1 1
       27 DUPTABLE                         R5 K17 [{["EventIngest"] = "EventIngest", ["Points"] = "Points", ["RobloxTelemetryCounter"] = "RobloxTelemetryCounter", ["RobloxTelemetryStat"] = "RobloxTelemetryStat"}]
       28 DUPTABLE                         R6 K19 [{"Backends"}]
       29 SETTABLEKS                       R5 R6 K18 ["Backends"]
       31 DUPCLOSURE                       R7 K20 [PROTO_1]
       32 CAPTURE                          VAL R1
       33 DUPCLOSURE                       R8 K21 [PROTO_2]
       34 CAPTURE                          VAL R1
       35 NEWCLOSURE                       R9 P2
       36 CAPTURE                          VAL R4
       37 CAPTURE                          REF R3
       38 SETTABLEKS                       R9 R6 K22 ["logStat"]
       40 NEWCLOSURE                       R9 P3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R8
       43 CAPTURE                          REF R3
       44 SETTABLEKS                       R9 R6 K23 ["logEvent"]
       46 NEWCLOSURE                       R9 P4
       47 CAPTURE                          VAL R4
       48 CAPTURE                          REF R3
       49 SETTABLEKS                       R9 R6 K24 ["logCounter"]
       51 NEWCLOSURE                       R9 P5
       52 CAPTURE                          REF R3
       53 SETTABLEKS                       R9 R6 K25 ["mock"]
       55 NEWCLOSURE                       R9 P6
       56 CAPTURE                          REF R3
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R9 R6 K26 ["reset"]
       60 CLOSEUPVALS                      R3
       61 RETURN                           R6 1
