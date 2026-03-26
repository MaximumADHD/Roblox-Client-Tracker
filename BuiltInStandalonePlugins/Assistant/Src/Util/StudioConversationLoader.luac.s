PROTO_0:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["getTimestampMilliseconds"]
        3 CALL                             R6 0 1
        4 SUB                              R5 R6 R4
        5 GETTABLEKS                       R7 R0 K1 ["EventLogger"]
        7 GETTABLEKS                       R6 R7 K2 ["logPersistenceOperation"]
        9 DUPTABLE                         R7 K7 [{"operation", "scope", "success", "latencyMs"}]
       10 SETTABLEKS                       R1 R7 K3 ["operation"]
       12 SETTABLEKS                       R2 R7 K4 ["scope"]
       14 SETTABLEKS                       R3 R7 K5 ["success"]
       16 SETTABLEKS                       R5 R7 K6 ["latencyMs"]
       18 CALL                             R6 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R2 K0 ["Assistant_Conversation_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["serializeConversation"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        7 MOVE                             R2 R0
        8 LOADK                            R3 K1 ["Failed to serialize conversation"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R1 R2 K4 ["setUserSettingsAsync"]
       15 GETUPVAL                         R2 3
       16 MOVE                             R3 R0
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getTimestampMilliseconds"]
        3 CALL                             R3 0 1
        4 LOADK                            R5 K1 ["Assistant_Conversation_%*"]
        5 MOVE                             R7 R2
        6 NAMECALL                         R5 R5 K2 ["format"]
        8 CALL                             R5 2 1
        9 MOVE                             R4 R5
       10 GETIMPORT                        R5 K4 [pcall]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R4
       17 CALL                             R5 1 2
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R7 R8 K5 ["Save"]
       21 GETUPVAL                         R9 3
       22 GETTABLEKS                       R8 R9 K6 ["Conversation"]
       24 GETUPVAL                         R11 0
       25 GETTABLEKS                       R10 R11 K0 ["getTimestampMilliseconds"]
       27 CALL                             R10 0 1
       28 SUB                              R9 R10 R3
       29 GETTABLEKS                       R11 R0 K7 ["EventLogger"]
       31 GETTABLEKS                       R10 R11 K8 ["logPersistenceOperation"]
       33 DUPTABLE                         R11 K13 [{"operation", "scope", "success", "latencyMs"}]
       34 SETTABLEKS                       R7 R11 K9 ["operation"]
       36 SETTABLEKS                       R8 R11 K10 ["scope"]
       38 SETTABLEKS                       R5 R11 K11 ["success"]
       40 SETTABLEKS                       R9 R11 K12 ["latencyMs"]
       42 CALL                             R10 1 0
       43 JUMPIF                           R5 ; [+12]
       44 GETIMPORT                        R7 K15 [warn]
       46 LOADK                            R9 K16 ["Failed to save conversation for key %*. Reason: '%*'"]
       47 MOVE                             R11 R4
       48 MOVE                             R12 R6
       49 NAMECALL                         R9 R9 K2 ["format"]
       51 CALL                             R9 3 1
       52 MOVE                             R8 R9
       53 CALL                             R7 1 0
       54 LOADB                            R7 0
       55 RETURN                           R7 1
       56 LOADB                            R7 1
       57 RETURN                           R7 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["deserializeConversation"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+12]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R4 K4 ["Failed to get conversation for key %*. Reason: '%*'"]
       10 GETUPVAL                         R6 1
       11 MOVE                             R7 R1
       12 NAMECALL                         R4 R4 K5 ["format"]
       14 CALL                             R4 3 1
       15 MOVE                             R3 R4
       16 CALL                             R2 1 0
       17 LOADB                            R2 0
       18 RETURN                           R2 1
       19 JUMPIF                           R1 ; [+2]
       20 LOADB                            R2 1
       21 RETURN                           R2 1
       22 GETIMPORT                        R2 K1 [pcall]
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R1
       27 CALL                             R2 1 2
       28 JUMPIF                           R2 ; [+12]
       29 GETIMPORT                        R4 K3 [warn]
       31 LOADK                            R6 K6 ["Failed to deserialize conversation for key %*. Reason: '%*'"]
       32 GETUPVAL                         R8 1
       33 MOVE                             R9 R3
       34 NAMECALL                         R6 R6 K5 ["format"]
       36 CALL                             R6 3 1
       37 MOVE                             R5 R6
       38 CALL                             R4 1 0
       39 LOADB                            R4 0
       40 RETURN                           R4 1
       41 LOADB                            R4 1
       42 MOVE                             R5 R3
       43 RETURN                           R4 2

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getTimestampMilliseconds"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R4 R1 K1 ["placeId"]
        6 LOADK                            R5 K2 ["Assistant_Conversation_%*"]
        7 MOVE                             R7 R4
        8 NAMECALL                         R5 R5 K3 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R3 R5
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          UPVAL U1
       16 MOVE                             R5 R4
       17 CALL                             R5 0 2
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R7 R8 K4 ["Load"]
       21 GETUPVAL                         R9 3
       22 GETTABLEKS                       R8 R9 K5 ["Conversation"]
       24 GETUPVAL                         R11 0
       25 GETTABLEKS                       R10 R11 K0 ["getTimestampMilliseconds"]
       27 CALL                             R10 0 1
       28 SUB                              R9 R10 R2
       29 GETTABLEKS                       R11 R0 K6 ["EventLogger"]
       31 GETTABLEKS                       R10 R11 K7 ["logPersistenceOperation"]
       33 DUPTABLE                         R11 K12 [{"operation", "scope", "success", "latencyMs"}]
       34 SETTABLEKS                       R7 R11 K8 ["operation"]
       36 SETTABLEKS                       R8 R11 K9 ["scope"]
       38 SETTABLEKS                       R5 R11 K10 ["success"]
       40 SETTABLEKS                       R9 R11 K11 ["latencyMs"]
       42 CALL                             R10 1 0
       43 JUMPIFNOT                        R5 ; [+14]
       44 JUMPIFNOT                        R6 ; [+13]
       45 GETTABLEKS                       R7 R0 K13 ["conversationPersistence"]
       47 GETTABLEKS                       R8 R7 K14 ["notifyLoadedAsync"]
       49 DUPTABLE                         R9 K16 [{"scope", "conversation"}]
       50 GETUPVAL                         R11 3
       51 GETTABLEKS                       R10 R11 K5 ["Conversation"]
       53 SETTABLEKS                       R10 R9 K9 ["scope"]
       55 SETTABLEKS                       R6 R9 K15 ["conversation"]
       57 CALL                             R8 1 0
       58 RETURN                           R5 1

PROTO_8:
        0 LOADK                            R2 K0 ["Assistant_ThreadMessages_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["serializeMessages"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        7 MOVE                             R2 R0
        8 LOADK                            R3 K1 ["Failed to serialize messages"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R1 R2 K4 ["setUserSettingsAsync"]
       15 GETUPVAL                         R2 3
       16 MOVE                             R3 R0
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getTimestampMilliseconds"]
        3 CALL                             R3 0 1
        4 LOADK                            R5 K1 ["Assistant_ThreadMessages_%*"]
        5 MOVE                             R7 R1
        6 NAMECALL                         R5 R5 K2 ["format"]
        8 CALL                             R5 2 1
        9 MOVE                             R4 R5
       10 GETIMPORT                        R5 K4 [pcall]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R4
       17 CALL                             R5 1 2
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R7 R8 K5 ["Save"]
       21 GETUPVAL                         R9 3
       22 GETTABLEKS                       R8 R9 K6 ["Thread"]
       24 GETUPVAL                         R11 0
       25 GETTABLEKS                       R10 R11 K0 ["getTimestampMilliseconds"]
       27 CALL                             R10 0 1
       28 SUB                              R9 R10 R3
       29 GETTABLEKS                       R11 R0 K7 ["EventLogger"]
       31 GETTABLEKS                       R10 R11 K8 ["logPersistenceOperation"]
       33 DUPTABLE                         R11 K13 [{"operation", "scope", "success", "latencyMs"}]
       34 SETTABLEKS                       R7 R11 K9 ["operation"]
       36 SETTABLEKS                       R8 R11 K10 ["scope"]
       38 SETTABLEKS                       R5 R11 K11 ["success"]
       40 SETTABLEKS                       R9 R11 K12 ["latencyMs"]
       42 CALL                             R10 1 0
       43 JUMPIF                           R5 ; [+12]
       44 GETIMPORT                        R7 K15 [warn]
       46 LOADK                            R9 K16 ["Failed to save messages for key %*. Reason: '%*'"]
       47 MOVE                             R11 R4
       48 MOVE                             R12 R6
       49 NAMECALL                         R9 R9 K2 ["format"]
       51 CALL                             R9 3 1
       52 MOVE                             R8 R9
       53 CALL                             R7 1 0
       54 LOADB                            R7 0
       55 RETURN                           R7 1
       56 LOADB                            R7 1
       57 RETURN                           R7 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["deserializeMessages"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+12]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R4 K4 ["Failed to get messages for key %*. Reason: '%*'"]
       10 GETUPVAL                         R6 1
       11 MOVE                             R7 R1
       12 NAMECALL                         R4 R4 K5 ["format"]
       14 CALL                             R4 3 1
       15 MOVE                             R3 R4
       16 CALL                             R2 1 0
       17 LOADB                            R2 0
       18 RETURN                           R2 1
       19 JUMPIF                           R1 ; [+2]
       20 LOADB                            R2 1
       21 RETURN                           R2 1
       22 GETIMPORT                        R2 K1 [pcall]
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R1
       28 CALL                             R2 1 2
       29 JUMPIF                           R2 ; [+12]
       30 GETIMPORT                        R4 K3 [warn]
       32 LOADK                            R6 K6 ["Failed to deserialize messages for key %*. Reason: '%*'"]
       33 GETUPVAL                         R8 1
       34 MOVE                             R9 R3
       35 NAMECALL                         R6 R6 K5 ["format"]
       37 CALL                             R6 3 1
       38 MOVE                             R5 R6
       39 CALL                             R4 1 0
       40 LOADB                            R4 0
       41 RETURN                           R4 1
       42 LOADB                            R4 1
       43 MOVE                             R5 R3
       44 RETURN                           R4 2

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getTimestampMilliseconds"]
        3 CALL                             R2 0 1
        4 LOADK                            R4 K1 ["Assistant_ThreadMessages_%*"]
        5 MOVE                             R6 R1
        6 NAMECALL                         R4 R4 K2 ["format"]
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R1
       15 MOVE                             R5 R4
       16 CALL                             R5 0 2
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R7 R8 K3 ["Load"]
       20 GETUPVAL                         R9 3
       21 GETTABLEKS                       R8 R9 K4 ["Thread"]
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R10 R11 K0 ["getTimestampMilliseconds"]
       26 CALL                             R10 0 1
       27 SUB                              R9 R10 R2
       28 GETTABLEKS                       R11 R0 K5 ["EventLogger"]
       30 GETTABLEKS                       R10 R11 K6 ["logPersistenceOperation"]
       32 DUPTABLE                         R11 K11 [{"operation", "scope", "success", "latencyMs"}]
       33 SETTABLEKS                       R7 R11 K7 ["operation"]
       35 SETTABLEKS                       R8 R11 K8 ["scope"]
       37 SETTABLEKS                       R5 R11 K9 ["success"]
       39 SETTABLEKS                       R9 R11 K10 ["latencyMs"]
       41 CALL                             R10 1 0
       42 JUMPIFNOT                        R5 ; [+16]
       43 JUMPIFNOT                        R6 ; [+15]
       44 GETTABLEKS                       R7 R0 K12 ["conversationPersistence"]
       46 GETTABLEKS                       R8 R7 K13 ["notifyLoadedAsync"]
       48 DUPTABLE                         R9 K16 [{"scope", "threadId", "messages"}]
       49 GETUPVAL                         R11 3
       50 GETTABLEKS                       R10 R11 K4 ["Thread"]
       52 SETTABLEKS                       R10 R9 K8 ["scope"]
       54 SETTABLEKS                       R1 R9 K14 ["threadId"]
       56 SETTABLEKS                       R6 R9 K15 ["messages"]
       58 CALL                             R8 1 0
       59 RETURN                           R5 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getTimestampMilliseconds"]
        3 CALL                             R2 0 1
        4 LOADK                            R4 K1 ["Assistant_ThreadMessages_%*"]
        5 MOVE                             R6 R1
        6 NAMECALL                         R4 R4 K2 ["format"]
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 GETIMPORT                        R4 K4 [pcall]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R3
       15 CALL                             R4 1 2
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R6 R7 K5 ["Delete"]
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R7 R8 K6 ["Thread"]
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R9 R10 K0 ["getTimestampMilliseconds"]
       25 CALL                             R9 0 1
       26 SUB                              R8 R9 R2
       27 GETTABLEKS                       R10 R0 K7 ["EventLogger"]
       29 GETTABLEKS                       R9 R10 K8 ["logPersistenceOperation"]
       31 DUPTABLE                         R10 K13 [{"operation", "scope", "success", "latencyMs"}]
       32 SETTABLEKS                       R6 R10 K9 ["operation"]
       34 SETTABLEKS                       R7 R10 K10 ["scope"]
       36 SETTABLEKS                       R4 R10 K11 ["success"]
       38 SETTABLEKS                       R8 R10 K12 ["latencyMs"]
       40 CALL                             R9 1 0
       41 JUMPIF                           R4 ; [+12]
       42 GETIMPORT                        R6 K15 [warn]
       44 LOADK                            R8 K16 ["Failed to delete thread for key %*. Reason: '%*'"]
       45 MOVE                             R10 R3
       46 MOVE                             R11 R5
       47 NAMECALL                         R8 R8 K2 ["format"]
       49 CALL                             R8 3 1
       50 MOVE                             R7 R8
       51 CALL                             R6 1 0
       52 LOADB                            R6 0
       53 RETURN                           R6 1
       54 LOADB                            R6 1
       55 RETURN                           R6 1

PROTO_17:
        0 LOADB                            R2 0
        1 LOADN                            R3 0
        2 JUMPIFNOTLT                      R3 R0 ; [+6]
        4 LOADN                            R3 0
        5 JUMPIFLT                         R3 R1 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_18:
        0 GETTABLEKS                       R3 R1 K0 ["gameId"]
        2 GETTABLEKS                       R4 R1 K1 ["placeId"]
        4 LOADB                            R2 0
        5 LOADN                            R5 0
        6 JUMPIFNOTLT                      R5 R3 ; [+6]
        8 LOADN                            R5 0
        9 JUMPIFLT                         R5 R4 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 JUMPIF                           R2 ; [+1]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R2 R1 K2 ["overwrite"]
       17 JUMPIF                           R2 ; [+23]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R4 R1 K3 ["sessionId"]
       21 GETTABLE                         R2 R3 R4
       22 JUMPIF                           R2 ; [+5]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R4 R1 K1 ["placeId"]
       26 GETTABLE                         R2 R3 R4
       27 JUMPIFNOT                        R2 ; [+13]
       28 GETIMPORT                        R2 K5 [warn]
       30 LOADK                            R4 K6 ["[Assistant] Session %* already has cached metadata for placeId %*"]
       31 GETTABLEKS                       R6 R1 K3 ["sessionId"]
       33 GETTABLEKS                       R7 R1 K1 ["placeId"]
       35 NAMECALL                         R4 R4 K7 ["format"]
       37 CALL                             R4 3 1
       38 MOVE                             R3 R4
       39 CALL                             R2 1 0
       40 RETURN                           R0 0
       41 DUPTABLE                         R2 K10 [{"gameId", "placeId", "isLoading", "Destroying"}]
       42 GETTABLEKS                       R3 R1 K0 ["gameId"]
       44 SETTABLEKS                       R3 R2 K0 ["gameId"]
       46 GETTABLEKS                       R3 R1 K1 ["placeId"]
       48 SETTABLEKS                       R3 R2 K1 ["placeId"]
       50 LOADB                            R3 0
       51 SETTABLEKS                       R3 R2 K8 ["isLoading"]
       53 GETUPVAL                         R4 2
       54 GETTABLEKS                       R3 R4 K11 ["new"]
       56 CALL                             R3 0 1
       57 SETTABLEKS                       R3 R2 K9 ["Destroying"]
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R4 R1 K3 ["sessionId"]
       62 SETTABLE                         R2 R3 R4
       63 GETUPVAL                         R3 1
       64 GETTABLEKS                       R4 R1 K1 ["placeId"]
       66 LOADB                            R5 1
       67 SETTABLE                         R5 R3 R4
       68 GETUPVAL                         R3 3
       69 GETTABLEKS                       R5 R1 K3 ["sessionId"]
       71 NAMECALL                         R3 R3 K12 ["Fire"]
       73 CALL                             R3 2 0
       74 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["SessionId"]
        3 SETTABLEKS                       R2 R1 K1 ["sessionId"]
        5 DUPTABLE                         R1 K4 [{"sessionId", "gameId", "placeId"}]
        6 GETTABLEKS                       R2 R0 K0 ["SessionId"]
        8 SETTABLEKS                       R2 R1 K1 ["sessionId"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K5 ["GameId"]
       13 SETTABLEKS                       R2 R1 K2 ["gameId"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K6 ["PlaceId"]
       18 SETTABLEKS                       R2 R1 K3 ["placeId"]
       20 GETUPVAL                         R2 2
       21 LOADNIL                          R3
       22 MOVE                             R4 R1
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_20:
        0 LOADK                            R4 K0 ["DataModelSession"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Expected DataModelSession"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R2 R0 K5 ["SessionId"]
       13 SETTABLEKS                       R2 R1 K6 ["sessionId"]
       15 DUPTABLE                         R1 K9 [{"sessionId", "gameId", "placeId"}]
       16 GETTABLEKS                       R2 R0 K5 ["SessionId"]
       18 SETTABLEKS                       R2 R1 K6 ["sessionId"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K10 ["GameId"]
       23 SETTABLEKS                       R2 R1 K7 ["gameId"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R2 R3 K11 ["PlaceId"]
       28 SETTABLEKS                       R2 R1 K8 ["placeId"]
       30 GETUPVAL                         R2 2
       31 LOADNIL                          R3
       32 MOVE                             R4 R1
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R0 0
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R1 ; [+6]
        6 LOADN                            R3 0
        7 JUMPIFLT                         R3 R2 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 JUMPIFNOT                        R0 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R0 R1 K0 ["GameId"]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R1 R2 K1 ["PlaceId"]
       19 LOADB                            R2 0
       20 LOADN                            R3 0
       21 JUMPIFNOTLT                      R3 R0 ; [+6]
       23 LOADN                            R3 0
       24 JUMPIFLT                         R3 R1 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 JUMPIF                           R2 ; [+1]
       29 RETURN                           R0 0
       30 SETUPVAL                         R0 0
       31 SETUPVAL                         R1 1
       32 DUPTABLE                         R2 K6 [{"sessionId", "gameId", "placeId", "overwrite"}]
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R3 R4 K2 ["sessionId"]
       36 SETTABLEKS                       R3 R2 K2 ["sessionId"]
       38 SETTABLEKS                       R0 R2 K3 ["gameId"]
       40 SETTABLEKS                       R1 R2 K4 ["placeId"]
       42 LOADB                            R3 1
       43 SETTABLEKS                       R3 R2 K5 ["overwrite"]
       45 GETUPVAL                         R3 4
       46 LOADNIL                          R4
       47 MOVE                             R5 R2
       48 CALL                             R3 2 0
       49 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_23:
        0 LOADK                            R4 K0 ["DataModelSession"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Expected DataModelSession"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R2 R0 K5 ["SessionId"]
       13 SETTABLEKS                       R2 R1 K6 ["sessionId"]
       15 RETURN                           R0 0

PROTO_24:
        0 LOADK                            R4 K0 ["DataModelSession"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Expected DataModelSession"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K5 ["sessionId"]
       13 GETTABLEKS                       R2 R0 K6 ["SessionId"]
       15 JUMPIFNOTEQ                      R1 R2 ; [+5]
       17 GETUPVAL                         R1 0
       18 LOADK                            R2 K7 [""]
       19 SETTABLEKS                       R2 R1 K5 ["sessionId"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R3 R0 K6 ["SessionId"]
       24 GETTABLE                         R1 R2 R3
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R3 R0 K6 ["SessionId"]
       28 LOADNIL                          R4
       29 SETTABLE                         R4 R2 R3
       30 JUMPIFNOT                        R1 ; [+10]
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R3 R1 K8 ["placeId"]
       34 LOADNIL                          R4
       35 SETTABLE                         R4 R2 R3
       36 GETTABLEKS                       R2 R1 K9 ["Destroying"]
       38 NAMECALL                         R2 R2 K10 ["Fire"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_27:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R2 R2 K0 ["IsHost"]
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+66]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 GETTABLEKS                       R3 R0 K1 ["FocusedDataModelSession"]
       15 JUMPIFNOT                        R3 ; [+24]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R5 R3 K2 ["SessionId"]
       19 SETTABLEKS                       R5 R4 K3 ["sessionId"]
       21 DUPTABLE                         R4 K6 [{"sessionId", "gameId", "placeId"}]
       22 GETTABLEKS                       R5 R3 K2 ["SessionId"]
       24 SETTABLEKS                       R5 R4 K3 ["sessionId"]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R5 R6 K7 ["GameId"]
       29 SETTABLEKS                       R5 R4 K4 ["gameId"]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R5 R6 K8 ["PlaceId"]
       34 SETTABLEKS                       R5 R4 K5 ["placeId"]
       36 GETUPVAL                         R5 3
       37 LOADNIL                          R6
       38 MOVE                             R7 R4
       39 CALL                             R5 2 0
       40 GETTABLEKS                       R4 R0 K9 ["DataModelSessionStarted"]
       42 NEWCLOSURE                       R6 P1
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U3
       46 NAMECALL                         R4 R4 K10 ["Connect"]
       48 CALL                             R4 2 1
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R5 R6 K7 ["GameId"]
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R6 R7 K8 ["PlaceId"]
       55 GETUPVAL                         R7 4
       56 NEWCLOSURE                       R9 P2
       57 CAPTURE                          REF R5
       58 CAPTURE                          REF R6
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U3
       62 NAMECALL                         R7 R7 K10 ["Connect"]
       64 CALL                             R7 2 1
       65 NEWCLOSURE                       R10 P3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R7
       68 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       70 MOVE                             R9 R1
       71 GETIMPORT                        R8 K13 [table.insert]
       73 CALL                             R8 2 0
       74 CLOSEUPVALS                      R5
       75 GETUPVAL                         R2 0
       76 NAMECALL                         R2 R2 K14 ["IsGuest"]
       78 CALL                             R2 1 1
       79 JUMPIFNOT                        R2 ; [+33]
       80 GETTABLEKS                       R2 R0 K1 ["FocusedDataModelSession"]
       82 JUMPIFNOT                        R2 ; [+5]
       83 GETUPVAL                         R3 1
       84 GETTABLEKS                       R4 R2 K2 ["SessionId"]
       86 SETTABLEKS                       R4 R3 K3 ["sessionId"]
       88 GETTABLEKS                       R3 R0 K9 ["DataModelSessionStarted"]
       90 NEWCLOSURE                       R5 P4
       91 CAPTURE                          UPVAL U1
       92 NAMECALL                         R3 R3 K10 ["Connect"]
       94 CALL                             R3 2 1
       95 GETTABLEKS                       R4 R0 K15 ["DataModelSessionEnded"]
       97 NEWCLOSURE                       R6 P5
       98 CAPTURE                          UPVAL U1
       99 CAPTURE                          UPVAL U5
      100 CAPTURE                          UPVAL U6
      101 NAMECALL                         R4 R4 K10 ["Connect"]
      103 CALL                             R4 2 1
      104 NEWCLOSURE                       R7 P6
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R4
      107 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      109 MOVE                             R6 R1
      110 GETIMPORT                        R5 K13 [table.insert]
      112 CALL                             R5 2 0
      113 NEWCLOSURE                       R2 P7
      114 CAPTURE                          VAL R1
      115 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["MultipleDocumentInterfaceInstance"]
        8 CALL                             R0 1 1
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+2]
       10 GETUPVAL                         R0 2
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R2 R0 K0 ["dataModel"]
        2 GETTABLEKS                       R3 R0 K1 ["plugin"]
        4 GETTABLEKS                       R4 R0 K2 ["networking"]
        6 GETTABLEKS                       R5 R0 K3 ["gamePublishFinishedSignal"]
        8 LOADK                            R8 K4 ["StudioConversationLoader_sendGameMetadata"]
        9 NEWCLOSURE                       R9 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 NAMECALL                         R6 R4 K5 ["OnGuestEvent"]
       16 CALL                             R6 3 2
       17 NEWCLOSURE                       R8 P1
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R6
       22 CAPTURE                          VAL R5
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U1
       25 LOADNIL                          R9
       26 LOADK                            R12 K6 ["MultipleDocumentInterfaceInstance"]
       27 NAMECALL                         R10 R3 K7 ["GetPropertyChangedSignal"]
       29 CALL                             R10 2 1
       30 NEWCLOSURE                       R12 P2
       31 CAPTURE                          REF R9
       32 CAPTURE                          VAL R8
       33 CAPTURE                          VAL R3
       34 NAMECALL                         R10 R10 K8 ["Connect"]
       36 CALL                             R10 2 1
       37 MOVE                             R11 R8
       38 GETTABLEKS                       R12 R3 K6 ["MultipleDocumentInterfaceInstance"]
       40 CALL                             R11 1 1
       41 MOVE                             R9 R11
       42 NEWCLOSURE                       R11 P3
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R10
       45 CAPTURE                          REF R9
       46 CLOSEUPVALS                      R9
       47 RETURN                           R11 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETIMPORT                        R1 K2 [task.wait]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K3 ["requestSave"]
        9 DUPTABLE                         R2 K5 [{"metadata"}]
       10 GETUPVAL                         R3 2
       11 SETTABLEKS                       R3 R2 K4 ["metadata"]
       13 CALL                             R1 1 0
       14 JUMPBACK                         ; [-15]
       15 RETURN                           R0 0

PROTO_32:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFEQKS                       R0 K3 ["dead"] ; [+5]
        6 GETIMPORT                        R0 K6 [task.cancel]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K7 ["requestSave"]
       13 DUPTABLE                         R1 K9 [{"metadata"}]
       14 GETUPVAL                         R2 2
       15 SETTABLEKS                       R2 R1 K8 ["metadata"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R2 R0 K0 ["conversationPersistence"]
        2 DUPTABLE                         R3 K3 [{"gameId", "placeId"}]
        3 GETTABLEKS                       R4 R1 K1 ["gameId"]
        5 SETTABLEKS                       R4 R3 K1 ["gameId"]
        7 GETTABLEKS                       R4 R1 K2 ["placeId"]
        9 SETTABLEKS                       R4 R3 K2 ["placeId"]
       11 GETIMPORT                        R4 K6 [task.spawn]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R3
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R5 R1 K7 ["Destroying"]
       20 NEWCLOSURE                       R7 P1
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 NAMECALL                         R5 R5 K8 ["Once"]
       26 CALL                             R5 2 0
       27 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["Conversation"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+58]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["sessionId"]
       11 GETTABLE                         R1 R2 R3
       12 JUMPIF                           R1 ; [+10]
       13 GETUPVAL                         R2 3
       14 NAMECALL                         R2 R2 K3 ["Wait"]
       16 CALL                             R2 1 0
       17 GETUPVAL                         R2 1
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R3 R4 K2 ["sessionId"]
       21 GETTABLE                         R1 R2 R3
       22 JUMPBACK                         ; [-11]
       23 GETTABLEKS                       R3 R1 K4 ["gameId"]
       25 GETTABLEKS                       R4 R1 K5 ["placeId"]
       27 LOADB                            R2 0
       28 LOADN                            R5 0
       29 JUMPIFNOTLT                      R5 R3 ; [+6]
       31 LOADN                            R5 0
       32 JUMPIFLT                         R5 R4 ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 JUMPIF                           R2 ; [+5]
       37 GETIMPORT                        R2 K7 [warn]
       39 LOADK                            R3 K8 ["[Assistant] Loading and saving conversations is disabled in unpublished places."]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0
       42 GETTABLEKS                       R2 R1 K9 ["isLoading"]
       44 JUMPIFNOT                        R2 ; [+1]
       45 RETURN                           R0 0
       46 LOADB                            R2 1
       47 SETTABLEKS                       R2 R1 K9 ["isLoading"]
       49 GETUPVAL                         R2 4
       50 GETUPVAL                         R3 5
       51 MOVE                             R4 R1
       52 CALL                             R2 2 1
       53 JUMPIFNOT                        R2 ; [+5]
       54 GETUPVAL                         R3 6
       55 GETUPVAL                         R4 5
       56 MOVE                             R5 R1
       57 CALL                             R3 2 0
       58 RETURN                           R0 0
       59 GETIMPORT                        R3 K11 [error]
       61 LOADK                            R4 K12 ["Failed to load conversation for this session. Saving has been disabled; your current threads will not persist."]
       62 CALL                             R3 1 0
       63 RETURN                           R0 0
       64 GETTABLEKS                       R1 R0 K0 ["scope"]
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R2 R3 K13 ["Thread"]
       69 JUMPIFNOTEQ                      R1 R2 ; [+6]
       71 GETUPVAL                         R1 7
       72 GETUPVAL                         R2 5
       73 GETTABLEKS                       R3 R0 K14 ["threadId"]
       75 CALL                             R1 2 0
       76 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["Conversation"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+22]
        7 GETTABLEKS                       R1 R0 K2 ["metadata"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R4 R0 K3 ["conversation"]
       13 GETTABLEKS                       R5 R1 K4 ["placeId"]
       15 CALL                             R2 3 1
       16 JUMPIFNOT                        R2 ; [+40]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R3 R4 K5 ["clearDirty"]
       20 DUPTABLE                         R4 K6 [{"scope"}]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K1 ["Conversation"]
       24 SETTABLEKS                       R5 R4 K0 ["scope"]
       26 CALL                             R3 1 0
       27 RETURN                           R0 0
       28 GETTABLEKS                       R1 R0 K0 ["scope"]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K7 ["Thread"]
       33 JUMPIFNOTEQ                      R1 R2 ; [+23]
       35 GETUPVAL                         R1 4
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R3 R0 K8 ["threadId"]
       39 GETTABLEKS                       R4 R0 K9 ["messages"]
       41 CALL                             R1 3 1
       42 JUMPIFNOT                        R1 ; [+14]
       43 GETUPVAL                         R3 3
       44 GETTABLEKS                       R2 R3 K5 ["clearDirty"]
       46 DUPTABLE                         R3 K10 [{"scope", "threadId"}]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R4 R5 K7 ["Thread"]
       50 SETTABLEKS                       R4 R3 K0 ["scope"]
       52 GETTABLEKS                       R4 R0 K8 ["threadId"]
       54 SETTABLEKS                       R4 R3 K8 ["threadId"]
       56 CALL                             R2 1 0
       57 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["Thread"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+6]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R3 R0 K2 ["threadId"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["Destroying"]
        6 NAMECALL                         R5 R5 K1 ["Fire"]
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-6]
       11 GETUPVAL                         R0 1
       12 JUMPIFNOT                        R0 ; [+2]
       13 GETUPVAL                         R0 1
       14 CALL                             R0 0 0
       15 GETUPVAL                         R0 2
       16 JUMPIFNOT                        R0 ; [+2]
       17 GETUPVAL                         R0 2
       18 CALL                             R0 0 0
       19 GETUPVAL                         R0 3
       20 JUMPIFNOT                        R0 ; [+2]
       21 GETUPVAL                         R0 3
       22 CALL                             R0 0 0
       23 GETUPVAL                         R0 4
       24 JUMPIFNOT                        R0 ; [+5]
       25 GETIMPORT                        R0 K4 [task.delay]
       27 LOADN                            R1 5
       28 GETUPVAL                         R2 4
       29 CALL                             R0 2 0
       30 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 DUPTABLE                         R3 K3 [{"sessionId"}]
        5 LOADK                            R4 K4 [""]
        6 SETTABLEKS                       R4 R3 K2 ["sessionId"]
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R0
       10 MOVE                             R6 R3
       11 CALL                             R4 2 1
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 NAMECALL                         R8 R1 K5 ["IsGuest"]
       17 CALL                             R8 1 1
       18 JUMPIFNOT                        R8 ; [+33]
       19 GETTABLEKS                       R8 R2 K6 ["conversationPersistence"]
       21 GETTABLEKS                       R9 R8 K7 ["onLoadRequested"]
       23 NEWCLOSURE                       R10 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 CALL                             R9 1 1
       33 MOVE                             R5 R9
       34 GETTABLEKS                       R9 R8 K8 ["onSaveReady"]
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R8
       41 CAPTURE                          UPVAL U8
       42 CALL                             R9 1 1
       43 MOVE                             R6 R9
       44 GETTABLEKS                       R9 R8 K9 ["onDeleteRequested"]
       46 NEWCLOSURE                       R10 P2
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          VAL R2
       50 CALL                             R9 1 1
       51 MOVE                             R7 R9
       52 GETTABLEKS                       R8 R1 K10 ["Destroying"]
       54 NEWCLOSURE                       R10 P3
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          REF R5
       58 CAPTURE                          REF R7
       59 CAPTURE                          REF R6
       60 NAMECALL                         R8 R8 K11 ["Once"]
       62 CALL                             R8 2 0
       63 CLOSEUPVALS                      R5
       64 RETURN                           R0 0

PROTO_39:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 NEWTABLE                         R0 0 0
        5 SETUPVAL                         R0 1
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Signal"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Flags"]
       34 GETTABLEKS                       R5 R6 K12 ["FIntAssistantAutoSaveInterval"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Serializer"]
       39 GETTABLEKS                       R7 R1 K14 ["Utils"]
       41 GETTABLEKS                       R6 R7 K15 ["Time"]
       43 GETTABLEKS                       R8 R1 K16 ["Constants"]
       45 GETTABLEKS                       R7 R8 K17 ["SCOPE_TYPES"]
       47 GETTABLEKS                       R9 R1 K18 ["Types"]
       49 GETTABLEKS                       R8 R9 K19 ["PersistenceOperation"]
       51 NEWTABLE                         R9 0 0
       53 NEWTABLE                         R10 0 0
       55 GETTABLEKS                       R11 R3 K20 ["new"]
       57 CALL                             R11 0 1
       58 DUPCLOSURE                       R12 K21 [PROTO_0]
       59 CAPTURE                          VAL R6
       60 DUPCLOSURE                       R13 K22 [PROTO_1]
       61 DUPCLOSURE                       R14 K23 [PROTO_3]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R7
       66 DUPCLOSURE                       R15 K24 [PROTO_7]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R7
       71 DUPCLOSURE                       R16 K25 [PROTO_8]
       72 DUPCLOSURE                       R17 K26 [PROTO_10]
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R7
       77 DUPCLOSURE                       R18 K27 [PROTO_14]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R7
       82 DUPCLOSURE                       R19 K28 [PROTO_16]
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R7
       86 DUPCLOSURE                       R20 K29 [PROTO_17]
       87 NEWCLOSURE                       R21 P9
       88 CAPTURE                          REF R9
       89 CAPTURE                          REF R10
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R11
       92 DUPCLOSURE                       R22 K30 [PROTO_33]
       93 CAPTURE                          VAL R4
       94 NEWCLOSURE                       R23 P11
       95 CAPTURE                          VAL R21
       96 CAPTURE                          VAL R7
       97 CAPTURE                          REF R9
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R22
      101 CAPTURE                          VAL R18
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R19
      105 NEWCLOSURE                       R24 P12
      106 CAPTURE                          REF R9
      107 CAPTURE                          REF R10
      108 DUPTABLE                         R25 K33 [{"trackSessions", "test"}]
      109 SETTABLEKS                       R23 R25 K31 ["trackSessions"]
      111 DUPTABLE                         R26 K37 [{"saveConversation", "saveMessages", "clear"}]
      112 SETTABLEKS                       R14 R26 K34 ["saveConversation"]
      114 SETTABLEKS                       R17 R26 K35 ["saveMessages"]
      116 SETTABLEKS                       R24 R26 K36 ["clear"]
      118 SETTABLEKS                       R26 R25 K32 ["test"]
      120 CLOSEUPVALS                      R9
      121 RETURN                           R25 1
