PROTO_0:
        0 LOADB                            R2 0
        1 LOADN                            R3 0
        2 JUMPIFNOTLT                      R3 R0 ; [+6]
        4 LOADN                            R3 0
        5 JUMPIFLT                         R3 R1 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K5 [{[1], ["placeId"], ["loadState"] = "idle", ["Destroying"]}]
        1 GETTABLEKS                       R2 R0 K0 ["gameId"]
        3 SETTABLEKS                       R2 R1 K0 ["gameId"]
        5 GETTABLEKS                       R2 R0 K1 ["placeId"]
        7 SETTABLEKS                       R2 R1 K1 ["placeId"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K6 ["new"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R1 K4 ["Destroying"]
       15 RETURN                           R1 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R1 K0 [""] ; [+11]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["FFlagDebugLogAssistantUI"]
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETIMPORT                        R2 K3 [print]
        8 LOADK                            R3 K4 ["[Persistence] [Session] Session id is empty while waiting for conversation metadata."]
        9 CALL                             R2 1 0
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETTABLEKS                       R3 R0 K5 ["gameMetadataCache"]
       14 GETTABLE                         R2 R3 R1
       15 JUMPIFNOT                        R2 ; [+1]
       16 RETURN                           R2 1
       17 GETTABLEKS                       R3 R0 K6 ["sessionMetadataLoaded"]
       19 NAMECALL                         R3 R3 K7 ["Wait"]
       21 CALL                             R3 1 1
       22 JUMPIFNOTEQKNIL                  R3 ; [+3]
       24 LOADNIL                          R4
       25 RETURN                           R4 1
       26 JUMPBACK                         ; [-15]
       27 RETURN                           R0 0

PROTO_3:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 SETTABLEKS                       R0 R1 K0 ["sessionId"]
        5 DUPTABLE                         R1 K3 [{"sessionId", "gameId", "placeId"}]
        6 SETTABLEKS                       R0 R1 K0 ["sessionId"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K4 ["GameId"]
       11 SETTABLEKS                       R2 R1 K1 ["gameId"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K5 ["PlaceId"]
       16 SETTABLEKS                       R2 R1 K2 ["placeId"]
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K6 ["ALL"]
       22 MOVE                             R4 R1
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 SETTABLEKS                       R0 R1 K0 ["sessionId"]
        5 DUPTABLE                         R1 K3 [{"sessionId", "gameId", "placeId"}]
        6 SETTABLEKS                       R0 R1 K0 ["sessionId"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K4 ["GameId"]
       11 SETTABLEKS                       R2 R1 K1 ["gameId"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K5 ["PlaceId"]
       16 SETTABLEKS                       R2 R1 K2 ["placeId"]
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K6 ["ALL"]
       22 MOVE                             R4 R1
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETIMPORT                        R0 K2 [print]
        6 LOADK                            R1 K3 ["[Persistence] [Session] Publish started. Attempting to cache current conversation state."]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETIMPORT                        R0 K2 [print]
        6 LOADK                            R1 K3 ["[Persistence] [Session] Publish ended. Attempting to save conversation state."]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 LOADB                            R0 0
       11 LOADN                            R3 0
       12 JUMPIFNOTLT                      R3 R1 ; [+6]
       14 LOADN                            R3 0
       15 JUMPIFLT                         R3 R2 ; [+2]
       17 LOADB                            R0 0 +1
       18 LOADB                            R0 1
       19 JUMPIFNOT                        R0 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 3
       22 GETTABLEKS                       R0 R0 K4 ["GameId"]
       24 GETUPVAL                         R1 3
       25 GETTABLEKS                       R1 R1 K5 ["PlaceId"]
       27 LOADB                            R2 0
       28 LOADN                            R3 0
       29 JUMPIFNOTLT                      R3 R0 ; [+6]
       31 LOADN                            R3 0
       32 JUMPIFLT                         R3 R1 ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 JUMPIF                           R2 ; [+1]
       37 RETURN                           R0 0
       38 SETUPVAL                         R0 1
       39 SETUPVAL                         R1 2
       40 DUPTABLE                         R2 K11 [{["sessionId"], ["gameId"], ["placeId"], ["overwrite"] = True}]
       41 GETUPVAL                         R3 4
       42 GETTABLEKS                       R3 R3 K6 ["sessionId"]
       44 SETTABLEKS                       R3 R2 K6 ["sessionId"]
       46 SETTABLEKS                       R0 R2 K7 ["gameId"]
       48 SETTABLEKS                       R1 R2 K8 ["placeId"]
       50 GETUPVAL                         R3 5
       51 GETUPVAL                         R4 6
       52 GETTABLEKS                       R4 R4 K12 ["ALL"]
       54 MOVE                             R5 R2
       55 CALL                             R3 2 0
       56 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["dataModel"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R3
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U0
        7 GETTABLEKS                       R5 R0 K1 ["getCurrentSessionId"]
        9 CALL                             R5 0 1
       10 JUMPIF                           R5 ; [+1]
       11 JUMP                             ; [+19]
       12 SETTABLEKS                       R5 R1 K2 ["sessionId"]
       14 DUPTABLE                         R6 K5 [{"sessionId", "gameId", "placeId"}]
       15 SETTABLEKS                       R5 R6 K2 ["sessionId"]
       17 GETTABLEKS                       R7 R3 K6 ["GameId"]
       19 SETTABLEKS                       R7 R6 K3 ["gameId"]
       21 GETTABLEKS                       R7 R3 K7 ["PlaceId"]
       23 SETTABLEKS                       R7 R6 K4 ["placeId"]
       25 MOVE                             R7 R2
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K8 ["ALL"]
       29 MOVE                             R9 R6
       30 CALL                             R7 2 0
       31 GETTABLEKS                       R5 R0 K9 ["sessionStartedSignal"]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          UPVAL U0
       38 NAMECALL                         R5 R5 K10 ["Connect"]
       40 CALL                             R5 2 1
       41 GETTABLEKS                       R6 R3 K6 ["GameId"]
       43 GETTABLEKS                       R7 R3 K7 ["PlaceId"]
       45 GETTABLEKS                       R8 R0 K11 ["publishStartedSignal"]
       47 DUPCLOSURE                       R10 K12 [PROTO_5]
       48 CAPTURE                          UPVAL U1
       49 NAMECALL                         R8 R8 K10 ["Connect"]
       51 CALL                             R8 2 1
       52 GETTABLEKS                       R9 R0 K13 ["publishEndedSignal"]
       54 NEWCLOSURE                       R11 P3
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          REF R6
       57 CAPTURE                          REF R7
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U0
       62 NAMECALL                         R9 R9 K10 ["Connect"]
       64 CALL                             R9 2 1
       65 NEWCLOSURE                       R10 P4
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R9
       69 CLOSEUPVALS                      R6
       70 RETURN                           R10 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["sessionId"]
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sessionId"]
        3 JUMPIFNOTEQ                      R1 R0 ; [+5]
        5 GETUPVAL                         R1 0
        6 LOADK                            R2 K1 [""]
        7 SETTABLEKS                       R2 R1 K0 ["sessionId"]
        9 GETUPVAL                         R2 1
       10 GETTABLE                         R1 R2 R0
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 1
       14 LOADNIL                          R3
       15 SETTABLE                         R3 R2 R0
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R3 R1 K2 ["placeId"]
       19 LOADNIL                          R4
       20 SETTABLE                         R4 R2 R3
       21 GETTABLEKS                       R2 R1 K3 ["Destroying"]
       23 NAMECALL                         R2 R2 K4 ["Fire"]
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["gameMetadataCache"]
        2 GETTABLEKS                       R3 R1 K1 ["loadedPlaceIds"]
        4 GETTABLEKS                       R4 R1 K2 ["sessionIdRef"]
        6 GETTABLEKS                       R6 R0 K4 ["getCurrentSessionId"]
        8 CALL                             R6 0 1
        9 ORK                              R5 R6 K3 [""]
       10 SETTABLEKS                       R5 R4 K5 ["sessionId"]
       12 GETTABLEKS                       R5 R0 K6 ["sessionStartedSignal"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R4
       16 NAMECALL                         R5 R5 K7 ["Connect"]
       18 CALL                             R5 2 1
       19 GETTABLEKS                       R6 R0 K8 ["sessionEndedSignal"]
       21 NEWCLOSURE                       R8 P1
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 NAMECALL                         R6 R6 K7 ["Connect"]
       27 CALL                             R6 2 1
       28 NEWCLOSURE                       R7 P2
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R6
       31 RETURN                           R7 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FIntAssistantAutoSaveInterval"]
        3 GETIMPORT                        R1 K3 [task.wait]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K4 ["FFlagDebugLogAssistantUI"]
       10 JUMPIFNOT                        R1 ; [+12]
       11 GETIMPORT                        R1 K6 [print]
       13 LOADK                            R3 K7 ["[Persistence] [Session] Auto-saving conversations for placeId %* after waiting %* seconds."]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K8 ["placeId"]
       17 MOVE                             R6 R0
       18 NAMECALL                         R3 R3 K9 ["format"]
       20 CALL                             R3 3 1
       21 MOVE                             R2 R3
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K10 ["requestSave"]
       26 DUPTABLE                         R2 K12 [{"metadata"}]
       27 GETUPVAL                         R3 3
       28 SETTABLEKS                       R3 R2 K11 ["metadata"]
       30 CALL                             R1 1 0
       31 JUMPBACK                         ; [-32]
       32 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFEQKS                       R0 K3 ["dead"] ; [+5]
        6 GETIMPORT                        R0 K6 [task.cancel]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K7 ["FFlagDebugLogAssistantUI"]
       13 JUMPIFNOT                        R0 ; [+11]
       14 GETIMPORT                        R0 K9 [print]
       16 LOADK                            R2 K10 ["[Persistence] [Session] Session ended for placeId %*. Attempting to save conversations before destroying cached metadata."]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K11 ["placeId"]
       20 NAMECALL                         R2 R2 K12 ["format"]
       22 CALL                             R2 2 1
       23 MOVE                             R1 R2
       24 CALL                             R0 1 0
       25 GETUPVAL                         R0 3
       26 GETTABLEKS                       R0 R0 K13 ["requestSave"]
       28 DUPTABLE                         R1 K15 [{"metadata"}]
       29 GETUPVAL                         R2 4
       30 SETTABLEKS                       R2 R1 K14 ["metadata"]
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["coordinator"]
        2 DUPTABLE                         R3 K3 [{"gameId", "placeId"}]
        3 GETTABLEKS                       R4 R1 K1 ["gameId"]
        5 SETTABLEKS                       R4 R3 K1 ["gameId"]
        7 GETTABLEKS                       R4 R1 K2 ["placeId"]
        9 SETTABLEKS                       R4 R3 K2 ["placeId"]
       11 GETIMPORT                        R4 K6 [task.spawn]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R3
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R1 K7 ["Destroying"]
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          VAL R4
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 NAMECALL                         R5 R5 K8 ["Once"]
       29 CALL                             R5 2 0
       30 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["sessionIdRef"]
        5 GETTABLEKS                       R2 R2 K1 ["sessionId"]
        7 CALL                             R0 2 1
        8 JUMPIF                           R0 ; [+5]
        9 GETIMPORT                        R1 K3 [error]
       11 LOADK                            R2 K4 ["Studio session metadata is unavailable"]
       12 LOADN                            R3 0
       13 CALL                             R1 2 0
       14 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["sessionIdRef"]
        5 GETTABLEKS                       R4 R4 K1 ["sessionId"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+5]
        9 GETIMPORT                        R3 K3 [error]
       11 LOADK                            R4 K4 ["Studio session metadata is unavailable"]
       12 LOADN                            R5 0
       13 CALL                             R3 2 0
       14 MOVE                             R1 R2
       15 GETTABLEKS                       R3 R1 K5 ["gameId"]
       17 GETTABLEKS                       R4 R1 K6 ["placeId"]
       19 LOADB                            R2 0
       20 LOADN                            R5 0
       21 JUMPIFNOTLT                      R5 R3 ; [+6]
       23 LOADN                            R5 0
       24 JUMPIFLT                         R5 R4 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K7 ["FFlagDebugLogAssistantUI"]
       31 JUMPIFNOT                        R3 ; [+13]
       32 GETIMPORT                        R3 K9 [print]
       34 LOADK                            R5 K10 ["[Persistence][ACP] session/list availability: Host GameId=%*, Host PlaceId=%*, persistenceAvailable=%*"]
       35 GETTABLEKS                       R7 R1 K5 ["gameId"]
       37 GETTABLEKS                       R8 R1 K6 ["placeId"]
       39 MOVE                             R9 R2
       40 NAMECALL                         R5 R5 K11 ["format"]
       42 CALL                             R5 4 1
       43 MOVE                             R4 R5
       44 CALL                             R3 1 0
       45 GETUPVAL                         R3 2
       46 GETTABLEKS                       R3 R3 K12 ["FFlagAssistantAcpHistoryCompatibility"]
       48 JUMPIFNOT                        R3 ; [+7]
       49 JUMPIF                           R2 ; [+6]
       50 DUPTABLE                         R3 K16 [{["sessions"], ["nextPageToken"] = }]
       51 NEWTABLE                         R4 0 0
       53 SETTABLEKS                       R4 R3 K13 ["sessions"]
       55 RETURN                           R3 1
       56 GETUPVAL                         R3 3
       57 GETTABLEKS                       R3 R3 K17 ["io"]
       59 GETTABLEKS                       R3 R3 K18 ["getThreadsAsync"]
       61 DUPTABLE                         R4 K21 [{"placeId", "cursor", "limit"}]
       62 GETTABLEKS                       R5 R1 K6 ["placeId"]
       64 SETTABLEKS                       R5 R4 K6 ["placeId"]
       66 SETTABLEKS                       R0 R4 K19 ["cursor"]
       68 GETUPVAL                         R5 2
       69 GETTABLEKS                       R5 R5 K22 ["FIntAssistantPersistenceThreadLoadLimit"]
       71 SETTABLEKS                       R5 R4 K20 ["limit"]
       73 CALL                             R3 1 2
       74 JUMPIFNOT                        R3 ; [+1]
       75 JUMPIF                           R4 ; [+5]
       76 GETIMPORT                        R5 K3 [error]
       78 LOADK                            R6 K23 ["Failed to load ACP thread list"]
       79 LOADN                            R7 0
       80 CALL                             R5 2 0
       81 NEWTABLE                         R5 0 0
       83 GETTABLEKS                       R6 R4 K24 ["threads"]
       85 JUMPIFNOT                        R6 ; [+34]
       86 MOVE                             R7 R6
       87 LOADNIL                          R8
       88 LOADNIL                          R9
       89 FORGPREP                         R7
       90 DUPTABLE                         R14 K27 [{"sessionId", "title", "updatedAt"}]
       91 GETTABLEKS                       R15 R11 K28 ["threadId"]
       93 SETTABLEKS                       R15 R14 K1 ["sessionId"]
       95 GETTABLEKS                       R15 R11 K25 ["title"]
       97 SETTABLEKS                       R15 R14 K25 ["title"]
       99 GETIMPORT                        R15 K31 [os.date]
      101 LOADK                            R16 K32 ["!%Y-%m-%dT%H:%M:%SZ"]
      102 GETTABLEKS                       R19 R11 K26 ["updatedAt"]
      104 DIVK                             R18 R19 K33 [1000]
      105 FASTCALL1                        MATH_FLOOR R18 ; [+2]
      106 GETIMPORT                        R17 K36 [math.floor]
      108 CALL                             R17 1 1
      109 CALL                             R15 2 1
      110 SETTABLEKS                       R15 R14 K26 ["updatedAt"]
      112 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
      114 MOVE                             R13 R5
      115 GETIMPORT                        R12 K39 [table.insert]
      117 CALL                             R12 2 0
      118 FORGLOOP                         R7 2 ; [-29]
      120 DUPTABLE                         R7 K40 [{"sessions", "nextPageToken"}]
      121 SETTABLEKS                       R5 R7 K13 ["sessions"]
      123 GETTABLEKS                       R8 R4 K19 ["cursor"]
      125 SETTABLEKS                       R8 R7 K14 ["nextPageToken"]
      127 RETURN                           R7 1

PROTO_18:
        0 JUMPIFNOTEQKS                    R0 K0 ["user"] ; [+3]
        2 LOADN                            R1 1
        3 RETURN                           R1 1
        4 JUMPIFEQKS                       R0 K1 ["assistant"] ; [+3]
        6 JUMPIFNOTEQKS                    R0 K2 ["model"] ; [+3]
        8 LOADN                            R1 2
        9 RETURN                           R1 1
       10 LOADN                            R1 0
       11 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["createdAt"]
        2 GETTABLEKS                       R3 R1 K0 ["createdAt"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K0 ["createdAt"]
        8 GETTABLEKS                       R4 R1 K0 ["createdAt"]
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R3 R0 K1 ["message"]
       17 JUMPIFNOT                        R3 ; [+5]
       18 GETTABLEKS                       R2 R0 K1 ["message"]
       20 GETTABLEKS                       R2 R2 K2 ["role"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R2
       24 GETTABLEKS                       R4 R1 K1 ["message"]
       26 JUMPIFNOT                        R4 ; [+5]
       27 GETTABLEKS                       R3 R1 K1 ["message"]
       29 GETTABLEKS                       R3 R3 K2 ["role"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R3
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K3 ["FFlagDebugLogAssistantUI"]
       36 JUMPIFNOT                        R4 ; [+24]
       37 GETIMPORT                        R4 K5 [warn]
       39 LOADK                            R6 K6 ["[Persistence][ACP] Equal createdAt=%* for messages %* (%*) and %* (%*); ordering by role"]
       40 GETTABLEKS                       R8 R0 K0 ["createdAt"]
       42 GETTABLEKS                       R9 R0 K7 ["messageId"]
       44 FASTCALL1                        TOSTRING R2 ; [+3]
       45 MOVE                             R11 R2
       46 GETIMPORT                        R10 K9 [tostring]
       48 CALL                             R10 1 1
       49 GETTABLEKS                       R11 R1 K7 ["messageId"]
       51 FASTCALL1                        TOSTRING R3 ; [+3]
       52 MOVE                             R13 R3
       53 GETIMPORT                        R12 K9 [tostring]
       55 CALL                             R12 1 1
       56 NAMECALL                         R6 R6 K10 ["format"]
       58 CALL                             R6 6 1
       59 MOVE                             R5 R6
       60 CALL                             R4 1 0
       61 JUMPIFNOTEQKS                    R2 K11 ["user"] ; [+3]
       63 LOADN                            R5 1
       64 JUMP                             ; [+7]
       65 JUMPIFEQKS                       R2 K12 ["assistant"] ; [+3]
       67 JUMPIFNOTEQKS                    R2 K13 ["model"] ; [+3]
       69 LOADN                            R5 2
       70 JUMP                             ; [+1]
       71 LOADN                            R5 0
       72 JUMPIFNOTEQKS                    R3 K11 ["user"] ; [+3]
       74 LOADN                            R6 1
       75 JUMP                             ; [+7]
       76 JUMPIFEQKS                       R3 K12 ["assistant"] ; [+3]
       78 JUMPIFNOTEQKS                    R3 K13 ["model"] ; [+3]
       80 LOADN                            R6 2
       81 JUMP                             ; [+1]
       82 LOADN                            R6 0
       83 JUMPIFLT                         R5 R6 ; [+2]
       85 LOADB                            R4 0 +1
       86 LOADB                            R4 1
       87 RETURN                           R4 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["io"]
        3 GETTABLEKS                       R2 R2 K1 ["getAgentMessagesAsync"]
        5 JUMPIF                           R2 ; [+5]
        6 GETIMPORT                        R3 K3 [error]
        8 LOADK                            R4 K4 ["ACP message persistence is unavailable"]
        9 LOADN                            R5 0
       10 CALL                             R3 2 0
       11 GETUPVAL                         R4 1
       12 GETUPVAL                         R5 2
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K5 ["sessionIdRef"]
       16 GETTABLEKS                       R6 R6 K6 ["sessionId"]
       18 CALL                             R4 2 1
       19 JUMPIF                           R4 ; [+5]
       20 GETIMPORT                        R5 K3 [error]
       22 LOADK                            R6 K7 ["Studio session metadata is unavailable"]
       23 LOADN                            R7 0
       24 CALL                             R5 2 0
       25 MOVE                             R3 R4
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K8 ["FFlagAssistantAcpHistoryCompatibility"]
       29 JUMPIFNOT                        R4 ; [+19]
       30 GETTABLEKS                       R5 R3 K9 ["gameId"]
       32 GETTABLEKS                       R6 R3 K10 ["placeId"]
       34 LOADB                            R4 0
       35 LOADN                            R7 0
       36 JUMPIFNOTLT                      R7 R5 ; [+6]
       38 LOADN                            R7 0
       39 JUMPIFLT                         R7 R6 ; [+2]
       41 LOADB                            R4 0 +1
       42 LOADB                            R4 1
       43 JUMPIF                           R4 ; [+5]
       44 GETIMPORT                        R4 K3 [error]
       46 LOADK                            R5 K11 ["ACP persistence is unavailable in unpublished places"]
       47 LOADN                            R6 0
       48 CALL                             R4 2 0
       49 MOVE                             R4 R2
       50 MOVE                             R5 R0
       51 DUPTABLE                         R6 K14 [{"cursor", "limit"}]
       52 SETTABLEKS                       R1 R6 K12 ["cursor"]
       54 GETUPVAL                         R7 3
       55 GETTABLEKS                       R7 R7 K15 ["FIntAssistantPersistenceMessageLoadLimit"]
       57 SETTABLEKS                       R7 R6 K13 ["limit"]
       59 CALL                             R4 2 2
       60 JUMPIFNOT                        R4 ; [+1]
       61 JUMPIF                           R5 ; [+10]
       62 GETIMPORT                        R6 K3 [error]
       64 LOADK                            R8 K16 ["Failed to load ACP session %*"]
       65 MOVE                             R10 R0
       66 NAMECALL                         R8 R8 K17 ["format"]
       68 CALL                             R8 2 1
       69 MOVE                             R7 R8
       70 LOADN                            R8 0
       71 CALL                             R6 2 0
       72 GETTABLEKS                       R6 R5 K18 ["messages"]
       74 JUMPIF                           R6 ; [+2]
       75 NEWTABLE                         R6 0 0
       77 DUPCLOSURE                       R7 K19 [PROTO_18]
       78 GETIMPORT                        R8 K22 [table.sort]
       80 MOVE                             R9 R6
       81 DUPCLOSURE                       R10 K23 [PROTO_19]
       82 CAPTURE                          UPVAL U3
       83 CALL                             R8 2 0
       84 DUPTABLE                         R8 K27 [{["messages"], ["modes"] = , ["nextHistoryPageToken"]}]
       85 SETTABLEKS                       R6 R8 K18 ["messages"]
       87 GETTABLEKS                       R9 R5 K12 ["cursor"]
       89 SETTABLEKS                       R9 R8 K26 ["nextHistoryPageToken"]
       91 RETURN                           R8 1

PROTO_21:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 DUPTABLE                         R3 K2 [{"listSessionsPage", "loadSessionPage"}]
        4 NEWCLOSURE                       R4 P1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R4 R3 K0 ["listSessionsPage"]
       11 NEWCLOSURE                       R4 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U1
       16 SETTABLEKS                       R4 R3 K1 ["loadSessionPage"]
       18 RETURN                           R3 1

PROTO_22:
        0 GETTABLEKS                       R3 R1 K0 ["gameId"]
        2 GETTABLEKS                       R4 R1 K1 ["placeId"]
        4 LOADB                            R2 0
        5 LOADN                            R5 0
        6 JUMPIFNOTLT                      R5 R3 ; [+6]
        8 LOADN                            R5 0
        9 JUMPIFLT                         R5 R4 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 JUMPIF                           R2 ; [+5]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["FFlagAssistantAcpHistoryCompatibility"]
       17 JUMPIF                           R3 ; [+1]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R3 R1 K3 ["overwrite"]
       21 JUMPIF                           R3 ; [+28]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R5 R1 K4 ["sessionId"]
       25 GETTABLE                         R3 R4 R5
       26 JUMPIF                           R3 ; [+6]
       27 JUMPIFNOT                        R2 ; [+22]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R5 R1 K1 ["placeId"]
       31 GETTABLE                         R3 R4 R5
       32 JUMPIFNOT                        R3 ; [+17]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K5 ["FFlagDebugLogAssistantUI"]
       36 JUMPIFNOT                        R3 ; [+12]
       37 GETIMPORT                        R3 K7 [print]
       39 LOADK                            R5 K8 ["[Persistence] [Session] Session %* already has cached metadata for placeId %*"]
       40 GETTABLEKS                       R7 R1 K4 ["sessionId"]
       42 GETTABLEKS                       R8 R1 K1 ["placeId"]
       44 NAMECALL                         R5 R5 K9 ["format"]
       46 CALL                             R5 3 1
       47 MOVE                             R4 R5
       48 CALL                             R3 1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R5 R1 K4 ["sessionId"]
       53 GETTABLE                         R3 R4 R5
       54 JUMPIFNOT                        R3 ; [+5]
       55 GETTABLEKS                       R4 R3 K10 ["Destroying"]
       57 NAMECALL                         R4 R4 K11 ["Fire"]
       59 CALL                             R4 1 0
       60 DUPTABLE                         R4 K13 [{"gameId", "placeId", "loadState", "Destroying"}]
       61 GETTABLEKS                       R5 R1 K0 ["gameId"]
       63 SETTABLEKS                       R5 R4 K0 ["gameId"]
       65 GETTABLEKS                       R5 R1 K1 ["placeId"]
       67 SETTABLEKS                       R5 R4 K1 ["placeId"]
       69 GETUPVAL                         R5 3
       70 GETTABLEKS                       R5 R5 K14 ["Idle"]
       72 SETTABLEKS                       R5 R4 K12 ["loadState"]
       74 GETUPVAL                         R5 4
       75 GETTABLEKS                       R5 R5 K15 ["new"]
       77 CALL                             R5 0 1
       78 SETTABLEKS                       R5 R4 K10 ["Destroying"]
       80 GETUPVAL                         R5 1
       81 GETTABLEKS                       R6 R1 K4 ["sessionId"]
       83 SETTABLE                         R4 R5 R6
       84 GETUPVAL                         R5 5
       85 GETTABLEKS                       R7 R1 K4 ["sessionId"]
       87 NAMECALL                         R5 R5 K11 ["Fire"]
       89 CALL                             R5 2 0
       90 JUMPIFNOT                        R2 ; [+9]
       91 GETUPVAL                         R5 2
       92 GETTABLEKS                       R6 R1 K1 ["placeId"]
       94 LOADB                            R7 1
       95 SETTABLE                         R7 R5 R6
       96 GETUPVAL                         R5 6
       97 GETUPVAL                         R6 7
       98 MOVE                             R7 R4
       99 CALL                             R5 2 0
      100 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+2]
       10 GETUPVAL                         R0 2
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["networking"]
        2 GETTABLEKS                       R3 R1 K1 ["gameMetadataCache"]
        4 GETTABLEKS                       R4 R1 K2 ["loadedPlaceIds"]
        6 GETTABLEKS                       R5 R1 K3 ["sessionIdRef"]
        8 GETTABLEKS                       R6 R1 K4 ["sessionMetadataLoaded"]
       10 LOADK                            R9 K5 ["StudioSessionOrchestration_sendGameMetadata"]
       11 NEWCLOSURE                       R10 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R4
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R6
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R7 R2 K6 ["OnGuestEvent"]
       22 CALL                             R7 3 2
       23 LOADNIL                          R9
       24 NAMECALL                         R10 R2 K7 ["IsHost"]
       26 CALL                             R10 1 1
       27 JUMPIFNOT                        R10 ; [+6]
       28 GETUPVAL                         R10 4
       29 MOVE                             R11 R0
       30 MOVE                             R12 R5
       31 MOVE                             R13 R7
       32 CALL                             R10 3 1
       33 MOVE                             R9 R10
       34 LOADNIL                          R10
       35 NAMECALL                         R11 R2 K8 ["IsGuest"]
       37 CALL                             R11 1 1
       38 JUMPIFNOT                        R11 ; [+5]
       39 GETUPVAL                         R11 5
       40 MOVE                             R12 R0
       41 MOVE                             R13 R1
       42 CALL                             R11 2 1
       43 MOVE                             R10 R11
       44 NEWCLOSURE                       R11 P1
       45 CAPTURE                          VAL R8
       46 CAPTURE                          REF R9
       47 CAPTURE                          REF R10
       48 CLOSEUPVALS                      R9
       49 RETURN                           R11 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getThreadsAsync"]
        3 DUPTABLE                         R1 K4 [{"placeId", "cursor", "limit"}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["placeId"]
        7 SETTABLEKS                       R2 R1 K1 ["placeId"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["cursor"]
       12 SETTABLEKS                       R2 R1 K2 ["cursor"]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K5 ["FIntAssistantPersistenceThreadLoadLimit"]
       17 SETTABLEKS                       R2 R1 K3 ["limit"]
       19 CALL                             R0 1 2
       20 JUMPIF                           R0 ; [+5]
       21 GETIMPORT                        R2 K7 [error]
       23 LOADK                            R3 K8 ["IO error while loading threads"]
       24 LOADN                            R4 0
       25 CALL                             R2 2 0
       26 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getMessagesAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["threadId"]
        6 DUPTABLE                         R2 K4 [{"cursor", "limit"}]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["cursor"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K5 ["FIntAssistantPersistenceMessageLoadLimit"]
       13 SETTABLEKS                       R3 R2 K3 ["limit"]
       15 CALL                             R0 2 2
       16 JUMPIF                           R0 ; [+5]
       17 GETIMPORT                        R2 K7 [error]
       19 LOADK                            R3 K8 ["IO error while loading messages"]
       20 LOADN                            R4 0
       21 CALL                             R2 2 0
       22 RETURN                           R1 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Threads"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+133]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["sessionId"]
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 3
       12 MOVE                             R4 R1
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R4 R2 K3 ["gameId"]
       18 GETTABLEKS                       R5 R2 K4 ["placeId"]
       20 LOADB                            R3 0
       21 LOADN                            R6 0
       22 JUMPIFNOTLT                      R6 R4 ; [+6]
       24 LOADN                            R6 0
       25 JUMPIFLT                         R6 R5 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 JUMPIF                           R3 ; [+9]
       30 GETUPVAL                         R3 4
       31 GETTABLEKS                       R3 R3 K5 ["FFlagDebugLogAssistantUI"]
       33 JUMPIFNOT                        R3 ; [+4]
       34 GETIMPORT                        R3 K7 [print]
       36 LOADK                            R4 K8 ["[Persistence] [Session] Loading and saving conversations is disabled in unpublished places."]
       37 CALL                             R3 1 0
       38 RETURN                           R0 0
       39 GETTABLEKS                       R4 R0 K9 ["cursor"]
       41 JUMPIFEQKNIL                     R4 ; [+2]
       43 LOADB                            R3 0 +1
       44 LOADB                            R3 1
       45 JUMPIFNOT                        R3 ; [+9]
       46 GETTABLEKS                       R4 R2 K10 ["loadState"]
       48 JUMPIFEQKS                       R4 K11 ["idle"] ; [+2]
       50 RETURN                           R0 0
       51 LOADK                            R4 K12 ["loading"]
       52 SETTABLEKS                       R4 R2 K10 ["loadState"]
       54 JUMP                             ; [+5]
       55 GETTABLEKS                       R4 R2 K10 ["loadState"]
       57 JUMPIFEQKS                       R4 K13 ["loaded"] ; [+2]
       59 RETURN                           R0 0
       60 GETUPVAL                         R4 5
       61 GETTABLEKS                       R4 R4 K14 ["setLoadState"]
       63 GETUPVAL                         R5 6
       64 GETTABLEKS                       R5 R5 K15 ["Loading"]
       66 DUPTABLE                         R6 K16 [{"scope"}]
       67 GETUPVAL                         R7 0
       68 GETTABLEKS                       R7 R7 K1 ["Threads"]
       70 SETTABLEKS                       R7 R6 K0 ["scope"]
       72 CALL                             R4 2 0
       73 GETIMPORT                        R4 K18 [pcall]
       75 NEWCLOSURE                       R5 P0
       76 CAPTURE                          UPVAL U7
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U4
       80 CALL                             R4 1 2
       81 JUMPIFNOT                        R4 ; [+22]
       82 JUMPIFNOT                        R5 ; [+21]
       83 GETUPVAL                         R6 5
       84 GETTABLEKS                       R6 R6 K19 ["notifyLoadedAsync"]
       86 DUPTABLE                         R7 K22 [{"scope", "threads", "nextCursor"}]
       87 GETUPVAL                         R8 0
       88 GETTABLEKS                       R8 R8 K1 ["Threads"]
       90 SETTABLEKS                       R8 R7 K0 ["scope"]
       92 GETTABLEKS                       R8 R5 K20 ["threads"]
       94 JUMPIF                           R8 ; [+2]
       95 NEWTABLE                         R8 0 0
       97 SETTABLEKS                       R8 R7 K20 ["threads"]
       99 GETTABLEKS                       R8 R5 K9 ["cursor"]
      101 SETTABLEKS                       R8 R7 K21 ["nextCursor"]
      103 CALL                             R6 1 0
      104 JUMPIFNOT                        R4 ; [+17]
      105 LOADK                            R6 K13 ["loaded"]
      106 SETTABLEKS                       R6 R2 K10 ["loadState"]
      108 GETUPVAL                         R6 5
      109 GETTABLEKS                       R6 R6 K14 ["setLoadState"]
      111 GETUPVAL                         R7 6
      112 GETTABLEKS                       R7 R7 K23 ["Loaded"]
      114 DUPTABLE                         R8 K16 [{"scope"}]
      115 GETUPVAL                         R9 0
      116 GETTABLEKS                       R9 R9 K1 ["Threads"]
      118 SETTABLEKS                       R9 R8 K0 ["scope"]
      120 CALL                             R6 2 0
      121 RETURN                           R0 0
      122 LOADK                            R6 K24 ["failed"]
      123 SETTABLEKS                       R6 R2 K10 ["loadState"]
      125 GETUPVAL                         R6 5
      126 GETTABLEKS                       R6 R6 K14 ["setLoadState"]
      128 GETUPVAL                         R7 6
      129 GETTABLEKS                       R7 R7 K25 ["Error"]
      131 DUPTABLE                         R8 K16 [{"scope"}]
      132 GETUPVAL                         R9 0
      133 GETTABLEKS                       R9 R9 K1 ["Threads"]
      135 SETTABLEKS                       R9 R8 K0 ["scope"]
      137 CALL                             R6 2 0
      138 RETURN                           R0 0
      139 GETTABLEKS                       R1 R0 K0 ["scope"]
      141 GETUPVAL                         R2 0
      142 GETTABLEKS                       R2 R2 K26 ["Messages"]
      144 JUMPIFNOTEQ                      R1 R2 ; [+183]
      146 GETUPVAL                         R1 5
      147 GETTABLEKS                       R1 R1 K14 ["setLoadState"]
      149 GETUPVAL                         R2 6
      150 GETTABLEKS                       R2 R2 K15 ["Loading"]
      152 DUPTABLE                         R3 K28 [{"scope", "threadId"}]
      153 GETUPVAL                         R4 0
      154 GETTABLEKS                       R4 R4 K26 ["Messages"]
      156 SETTABLEKS                       R4 R3 K0 ["scope"]
      158 GETTABLEKS                       R4 R0 K27 ["threadId"]
      160 SETTABLEKS                       R4 R3 K27 ["threadId"]
      162 CALL                             R1 2 0
      163 GETUPVAL                         R2 4
      164 GETTABLEKS                       R2 R2 K29 ["FFlagAssistantMarkdownPlanMode"]
      166 JUMPIFNOT                        R2 ; [+3]
      167 GETTABLEKS                       R1 R0 K30 ["loadUntilMessageId"]
      169 JUMP                             ; [+1]
      170 LOADNIL                          R1
      171 GETTABLEKS                       R2 R0 K9 ["cursor"]
      173 NEWTABLE                         R3 0 0
      175 LOADB                            R4 0
      176 LOADNIL                          R5
      177 LOADB                            R6 0
      178 LOADB                            R7 1
      179 JUMPIFNOT                        R7 ; [+128]
      180 GETIMPORT                        R8 K18 [pcall]
      182 NEWCLOSURE                       R9 P1
      183 CAPTURE                          UPVAL U7
      184 CAPTURE                          VAL R0
      185 CAPTURE                          REF R2
      186 CAPTURE                          UPVAL U4
      187 CALL                             R8 1 2
      188 JUMPIF                           R8 ; [+19]
      189 GETUPVAL                         R10 5
      190 GETTABLEKS                       R10 R10 K14 ["setLoadState"]
      192 GETUPVAL                         R11 6
      193 GETTABLEKS                       R11 R11 K25 ["Error"]
      195 DUPTABLE                         R12 K28 [{"scope", "threadId"}]
      196 GETUPVAL                         R13 0
      197 GETTABLEKS                       R13 R13 K26 ["Messages"]
      199 SETTABLEKS                       R13 R12 K0 ["scope"]
      201 GETTABLEKS                       R13 R0 K27 ["threadId"]
      203 SETTABLEKS                       R13 R12 K27 ["threadId"]
      205 CALL                             R10 2 0
      206 CLOSEUPVALS                      R2
      207 RETURN                           R0 0
      208 JUMPIFNOT                        R9 ; [+86]
      209 LOADB                            R6 1
      210 GETTABLEKS                       R10 R9 K31 ["messages"]
      212 JUMPIFNOT                        R10 ; [+77]
      213 MOVE                             R11 R10
      214 LOADNIL                          R12
      215 LOADNIL                          R13
      216 FORGPREP                         R11
      217 DUPTABLE                         R16 K48 [{["messageId"], ["sourceId"], ["rootId"], ["createdAt"], ["updatedAt"], ["ephemeral"], ["isDirty"] = False, ["isDeleted"], ["role"], ["thumbsState"], ["contents"], ["contentCountAdded"], ["contentCountLoaded"], ["LayoutOrder"], ["hidden"]}]
      218 GETTABLEKS                       R17 R15 K32 ["messageId"]
      220 SETTABLEKS                       R17 R16 K32 ["messageId"]
      222 GETTABLEKS                       R17 R15 K33 ["sourceId"]
      224 SETTABLEKS                       R17 R16 K33 ["sourceId"]
      226 GETTABLEKS                       R17 R15 K34 ["rootId"]
      228 SETTABLEKS                       R17 R16 K34 ["rootId"]
      230 GETTABLEKS                       R17 R15 K35 ["createdAt"]
      232 SETTABLEKS                       R17 R16 K35 ["createdAt"]
      234 GETTABLEKS                       R17 R15 K36 ["updatedAt"]
      236 SETTABLEKS                       R17 R16 K36 ["updatedAt"]
      238 GETTABLEKS                       R17 R15 K37 ["ephemeral"]
      240 SETTABLEKS                       R17 R16 K37 ["ephemeral"]
      242 GETTABLEKS                       R17 R15 K40 ["isDeleted"]
      244 SETTABLEKS                       R17 R16 K40 ["isDeleted"]
      246 GETTABLEKS                       R17 R15 K41 ["role"]
      248 SETTABLEKS                       R17 R16 K41 ["role"]
      250 GETTABLEKS                       R17 R15 K42 ["thumbsState"]
      252 SETTABLEKS                       R17 R16 K42 ["thumbsState"]
      254 GETTABLEKS                       R17 R15 K43 ["contents"]
      256 JUMPIF                           R17 ; [+2]
      257 NEWTABLE                         R17 0 0
      259 SETTABLEKS                       R17 R16 K43 ["contents"]
      261 GETTABLEKS                       R18 R15 K44 ["contentCountAdded"]
      263 ORK                              R17 R18 K49 [0]
      264 SETTABLEKS                       R17 R16 K44 ["contentCountAdded"]
      266 GETTABLEKS                       R18 R15 K45 ["contentCountLoaded"]
      268 ORK                              R17 R18 K49 [0]
      269 SETTABLEKS                       R17 R16 K45 ["contentCountLoaded"]
      271 GETTABLEKS                       R17 R15 K46 ["LayoutOrder"]
      273 SETTABLEKS                       R17 R16 K46 ["LayoutOrder"]
      275 GETTABLEKS                       R17 R15 K47 ["hidden"]
      277 SETTABLEKS                       R17 R16 K47 ["hidden"]
      279 GETTABLEKS                       R17 R16 K32 ["messageId"]
      281 SETTABLE                         R16 R3 R17
      282 JUMPIFNOT                        R1 ; [+5]
      283 GETTABLEKS                       R17 R16 K32 ["messageId"]
      285 JUMPIFNOTEQ                      R17 R1 ; [+2]
      287 LOADB                            R4 1
      288 FORGLOOP                         R11 2 ; [-72]
      290 GETTABLEKS                       R5 R9 K9 ["cursor"]
      292 GETTABLEKS                       R2 R9 K9 ["cursor"]
      294 JUMP                             ; [+2]
      295 LOADNIL                          R5
      296 LOADNIL                          R2
      297 LOADB                            R10 0
      298 JUMPIFEQKNIL                     R1 ; [+7]
      300 NOT                              R10 R4
      301 JUMPIFNOT                        R10 ; [+4]
      302 JUMPIFNOTEQKNIL                  R2 ; [+2]
      304 LOADB                            R10 0 +1
      305 LOADB                            R10 1
      306 MOVE                             R7 R10
      307 JUMPBACK                         ; [-129]
      308 JUMPIFNOT                        R6 ; [+18]
      309 GETUPVAL                         R8 5
      310 GETTABLEKS                       R8 R8 K19 ["notifyLoadedAsync"]
      312 DUPTABLE                         R9 K50 [{"scope", "threadId", "messages", "nextCursor"}]
      313 GETUPVAL                         R10 0
      314 GETTABLEKS                       R10 R10 K26 ["Messages"]
      316 SETTABLEKS                       R10 R9 K0 ["scope"]
      318 GETTABLEKS                       R10 R0 K27 ["threadId"]
      320 SETTABLEKS                       R10 R9 K27 ["threadId"]
      322 SETTABLEKS                       R3 R9 K31 ["messages"]
      324 SETTABLEKS                       R5 R9 K21 ["nextCursor"]
      326 CALL                             R8 1 0
      327 CLOSEUPVALS                      R2
      328 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["coordinator"]
        2 GETTABLEKS                       R3 R0 K1 ["io"]
        4 GETTABLEKS                       R4 R1 K2 ["sessionIdRef"]
        6 GETTABLEKS                       R5 R2 K3 ["onLoadRequested"]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R4
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R3
       17 CALL                             R5 1 -1
       18 RETURN                           R5 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["uploadThreadsAsync"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"placeId"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["placeId"]
        8 SETTABLEKS                       R3 R2 K1 ["placeId"]
       10 CALL                             R0 2 1
       11 JUMPIF                           R0 ; [+5]
       12 GETIMPORT                        R1 K4 [error]
       14 LOADK                            R2 K5 ["IO error while uploading threads"]
       15 LOADN                            R3 0
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["uploadMessagesAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["threadId"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 1
        8 JUMPIF                           R0 ; [+5]
        9 GETIMPORT                        R1 K3 [error]
       11 LOADK                            R2 K4 ["IO error while uploading messages"]
       12 LOADN                            R3 0
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Threads"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+53]
        7 GETTABLEKS                       R1 R0 K2 ["metadata"]
        9 NEWTABLE                         R2 0 0
       11 GETTABLEKS                       R3 R0 K3 ["threads"]
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       18 MOVE                             R9 R2
       19 MOVE                             R10 R7
       20 GETIMPORT                        R8 K6 [table.insert]
       22 CALL                             R8 2 0
       23 FORGLOOP                         R3 2 ; [-8]
       25 GETIMPORT                        R3 K8 [pcall]
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 CALL                             R3 1 1
       32 JUMPIFNOT                        R3 ; [+107]
       33 NEWTABLE                         R4 0 0
       35 MOVE                             R5 R2
       36 LOADNIL                          R6
       37 LOADNIL                          R7
       38 FORGPREP                         R5
       39 GETTABLEKS                       R10 R9 K9 ["threadId"]
       41 GETTABLEKS                       R11 R9 K10 ["updatedAt"]
       43 SETTABLE                         R11 R4 R10
       44 FORGLOOP                         R5 2 ; [-6]
       46 GETUPVAL                         R5 2
       47 GETTABLEKS                       R5 R5 K11 ["clearDirty"]
       49 DUPTABLE                         R6 K13 [{"scope", "threadIds"}]
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K1 ["Threads"]
       53 SETTABLEKS                       R7 R6 K0 ["scope"]
       55 SETTABLEKS                       R4 R6 K12 ["threadIds"]
       57 CALL                             R5 1 0
       58 RETURN                           R0 0
       59 GETTABLEKS                       R1 R0 K0 ["scope"]
       61 GETUPVAL                         R2 0
       62 GETTABLEKS                       R2 R2 K14 ["Messages"]
       64 JUMPIFNOTEQ                      R1 R2 ; [+75]
       66 NEWTABLE                         R1 0 0
       68 GETTABLEKS                       R2 R0 K15 ["messages"]
       70 LOADNIL                          R3
       71 LOADNIL                          R4
       72 FORGPREP                         R2
       73 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       75 MOVE                             R8 R1
       76 MOVE                             R9 R6
       77 GETIMPORT                        R7 K6 [table.insert]
       79 CALL                             R7 2 0
       80 FORGLOOP                         R2 2 ; [-8]
       82 GETIMPORT                        R2 K8 [pcall]
       84 NEWCLOSURE                       R3 P1
       85 CAPTURE                          UPVAL U1
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R1
       88 CALL                             R2 1 1
       89 JUMPIFNOT                        R2 ; [+50]
       90 NEWTABLE                         R3 0 0
       92 NEWTABLE                         R4 0 0
       94 MOVE                             R5 R1
       95 LOADNIL                          R6
       96 LOADNIL                          R7
       97 FORGPREP                         R5
       98 NEWTABLE                         R10 0 0
      100 GETTABLEKS                       R11 R9 K16 ["contents"]
      102 JUMPIFNOT                        R11 ; [+9]
      103 MOVE                             R12 R11
      104 LOADNIL                          R13
      105 LOADNIL                          R14
      106 FORGPREP                         R12
      107 GETTABLEKS                       R17 R16 K10 ["updatedAt"]
      109 SETTABLE                         R17 R10 R15
      110 FORGLOOP                         R12 2 ; [-4]
      112 GETTABLEKS                       R12 R9 K17 ["messageId"]
      114 GETTABLEKS                       R13 R9 K10 ["updatedAt"]
      116 SETTABLE                         R13 R3 R12
      117 GETTABLEKS                       R12 R9 K17 ["messageId"]
      119 SETTABLE                         R10 R4 R12
      120 FORGLOOP                         R5 2 ; [-23]
      122 GETUPVAL                         R5 2
      123 GETTABLEKS                       R5 R5 K11 ["clearDirty"]
      125 DUPTABLE                         R6 K20 [{"scope", "threadId", "messageIds", "contentIds"}]
      126 GETUPVAL                         R7 0
      127 GETTABLEKS                       R7 R7 K14 ["Messages"]
      129 SETTABLEKS                       R7 R6 K0 ["scope"]
      131 GETTABLEKS                       R7 R0 K9 ["threadId"]
      133 SETTABLEKS                       R7 R6 K9 ["threadId"]
      135 SETTABLEKS                       R3 R6 K18 ["messageIds"]
      137 SETTABLEKS                       R4 R6 K19 ["contentIds"]
      139 CALL                             R5 1 0
      140 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["coordinator"]
        2 GETTABLEKS                       R2 R0 K1 ["io"]
        4 GETTABLEKS                       R3 R1 K2 ["onSaveReady"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R1
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Threads"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+19]
        7 GETTABLEKS                       R1 R0 K2 ["metadata"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R3 R0 K3 ["sessions"]
       12 DUPTABLE                         R4 K5 [{"placeId"}]
       13 GETTABLEKS                       R5 R1 K4 ["placeId"]
       15 SETTABLEKS                       R5 R4 K4 ["placeId"]
       17 CALL                             R2 2 1
       18 JUMPIF                           R2 ; [+23]
       19 GETIMPORT                        R3 K7 [error]
       21 LOADK                            R4 K8 ["IO error while uploading ACP agent threads"]
       22 LOADN                            R5 0
       23 CALL                             R3 2 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R1 R0 K0 ["scope"]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K9 ["Messages"]
       30 JUMPIFNOTEQ                      R1 R2 ; [+11]
       32 GETUPVAL                         R1 2
       33 GETTABLEKS                       R2 R0 K10 ["session"]
       35 CALL                             R1 1 1
       36 JUMPIF                           R1 ; [+5]
       37 GETIMPORT                        R2 K7 [error]
       39 LOADK                            R3 K11 ["IO error while uploading ACP agent messages"]
       40 LOADN                            R4 0
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["io"]
        2 GETTABLEKS                       R1 R1 K1 ["uploadAgentThreadsAsync"]
        4 GETTABLEKS                       R2 R0 K0 ["io"]
        6 GETTABLEKS                       R2 R2 K2 ["uploadAgentMessagesAsync"]
        8 JUMPIFNOT                        R1 ; [+1]
        9 JUMPIF                           R2 ; [+2]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 GETTABLEKS                       R3 R0 K3 ["coordinator"]
       14 GETTABLEKS                       R3 R3 K4 ["onAgentSaveReady"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 CALL                             R3 1 -1
       21 RETURN                           R3 -1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deleteThreadAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Messages"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+35]
        7 GETTABLEKS                       R1 R0 K2 ["threadId"]
        9 GETIMPORT                        R2 K4 [pcall]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 CALL                             R2 1 2
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K5 ["FFlagDebugLogAssistantUI"]
       18 JUMPIFNOT                        R4 ; [+22]
       19 JUMPIFNOT                        R2 ; [+1]
       20 JUMPIF                           R3 ; [+11]
       21 GETIMPORT                        R4 K7 [print]
       23 LOADK                            R6 K8 ["[Persistence] [Session] Failed to delete thread with id %*. Error: %*"]
       24 MOVE                             R8 R1
       25 MOVE                             R9 R3
       26 NAMECALL                         R6 R6 K9 ["format"]
       28 CALL                             R6 3 1
       29 MOVE                             R5 R6
       30 CALL                             R4 1 0
       31 RETURN                           R0 0
       32 GETIMPORT                        R4 K7 [print]
       34 LOADK                            R6 K10 ["[Persistence] [Session] Successfully deleted thread with id %*"]
       35 MOVE                             R8 R1
       36 NAMECALL                         R6 R6 K9 ["format"]
       38 CALL                             R6 2 1
       39 MOVE                             R5 R6
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["coordinator"]
        2 GETTABLEKS                       R2 R0 K1 ["io"]
        4 GETTABLEKS                       R3 R1 K2 ["onDeleteRequested"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U1
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["waitForPendingSaves"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sessionMetadataLoaded"]
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K1 ["Fire"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K2 ["gameMetadataCache"]
       10 MOVE                             R1 R0
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETTABLEKS                       R6 R5 K3 ["Destroying"]
       16 NAMECALL                         R6 R6 K1 ["Fire"]
       18 CALL                             R6 1 0
       19 FORGLOOP                         R1 2 ; [-6]
       21 GETUPVAL                         R1 1
       22 JUMPIFNOT                        R1 ; [+2]
       23 GETUPVAL                         R1 1
       24 CALL                             R1 0 0
       25 GETUPVAL                         R1 2
       26 JUMPIFNOT                        R1 ; [+2]
       27 GETUPVAL                         R1 2
       28 CALL                             R1 0 0
       29 GETUPVAL                         R1 3
       30 JUMPIFNOT                        R1 ; [+2]
       31 GETUPVAL                         R1 3
       32 CALL                             R1 0 0
       33 GETUPVAL                         R1 4
       34 GETTABLEKS                       R1 R1 K4 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
       36 JUMPIF                           R1 ; [+12]
       37 GETUPVAL                         R1 5
       38 NAMECALL                         R1 R1 K5 ["IsGuest"]
       40 CALL                             R1 1 1
       41 JUMPIFNOT                        R1 ; [+5]
       42 GETUPVAL                         R1 6
       43 GETTABLEKS                       R1 R1 K6 ["waitForPendingSaves"]
       45 CALL                             R1 0 0
       46 JUMP                             ; [+2]
       47 GETUPVAL                         R1 7
       48 CALL                             R1 0 0
       49 GETUPVAL                         R1 8
       50 JUMPIFNOT                        R1 ; [+2]
       51 GETUPVAL                         R1 8
       52 CALL                             R1 0 0
       53 GETUPVAL                         R1 9
       54 JUMPIFNOT                        R1 ; [+2]
       55 GETUPVAL                         R1 9
       56 CALL                             R1 0 0
       57 GETUPVAL                         R1 10
       58 JUMPIFNOT                        R1 ; [+2]
       59 GETUPVAL                         R1 10
       60 CALL                             R1 0 0
       61 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["coordinator"]
        4 DUPTABLE                         R3 K6 [{"gameMetadataCache", "loadedPlaceIds", "sessionIdRef", "sessionMetadataLoaded"}]
        5 NEWTABLE                         R4 0 0
        7 SETTABLEKS                       R4 R3 K2 ["gameMetadataCache"]
        9 NEWTABLE                         R4 0 0
       11 SETTABLEKS                       R4 R3 K3 ["loadedPlaceIds"]
       13 DUPTABLE                         R4 K9 [{["sessionId"] = ""}]
       14 SETTABLEKS                       R4 R3 K4 ["sessionIdRef"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K10 ["new"]
       19 CALL                             R4 0 1
       20 SETTABLEKS                       R4 R3 K5 ["sessionMetadataLoaded"]
       22 GETUPVAL                         R4 1
       23 MOVE                             R5 R0
       24 MOVE                             R6 R3
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 2
       27 MOVE                             R6 R0
       28 MOVE                             R7 R3
       29 CALL                             R5 2 1
       30 LOADNIL                          R6
       31 LOADNIL                          R7
       32 LOADNIL                          R8
       33 LOADNIL                          R9
       34 NAMECALL                         R10 R1 K11 ["IsGuest"]
       36 CALL                             R10 1 1
       37 JUMPIFNOT                        R10 ; [+65]
       38 GETTABLEKS                       R10 R0 K1 ["coordinator"]
       40 GETTABLEKS                       R11 R0 K12 ["io"]
       42 GETTABLEKS                       R12 R3 K4 ["sessionIdRef"]
       44 GETTABLEKS                       R13 R10 K13 ["onLoadRequested"]
       46 NEWCLOSURE                       R14 P0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R12
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          VAL R10
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          VAL R11
       55 CALL                             R13 1 1
       56 MOVE                             R6 R13
       57 GETTABLEKS                       R10 R0 K1 ["coordinator"]
       59 GETTABLEKS                       R11 R0 K12 ["io"]
       61 GETTABLEKS                       R12 R10 K14 ["onSaveReady"]
       63 NEWCLOSURE                       R13 P1
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R10
       67 CALL                             R12 1 1
       68 MOVE                             R7 R12
       69 GETTABLEKS                       R10 R0 K12 ["io"]
       71 GETTABLEKS                       R10 R10 K15 ["uploadAgentThreadsAsync"]
       73 GETTABLEKS                       R11 R0 K12 ["io"]
       75 GETTABLEKS                       R11 R11 K16 ["uploadAgentMessagesAsync"]
       77 JUMPIFNOT                        R10 ; [+1]
       78 JUMPIF                           R11 ; [+2]
       79 LOADNIL                          R8
       80 JUMP                             ; [+10]
       81 GETTABLEKS                       R12 R0 K1 ["coordinator"]
       83 GETTABLEKS                       R12 R12 K17 ["onAgentSaveReady"]
       85 NEWCLOSURE                       R13 P2
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R11
       89 CALL                             R12 1 1
       90 MOVE                             R8 R12
       91 GETTABLEKS                       R10 R0 K1 ["coordinator"]
       93 GETTABLEKS                       R11 R0 K12 ["io"]
       95 GETTABLEKS                       R12 R10 K18 ["onDeleteRequested"]
       97 NEWCLOSURE                       R13 P3
       98 CAPTURE                          UPVAL U3
       99 CAPTURE                          VAL R11
      100 CAPTURE                          UPVAL U5
      101 CALL                             R12 1 1
      102 MOVE                             R9 R12
      103 LOADK                            R12 K19 ["StudioSessionOrchestration_waitForPendingSavesAsync"]
      104 NEWCLOSURE                       R13 P4
      105 CAPTURE                          VAL R2
      106 NAMECALL                         R10 R1 K20 ["OnGuestInvokeAsync"]
      108 CALL                             R10 3 2
      109 GETTABLEKS                       R12 R1 K21 ["Destroying"]
      111 NEWCLOSURE                       R14 P5
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R5
      114 CAPTURE                          REF R6
      115 CAPTURE                          REF R9
      116 CAPTURE                          UPVAL U5
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R10
      120 CAPTURE                          REF R8
      121 CAPTURE                          REF R7
      122 CAPTURE                          VAL R11
      123 NAMECALL                         R12 R12 K22 ["Once"]
      125 CALL                             R12 2 0
      126 CLOSEUPVALS                      R6
      127 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Parent"]
       30 GETTABLEKS                       R5 R5 K10 ["Signal"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Types"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K1 [script]
       40 GETTABLEKS                       R6 R6 K6 ["Parent"]
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R6 K12 ["PersistenceCoordinator"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R5 K13 ["PersistenceLoadStates"]
       49 GETTABLEKS                       R9 R5 K14 ["ScopeTypes"]
       51 DUPTABLE                         R10 K23 [{["Idle"] = "idle", ["Loading"] = "loading", ["Loaded"] = "loaded", ["Failed"] = "failed"}]
       52 DUPCLOSURE                       R11 K24 [PROTO_0]
       53 DUPCLOSURE                       R12 K25 [PROTO_1]
       54 CAPTURE                          VAL R4
       55 DUPCLOSURE                       R13 K26 [PROTO_2]
       56 CAPTURE                          VAL R3
       57 DUPCLOSURE                       R14 K27 [PROTO_8]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 DUPCLOSURE                       R15 K28 [PROTO_12]
       61 DUPCLOSURE                       R16 K29 [PROTO_15]
       62 CAPTURE                          VAL R3
       63 DUPCLOSURE                       R17 K30 [PROTO_21]
       64 CAPTURE                          VAL R13
       65 CAPTURE                          VAL R3
       66 DUPCLOSURE                       R18 K31 [PROTO_24]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R16
       71 CAPTURE                          VAL R14
       72 CAPTURE                          VAL R15
       73 DUPCLOSURE                       R19 K32 [PROTO_28]
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R8
       78 DUPCLOSURE                       R20 K33 [PROTO_32]
       79 CAPTURE                          VAL R9
       80 DUPCLOSURE                       R21 K34 [PROTO_34]
       81 CAPTURE                          VAL R9
       82 DUPCLOSURE                       R22 K35 [PROTO_37]
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R3
       85 DUPCLOSURE                       R23 K36 [PROTO_40]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R17
       88 CAPTURE                          VAL R18
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R8
       93 DUPTABLE                         R24 K38 [{"trackSessions"}]
       94 SETTABLEKS                       R23 R24 K37 ["trackSessions"]
       96 RETURN                           R24 1
