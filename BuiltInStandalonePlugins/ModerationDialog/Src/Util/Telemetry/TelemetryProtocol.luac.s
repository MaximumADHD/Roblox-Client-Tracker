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
        0 DUPTABLE                         R5 K3 [{"eventType", "config", "data"}]
        1 LOADK                            R6 K4 ["RobloxTelemetry"]
        2 SETTABLEKS                       R6 R5 K0 ["eventType"]
        4 SETTABLEKS                       R1 R5 K1 ["config"]
        6 DUPTABLE                         R6 K8 [{"standardizedFields", "customFields", "eventContext"}]
        7 SETTABLEKS                       R2 R6 K5 ["standardizedFields"]
        9 SETTABLEKS                       R3 R6 K6 ["customFields"]
       11 SETTABLEKS                       R4 R6 K7 ["eventContext"]
       13 SETTABLEKS                       R6 R5 K2 ["data"]
       15 GETTABLEKS                       R6 R0 K9 ["messageBus"]
       17 GETTABLEKS                       R8 R0 K10 ["LOG_EVENT_FROM_LUA"]
       19 MOVE                             R9 R5
       20 NAMECALL                         R6 R6 K11 ["Call"]
       22 CALL                             R6 3 0
       23 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R3 K3 [{"eventType", "config", "data"}]
        1 LOADK                            R4 K4 ["EphemeralCounter"]
        2 SETTABLEKS                       R4 R3 K0 ["eventType"]
        4 SETTABLEKS                       R1 R3 K1 ["config"]
        6 JUMPIFNOT                        R2 ; [+4]
        7 DUPTABLE                         R4 K6 [{"incrementValue"}]
        8 SETTABLEKS                       R2 R4 K5 ["incrementValue"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R4
       12 SETTABLEKS                       R4 R3 K2 ["data"]
       14 GETTABLEKS                       R4 R0 K7 ["messageBus"]
       16 GETTABLEKS                       R6 R0 K8 ["LOG_EVENT_FROM_LUA"]
       18 MOVE                             R7 R3
       19 NAMECALL                         R4 R4 K9 ["Call"]
       21 CALL                             R4 3 0
       22 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R3 K3 [{"eventType", "config", "data"}]
        1 LOADK                            R4 K4 ["EphemeralStat"]
        2 SETTABLEKS                       R4 R3 K0 ["eventType"]
        4 SETTABLEKS                       R1 R3 K1 ["config"]
        6 DUPTABLE                         R4 K6 [{"statValue"}]
        7 SETTABLEKS                       R2 R4 K5 ["statValue"]
        9 SETTABLEKS                       R4 R3 K2 ["data"]
       11 GETTABLEKS                       R4 R0 K7 ["messageBus"]
       13 GETTABLEKS                       R6 R0 K8 ["LOG_EVENT_FROM_LUA"]
       15 MOVE                             R7 R3
       16 NAMECALL                         R4 R4 K9 ["Call"]
       18 CALL                             R4 3 0
       19 RETURN                           R0 0

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
       16 DUPTABLE                         R2 K15 [{"UNSPECIFIED", "EventIngest", "Points", "EphemeralCounter", "EphemeralStat"}]
       17 LOADK                            R3 K10 ["UNSPECIFIED"]
       18 SETTABLEKS                       R3 R2 K10 ["UNSPECIFIED"]
       20 LOADK                            R3 K11 ["EventIngest"]
       21 SETTABLEKS                       R3 R2 K11 ["EventIngest"]
       23 LOADK                            R3 K12 ["Points"]
       24 SETTABLEKS                       R3 R2 K12 ["Points"]
       26 LOADK                            R3 K13 ["EphemeralCounter"]
       27 SETTABLEKS                       R3 R2 K13 ["EphemeralCounter"]
       29 LOADK                            R3 K14 ["EphemeralStat"]
       30 SETTABLEKS                       R3 R2 K14 ["EphemeralStat"]
       32 DUPTABLE                         R3 K20 [{"addPlaceId", "addUniverseId", "addPlaceInstanceId", "addSessionId"}]
       33 LOADK                            R4 K16 ["addPlaceId"]
       34 SETTABLEKS                       R4 R3 K16 ["addPlaceId"]
       36 LOADK                            R4 K17 ["addUniverseId"]
       37 SETTABLEKS                       R4 R3 K17 ["addUniverseId"]
       39 LOADK                            R4 K18 ["addPlaceInstanceId"]
       40 SETTABLEKS                       R4 R3 K18 ["addPlaceInstanceId"]
       42 LOADK                            R4 K19 ["addSessionId"]
       43 SETTABLEKS                       R4 R3 K19 ["addSessionId"]
       45 DUPTABLE                         R4 K27 [{"TelemetryBackends", "StandardizedFields", "LOG_EVENT_WITH_TIMESTAMP", "GET_TIMESTAMP", "LOG_EVENT_FROM_LUA", "ONE_HUNDRED_PERCENT"}]
       46 SETTABLEKS                       R2 R4 K21 ["TelemetryBackends"]
       48 SETTABLEKS                       R3 R4 K22 ["StandardizedFields"]
       50 LOADK                            R7 K28 ["Logging"]
       51 LOADK                            R8 K29 ["logEventWithTimestamp"]
       52 NAMECALL                         R5 R0 K30 ["GetMessageId"]
       54 CALL                             R5 3 1
       55 SETTABLEKS                       R5 R4 K23 ["LOG_EVENT_WITH_TIMESTAMP"]
       57 LOADK                            R7 K28 ["Logging"]
       58 LOADK                            R8 K31 ["getTimestamp"]
       59 NAMECALL                         R5 R0 K30 ["GetMessageId"]
       61 CALL                             R5 3 1
       62 SETTABLEKS                       R5 R4 K24 ["GET_TIMESTAMP"]
       64 LOADK                            R7 K28 ["Logging"]
       65 LOADK                            R8 K32 ["logEventFromLua"]
       66 NAMECALL                         R5 R0 K30 ["GetMessageId"]
       68 CALL                             R5 3 1
       69 SETTABLEKS                       R5 R4 K25 ["LOG_EVENT_FROM_LUA"]
       71 LOADN                            R5 16
       72 SETTABLEKS                       R5 R4 K26 ["ONE_HUNDRED_PERCENT"]
       74 SETTABLEKS                       R4 R4 K33 ["__index"]
       76 DUPCLOSURE                       R5 K34 [PROTO_0]
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R4
       79 SETTABLEKS                       R5 R4 K35 ["new"]
       81 DUPCLOSURE                       R5 K36 [PROTO_1]
       82 SETTABLEKS                       R5 R4 K29 ["logEventWithTimestamp"]
       84 DUPCLOSURE                       R5 K37 [PROTO_2]
       85 SETTABLEKS                       R5 R4 K38 ["logEvent"]
       87 DUPCLOSURE                       R5 K39 [PROTO_3]
       88 SETTABLEKS                       R5 R4 K31 ["getTimestamp"]
       90 DUPCLOSURE                       R5 K40 [PROTO_4]
       91 SETTABLEKS                       R5 R4 K41 ["logRobloxTelemetryEvent"]
       93 DUPCLOSURE                       R5 K42 [PROTO_5]
       94 SETTABLEKS                       R5 R4 K43 ["logEphemeralCounterEvent"]
       96 DUPCLOSURE                       R5 K44 [PROTO_6]
       97 SETTABLEKS                       R5 R4 K45 ["logEphemeralStatEvent"]
       99 GETTABLEKS                       R5 R4 K35 ["new"]
      101 CALL                             R5 0 1
      102 SETTABLEKS                       R5 R4 K46 ["default"]
      104 RETURN                           R4 1
