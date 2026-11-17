PROTO_0:
        0 DUPTABLE                         R1 K1 [{"messageBus"}]
        1 MOVE                             R2 R0
        2 JUMPIF                           R2 ; [+1]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R1 K0 ["messageBus"]
        6 GETUPVAL                         R4 1
        7 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        9 MOVE                             R3 R1
       10 GETIMPORT                        R2 K3 [setmetatable]
       12 CALL                             R2 2 0
       13 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R4 K3 [{"eventName", "timestamp", "metadata"}]
        1 SETTABLEKS                       R1 R4 K0 ["eventName"]
        3 SETTABLEKS                       R2 R4 K1 ["timestamp"]
        5 SETTABLEKS                       R3 R4 K2 ["metadata"]
        7 GETTABLEKS                       R5 R0 K4 ["messageBus"]
        9 GETTABLEKS                       R7 R0 K5 ["LOG_EVENT_WITH_TIMESTAMP"]
       11 MOVE                             R8 R4
       12 NAMECALL                         R5 R5 K6 ["Call"]
       14 CALL                             R5 3 0
       15 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R5 R1
        1 LOADN                            R6 0
        2 MOVE                             R7 R2
        3 NAMECALL                         R3 R0 K0 ["logEventWithTimestamp"]
        5 CALL                             R3 4 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["messageBus"]
        2 GETTABLEKS                       R3 R0 K1 ["GET_TIMESTAMP"]
        4 NEWTABLE                         R4 0 0
        6 NAMECALL                         R1 R1 K2 ["Call"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_4:
        0 DUPTABLE                         R5 K4 [{[1] = "RobloxTelemetry", ["config"], ["data"]}]
        1 SETTABLEKS                       R1 R5 K2 ["config"]
        3 DUPTABLE                         R6 K8 [{"standardizedFields", "customFields", "eventContext"}]
        4 SETTABLEKS                       R2 R6 K5 ["standardizedFields"]
        6 SETTABLEKS                       R3 R6 K6 ["customFields"]
        8 SETTABLEKS                       R4 R6 K7 ["eventContext"]
       10 SETTABLEKS                       R6 R5 K3 ["data"]
       12 GETTABLEKS                       R6 R0 K9 ["messageBus"]
       14 GETTABLEKS                       R8 R0 K10 ["LOG_EVENT_FROM_LUA"]
       16 MOVE                             R9 R5
       17 NAMECALL                         R6 R6 K11 ["Call"]
       19 CALL                             R6 3 0
       20 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R3 K4 [{[1] = "EphemeralCounter", ["config"], ["data"]}]
        1 SETTABLEKS                       R1 R3 K2 ["config"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 DUPTABLE                         R4 K6 [{"incrementValue"}]
        5 SETTABLEKS                       R2 R4 K5 ["incrementValue"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R4
        9 SETTABLEKS                       R4 R3 K3 ["data"]
       11 GETTABLEKS                       R4 R0 K7 ["messageBus"]
       13 GETTABLEKS                       R6 R0 K8 ["LOG_EVENT_FROM_LUA"]
       15 MOVE                             R7 R3
       16 NAMECALL                         R4 R4 K9 ["Call"]
       18 CALL                             R4 3 0
       19 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R3 K4 [{[1] = "EphemeralStat", ["config"], ["data"]}]
        1 SETTABLEKS                       R1 R3 K2 ["config"]
        3 DUPTABLE                         R4 K6 [{"statValue"}]
        4 SETTABLEKS                       R2 R4 K5 ["statValue"]
        6 SETTABLEKS                       R4 R3 K3 ["data"]
        8 GETTABLEKS                       R4 R0 K7 ["messageBus"]
       10 GETTABLEKS                       R6 R0 K8 ["LOG_EVENT_FROM_LUA"]
       12 MOVE                             R7 R3
       13 NAMECALL                         R4 R4 K9 ["Call"]
       15 CALL                             R4 3 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MessageBusService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K9 ["TelemetryProtocolTypes"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K15 [{["UNSPECIFIED"] = "UNSPECIFIED", ["EventIngest"] = "EventIngest", ["Points"] = "Points", ["EphemeralCounter"] = "EphemeralCounter", ["EphemeralStat"] = "EphemeralStat"}]
       17 DUPTABLE                         R3 K20 [{["addPlaceId"] = "addPlaceId", ["addUniverseId"] = "addUniverseId", ["addPlaceInstanceId"] = "addPlaceInstanceId", ["addSessionId"] = "addSessionId"}]
       18 DUPTABLE                         R4 K28 [{["TelemetryBackends"], ["StandardizedFields"], ["LOG_EVENT_WITH_TIMESTAMP"], ["GET_TIMESTAMP"], ["LOG_EVENT_FROM_LUA"], ["ONE_HUNDRED_PERCENT"] = 10000}]
       19 SETTABLEKS                       R2 R4 K21 ["TelemetryBackends"]
       21 SETTABLEKS                       R3 R4 K22 ["StandardizedFields"]
       23 LOADK                            R7 K29 ["Logging"]
       24 LOADK                            R8 K30 ["logEventWithTimestamp"]
       25 NAMECALL                         R5 R0 K31 ["GetMessageId"]
       27 CALL                             R5 3 1
       28 SETTABLEKS                       R5 R4 K23 ["LOG_EVENT_WITH_TIMESTAMP"]
       30 LOADK                            R7 K29 ["Logging"]
       31 LOADK                            R8 K32 ["getTimestamp"]
       32 NAMECALL                         R5 R0 K31 ["GetMessageId"]
       34 CALL                             R5 3 1
       35 SETTABLEKS                       R5 R4 K24 ["GET_TIMESTAMP"]
       37 LOADK                            R7 K29 ["Logging"]
       38 LOADK                            R8 K33 ["logEventFromLua"]
       39 NAMECALL                         R5 R0 K31 ["GetMessageId"]
       41 CALL                             R5 3 1
       42 SETTABLEKS                       R5 R4 K25 ["LOG_EVENT_FROM_LUA"]
       44 SETTABLEKS                       R4 R4 K34 ["__index"]
       46 DUPCLOSURE                       R5 K35 [PROTO_0]
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R5 R4 K36 ["new"]
       51 DUPCLOSURE                       R5 K37 [PROTO_1]
       52 SETTABLEKS                       R5 R4 K30 ["logEventWithTimestamp"]
       54 DUPCLOSURE                       R5 K38 [PROTO_2]
       55 SETTABLEKS                       R5 R4 K39 ["logEvent"]
       57 DUPCLOSURE                       R5 K40 [PROTO_3]
       58 SETTABLEKS                       R5 R4 K32 ["getTimestamp"]
       60 DUPCLOSURE                       R5 K41 [PROTO_4]
       61 SETTABLEKS                       R5 R4 K42 ["logRobloxTelemetryEvent"]
       63 DUPCLOSURE                       R5 K43 [PROTO_5]
       64 SETTABLEKS                       R5 R4 K44 ["logEphemeralCounterEvent"]
       66 DUPCLOSURE                       R5 K45 [PROTO_6]
       67 SETTABLEKS                       R5 R4 K46 ["logEphemeralStatEvent"]
       69 GETTABLEKS                       R5 R4 K36 ["new"]
       71 CALL                             R5 0 1
       72 SETTABLEKS                       R5 R4 K47 ["default"]
       74 RETURN                           R4 1
