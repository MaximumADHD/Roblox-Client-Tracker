PROTO_0:
        0 DUPTABLE                         R3 K2 [{"standardizedFields", "customFields"}]
        1 GETTABLEKS                       R4 R0 K3 ["StandardizedFields"]
        3 SETTABLEKS                       R4 R3 K0 ["standardizedFields"]
        5 SETTABLEKS                       R2 R3 K1 ["customFields"]
        7 DUPTABLE                         R4 K8 [{["eventType"] = "RobloxTelemetry", ["config"], ["data"]}]
        8 SETTABLEKS                       R1 R4 K6 ["config"]
       10 SETTABLEKS                       R3 R4 K7 ["data"]
       12 GETTABLEKS                       R5 R0 K9 ["messageBus"]
       14 GETTABLEKS                       R7 R0 K10 ["LOG_EVENT_FROM_LUA"]
       16 MOVE                             R8 R4
       17 NAMECALL                         R5 R5 K11 ["Call"]
       19 CALL                             R5 3 0
       20 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R3 K4 [{[1] = "RobloxTelemetryCounter", ["config"], ["data"]}]
        1 SETTABLEKS                       R1 R3 K2 ["config"]
        3 DUPTABLE                         R4 K6 [{"customFields"}]
        4 SETTABLEKS                       R2 R4 K5 ["customFields"]
        6 SETTABLEKS                       R4 R3 K3 ["data"]
        8 GETTABLEKS                       R4 R0 K7 ["messageBus"]
       10 GETTABLEKS                       R6 R0 K8 ["LOG_EVENT_FROM_LUA"]
       12 MOVE                             R7 R3
       13 NAMECALL                         R4 R4 K9 ["Call"]
       15 CALL                             R4 3 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETTABLEKS                       R7 R6 K2 ["config"]
        7 GETTABLEKS                       R8 R6 K3 ["data"]
        9 JUMPIFNOTEQKS                    R5 K4 ["RobloxTelemetry"] ; [+7]
       11 MOVE                             R11 R7
       12 MOVE                             R12 R8
       13 NAMECALL                         R9 R0 K5 ["logRobloxTelemetryEvent"]
       15 CALL                             R9 3 0
       16 JUMP                             ; [+17]
       17 JUMPIFNOTEQKS                    R5 K6 ["RobloxTelemetryCounter"] ; [+7]
       19 MOVE                             R11 R7
       20 MOVE                             R12 R8
       21 NAMECALL                         R9 R0 K7 ["logTelemetryCounterEvent"]
       23 CALL                             R9 3 0
       24 JUMP                             ; [+9]
       25 LOADB                            R10 0
       26 LOADK                            R12 K8 ["Unknown telemetry event type: "]
       27 MOVE                             R13 R5
       28 CONCAT                           R11 R12 R13
       29 FASTCALL2                        ASSERT R10 R11 ; [+3]
       31 GETIMPORT                        R9 K10 [assert]
       33 CALL                             R9 2 0
       34 FORGLOOP                         R2 2 ; [-30]
       36 RETURN                           R0 0

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
       11 DUPCLOSURE                       R2 K5 [PROTO_0]
       12 SETTABLEKS                       R2 R1 K6 ["logRobloxTelemetryEvent"]
       14 DUPCLOSURE                       R2 K7 [PROTO_1]
       15 SETTABLEKS                       R2 R1 K8 ["logTelemetryCounterEvent"]
       17 DUPCLOSURE                       R2 K9 [PROTO_2]
       18 SETTABLEKS                       R2 R1 K10 ["logEvent"]
       20 DUPCLOSURE                       R2 K11 [PROTO_3]
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R2 R1 K12 ["new"]
       25 NEWTABLE                         R2 0 4
       27 LOADK                            R3 K13 ["addPlaceId"]
       28 LOADK                            R4 K14 ["addUniverseId"]
       29 LOADK                            R5 K15 ["addPlaceInstanceId"]
       30 LOADK                            R6 K16 ["addSessionInfo"]
       31 SETLIST                          R2 R3 4 [1]
       33 SETTABLEKS                       R2 R1 K17 ["StandardizedFields"]
       35 GETTABLEKS                       R2 R1 K12 ["new"]
       37 CALL                             R2 0 1
       38 SETTABLEKS                       R2 R1 K18 ["default"]
       40 RETURN                           R1 1
