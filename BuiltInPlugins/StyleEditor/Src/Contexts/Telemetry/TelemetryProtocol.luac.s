PROTO_0:
        0 DUPTABLE                         R1 K1 [{"_messageBus"}]
        1 MOVE                             R2 R0
        2 JUMPIF                           R2 ; [+1]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R1 K0 ["_messageBus"]
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
        7 GETTABLEKS                       R5 R0 K4 ["_messageBus"]
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
        0 GETTABLEKS                       R1 R0 K0 ["_messageBus"]
        2 GETTABLEKS                       R3 R0 K1 ["GET_TIMESTAMP"]
        4 NEWTABLE                         R4 0 0
        6 NAMECALL                         R1 R1 K2 ["Call"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 -1
        3 FASTCALL                         ASSERT ; [+2]
        4 GETIMPORT                        R2 K1 [assert]
        6 CALL                             R2 -1 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["LogTelemetry"]
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+13]
       12 GETIMPORT                        R2 K4 [print]
       14 LOADK                            R4 K5 ["StyleEditor logged telemetry event '%*':"]
       15 GETTABLEKS                       R6 R1 K6 ["config"]
       17 GETTABLEKS                       R6 R6 K7 ["eventName"]
       19 NAMECALL                         R4 R4 K8 ["format"]
       21 CALL                             R4 2 1
       22 MOVE                             R3 R4
       23 MOVE                             R4 R1
       24 CALL                             R2 2 0
       25 GETTABLEKS                       R2 R0 K9 ["_messageBus"]
       27 GETTABLEKS                       R4 R0 K10 ["LOG_EVENT_FROM_LUA"]
       29 MOVE                             R5 R1
       30 NAMECALL                         R2 R2 K11 ["Call"]
       32 CALL                             R2 3 0
       33 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MessageBusService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Framework"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K11 ["Util"]
       26 GETTABLEKS                       R3 R3 K12 ["Typecheck"]
       28 GETTABLEKS                       R3 R3 K13 ["t"]
       30 GETIMPORT                        R4 K8 [require]
       32 GETTABLEKS                       R5 R1 K14 ["Src"]
       34 GETTABLEKS                       R5 R5 K11 ["Util"]
       36 GETTABLEKS                       R5 R5 K15 ["DebugFlags"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K8 [require]
       41 GETIMPORT                        R6 K5 [script]
       43 GETTABLEKS                       R6 R6 K6 ["Parent"]
       45 GETTABLEKS                       R6 R6 K16 ["Types"]
       47 CALL                             R5 1 1
       48 DUPTABLE                         R6 K20 [{["RobloxTelemetry"] = "RobloxTelemetry", ["EphemeralCounter"] = "EphemeralCounter", ["EphemeralStat"] = "EphemeralStat"}]
       49 DUPTABLE                         R7 K24 [{["UNSPECIFIED"] = "UNSPECIFIED", ["EventIngest"] = "EventIngest", ["Points"] = "Points", ["EphemeralCounter"] = "EphemeralCounter", ["EphemeralStat"] = "EphemeralStat"}]
       50 DUPTABLE                         R8 K29 [{["addPlaceId"] = "addPlaceId", ["addUniverseId"] = "addUniverseId", ["addPlaceInstanceId"] = "addPlaceInstanceId", ["addSessionId"] = "addSessionId"}]
       51 GETTABLEKS                       R9 R3 K30 ["interface"]
       53 DUPTABLE                         R10 K33 [{"eventName", "backends"}]
       54 GETTABLEKS                       R11 R3 K34 ["string"]
       56 SETTABLEKS                       R11 R10 K31 ["eventName"]
       58 GETTABLEKS                       R11 R3 K35 ["array"]
       60 GETTABLEKS                       R12 R3 K36 ["valueOf"]
       62 MOVE                             R13 R7
       63 CALL                             R12 1 -1
       64 CALL                             R11 -1 1
       65 SETTABLEKS                       R11 R10 K32 ["backends"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R10 R3 K30 ["interface"]
       70 DUPTABLE                         R11 K40 [{"eventType", "config", "data"}]
       71 GETTABLEKS                       R12 R3 K36 ["valueOf"]
       73 MOVE                             R13 R6
       74 CALL                             R12 1 1
       75 SETTABLEKS                       R12 R11 K37 ["eventType"]
       77 SETTABLEKS                       R9 R11 K38 ["config"]
       79 GETTABLEKS                       R12 R3 K41 ["union"]
       81 GETTABLEKS                       R13 R3 K42 ["none"]
       83 GETTABLEKS                       R14 R3 K30 ["interface"]
       85 DUPTABLE                         R15 K44 [{"customFields"}]
       86 GETTABLEKS                       R16 R3 K45 ["optional"]
       88 GETTABLEKS                       R17 R3 K46 ["keys"]
       90 GETTABLEKS                       R18 R3 K34 ["string"]
       92 CALL                             R17 1 -1
       93 CALL                             R16 -1 1
       94 SETTABLEKS                       R16 R15 K43 ["customFields"]
       96 CALL                             R14 1 1
       97 GETTABLEKS                       R15 R3 K30 ["interface"]
       99 DUPTABLE                         R16 K48 [{"incrementValue"}]
      100 GETTABLEKS                       R17 R3 K49 ["number"]
      102 SETTABLEKS                       R17 R16 K47 ["incrementValue"]
      104 CALL                             R15 1 1
      105 GETTABLEKS                       R16 R3 K30 ["interface"]
      107 DUPTABLE                         R17 K51 [{"statValue"}]
      108 GETTABLEKS                       R18 R3 K49 ["number"]
      110 SETTABLEKS                       R18 R17 K50 ["statValue"]
      112 CALL                             R16 1 -1
      113 CALL                             R12 -1 1
      114 SETTABLEKS                       R12 R11 K39 ["data"]
      116 CALL                             R10 1 1
      117 DUPTABLE                         R11 K60 [{["EventTypes"], ["Backends"], ["StandardizedFields"], ["LOG_EVENT_WITH_TIMESTAMP"], ["GET_TIMESTAMP"], ["LOG_EVENT_FROM_LUA"], ["ONE_HUNDRED_PERCENT"] = 10000}]
      118 SETTABLEKS                       R6 R11 K52 ["EventTypes"]
      120 SETTABLEKS                       R7 R11 K53 ["Backends"]
      122 SETTABLEKS                       R8 R11 K54 ["StandardizedFields"]
      124 LOADK                            R14 K61 ["Logging"]
      125 LOADK                            R15 K62 ["logEventWithTimestamp"]
      126 NAMECALL                         R12 R0 K63 ["GetMessageId"]
      128 CALL                             R12 3 1
      129 SETTABLEKS                       R12 R11 K55 ["LOG_EVENT_WITH_TIMESTAMP"]
      131 LOADK                            R14 K61 ["Logging"]
      132 LOADK                            R15 K64 ["getTimestamp"]
      133 NAMECALL                         R12 R0 K63 ["GetMessageId"]
      135 CALL                             R12 3 1
      136 SETTABLEKS                       R12 R11 K56 ["GET_TIMESTAMP"]
      138 LOADK                            R14 K61 ["Logging"]
      139 LOADK                            R15 K65 ["logEventFromLua"]
      140 NAMECALL                         R12 R0 K63 ["GetMessageId"]
      142 CALL                             R12 3 1
      143 SETTABLEKS                       R12 R11 K57 ["LOG_EVENT_FROM_LUA"]
      145 SETTABLEKS                       R11 R11 K66 ["__index"]
      147 DUPCLOSURE                       R12 K67 [PROTO_0]
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R11
      150 SETTABLEKS                       R12 R11 K68 ["new"]
      152 DUPCLOSURE                       R12 K69 [PROTO_1]
      153 SETTABLEKS                       R12 R11 K62 ["logEventWithTimestamp"]
      155 DUPCLOSURE                       R12 K70 [PROTO_2]
      156 SETTABLEKS                       R12 R11 K71 ["logEvent"]
      158 DUPCLOSURE                       R12 K72 [PROTO_3]
      159 SETTABLEKS                       R12 R11 K64 ["getTimestamp"]
      161 DUPCLOSURE                       R12 K73 [PROTO_4]
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R4
      164 SETTABLEKS                       R12 R11 K74 ["logTelemetryEvent"]
      166 RETURN                           R11 1
