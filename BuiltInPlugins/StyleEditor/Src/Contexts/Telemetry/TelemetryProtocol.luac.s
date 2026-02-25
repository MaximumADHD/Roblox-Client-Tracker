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
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["LogTelemetry"]
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+13]
       12 GETIMPORT                        R2 K4 [print]
       14 LOADK                            R4 K5 ["StyleEditor logged telemetry event '%*':"]
       15 GETTABLEKS                       R7 R1 K6 ["config"]
       17 GETTABLEKS                       R6 R7 K7 ["eventName"]
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
        7 GETIMPORT                        R5 K5 [script]
        9 GETTABLEKS                       R4 R5 K6 ["Parent"]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETTABLEKS                       R1 R2 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R4 R1 K9 ["Packages"]
       21 GETTABLEKS                       R3 R4 K10 ["Framework"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R5 R2 K11 ["Util"]
       26 GETTABLEKS                       R4 R5 K12 ["Typecheck"]
       28 GETTABLEKS                       R3 R4 K13 ["t"]
       30 GETIMPORT                        R4 K8 [require]
       32 GETTABLEKS                       R7 R1 K14 ["Src"]
       34 GETTABLEKS                       R6 R7 K11 ["Util"]
       36 GETTABLEKS                       R5 R6 K15 ["DebugFlags"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K8 [require]
       41 GETIMPORT                        R8 K5 [script]
       43 GETTABLEKS                       R7 R8 K6 ["Parent"]
       45 GETTABLEKS                       R6 R7 K16 ["Types"]
       47 CALL                             R5 1 1
       48 DUPTABLE                         R6 K20 [{"RobloxTelemetry", "EphemeralCounter", "EphemeralStat"}]
       49 LOADK                            R7 K17 ["RobloxTelemetry"]
       50 SETTABLEKS                       R7 R6 K17 ["RobloxTelemetry"]
       52 LOADK                            R7 K18 ["EphemeralCounter"]
       53 SETTABLEKS                       R7 R6 K18 ["EphemeralCounter"]
       55 LOADK                            R7 K19 ["EphemeralStat"]
       56 SETTABLEKS                       R7 R6 K19 ["EphemeralStat"]
       58 DUPTABLE                         R7 K24 [{"UNSPECIFIED", "EventIngest", "Points", "EphemeralCounter", "EphemeralStat"}]
       59 LOADK                            R8 K21 ["UNSPECIFIED"]
       60 SETTABLEKS                       R8 R7 K21 ["UNSPECIFIED"]
       62 LOADK                            R8 K22 ["EventIngest"]
       63 SETTABLEKS                       R8 R7 K22 ["EventIngest"]
       65 LOADK                            R8 K23 ["Points"]
       66 SETTABLEKS                       R8 R7 K23 ["Points"]
       68 LOADK                            R8 K18 ["EphemeralCounter"]
       69 SETTABLEKS                       R8 R7 K18 ["EphemeralCounter"]
       71 LOADK                            R8 K19 ["EphemeralStat"]
       72 SETTABLEKS                       R8 R7 K19 ["EphemeralStat"]
       74 DUPTABLE                         R8 K29 [{"addPlaceId", "addUniverseId", "addPlaceInstanceId", "addSessionId"}]
       75 LOADK                            R9 K25 ["addPlaceId"]
       76 SETTABLEKS                       R9 R8 K25 ["addPlaceId"]
       78 LOADK                            R9 K26 ["addUniverseId"]
       79 SETTABLEKS                       R9 R8 K26 ["addUniverseId"]
       81 LOADK                            R9 K27 ["addPlaceInstanceId"]
       82 SETTABLEKS                       R9 R8 K27 ["addPlaceInstanceId"]
       84 LOADK                            R9 K28 ["addSessionId"]
       85 SETTABLEKS                       R9 R8 K28 ["addSessionId"]
       87 GETTABLEKS                       R9 R3 K30 ["interface"]
       89 DUPTABLE                         R10 K33 [{"eventName", "backends"}]
       90 GETTABLEKS                       R11 R3 K34 ["string"]
       92 SETTABLEKS                       R11 R10 K31 ["eventName"]
       94 GETTABLEKS                       R11 R3 K35 ["array"]
       96 GETTABLEKS                       R12 R3 K36 ["valueOf"]
       98 MOVE                             R13 R7
       99 CALL                             R12 1 -1
      100 CALL                             R11 -1 1
      101 SETTABLEKS                       R11 R10 K32 ["backends"]
      103 CALL                             R9 1 1
      104 GETTABLEKS                       R10 R3 K30 ["interface"]
      106 DUPTABLE                         R11 K40 [{"eventType", "config", "data"}]
      107 GETTABLEKS                       R12 R3 K36 ["valueOf"]
      109 MOVE                             R13 R6
      110 CALL                             R12 1 1
      111 SETTABLEKS                       R12 R11 K37 ["eventType"]
      113 SETTABLEKS                       R9 R11 K38 ["config"]
      115 GETTABLEKS                       R12 R3 K41 ["union"]
      117 GETTABLEKS                       R13 R3 K42 ["none"]
      119 GETTABLEKS                       R14 R3 K30 ["interface"]
      121 DUPTABLE                         R15 K44 [{"customFields"}]
      122 GETTABLEKS                       R16 R3 K45 ["optional"]
      124 GETTABLEKS                       R17 R3 K46 ["keys"]
      126 GETTABLEKS                       R18 R3 K34 ["string"]
      128 CALL                             R17 1 -1
      129 CALL                             R16 -1 1
      130 SETTABLEKS                       R16 R15 K43 ["customFields"]
      132 CALL                             R14 1 1
      133 GETTABLEKS                       R15 R3 K30 ["interface"]
      135 DUPTABLE                         R16 K48 [{"incrementValue"}]
      136 GETTABLEKS                       R17 R3 K49 ["number"]
      138 SETTABLEKS                       R17 R16 K47 ["incrementValue"]
      140 CALL                             R15 1 1
      141 GETTABLEKS                       R16 R3 K30 ["interface"]
      143 DUPTABLE                         R17 K51 [{"statValue"}]
      144 GETTABLEKS                       R18 R3 K49 ["number"]
      146 SETTABLEKS                       R18 R17 K50 ["statValue"]
      148 CALL                             R16 1 -1
      149 CALL                             R12 -1 1
      150 SETTABLEKS                       R12 R11 K39 ["data"]
      152 CALL                             R10 1 1
      153 DUPTABLE                         R11 K59 [{"EventTypes", "Backends", "StandardizedFields", "LOG_EVENT_WITH_TIMESTAMP", "GET_TIMESTAMP", "LOG_EVENT_FROM_LUA", "ONE_HUNDRED_PERCENT"}]
      154 SETTABLEKS                       R6 R11 K52 ["EventTypes"]
      156 SETTABLEKS                       R7 R11 K53 ["Backends"]
      158 SETTABLEKS                       R8 R11 K54 ["StandardizedFields"]
      160 LOADK                            R14 K60 ["Logging"]
      161 LOADK                            R15 K61 ["logEventWithTimestamp"]
      162 NAMECALL                         R12 R0 K62 ["GetMessageId"]
      164 CALL                             R12 3 1
      165 SETTABLEKS                       R12 R11 K55 ["LOG_EVENT_WITH_TIMESTAMP"]
      167 LOADK                            R14 K60 ["Logging"]
      168 LOADK                            R15 K63 ["getTimestamp"]
      169 NAMECALL                         R12 R0 K62 ["GetMessageId"]
      171 CALL                             R12 3 1
      172 SETTABLEKS                       R12 R11 K56 ["GET_TIMESTAMP"]
      174 LOADK                            R14 K60 ["Logging"]
      175 LOADK                            R15 K64 ["logEventFromLua"]
      176 NAMECALL                         R12 R0 K62 ["GetMessageId"]
      178 CALL                             R12 3 1
      179 SETTABLEKS                       R12 R11 K57 ["LOG_EVENT_FROM_LUA"]
      181 LOADN                            R12 16
      182 SETTABLEKS                       R12 R11 K58 ["ONE_HUNDRED_PERCENT"]
      184 SETTABLEKS                       R11 R11 K65 ["__index"]
      186 DUPCLOSURE                       R12 K66 [PROTO_0]
      187 CAPTURE                          VAL R0
      188 CAPTURE                          VAL R11
      189 SETTABLEKS                       R12 R11 K67 ["new"]
      191 DUPCLOSURE                       R12 K68 [PROTO_1]
      192 SETTABLEKS                       R12 R11 K61 ["logEventWithTimestamp"]
      194 DUPCLOSURE                       R12 K69 [PROTO_2]
      195 SETTABLEKS                       R12 R11 K70 ["logEvent"]
      197 DUPCLOSURE                       R12 K71 [PROTO_3]
      198 SETTABLEKS                       R12 R11 K63 ["getTimestamp"]
      200 DUPCLOSURE                       R12 K72 [PROTO_4]
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R4
      203 SETTABLEKS                       R12 R11 K73 ["logTelemetryEvent"]
      205 RETURN                           R11 1
