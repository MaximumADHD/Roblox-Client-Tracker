PROTO_0:
        0 DUPTABLE                         R4 K2 [{"standardizedFields", "customFields"}]
        1 GETTABLEKS                       R5 R0 K3 ["StandardizedFields"]
        3 SETTABLEKS                       R5 R4 K0 ["standardizedFields"]
        5 SETTABLEKS                       R2 R4 K1 ["customFields"]
        7 DUPTABLE                         R5 K7 [{"eventType", "config", "data"}]
        8 LOADK                            R6 K8 ["RobloxTelemetry"]
        9 SETTABLEKS                       R6 R5 K4 ["eventType"]
       11 SETTABLEKS                       R1 R5 K5 ["config"]
       13 SETTABLEKS                       R4 R5 K6 ["data"]
       15 GETTABLEKS                       R6 R0 K9 ["messageBus"]
       17 GETTABLEKS                       R8 R0 K10 ["LOG_EVENT_FROM_LUA"]
       19 MOVE                             R9 R5
       20 NAMECALL                         R6 R6 K11 ["Call"]
       22 CALL                             R6 3 0
       23 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R3 K3 [{"eventType", "config", "data"}]
        1 LOADK                            R4 K4 ["RobloxTelemetryCounter"]
        2 SETTABLEKS                       R4 R3 K0 ["eventType"]
        4 SETTABLEKS                       R1 R3 K1 ["config"]
        6 DUPTABLE                         R4 K6 [{"customFields"}]
        7 SETTABLEKS                       R2 R4 K5 ["customFields"]
        9 SETTABLEKS                       R4 R3 K2 ["data"]
       11 GETTABLEKS                       R4 R0 K7 ["messageBus"]
       13 GETTABLEKS                       R6 R0 K8 ["LOG_EVENT_FROM_LUA"]
       15 MOVE                             R7 R3
       16 NAMECALL                         R4 R4 K9 ["Call"]
       18 CALL                             R4 3 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETTABLEKS                       R7 R6 K2 ["config"]
        7 GETTABLEKS                       R8 R6 K3 ["data"]
        9 JUMPIFNOTEQKS                    R5 K4 ["RobloxTelemetry"] ; [+17]
       11 GETUPVAL                         R9 0
       12 JUMPIFNOT                        R9 ; [+6]
       13 MOVE                             R11 R7
       14 MOVE                             R12 R8
       15 NAMECALL                         R9 R0 K5 ["logRobloxTelemetryEvent"]
       17 CALL                             R9 3 0
       18 JUMP                             ; [+25]
       19 MOVE                             R11 R7
       20 MOVE                             R12 R8
       21 GETTABLEKS                       R13 R6 K6 ["standardizedFields"]
       23 NAMECALL                         R9 R0 K5 ["logRobloxTelemetryEvent"]
       25 CALL                             R9 4 0
       26 JUMP                             ; [+17]
       27 JUMPIFNOTEQKS                    R5 K7 ["RobloxTelemetryCounter"] ; [+7]
       29 MOVE                             R11 R7
       30 MOVE                             R12 R8
       31 NAMECALL                         R9 R0 K8 ["logTelemetryCounterEvent"]
       33 CALL                             R9 3 0
       34 JUMP                             ; [+9]
       35 LOADB                            R10 0
       36 LOADK                            R12 K9 ["Unknown telemetry event type: "]
       37 MOVE                             R13 R5
       38 CONCAT                           R11 R12 R13
       39 FASTCALL2                        ASSERT R10 R11 ; [+3]
       41 GETIMPORT                        R9 K11 [assert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R2 2 ; [-40]
       46 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"messageBus", "LOG_EVENT_FROM_LUA"}]
        1 MOVE                             R2 R0
        2 JUMPIF                           R2 ; [+1]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R1 K0 ["messageBus"]
        6 GETUPVAL                         R2 0
        7 LOADK                            R4 K3 ["Telemetry"]
        8 LOADK                            R5 K4 ["logEventFromLua"]
        9 NAMECALL                         R2 R2 K5 ["GetMessageId"]
       11 CALL                             R2 3 1
       12 SETTABLEKS                       R2 R1 K1 ["LOG_EVENT_FROM_LUA"]
       14 GETUPVAL                         R4 1
       15 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K7 [setmetatable]
       20 CALL                             R2 2 0
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MessageBusService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 8 0
        9 SETTABLEKS                       R1 R1 K4 ["__index"]
       11 GETIMPORT                        R2 K1 [game]
       13 LOADK                            R4 K5 ["CleanupTelemetryProtocol"]
       14 LOADB                            R5 0
       15 NAMECALL                         R2 R2 K6 ["DefineFastFlag"]
       17 CALL                             R2 3 1
       18 DUPCLOSURE                       R3 K7 [PROTO_0]
       19 SETTABLEKS                       R3 R1 K8 ["logRobloxTelemetryEvent"]
       21 DUPCLOSURE                       R3 K9 [PROTO_1]
       22 SETTABLEKS                       R3 R1 K10 ["logTelemetryCounterEvent"]
       24 DUPCLOSURE                       R3 K11 [PROTO_2]
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R3 R1 K12 ["logEvent"]
       28 DUPCLOSURE                       R3 K13 [PROTO_3]
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R3 R1 K14 ["new"]
       33 NEWTABLE                         R3 0 4
       35 LOADK                            R4 K15 ["addPlaceId"]
       36 LOADK                            R5 K16 ["addUniverseId"]
       37 LOADK                            R6 K17 ["addPlaceInstanceId"]
       38 LOADK                            R7 K18 ["addSessionId"]
       39 SETLIST                          R3 R4 4 [1]
       41 SETTABLEKS                       R3 R1 K19 ["StandardizedFields"]
       43 GETTABLEKS                       R3 R1 K14 ["new"]
       45 CALL                             R3 0 1
       46 SETTABLEKS                       R3 R1 K20 ["default"]
       48 RETURN                           R1 1
