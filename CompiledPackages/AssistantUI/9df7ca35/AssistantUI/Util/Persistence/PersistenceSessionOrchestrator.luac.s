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
        0 DUPTABLE                         R1 K7 [{[1], ["placeId"], ["loadState"] = "idle", ["replaced"] = False, ["Destroying"]}]
        1 GETTABLEKS                       R2 R0 K0 ["gameId"]
        3 SETTABLEKS                       R2 R1 K0 ["gameId"]
        5 GETTABLEKS                       R2 R0 K1 ["placeId"]
        7 SETTABLEKS                       R2 R1 K1 ["placeId"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K8 ["new"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R1 K6 ["Destroying"]
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
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

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
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

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
       51 MOVE                             R4 R2
       52 CALL                             R3 1 0
       53 RETURN                           R0 0

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
        6 GETTABLEKS                       R5 R0 K1 ["getCurrentSessionId"]
        8 CALL                             R5 0 1
        9 JUMPIF                           R5 ; [+1]
       10 JUMP                             ; [+16]
       11 SETTABLEKS                       R5 R1 K2 ["sessionId"]
       13 DUPTABLE                         R6 K5 [{"sessionId", "gameId", "placeId"}]
       14 SETTABLEKS                       R5 R6 K2 ["sessionId"]
       16 GETTABLEKS                       R7 R3 K6 ["GameId"]
       18 SETTABLEKS                       R7 R6 K3 ["gameId"]
       20 GETTABLEKS                       R7 R3 K7 ["PlaceId"]
       22 SETTABLEKS                       R7 R6 K4 ["placeId"]
       24 MOVE                             R7 R2
       25 MOVE                             R8 R6
       26 CALL                             R7 1 0
       27 GETTABLEKS                       R5 R0 K8 ["sessionStartedSignal"]
       29 NEWCLOSURE                       R7 P1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 NAMECALL                         R5 R5 K9 ["Connect"]
       35 CALL                             R5 2 1
       36 GETTABLEKS                       R6 R3 K6 ["GameId"]
       38 GETTABLEKS                       R7 R3 K7 ["PlaceId"]
       40 GETTABLEKS                       R8 R0 K10 ["publishStartedSignal"]
       42 DUPCLOSURE                       R10 K11 [PROTO_5]
       43 CAPTURE                          UPVAL U0
       44 NAMECALL                         R8 R8 K9 ["Connect"]
       46 CALL                             R8 2 1
       47 GETTABLEKS                       R9 R0 K12 ["publishEndedSignal"]
       49 NEWCLOSURE                       R11 P3
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          REF R6
       52 CAPTURE                          REF R7
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 NAMECALL                         R9 R9 K9 ["Connect"]
       58 CALL                             R9 2 1
       59 NEWCLOSURE                       R10 P4
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R9
       63 CLOSEUPVALS                      R6
       64 RETURN                           R10 1

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
       10 JUMPIFNOT                        R1 ; [+11]
       11 GETIMPORT                        R1 K6 [print]
       13 LOADK                            R2 K7 ["[Persistence] [Session] Auto-saving conversations for placeId %* after waiting %* seconds."]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K8 ["placeId"]
       17 MOVE                             R5 R0
       18 NAMECALL                         R2 R2 K9 ["format"]
       20 CALL                             R2 3 1
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K10 ["requestSave"]
       25 DUPTABLE                         R2 K12 [{"metadata"}]
       26 GETUPVAL                         R3 3
       27 SETTABLEKS                       R3 R2 K11 ["metadata"]
       29 CALL                             R1 1 0
       30 JUMPBACK                         ; [-31]
       31 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFEQKS                       R0 K3 ["dead"] ; [+5]
        6 GETIMPORT                        R0 K6 [task.cancel]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K7 ["replaced"]
       13 JUMPIFNOT                        R0 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K8 ["FFlagDebugLogAssistantUI"]
       18 JUMPIFNOT                        R0 ; [+10]
       19 GETIMPORT                        R0 K10 [print]
       21 LOADK                            R1 K11 ["[Persistence] [Session] Session ended for placeId %*. Attempting to save conversations before destroying cached metadata."]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K12 ["placeId"]
       25 NAMECALL                         R1 R1 K13 ["format"]
       27 CALL                             R1 2 1
       28 CALL                             R0 1 0
       29 GETUPVAL                         R0 3
       30 GETTABLEKS                       R0 R0 K14 ["requestSave"]
       32 DUPTABLE                         R1 K16 [{"metadata"}]
       33 DUPTABLE                         R2 K20 [{["gameId"], ["placeId"], ["isPlaceClosed"] = True}]
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K17 ["gameId"]
       37 SETTABLEKS                       R3 R2 K17 ["gameId"]
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R3 R3 K12 ["placeId"]
       42 SETTABLEKS                       R3 R2 K12 ["placeId"]
       44 SETTABLEKS                       R2 R1 K15 ["metadata"]
       46 CALL                             R0 1 0
       47 RETURN                           R0 0

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
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R2
       26 NAMECALL                         R5 R5 K8 ["Once"]
       28 CALL                             R5 2 0
       29 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["sessionIdRef"]
        5 GETTABLEKS                       R3 R3 K1 ["sessionId"]
        7 CALL                             R1 2 1
        8 JUMPIF                           R1 ; [+5]
        9 GETIMPORT                        R2 K3 [error]
       11 LOADK                            R3 K4 ["Studio session metadata is unavailable"]
       12 LOADN                            R4 0
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R3 R1 K5 ["gameId"]
       16 GETTABLEKS                       R4 R1 K6 ["placeId"]
       18 LOADB                            R2 0
       19 LOADN                            R5 0
       20 JUMPIFNOTLT                      R5 R3 ; [+6]
       22 LOADN                            R5 0
       23 JUMPIFLT                         R5 R4 ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K7 ["FFlagDebugLogAssistantUI"]
       30 JUMPIFNOT                        R3 ; [+12]
       31 GETIMPORT                        R3 K9 [print]
       33 LOADK                            R4 K10 ["[Persistence][ACP] session/list availability: Host GameId=%*, Host PlaceId=%*, persistenceAvailable=%*"]
       34 GETTABLEKS                       R6 R1 K5 ["gameId"]
       36 GETTABLEKS                       R7 R1 K6 ["placeId"]
       38 MOVE                             R8 R2
       39 NAMECALL                         R4 R4 K11 ["format"]
       41 CALL                             R4 4 1
       42 CALL                             R3 1 0
       43 JUMPIF                           R2 ; [+6]
       44 DUPTABLE                         R3 K15 [{["sessions"], ["nextPageToken"] = }]
       45 NEWTABLE                         R4 0 0
       47 SETTABLEKS                       R4 R3 K12 ["sessions"]
       49 RETURN                           R3 1
       50 GETUPVAL                         R3 3
       51 GETTABLEKS                       R3 R3 K16 ["io"]
       53 GETTABLEKS                       R3 R3 K17 ["getThreadsAsync"]
       55 DUPTABLE                         R4 K20 [{"placeId", "cursor", "limit"}]
       56 GETTABLEKS                       R5 R1 K6 ["placeId"]
       58 SETTABLEKS                       R5 R4 K6 ["placeId"]
       60 SETTABLEKS                       R0 R4 K18 ["cursor"]
       62 GETUPVAL                         R5 2
       63 GETTABLEKS                       R5 R5 K21 ["FIntAssistantPersistenceThreadLoadLimit"]
       65 SETTABLEKS                       R5 R4 K19 ["limit"]
       67 CALL                             R3 1 2
       68 JUMPIFNOT                        R3 ; [+1]
       69 JUMPIF                           R4 ; [+5]
       70 GETIMPORT                        R5 K3 [error]
       72 LOADK                            R6 K22 ["Failed to load ACP thread list"]
       73 LOADN                            R7 0
       74 CALL                             R5 2 0
       75 NEWTABLE                         R5 0 0
       77 GETTABLEKS                       R6 R4 K23 ["threads"]
       79 JUMPIFNOT                        R6 ; [+34]
       80 MOVE                             R7 R6
       81 LOADNIL                          R8
       82 LOADNIL                          R9
       83 FORGPREP                         R7
       84 DUPTABLE                         R14 K26 [{"sessionId", "title", "updatedAt"}]
       85 GETTABLEKS                       R15 R11 K27 ["threadId"]
       87 SETTABLEKS                       R15 R14 K1 ["sessionId"]
       89 GETTABLEKS                       R15 R11 K24 ["title"]
       91 SETTABLEKS                       R15 R14 K24 ["title"]
       93 GETIMPORT                        R15 K30 [os.date]
       95 LOADK                            R16 K31 ["!%Y-%m-%dT%H:%M:%SZ"]
       96 GETTABLEKS                       R19 R11 K25 ["updatedAt"]
       98 DIVK                             R18 R19 K32 [1000]
       99 FASTCALL1                        MATH_FLOOR R18 ; [+2]
      100 GETIMPORT                        R17 K35 [math.floor]
      102 CALL                             R17 1 1
      103 CALL                             R15 2 1
      104 SETTABLEKS                       R15 R14 K25 ["updatedAt"]
      106 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
      108 MOVE                             R13 R5
      109 GETIMPORT                        R12 K38 [table.insert]
      111 CALL                             R12 2 0
      112 FORGLOOP                         R7 2 ; [-29]
      114 DUPTABLE                         R7 K39 [{"sessions", "nextPageToken"}]
      115 SETTABLEKS                       R5 R7 K12 ["sessions"]
      117 GETTABLEKS                       R8 R4 K18 ["cursor"]
      119 SETTABLEKS                       R8 R7 K13 ["nextPageToken"]
      121 RETURN                           R7 1

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
       36 JUMPIFNOT                        R4 ; [+23]
       37 GETIMPORT                        R4 K5 [warn]
       39 LOADK                            R5 K6 ["[Persistence][ACP] Equal createdAt=%* for messages %* (%*) and %* (%*); ordering by role"]
       40 GETTABLEKS                       R7 R0 K0 ["createdAt"]
       42 GETTABLEKS                       R8 R0 K7 ["messageId"]
       44 FASTCALL1                        TOSTRING R2 ; [+3]
       45 MOVE                             R10 R2
       46 GETIMPORT                        R9 K9 [tostring]
       48 CALL                             R9 1 1
       49 GETTABLEKS                       R10 R1 K7 ["messageId"]
       51 FASTCALL1                        TOSTRING R3 ; [+3]
       52 MOVE                             R12 R3
       53 GETIMPORT                        R11 K9 [tostring]
       55 CALL                             R11 1 1
       56 NAMECALL                         R5 R5 K10 ["format"]
       58 CALL                             R5 6 1
       59 CALL                             R4 1 0
       60 JUMPIFNOTEQKS                    R2 K11 ["user"] ; [+3]
       62 LOADN                            R5 1
       63 JUMP                             ; [+7]
       64 JUMPIFEQKS                       R2 K12 ["assistant"] ; [+3]
       66 JUMPIFNOTEQKS                    R2 K13 ["model"] ; [+3]
       68 LOADN                            R5 2
       69 JUMP                             ; [+1]
       70 LOADN                            R5 0
       71 JUMPIFNOTEQKS                    R3 K11 ["user"] ; [+3]
       73 LOADN                            R6 1
       74 JUMP                             ; [+7]
       75 JUMPIFEQKS                       R3 K12 ["assistant"] ; [+3]
       77 JUMPIFNOTEQKS                    R3 K13 ["model"] ; [+3]
       79 LOADN                            R6 2
       80 JUMP                             ; [+1]
       81 LOADN                            R6 0
       82 JUMPIFLT                         R5 R6 ; [+2]
       84 LOADB                            R4 0 +1
       85 LOADB                            R4 1
       86 RETURN                           R4 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["io"]
        3 GETTABLEKS                       R2 R2 K1 ["getAgentMessagesAsync"]
        5 JUMPIF                           R2 ; [+5]
        6 GETIMPORT                        R3 K3 [error]
        8 LOADK                            R4 K4 ["ACP message persistence is unavailable"]
        9 LOADN                            R5 0
       10 CALL                             R3 2 0
       11 GETUPVAL                         R3 1
       12 GETUPVAL                         R4 2
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K5 ["sessionIdRef"]
       16 GETTABLEKS                       R5 R5 K6 ["sessionId"]
       18 CALL                             R3 2 1
       19 JUMPIF                           R3 ; [+5]
       20 GETIMPORT                        R4 K3 [error]
       22 LOADK                            R5 K7 ["Studio session metadata is unavailable"]
       23 LOADN                            R6 0
       24 CALL                             R4 2 0
       25 GETTABLEKS                       R5 R3 K8 ["gameId"]
       27 GETTABLEKS                       R6 R3 K9 ["placeId"]
       29 LOADB                            R4 0
       30 LOADN                            R7 0
       31 JUMPIFNOTLT                      R7 R5 ; [+6]
       33 LOADN                            R7 0
       34 JUMPIFLT                         R7 R6 ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 JUMPIF                           R4 ; [+5]
       39 GETIMPORT                        R4 K3 [error]
       41 LOADK                            R5 K10 ["ACP persistence is unavailable in unpublished places"]
       42 LOADN                            R6 0
       43 CALL                             R4 2 0
       44 GETUPVAL                         R4 3
       45 GETTABLEKS                       R4 R4 K11 ["FIntAssistantPersistenceMessageLoadLimit"]
       47 GETUPVAL                         R5 3
       48 GETTABLEKS                       R5 R5 K12 ["FFlagDebugLogAssistantUI"]
       50 JUMPIFNOT                        R5 ; [+14]
       51 GETIMPORT                        R5 K14 [print]
       53 LOADK                            R6 K15 ["[Persistence][ACP] session/load request: sessionId=%*, historyPageToken=%*, limit=%*"]
       54 MOVE                             R8 R0
       55 FASTCALL1                        TOSTRING R1 ; [+3]
       56 MOVE                             R10 R1
       57 GETIMPORT                        R9 K17 [tostring]
       59 CALL                             R9 1 1
       60 MOVE                             R10 R4
       61 NAMECALL                         R6 R6 K18 ["format"]
       63 CALL                             R6 4 1
       64 CALL                             R5 1 0
       65 MOVE                             R5 R2
       66 MOVE                             R6 R0
       67 DUPTABLE                         R7 K21 [{"cursor", "limit"}]
       68 SETTABLEKS                       R1 R7 K19 ["cursor"]
       70 SETTABLEKS                       R4 R7 K20 ["limit"]
       72 CALL                             R5 2 2
       73 JUMPIFNOT                        R5 ; [+1]
       74 JUMPIF                           R6 ; [+26]
       75 GETUPVAL                         R7 3
       76 GETTABLEKS                       R7 R7 K12 ["FFlagDebugLogAssistantUI"]
       78 JUMPIFNOT                        R7 ; [+13]
       79 GETIMPORT                        R7 K23 [warn]
       81 LOADK                            R8 K24 ["[Persistence][ACP] session/load failed: sessionId=%*, historyPageToken=%*"]
       82 MOVE                             R10 R0
       83 FASTCALL1                        TOSTRING R1 ; [+3]
       84 MOVE                             R12 R1
       85 GETIMPORT                        R11 K17 [tostring]
       87 CALL                             R11 1 1
       88 NAMECALL                         R8 R8 K18 ["format"]
       90 CALL                             R8 3 1
       91 CALL                             R7 1 0
       92 GETIMPORT                        R7 K3 [error]
       94 LOADK                            R8 K25 ["Failed to load ACP session %*"]
       95 MOVE                             R10 R0
       96 NAMECALL                         R8 R8 K18 ["format"]
       98 CALL                             R8 2 1
       99 LOADN                            R9 0
      100 CALL                             R7 2 0
      101 GETTABLEKS                       R7 R6 K26 ["messages"]
      103 JUMPIF                           R7 ; [+2]
      104 NEWTABLE                         R7 0 0
      106 GETUPVAL                         R8 3
      107 GETTABLEKS                       R8 R8 K12 ["FFlagDebugLogAssistantUI"]
      109 JUMPIFNOT                        R8 ; [+15]
      110 GETIMPORT                        R8 K14 [print]
      112 LOADK                            R9 K27 ["[Persistence][ACP] session/load response: sessionId=%*, messageCount=%*, nextHistoryPageToken=%*"]
      113 MOVE                             R11 R0
      114 LENGTH                           R12 R7
      115 GETTABLEKS                       R14 R6 K19 ["cursor"]
      117 FASTCALL1                        TOSTRING R14 ; [+2]
      118 GETIMPORT                        R13 K17 [tostring]
      120 CALL                             R13 1 1
      121 NAMECALL                         R9 R9 K18 ["format"]
      123 CALL                             R9 4 1
      124 CALL                             R8 1 0
      125 DUPCLOSURE                       R8 K28 [PROTO_18]
      126 GETIMPORT                        R9 K31 [table.sort]
      128 MOVE                             R10 R7
      129 DUPCLOSURE                       R11 K32 [PROTO_19]
      130 CAPTURE                          UPVAL U3
      131 CALL                             R9 2 0
      132 DUPTABLE                         R9 K36 [{["messages"], ["modes"] = , ["nextHistoryPageToken"]}]
      133 SETTABLEKS                       R7 R9 K26 ["messages"]
      135 GETTABLEKS                       R10 R6 K19 ["cursor"]
      137 SETTABLEKS                       R10 R9 K35 ["nextHistoryPageToken"]
      139 RETURN                           R9 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getDataModelType"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["Types"]
        7 GETTABLEKS                       R2 R2 K2 ["Standalone"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 RETURN                           R0 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R1 R1 K1 ["hasUI"]
        4 CALL                             R1 0 -1
        5 RETURN                           R1 -1

PROTO_24:
        0 GETTABLEKS                       R3 R1 K0 ["gameId"]
        2 GETTABLEKS                       R4 R1 K1 ["placeId"]
        4 LOADB                            R2 0
        5 LOADN                            R5 0
        6 JUMPIFNOTLT                      R5 R3 ; [+6]
        8 LOADN                            R5 0
        9 JUMPIFLT                         R5 R4 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 GETTABLEKS                       R3 R1 K2 ["overwrite"]
       15 JUMPIF                           R3 ; [+27]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R5 R1 K3 ["sessionId"]
       19 GETTABLE                         R3 R4 R5
       20 JUMPIF                           R3 ; [+6]
       21 JUMPIFNOT                        R2 ; [+21]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R5 R1 K1 ["placeId"]
       25 GETTABLE                         R3 R4 R5
       26 JUMPIFNOT                        R3 ; [+16]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K4 ["FFlagDebugLogAssistantUI"]
       30 JUMPIFNOT                        R3 ; [+11]
       31 GETIMPORT                        R3 K6 [print]
       33 LOADK                            R4 K7 ["[Persistence] [Session] Session %* already has cached metadata for placeId %*"]
       34 GETTABLEKS                       R6 R1 K3 ["sessionId"]
       36 GETTABLEKS                       R7 R1 K1 ["placeId"]
       38 NAMECALL                         R4 R4 K8 ["format"]
       40 CALL                             R4 3 1
       41 CALL                             R3 1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R5 R1 K3 ["sessionId"]
       46 GETTABLE                         R3 R4 R5
       47 JUMPIFNOT                        R3 ; [+12]
       48 GETUPVAL                         R4 2
       49 GETTABLEKS                       R4 R4 K9 ["FFlagAssistantACPServiceClearSessions"]
       51 JUMPIFNOT                        R4 ; [+3]
       52 LOADB                            R4 1
       53 SETTABLEKS                       R4 R3 K10 ["replaced"]
       55 GETTABLEKS                       R4 R3 K11 ["Destroying"]
       57 NAMECALL                         R4 R4 K12 ["Fire"]
       59 CALL                             R4 1 0
       60 DUPTABLE                         R4 K15 [{[1], ["placeId"], ["loadState"], ["replaced"] = False, ["Destroying"]}]
       61 GETTABLEKS                       R5 R1 K0 ["gameId"]
       63 SETTABLEKS                       R5 R4 K0 ["gameId"]
       65 GETTABLEKS                       R5 R1 K1 ["placeId"]
       67 SETTABLEKS                       R5 R4 K1 ["placeId"]
       69 GETUPVAL                         R5 3
       70 GETTABLEKS                       R5 R5 K16 ["Idle"]
       72 SETTABLEKS                       R5 R4 K13 ["loadState"]
       74 GETUPVAL                         R5 4
       75 GETTABLEKS                       R5 R5 K17 ["new"]
       77 CALL                             R5 0 1
       78 SETTABLEKS                       R5 R4 K11 ["Destroying"]
       80 GETUPVAL                         R5 0
       81 GETTABLEKS                       R6 R1 K3 ["sessionId"]
       83 SETTABLE                         R4 R5 R6
       84 GETUPVAL                         R5 5
       85 GETTABLEKS                       R7 R1 K3 ["sessionId"]
       87 NAMECALL                         R5 R5 K12 ["Fire"]
       89 CALL                             R5 2 0
       90 JUMPIFNOT                        R2 ; [+5]
       91 GETUPVAL                         R5 1
       92 GETTABLEKS                       R6 R1 K1 ["placeId"]
       94 LOADB                            R7 1
       95 SETTABLE                         R7 R5 R6
       96 JUMPIF                           R2 ; [+4]
       97 GETUPVAL                         R5 2
       98 GETTABLEKS                       R5 R5 K9 ["FFlagAssistantACPServiceClearSessions"]
      100 JUMPIFNOT                        R5 ; [+4]
      101 GETUPVAL                         R5 6
      102 GETUPVAL                         R6 7
      103 MOVE                             R7 R4
      104 CALL                             R5 2 0
      105 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["ALL"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["net"]
        2 GETTABLEKS                       R3 R1 K1 ["gameMetadataCache"]
        4 GETTABLEKS                       R4 R1 K2 ["loadedPlaceIds"]
        6 GETTABLEKS                       R5 R1 K3 ["sessionIdRef"]
        8 GETTABLEKS                       R6 R1 K4 ["sessionMetadataLoaded"]
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R4
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R6
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R0
       19 GETUPVAL                         R9 4
       20 GETTABLEKS                       R9 R9 K5 ["getDataModelType"]
       22 CALL                             R9 0 1
       23 GETUPVAL                         R10 4
       24 GETTABLEKS                       R10 R10 K6 ["Types"]
       26 GETTABLEKS                       R10 R10 K7 ["Standalone"]
       28 JUMPIFNOTEQ                      R9 R10 ; [+2]
       30 LOADB                            R8 0 +1
       31 LOADB                            R8 1
       32 GETTABLEKS                       R9 R0 K8 ["environment"]
       34 GETTABLEKS                       R9 R9 K9 ["hasUI"]
       36 CALL                             R9 0 1
       37 LOADNIL                          R10
       38 LOADNIL                          R11
       39 GETUPVAL                         R12 5
       40 GETTABLEKS                       R12 R12 K10 ["Remote"]
       42 GETTABLEKS                       R12 R12 K11 ["event"]
       44 MOVE                             R13 R2
       45 LOADK                            R14 K12 ["PersistenceSessionOrchestrator.sendGameMetadata"]
       46 CALL                             R12 2 1
       47 JUMPIFNOT                        R9 ; [+6]
       48 MOVE                             R15 R7
       49 NAMECALL                         R13 R12 K13 ["Connect"]
       51 CALL                             R13 2 1
       52 NEWCLOSURE                       R11 P1
       53 CAPTURE                          VAL R13
       54 NEWCLOSURE                       R10 P2
       55 CAPTURE                          VAL R12
       56 CAPTURE                          UPVAL U5
       57 LOADNIL                          R13
       58 JUMPIFNOT                        R8 ; [+6]
       59 GETUPVAL                         R14 6
       60 MOVE                             R15 R0
       61 MOVE                             R16 R5
       62 MOVE                             R17 R10
       63 CALL                             R14 3 1
       64 MOVE                             R13 R14
       65 LOADNIL                          R14
       66 JUMPIFNOT                        R9 ; [+5]
       67 GETUPVAL                         R15 7
       68 MOVE                             R16 R0
       69 MOVE                             R17 R1
       70 CALL                             R15 2 1
       71 MOVE                             R14 R15
       72 NEWCLOSURE                       R15 P3
       73 CAPTURE                          REF R11
       74 CAPTURE                          REF R13
       75 CAPTURE                          REF R14
       76 CLOSEUPVALS                      R11
       77 RETURN                           R15 1

PROTO_29:
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

PROTO_30:
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

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Threads"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+134]
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
       73 NEWCLOSURE                       R5 P0
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U4
       78 FASTPCALL                        pcall 1 ; [+2]
       79 GETIMPORT                        R4 K18 [pcall]
       81 CALL                             R4 1 2
       82 JUMPIFNOT                        R4 ; [+22]
       83 JUMPIFNOT                        R5 ; [+21]
       84 GETUPVAL                         R6 5
       85 GETTABLEKS                       R6 R6 K19 ["notifyLoadedAsync"]
       87 DUPTABLE                         R7 K22 [{"scope", "threads", "nextCursor"}]
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R8 R8 K1 ["Threads"]
       91 SETTABLEKS                       R8 R7 K0 ["scope"]
       93 GETTABLEKS                       R8 R5 K20 ["threads"]
       95 JUMPIF                           R8 ; [+2]
       96 NEWTABLE                         R8 0 0
       98 SETTABLEKS                       R8 R7 K20 ["threads"]
      100 GETTABLEKS                       R8 R5 K9 ["cursor"]
      102 SETTABLEKS                       R8 R7 K21 ["nextCursor"]
      104 CALL                             R6 1 0
      105 JUMPIFNOT                        R4 ; [+17]
      106 LOADK                            R6 K13 ["loaded"]
      107 SETTABLEKS                       R6 R2 K10 ["loadState"]
      109 GETUPVAL                         R6 5
      110 GETTABLEKS                       R6 R6 K14 ["setLoadState"]
      112 GETUPVAL                         R7 6
      113 GETTABLEKS                       R7 R7 K23 ["Loaded"]
      115 DUPTABLE                         R8 K16 [{"scope"}]
      116 GETUPVAL                         R9 0
      117 GETTABLEKS                       R9 R9 K1 ["Threads"]
      119 SETTABLEKS                       R9 R8 K0 ["scope"]
      121 CALL                             R6 2 0
      122 RETURN                           R0 0
      123 LOADK                            R6 K24 ["failed"]
      124 SETTABLEKS                       R6 R2 K10 ["loadState"]
      126 GETUPVAL                         R6 5
      127 GETTABLEKS                       R6 R6 K14 ["setLoadState"]
      129 GETUPVAL                         R7 6
      130 GETTABLEKS                       R7 R7 K25 ["Error"]
      132 DUPTABLE                         R8 K16 [{"scope"}]
      133 GETUPVAL                         R9 0
      134 GETTABLEKS                       R9 R9 K1 ["Threads"]
      136 SETTABLEKS                       R9 R8 K0 ["scope"]
      138 CALL                             R6 2 0
      139 RETURN                           R0 0
      140 GETTABLEKS                       R1 R0 K0 ["scope"]
      142 GETUPVAL                         R2 0
      143 GETTABLEKS                       R2 R2 K26 ["Messages"]
      145 JUMPIFNOTEQ                      R1 R2 ; [+178]
      147 GETUPVAL                         R1 5
      148 GETTABLEKS                       R1 R1 K14 ["setLoadState"]
      150 GETUPVAL                         R2 6
      151 GETTABLEKS                       R2 R2 K15 ["Loading"]
      153 DUPTABLE                         R3 K28 [{"scope", "threadId"}]
      154 GETUPVAL                         R4 0
      155 GETTABLEKS                       R4 R4 K26 ["Messages"]
      157 SETTABLEKS                       R4 R3 K0 ["scope"]
      159 GETTABLEKS                       R4 R0 K27 ["threadId"]
      161 SETTABLEKS                       R4 R3 K27 ["threadId"]
      163 CALL                             R1 2 0
      164 GETTABLEKS                       R1 R0 K29 ["loadUntilMessageId"]
      166 GETTABLEKS                       R2 R0 K9 ["cursor"]
      168 NEWTABLE                         R3 0 0
      170 LOADB                            R4 0
      171 LOADNIL                          R5
      172 LOADB                            R6 0
      173 LOADB                            R7 1
      174 JUMPIFNOT                        R7 ; [+129]
      175 NEWCLOSURE                       R9 P1
      176 CAPTURE                          UPVAL U7
      177 CAPTURE                          VAL R0
      178 CAPTURE                          REF R2
      179 CAPTURE                          UPVAL U4
      180 FASTPCALL                        pcall 1 ; [+2]
      181 GETIMPORT                        R8 K18 [pcall]
      183 CALL                             R8 1 2
      184 JUMPIF                           R8 ; [+19]
      185 GETUPVAL                         R10 5
      186 GETTABLEKS                       R10 R10 K14 ["setLoadState"]
      188 GETUPVAL                         R11 6
      189 GETTABLEKS                       R11 R11 K25 ["Error"]
      191 DUPTABLE                         R12 K28 [{"scope", "threadId"}]
      192 GETUPVAL                         R13 0
      193 GETTABLEKS                       R13 R13 K26 ["Messages"]
      195 SETTABLEKS                       R13 R12 K0 ["scope"]
      197 GETTABLEKS                       R13 R0 K27 ["threadId"]
      199 SETTABLEKS                       R13 R12 K27 ["threadId"]
      201 CALL                             R10 2 0
      202 CLOSEUPVALS                      R2
      203 RETURN                           R0 0
      204 JUMPIFNOT                        R9 ; [+86]
      205 LOADB                            R6 1
      206 GETTABLEKS                       R10 R9 K30 ["messages"]
      208 JUMPIFNOT                        R10 ; [+77]
      209 MOVE                             R11 R10
      210 LOADNIL                          R12
      211 LOADNIL                          R13
      212 FORGPREP                         R11
      213 DUPTABLE                         R16 K47 [{["messageId"], ["sourceId"], ["rootId"], ["createdAt"], ["updatedAt"], ["ephemeral"], ["isDirty"] = False, ["isDeleted"], ["role"], ["thumbsState"], ["contents"], ["contentCountAdded"], ["contentCountLoaded"], ["LayoutOrder"], ["hidden"]}]
      214 GETTABLEKS                       R17 R15 K31 ["messageId"]
      216 SETTABLEKS                       R17 R16 K31 ["messageId"]
      218 GETTABLEKS                       R17 R15 K32 ["sourceId"]
      220 SETTABLEKS                       R17 R16 K32 ["sourceId"]
      222 GETTABLEKS                       R17 R15 K33 ["rootId"]
      224 SETTABLEKS                       R17 R16 K33 ["rootId"]
      226 GETTABLEKS                       R17 R15 K34 ["createdAt"]
      228 SETTABLEKS                       R17 R16 K34 ["createdAt"]
      230 GETTABLEKS                       R17 R15 K35 ["updatedAt"]
      232 SETTABLEKS                       R17 R16 K35 ["updatedAt"]
      234 GETTABLEKS                       R17 R15 K36 ["ephemeral"]
      236 SETTABLEKS                       R17 R16 K36 ["ephemeral"]
      238 GETTABLEKS                       R17 R15 K39 ["isDeleted"]
      240 SETTABLEKS                       R17 R16 K39 ["isDeleted"]
      242 GETTABLEKS                       R17 R15 K40 ["role"]
      244 SETTABLEKS                       R17 R16 K40 ["role"]
      246 GETTABLEKS                       R17 R15 K41 ["thumbsState"]
      248 SETTABLEKS                       R17 R16 K41 ["thumbsState"]
      250 GETTABLEKS                       R17 R15 K42 ["contents"]
      252 JUMPIF                           R17 ; [+2]
      253 NEWTABLE                         R17 0 0
      255 SETTABLEKS                       R17 R16 K42 ["contents"]
      257 GETTABLEKS                       R18 R15 K43 ["contentCountAdded"]
      259 ORK                              R17 R18 K48 [0]
      260 SETTABLEKS                       R17 R16 K43 ["contentCountAdded"]
      262 GETTABLEKS                       R18 R15 K44 ["contentCountLoaded"]
      264 ORK                              R17 R18 K48 [0]
      265 SETTABLEKS                       R17 R16 K44 ["contentCountLoaded"]
      267 GETTABLEKS                       R17 R15 K45 ["LayoutOrder"]
      269 SETTABLEKS                       R17 R16 K45 ["LayoutOrder"]
      271 GETTABLEKS                       R17 R15 K46 ["hidden"]
      273 SETTABLEKS                       R17 R16 K46 ["hidden"]
      275 GETTABLEKS                       R17 R16 K31 ["messageId"]
      277 SETTABLE                         R16 R3 R17
      278 JUMPIFNOT                        R1 ; [+5]
      279 GETTABLEKS                       R17 R16 K31 ["messageId"]
      281 JUMPIFNOTEQ                      R17 R1 ; [+2]
      283 LOADB                            R4 1
      284 FORGLOOP                         R11 2 ; [-72]
      286 GETTABLEKS                       R5 R9 K9 ["cursor"]
      288 GETTABLEKS                       R2 R9 K9 ["cursor"]
      290 JUMP                             ; [+2]
      291 LOADNIL                          R5
      292 LOADNIL                          R2
      293 LOADB                            R10 0
      294 JUMPIFEQKNIL                     R1 ; [+7]
      296 NOT                              R10 R4
      297 JUMPIFNOT                        R10 ; [+4]
      298 JUMPIFNOTEQKNIL                  R2 ; [+2]
      300 LOADB                            R10 0 +1
      301 LOADB                            R10 1
      302 MOVE                             R7 R10
      303 JUMPBACK                         ; [-130]
      304 JUMPIFNOT                        R6 ; [+18]
      305 GETUPVAL                         R8 5
      306 GETTABLEKS                       R8 R8 K19 ["notifyLoadedAsync"]
      308 DUPTABLE                         R9 K49 [{"scope", "threadId", "messages", "nextCursor"}]
      309 GETUPVAL                         R10 0
      310 GETTABLEKS                       R10 R10 K26 ["Messages"]
      312 SETTABLEKS                       R10 R9 K0 ["scope"]
      314 GETTABLEKS                       R10 R0 K27 ["threadId"]
      316 SETTABLEKS                       R10 R9 K27 ["threadId"]
      318 SETTABLEKS                       R3 R9 K30 ["messages"]
      320 SETTABLEKS                       R5 R9 K21 ["nextCursor"]
      322 CALL                             R8 1 0
      323 CLOSEUPVALS                      R2
      324 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Threads"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+54]
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
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 FASTPCALL                        pcall 1 ; [+2]
       30 GETIMPORT                        R3 K8 [pcall]
       32 CALL                             R3 1 1
       33 JUMPIFNOT                        R3 ; [+108]
       34 NEWTABLE                         R4 0 0
       36 MOVE                             R5 R2
       37 LOADNIL                          R6
       38 LOADNIL                          R7
       39 FORGPREP                         R5
       40 GETTABLEKS                       R10 R9 K9 ["threadId"]
       42 GETTABLEKS                       R11 R9 K10 ["updatedAt"]
       44 SETTABLE                         R11 R4 R10
       45 FORGLOOP                         R5 2 ; [-6]
       47 GETUPVAL                         R5 2
       48 GETTABLEKS                       R5 R5 K11 ["clearDirty"]
       50 DUPTABLE                         R6 K13 [{"scope", "threadIds"}]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K1 ["Threads"]
       54 SETTABLEKS                       R7 R6 K0 ["scope"]
       56 SETTABLEKS                       R4 R6 K12 ["threadIds"]
       58 CALL                             R5 1 0
       59 RETURN                           R0 0
       60 GETTABLEKS                       R1 R0 K0 ["scope"]
       62 GETUPVAL                         R2 0
       63 GETTABLEKS                       R2 R2 K14 ["Messages"]
       65 JUMPIFNOTEQ                      R1 R2 ; [+76]
       67 NEWTABLE                         R1 0 0
       69 GETTABLEKS                       R2 R0 K15 ["messages"]
       71 LOADNIL                          R3
       72 LOADNIL                          R4
       73 FORGPREP                         R2
       74 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       76 MOVE                             R8 R1
       77 MOVE                             R9 R6
       78 GETIMPORT                        R7 K6 [table.insert]
       80 CALL                             R7 2 0
       81 FORGLOOP                         R2 2 ; [-8]
       83 NEWCLOSURE                       R3 P1
       84 CAPTURE                          UPVAL U1
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R1
       87 FASTPCALL                        pcall 1 ; [+2]
       88 GETIMPORT                        R2 K8 [pcall]
       90 CALL                             R2 1 1
       91 JUMPIFNOT                        R2 ; [+50]
       92 NEWTABLE                         R3 0 0
       94 NEWTABLE                         R4 0 0
       96 MOVE                             R5 R1
       97 LOADNIL                          R6
       98 LOADNIL                          R7
       99 FORGPREP                         R5
      100 NEWTABLE                         R10 0 0
      102 GETTABLEKS                       R11 R9 K16 ["contents"]
      104 JUMPIFNOT                        R11 ; [+9]
      105 MOVE                             R12 R11
      106 LOADNIL                          R13
      107 LOADNIL                          R14
      108 FORGPREP                         R12
      109 GETTABLEKS                       R17 R16 K10 ["updatedAt"]
      111 SETTABLE                         R17 R10 R15
      112 FORGLOOP                         R12 2 ; [-4]
      114 GETTABLEKS                       R12 R9 K17 ["messageId"]
      116 GETTABLEKS                       R13 R9 K10 ["updatedAt"]
      118 SETTABLE                         R13 R3 R12
      119 GETTABLEKS                       R12 R9 K17 ["messageId"]
      121 SETTABLE                         R10 R4 R12
      122 FORGLOOP                         R5 2 ; [-23]
      124 GETUPVAL                         R5 2
      125 GETTABLEKS                       R5 R5 K11 ["clearDirty"]
      127 DUPTABLE                         R6 K20 [{"scope", "threadId", "messageIds", "contentIds"}]
      128 GETUPVAL                         R7 0
      129 GETTABLEKS                       R7 R7 K14 ["Messages"]
      131 SETTABLEKS                       R7 R6 K0 ["scope"]
      133 GETTABLEKS                       R7 R0 K9 ["threadId"]
      135 SETTABLEKS                       R7 R6 K9 ["threadId"]
      137 SETTABLEKS                       R3 R6 K18 ["messageIds"]
      139 SETTABLEKS                       R4 R6 K19 ["contentIds"]
      141 CALL                             R5 1 0
      142 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["coordinator"]
        2 GETTABLEKS                       R2 R0 K1 ["io"]
        4 GETTABLEKS                       R3 R1 K2 ["onSaveReady"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R1
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_37:
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

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deleteThreadAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Messages"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+34]
        7 GETTABLEKS                       R1 R0 K2 ["threadId"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 FASTPCALL                        pcall 1 ; [+2]
       13 GETIMPORT                        R2 K4 [pcall]
       15 CALL                             R2 1 2
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K5 ["FFlagDebugLogAssistantUI"]
       19 JUMPIFNOT                        R4 ; [+20]
       20 JUMPIFNOT                        R2 ; [+1]
       21 JUMPIF                           R3 ; [+10]
       22 GETIMPORT                        R4 K7 [print]
       24 LOADK                            R5 K8 ["[Persistence] [Session] Failed to delete thread with id %*. Error: %*"]
       25 MOVE                             R7 R1
       26 MOVE                             R8 R3
       27 NAMECALL                         R5 R5 K9 ["format"]
       29 CALL                             R5 3 1
       30 CALL                             R4 1 0
       31 RETURN                           R0 0
       32 GETIMPORT                        R4 K7 [print]
       34 LOADK                            R5 K10 ["[Persistence] [Session] Successfully deleted thread with id %*"]
       35 MOVE                             R7 R1
       36 NAMECALL                         R5 R5 K9 ["format"]
       38 CALL                             R5 2 1
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["coordinator"]
        2 GETTABLEKS                       R2 R0 K1 ["io"]
        4 GETTABLEKS                       R3 R1 K2 ["onDeleteRequested"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U1
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["waitForPendingSaves"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_43:
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
       21 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ALL"]
        4 NAMECALL                         R0 R0 K1 ["InvokeAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_45:
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
       21 GETUPVAL                         R0 1
       22 NAMECALL                         R0 R0 K4 ["Destroy"]
       24 CALL                             R0 1 0
       25 GETUPVAL                         R0 2
       26 GETTABLEKS                       R0 R0 K5 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
       28 JUMPIF                           R0 ; [+23]
       29 GETUPVAL                         R0 3
       30 JUMPIFNOT                        R0 ; [+5]
       31 GETUPVAL                         R0 4
       32 GETTABLEKS                       R0 R0 K6 ["waitForPendingSaves"]
       34 CALL                             R0 0 0
       35 JUMP                             ; [+16]
       36 NEWCLOSURE                       R1 P0
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 FASTPCALL                        pcall 1 ; [+2]
       40 GETIMPORT                        R0 K8 [pcall]
       42 CALL                             R0 1 2
       43 JUMPIF                           R0 ; [+8]
       44 GETIMPORT                        R2 K10 [warn]
       46 LOADK                            R3 K11 ["[Assistant] waitForPendingSaves failed: %*"]
       47 MOVE                             R5 R1
       48 NAMECALL                         R3 R3 K12 ["format"]
       50 CALL                             R3 2 1
       51 CALL                             R2 1 0
       52 GETUPVAL                         R0 7
       53 NAMECALL                         R0 R0 K4 ["Destroy"]
       55 CALL                             R0 1 0
       56 RETURN                           R0 0

PROTO_46:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["coordinator"]
        4 GETTABLEKS                       R3 R0 K2 ["environment"]
        6 GETTABLEKS                       R3 R3 K3 ["hasUI"]
        8 CALL                             R3 0 1
        9 DUPTABLE                         R4 K8 [{"gameMetadataCache", "loadedPlaceIds", "sessionIdRef", "sessionMetadataLoaded"}]
       10 NEWTABLE                         R5 0 0
       12 SETTABLEKS                       R5 R4 K4 ["gameMetadataCache"]
       14 NEWTABLE                         R5 0 0
       16 SETTABLEKS                       R5 R4 K5 ["loadedPlaceIds"]
       18 DUPTABLE                         R5 K11 [{["sessionId"] = ""}]
       19 SETTABLEKS                       R5 R4 K6 ["sessionIdRef"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K12 ["new"]
       24 CALL                             R5 0 1
       25 SETTABLEKS                       R5 R4 K7 ["sessionMetadataLoaded"]
       27 GETUPVAL                         R5 1
       28 MOVE                             R6 R0
       29 MOVE                             R7 R4
       30 CALL                             R5 2 1
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          VAL R2
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          VAL R4
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R8 R8 K12 ["new"]
       38 CALL                             R8 0 1
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R9 R9 K12 ["new"]
       42 CALL                             R9 0 1
       43 GETUPVAL                         R12 3
       44 MOVE                             R13 R0
       45 MOVE                             R14 R4
       46 CALL                             R12 2 1
       47 NAMECALL                         R10 R8 K13 ["Add"]
       49 CALL                             R10 2 0
       50 GETUPVAL                         R10 4
       51 GETTABLEKS                       R10 R10 K14 ["Remote"]
       53 GETTABLEKS                       R10 R10 K15 ["invoke"]
       55 MOVE                             R11 R1
       56 LOADK                            R12 K16 ["PersistenceSessionOrchestrator.waitForPendingSavesAsync"]
       57 CALL                             R10 2 1
       58 JUMPIFNOT                        R3 ; [+55]
       59 GETUPVAL                         R13 5
       60 MOVE                             R14 R0
       61 MOVE                             R15 R4
       62 CALL                             R13 2 -1
       63 NAMECALL                         R11 R8 K13 ["Add"]
       65 CALL                             R11 -1 0
       66 GETUPVAL                         R13 6
       67 MOVE                             R14 R0
       68 CALL                             R13 1 -1
       69 NAMECALL                         R11 R8 K13 ["Add"]
       71 CALL                             R11 -1 0
       72 GETUPVAL                         R13 7
       73 MOVE                             R14 R0
       74 CALL                             R13 1 -1
       75 NAMECALL                         R11 R9 K13 ["Add"]
       77 CALL                             R11 -1 0
       78 GETTABLEKS                       R14 R0 K17 ["io"]
       80 GETTABLEKS                       R14 R14 K18 ["uploadAgentThreadsAsync"]
       82 GETTABLEKS                       R15 R0 K17 ["io"]
       84 GETTABLEKS                       R15 R15 K19 ["uploadAgentMessagesAsync"]
       86 JUMPIFNOT                        R14 ; [+1]
       87 JUMPIF                           R15 ; [+2]
       88 LOADNIL                          R13
       89 JUMP                             ; [+10]
       90 GETTABLEKS                       R16 R0 K1 ["coordinator"]
       92 GETTABLEKS                       R16 R16 K20 ["onAgentSaveReady"]
       94 NEWCLOSURE                       R17 P2
       95 CAPTURE                          UPVAL U8
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R15
       98 CALL                             R16 1 1
       99 MOVE                             R13 R16
      100 JUMPIF                           R13 ; [+3]
      101 GETUPVAL                         R13 2
      102 GETTABLEKS                       R13 R13 K21 ["none"]
      104 NAMECALL                         R11 R9 K13 ["Add"]
      106 CALL                             R11 2 0
      107 MOVE                             R15 R6
      108 NAMECALL                         R13 R10 K22 ["Connect"]
      110 CALL                             R13 2 -1
      111 NAMECALL                         R11 R9 K13 ["Add"]
      113 CALL                             R11 -1 0
      114 GETTABLEKS                       R11 R0 K2 ["environment"]
      116 GETTABLEKS                       R11 R11 K23 ["Destroying"]
      118 NEWCLOSURE                       R13 P3
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R8
      121 CAPTURE                          UPVAL U9
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R10
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          VAL R9
      127 NAMECALL                         R11 R11 K24 ["Once"]
      129 CALL                             R11 2 0
      130 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["AssistantHarness"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Bin"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["DMNetworking"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Signal"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Util"]
       33 GETTABLEKS                       R7 R7 K12 ["DataModelType"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Guest"]
       40 GETTABLEKS                       R8 R8 K14 ["Environment"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Flags"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K6 [require]
       50 GETIMPORT                        R10 K1 [script]
       52 GETTABLEKS                       R10 R10 K4 ["Parent"]
       54 GETTABLEKS                       R10 R10 K16 ["PersistenceCoordinator"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K17 ["Types"]
       61 CALL                             R10 1 1
       62 GETTABLEKS                       R11 R10 K18 ["PersistenceLoadStates"]
       64 GETTABLEKS                       R12 R10 K19 ["ScopeTypes"]
       66 DUPTABLE                         R13 K28 [{["Idle"] = "idle", ["Loading"] = "loading", ["Loaded"] = "loaded", ["Failed"] = "failed"}]
       67 DUPCLOSURE                       R14 K29 [PROTO_0]
       68 DUPCLOSURE                       R15 K30 [PROTO_1]
       69 CAPTURE                          VAL R5
       70 DUPCLOSURE                       R16 K31 [PROTO_2]
       71 CAPTURE                          VAL R8
       72 DUPCLOSURE                       R17 K32 [PROTO_8]
       73 CAPTURE                          VAL R8
       74 DUPCLOSURE                       R18 K33 [PROTO_12]
       75 DUPCLOSURE                       R19 K34 [PROTO_15]
       76 CAPTURE                          VAL R8
       77 DUPCLOSURE                       R20 K35 [PROTO_21]
       78 CAPTURE                          VAL R16
       79 CAPTURE                          VAL R8
       80 DUPCLOSURE                       R21 K36 [PROTO_22]
       81 CAPTURE                          VAL R6
       82 DUPCLOSURE                       R22 K37 [PROTO_23]
       83 DUPCLOSURE                       R23 K38 [PROTO_28]
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R19
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R17
       91 CAPTURE                          VAL R18
       92 DUPCLOSURE                       R24 K39 [PROTO_32]
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R16
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R11
       97 DUPCLOSURE                       R25 K40 [PROTO_36]
       98 CAPTURE                          VAL R12
       99 DUPCLOSURE                       R26 K41 [PROTO_38]
      100 CAPTURE                          VAL R12
      101 DUPCLOSURE                       R27 K42 [PROTO_41]
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R8
      104 DUPCLOSURE                       R28 K43 [PROTO_46]
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R20
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R23
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R24
      111 CAPTURE                          VAL R27
      112 CAPTURE                          VAL R25
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R8
      115 DUPTABLE                         R29 K45 [{"trackSessions"}]
      116 SETTABLEKS                       R28 R29 K44 ["trackSessions"]
      118 RETURN                           R29 1
