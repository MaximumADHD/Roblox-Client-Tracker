PROTO_0:
        0 LOADK                            R2 K0 ["Assistant_Conversation_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
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

PROTO_2:
        0 LOADK                            R4 K0 ["Assistant_Conversation_%*"]
        1 MOVE                             R6 R2
        2 NAMECALL                         R4 R4 K1 ["format"]
        4 CALL                             R4 2 1
        5 MOVE                             R3 R4
        6 GETIMPORT                        R4 K3 [pcall]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R3
       13 CALL                             R4 1 2
       14 JUMPIF                           R4 ; [+12]
       15 GETIMPORT                        R6 K5 [warn]
       17 LOADK                            R8 K6 ["Failed to save conversation for key %*. Reason: '%*'"]
       18 MOVE                             R10 R3
       19 MOVE                             R11 R5
       20 NAMECALL                         R8 R8 K1 ["format"]
       22 CALL                             R8 3 1
       23 MOVE                             R7 R8
       24 CALL                             R6 1 0
       25 LOADB                            R6 0
       26 RETURN                           R6 1
       27 LOADB                            R6 1
       28 RETURN                           R6 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["deserializeConversation"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETTABLEKS                       R3 R1 K0 ["placeId"]
        2 LOADK                            R4 K1 ["Assistant_Conversation_%*"]
        3 MOVE                             R6 R3
        4 NAMECALL                         R4 R4 K2 ["format"]
        6 CALL                             R4 2 1
        7 MOVE                             R2 R4
        8 GETIMPORT                        R3 K4 [pcall]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R2
       13 CALL                             R3 1 2
       14 JUMPIF                           R3 ; [+12]
       15 GETIMPORT                        R5 K6 [warn]
       17 LOADK                            R7 K7 ["Failed to get conversation for key %*. Reason: '%*'"]
       18 MOVE                             R9 R2
       19 MOVE                             R10 R4
       20 NAMECALL                         R7 R7 K2 ["format"]
       22 CALL                             R7 3 1
       23 MOVE                             R6 R7
       24 CALL                             R5 1 0
       25 LOADB                            R5 0
       26 RETURN                           R5 1
       27 JUMPIF                           R4 ; [+2]
       28 LOADB                            R5 1
       29 RETURN                           R5 1
       30 GETIMPORT                        R5 K4 [pcall]
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R4
       35 CALL                             R5 1 2
       36 JUMPIF                           R5 ; [+12]
       37 GETIMPORT                        R7 K6 [warn]
       39 LOADK                            R9 K8 ["Failed to deserialize conversation for key %*. Reason: '%*'"]
       40 MOVE                             R11 R2
       41 MOVE                             R12 R6
       42 NAMECALL                         R9 R9 K2 ["format"]
       44 CALL                             R9 3 1
       45 MOVE                             R8 R9
       46 CALL                             R7 1 0
       47 LOADB                            R7 0
       48 RETURN                           R7 1
       49 GETTABLEKS                       R7 R0 K9 ["conversationPersistence"]
       51 GETTABLEKS                       R8 R7 K10 ["notifyLoadedAsync"]
       53 DUPTABLE                         R9 K13 [{"scope", "conversation"}]
       54 GETUPVAL                         R11 1
       55 GETTABLEKS                       R10 R11 K14 ["Conversation"]
       57 SETTABLEKS                       R10 R9 K11 ["scope"]
       59 SETTABLEKS                       R6 R9 K12 ["conversation"]
       61 CALL                             R8 1 0
       62 LOADB                            R8 1
       63 RETURN                           R8 1

PROTO_6:
        0 LOADK                            R2 K0 ["Assistant_ThreadMessages_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_7:
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

PROTO_8:
        0 LOADK                            R4 K0 ["Assistant_ThreadMessages_%*"]
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K1 ["format"]
        4 CALL                             R4 2 1
        5 MOVE                             R3 R4
        6 GETIMPORT                        R4 K3 [pcall]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R3
       13 CALL                             R4 1 2
       14 JUMPIF                           R4 ; [+12]
       15 GETIMPORT                        R6 K5 [warn]
       17 LOADK                            R8 K6 ["Failed to save messages for key %*. Reason: '%*'"]
       18 MOVE                             R10 R3
       19 MOVE                             R11 R5
       20 NAMECALL                         R8 R8 K1 ["format"]
       22 CALL                             R8 3 1
       23 MOVE                             R7 R8
       24 CALL                             R6 1 0
       25 LOADB                            R6 0
       26 RETURN                           R6 1
       27 LOADB                            R6 1
       28 RETURN                           R6 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["deserializeMessages"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 LOADK                            R3 K0 ["Assistant_ThreadMessages_%*"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K1 ["format"]
        4 CALL                             R3 2 1
        5 MOVE                             R2 R3
        6 GETIMPORT                        R3 K3 [pcall]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 CALL                             R3 1 2
       12 JUMPIF                           R3 ; [+11]
       13 GETIMPORT                        R5 K5 [warn]
       15 LOADK                            R7 K6 ["Failed to get messages for key %*. Reason: '%*'"]
       16 MOVE                             R9 R2
       17 MOVE                             R10 R4
       18 NAMECALL                         R7 R7 K1 ["format"]
       20 CALL                             R7 3 1
       21 MOVE                             R6 R7
       22 CALL                             R5 1 0
       23 RETURN                           R0 0
       24 JUMPIF                           R4 ; [+1]
       25 RETURN                           R0 0
       26 GETIMPORT                        R5 K3 [pcall]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R4
       32 CALL                             R5 1 2
       33 JUMPIF                           R5 ; [+11]
       34 GETIMPORT                        R7 K5 [warn]
       36 LOADK                            R9 K7 ["Failed to deserialize messages for key %*. Reason: '%*'"]
       37 MOVE                             R11 R2
       38 MOVE                             R12 R6
       39 NAMECALL                         R9 R9 K1 ["format"]
       41 CALL                             R9 3 1
       42 MOVE                             R8 R9
       43 CALL                             R7 1 0
       44 RETURN                           R0 0
       45 GETTABLEKS                       R7 R0 K8 ["conversationPersistence"]
       47 GETTABLEKS                       R8 R7 K9 ["notifyLoadedAsync"]
       49 DUPTABLE                         R9 K13 [{"scope", "threadId", "messages"}]
       50 GETUPVAL                         R11 1
       51 GETTABLEKS                       R10 R11 K14 ["Thread"]
       53 SETTABLEKS                       R10 R9 K10 ["scope"]
       55 SETTABLEKS                       R1 R9 K11 ["threadId"]
       57 SETTABLEKS                       R6 R9 K12 ["messages"]
       59 CALL                             R8 1 0
       60 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_13:
        0 LOADK                            R3 K0 ["Assistant_ThreadMessages_%*"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K1 ["format"]
        4 CALL                             R3 2 1
        5 MOVE                             R2 R3
        6 GETIMPORT                        R3 K3 [pcall]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 CALL                             R3 1 2
       12 JUMPIF                           R3 ; [+12]
       13 GETIMPORT                        R5 K5 [warn]
       15 LOADK                            R7 K6 ["Failed to delete thread for key %*. Reason: '%*'"]
       16 MOVE                             R9 R2
       17 MOVE                             R10 R4
       18 NAMECALL                         R7 R7 K1 ["format"]
       20 CALL                             R7 3 1
       21 MOVE                             R6 R7
       22 CALL                             R5 1 0
       23 LOADB                            R5 0
       24 RETURN                           R5 1
       25 LOADB                            R5 1
       26 RETURN                           R5 1

PROTO_14:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["gameId"]
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R2 ; [+8]
        6 GETTABLEKS                       R2 R0 K1 ["placeId"]
        8 LOADN                            R3 0
        9 JUMPIFLT                         R3 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["sessionId"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIF                           R2 ; [+5]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R1 K1 ["placeId"]
        8 GETTABLE                         R2 R3 R4
        9 JUMPIFNOT                        R2 ; [+13]
       10 GETIMPORT                        R2 K3 [warn]
       12 LOADK                            R4 K4 ["[Assistant] Session %* already has cached metadata for placeId %*"]
       13 GETTABLEKS                       R6 R1 K0 ["sessionId"]
       15 GETTABLEKS                       R7 R1 K1 ["placeId"]
       17 NAMECALL                         R4 R4 K5 ["format"]
       19 CALL                             R4 3 1
       20 MOVE                             R3 R4
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 DUPTABLE                         R2 K9 [{"gameId", "placeId", "isLoading", "Destroying"}]
       24 GETTABLEKS                       R3 R1 K6 ["gameId"]
       26 SETTABLEKS                       R3 R2 K6 ["gameId"]
       28 GETTABLEKS                       R3 R1 K1 ["placeId"]
       30 SETTABLEKS                       R3 R2 K1 ["placeId"]
       32 LOADB                            R3 0
       33 SETTABLEKS                       R3 R2 K7 ["isLoading"]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R3 R4 K10 ["new"]
       38 CALL                             R3 0 1
       39 SETTABLEKS                       R3 R2 K8 ["Destroying"]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R4 R1 K0 ["sessionId"]
       44 SETTABLE                         R2 R3 R4
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R4 R1 K1 ["placeId"]
       48 LOADB                            R5 1
       49 SETTABLE                         R5 R3 R4
       50 GETUPVAL                         R3 3
       51 GETTABLEKS                       R5 R1 K0 ["sessionId"]
       53 NAMECALL                         R3 R3 K11 ["Fire"]
       55 CALL                             R3 2 0
       56 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_23:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R2 R2 K0 ["IsHost"]
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+48]
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
       49 NEWCLOSURE                       R7 P2
       50 CAPTURE                          VAL R4
       51 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       53 MOVE                             R6 R1
       54 GETIMPORT                        R5 K13 [table.insert]
       56 CALL                             R5 2 0
       57 GETUPVAL                         R2 0
       58 NAMECALL                         R2 R2 K14 ["IsGuest"]
       60 CALL                             R2 1 1
       61 JUMPIFNOT                        R2 ; [+33]
       62 GETTABLEKS                       R2 R0 K1 ["FocusedDataModelSession"]
       64 JUMPIFNOT                        R2 ; [+5]
       65 GETUPVAL                         R3 1
       66 GETTABLEKS                       R4 R2 K2 ["SessionId"]
       68 SETTABLEKS                       R4 R3 K3 ["sessionId"]
       70 GETTABLEKS                       R3 R0 K9 ["DataModelSessionStarted"]
       72 NEWCLOSURE                       R5 P3
       73 CAPTURE                          UPVAL U1
       74 NAMECALL                         R3 R3 K10 ["Connect"]
       76 CALL                             R3 2 1
       77 GETTABLEKS                       R4 R0 K15 ["DataModelSessionEnded"]
       79 NEWCLOSURE                       R6 P4
       80 CAPTURE                          UPVAL U1
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          UPVAL U5
       83 NAMECALL                         R4 R4 K10 ["Connect"]
       85 CALL                             R4 2 1
       86 NEWCLOSURE                       R7 P5
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R4
       89 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       91 MOVE                             R6 R1
       92 GETIMPORT                        R5 K13 [table.insert]
       94 CALL                             R5 2 0
       95 NEWCLOSURE                       R2 P6
       96 CAPTURE                          VAL R1
       97 RETURN                           R2 1

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 LOADK                            R6 K0 ["StudioConversationLoader_sendGameMetadata"]
        1 NEWCLOSURE                       R7 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 NAMECALL                         R4 R3 K1 ["OnGuestEvent"]
        8 CALL                             R4 3 2
        9 NEWCLOSURE                       R6 P1
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R4
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 LOADNIL                          R7
       17 LOADK                            R10 K2 ["MultipleDocumentInterfaceInstance"]
       18 NAMECALL                         R8 R2 K3 ["GetPropertyChangedSignal"]
       20 CALL                             R8 2 1
       21 NEWCLOSURE                       R10 P2
       22 CAPTURE                          REF R7
       23 CAPTURE                          VAL R6
       24 CAPTURE                          VAL R2
       25 NAMECALL                         R8 R8 K4 ["Connect"]
       27 CALL                             R8 2 1
       28 MOVE                             R9 R6
       29 GETTABLEKS                       R10 R2 K2 ["MultipleDocumentInterfaceInstance"]
       31 CALL                             R9 1 1
       32 MOVE                             R7 R9
       33 NEWCLOSURE                       R9 P3
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R8
       36 CAPTURE                          REF R7
       37 CLOSEUPVALS                      R7
       38 RETURN                           R9 1

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["Conversation"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+59]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["sessionId"]
       11 GETTABLE                         R1 R2 R3
       12 JUMPIF                           R1 ; [+11]
       13 GETUPVAL                         R2 3
       14 NAMECALL                         R2 R2 K3 ["Wait"]
       16 CALL                             R2 1 0
       17 GETUPVAL                         R3 1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K2 ["sessionId"]
       21 GETTABLE                         R2 R3 R4
       22 JUMPIF                           R2 ; [+1]
       23 JUMPBACK                         ; [-11]
       24 LOADB                            R2 0
       25 GETTABLEKS                       R3 R1 K4 ["gameId"]
       27 LOADN                            R4 0
       28 JUMPIFNOTLT                      R4 R3 ; [+8]
       30 GETTABLEKS                       R3 R1 K5 ["placeId"]
       32 LOADN                            R4 0
       33 JUMPIFLT                         R4 R3 ; [+2]
       35 LOADB                            R2 0 +1
       36 LOADB                            R2 1
       37 JUMPIF                           R2 ; [+5]
       38 GETIMPORT                        R2 K7 [warn]
       40 LOADK                            R3 K8 ["[Assistant] Loading and saving conversations is disabled in unpublished places."]
       41 CALL                             R2 1 0
       42 RETURN                           R0 0
       43 GETTABLEKS                       R2 R1 K9 ["isLoading"]
       45 JUMPIFNOT                        R2 ; [+1]
       46 RETURN                           R0 0
       47 LOADB                            R2 1
       48 SETTABLEKS                       R2 R1 K9 ["isLoading"]
       50 GETUPVAL                         R2 4
       51 GETUPVAL                         R3 5
       52 MOVE                             R4 R1
       53 CALL                             R2 2 1
       54 JUMPIFNOT                        R2 ; [+5]
       55 GETUPVAL                         R3 6
       56 GETUPVAL                         R4 5
       57 MOVE                             R5 R1
       58 CALL                             R3 2 0
       59 RETURN                           R0 0
       60 GETIMPORT                        R3 K11 [error]
       62 LOADK                            R4 K12 ["Failed to load conversation for this session. Saving has been disabled; your current threads will not persist."]
       63 CALL                             R3 1 0
       64 RETURN                           R0 0
       65 GETTABLEKS                       R1 R0 K0 ["scope"]
       67 GETUPVAL                         R3 0
       68 GETTABLEKS                       R2 R3 K13 ["Thread"]
       70 JUMPIFNOTEQ                      R1 R2 ; [+6]
       72 GETUPVAL                         R1 7
       73 GETUPVAL                         R2 5
       74 GETTABLEKS                       R3 R0 K14 ["threadId"]
       76 CALL                             R1 2 0
       77 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["Conversation"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+48]
        7 GETTABLEKS                       R1 R0 K2 ["metadata"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R4 R0 K3 ["conversation"]
       12 GETTABLEKS                       R5 R1 K4 ["placeId"]
       14 LOADK                            R7 K5 ["Assistant_Conversation_%*"]
       15 MOVE                             R9 R5
       16 NAMECALL                         R7 R7 K6 ["format"]
       18 CALL                             R7 2 1
       19 MOVE                             R6 R7
       20 GETIMPORT                        R7 K8 [pcall]
       22 NEWCLOSURE                       R8 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R6
       27 CALL                             R7 1 2
       28 JUMPIF                           R7 ; [+12]
       29 GETIMPORT                        R9 K10 [warn]
       31 LOADK                            R11 K11 ["Failed to save conversation for key %*. Reason: '%*'"]
       32 MOVE                             R13 R6
       33 MOVE                             R14 R8
       34 NAMECALL                         R11 R11 K6 ["format"]
       36 CALL                             R11 3 1
       37 MOVE                             R10 R11
       38 CALL                             R9 1 0
       39 LOADB                            R2 0
       40 JUMP                             ; [+1]
       41 LOADB                            R2 1
       42 JUMPIFNOT                        R2 ; [+66]
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R3 R4 K12 ["clearDirty"]
       46 DUPTABLE                         R4 K13 [{"scope"}]
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R5 R6 K1 ["Conversation"]
       50 SETTABLEKS                       R5 R4 K0 ["scope"]
       52 CALL                             R3 1 0
       53 RETURN                           R0 0
       54 GETTABLEKS                       R1 R0 K0 ["scope"]
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R2 R3 K14 ["Thread"]
       59 JUMPIFNOTEQ                      R1 R2 ; [+49]
       61 GETUPVAL                         R2 1
       62 GETTABLEKS                       R3 R0 K15 ["threadId"]
       64 GETTABLEKS                       R4 R0 K16 ["messages"]
       66 LOADK                            R6 K17 ["Assistant_ThreadMessages_%*"]
       67 MOVE                             R8 R3
       68 NAMECALL                         R6 R6 K6 ["format"]
       70 CALL                             R6 2 1
       71 MOVE                             R5 R6
       72 GETIMPORT                        R6 K8 [pcall]
       74 NEWCLOSURE                       R7 P1
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R5
       79 CALL                             R6 1 2
       80 JUMPIF                           R6 ; [+12]
       81 GETIMPORT                        R8 K10 [warn]
       83 LOADK                            R10 K18 ["Failed to save messages for key %*. Reason: '%*'"]
       84 MOVE                             R12 R5
       85 MOVE                             R13 R7
       86 NAMECALL                         R10 R10 K6 ["format"]
       88 CALL                             R10 3 1
       89 MOVE                             R9 R10
       90 CALL                             R8 1 0
       91 LOADB                            R1 0
       92 JUMP                             ; [+1]
       93 LOADB                            R1 1
       94 JUMPIFNOT                        R1 ; [+14]
       95 GETUPVAL                         R3 3
       96 GETTABLEKS                       R2 R3 K12 ["clearDirty"]
       98 DUPTABLE                         R3 K19 [{"scope", "threadId"}]
       99 GETUPVAL                         R5 0
      100 GETTABLEKS                       R4 R5 K14 ["Thread"]
      102 SETTABLEKS                       R4 R3 K0 ["scope"]
      104 GETTABLEKS                       R4 R0 K15 ["threadId"]
      106 SETTABLEKS                       R4 R3 K15 ["threadId"]
      108 CALL                             R2 1 0
      109 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["Thread"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+28]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R2 R0 K2 ["threadId"]
       10 LOADK                            R4 K3 ["Assistant_ThreadMessages_%*"]
       11 MOVE                             R6 R2
       12 NAMECALL                         R4 R4 K4 ["format"]
       14 CALL                             R4 2 1
       15 MOVE                             R3 R4
       16 GETIMPORT                        R4 K6 [pcall]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R3
       21 CALL                             R4 1 2
       22 JUMPIF                           R4 ; [+11]
       23 GETIMPORT                        R6 K8 [warn]
       25 LOADK                            R8 K9 ["Failed to delete thread for key %*. Reason: '%*'"]
       26 MOVE                             R10 R3
       27 MOVE                             R11 R5
       28 NAMECALL                         R8 R8 K4 ["format"]
       30 CALL                             R8 3 1
       31 MOVE                             R7 R8
       32 CALL                             R6 1 0
       33 RETURN                           R0 0
       34 RETURN                           R0 0

PROTO_33:
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
       20 JUMPIFNOT                        R0 ; [+5]
       21 GETIMPORT                        R0 K4 [task.delay]
       23 LOADN                            R1 5
       24 GETUPVAL                         R2 3
       25 CALL                             R0 2 0
       26 GETUPVAL                         R0 4
       27 JUMPIFNOT                        R0 ; [+2]
       28 GETUPVAL                         R0 4
       29 CALL                             R0 0 0
       30 RETURN                           R0 0

PROTO_34:
        0 DUPTABLE                         R4 K1 [{"sessionId"}]
        1 LOADK                            R5 K2 [""]
        2 SETTABLEKS                       R5 R4 K0 ["sessionId"]
        4 GETUPVAL                         R5 0
        5 MOVE                             R6 R4
        6 MOVE                             R7 R0
        7 MOVE                             R8 R1
        8 MOVE                             R9 R2
        9 CALL                             R5 4 1
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 LOADNIL                          R8
       13 NAMECALL                         R9 R2 K3 ["IsGuest"]
       15 CALL                             R9 1 1
       16 JUMPIFNOT                        R9 ; [+31]
       17 GETTABLEKS                       R9 R3 K4 ["conversationPersistence"]
       19 GETTABLEKS                       R10 R9 K5 ["onLoadRequested"]
       21 NEWCLOSURE                       R11 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R4
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R3
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CALL                             R10 1 1
       31 MOVE                             R6 R10
       32 GETTABLEKS                       R10 R9 K6 ["onSaveReady"]
       34 NEWCLOSURE                       R11 P1
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          VAL R9
       39 CALL                             R10 1 1
       40 MOVE                             R7 R10
       41 GETTABLEKS                       R10 R9 K7 ["onDeleteRequested"]
       43 NEWCLOSURE                       R11 P2
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          VAL R3
       46 CALL                             R10 1 1
       47 MOVE                             R8 R10
       48 GETTABLEKS                       R9 R2 K8 ["Destroying"]
       50 NEWCLOSURE                       R11 P3
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R5
       53 CAPTURE                          REF R6
       54 CAPTURE                          REF R7
       55 CAPTURE                          REF R8
       56 NAMECALL                         R9 R9 K9 ["Once"]
       58 CALL                             R9 2 0
       59 CLOSEUPVALS                      R6
       60 RETURN                           R0 0

PROTO_35:
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
       39 GETTABLEKS                       R7 R1 K14 ["Constants"]
       41 GETTABLEKS                       R6 R7 K15 ["SCOPE_TYPES"]
       43 NEWTABLE                         R7 0 0
       45 NEWTABLE                         R8 0 0
       47 GETTABLEKS                       R9 R3 K16 ["new"]
       49 CALL                             R9 0 1
       50 DUPCLOSURE                       R10 K17 [PROTO_0]
       51 DUPCLOSURE                       R11 K18 [PROTO_2]
       52 CAPTURE                          VAL R5
       53 DUPCLOSURE                       R12 K19 [PROTO_5]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 DUPCLOSURE                       R13 K20 [PROTO_6]
       57 DUPCLOSURE                       R14 K21 [PROTO_8]
       58 CAPTURE                          VAL R5
       59 DUPCLOSURE                       R15 K22 [PROTO_11]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 DUPCLOSURE                       R16 K23 [PROTO_13]
       63 DUPCLOSURE                       R17 K24 [PROTO_14]
       64 NEWCLOSURE                       R18 P8
       65 CAPTURE                          REF R7
       66 CAPTURE                          REF R8
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R9
       69 DUPCLOSURE                       R19 K25 [PROTO_29]
       70 CAPTURE                          VAL R4
       71 NEWCLOSURE                       R20 P10
       72 CAPTURE                          VAL R18
       73 CAPTURE                          VAL R6
       74 CAPTURE                          REF R7
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R19
       78 CAPTURE                          VAL R15
       79 CAPTURE                          VAL R5
       80 NEWCLOSURE                       R21 P11
       81 CAPTURE                          REF R7
       82 CAPTURE                          REF R8
       83 DUPTABLE                         R22 K28 [{"trackSessions", "test"}]
       84 SETTABLEKS                       R20 R22 K26 ["trackSessions"]
       86 DUPTABLE                         R23 K32 [{"saveConversation", "saveMessages", "clear"}]
       87 SETTABLEKS                       R11 R23 K29 ["saveConversation"]
       89 SETTABLEKS                       R14 R23 K30 ["saveMessages"]
       91 SETTABLEKS                       R21 R23 K31 ["clear"]
       93 SETTABLEKS                       R23 R22 K27 ["test"]
       95 CLOSEUPVALS                      R7
       96 RETURN                           R22 1
