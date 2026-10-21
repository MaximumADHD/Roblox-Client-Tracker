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
       31 JUMPIFNOT                        R3 ; [+12]
       32 GETIMPORT                        R3 K9 [print]
       34 LOADK                            R4 K10 ["[Persistence][ACP] session/list availability: Host GameId=%*, Host PlaceId=%*, persistenceAvailable=%*"]
       35 GETTABLEKS                       R6 R1 K5 ["gameId"]
       37 GETTABLEKS                       R7 R1 K6 ["placeId"]
       39 MOVE                             R8 R2
       40 NAMECALL                         R4 R4 K11 ["format"]
       42 CALL                             R4 4 1
       43 CALL                             R3 1 0
       44 JUMPIF                           R2 ; [+6]
       45 DUPTABLE                         R3 K15 [{["sessions"], ["nextPageToken"] = }]
       46 NEWTABLE                         R4 0 0
       48 SETTABLEKS                       R4 R3 K12 ["sessions"]
       50 RETURN                           R3 1
       51 GETUPVAL                         R3 3
       52 GETTABLEKS                       R3 R3 K16 ["io"]
       54 GETTABLEKS                       R3 R3 K17 ["getThreadsAsync"]
       56 DUPTABLE                         R4 K20 [{"placeId", "cursor", "limit"}]
       57 GETTABLEKS                       R5 R1 K6 ["placeId"]
       59 SETTABLEKS                       R5 R4 K6 ["placeId"]
       61 SETTABLEKS                       R0 R4 K18 ["cursor"]
       63 GETUPVAL                         R5 2
       64 GETTABLEKS                       R5 R5 K21 ["FIntAssistantPersistenceThreadLoadLimit"]
       66 SETTABLEKS                       R5 R4 K19 ["limit"]
       68 CALL                             R3 1 2
       69 JUMPIFNOT                        R3 ; [+1]
       70 JUMPIF                           R4 ; [+5]
       71 GETIMPORT                        R5 K3 [error]
       73 LOADK                            R6 K22 ["Failed to load ACP thread list"]
       74 LOADN                            R7 0
       75 CALL                             R5 2 0
       76 NEWTABLE                         R5 0 0
       78 GETTABLEKS                       R6 R4 K23 ["threads"]
       80 JUMPIFNOT                        R6 ; [+34]
       81 MOVE                             R7 R6
       82 LOADNIL                          R8
       83 LOADNIL                          R9
       84 FORGPREP                         R7
       85 DUPTABLE                         R14 K26 [{"sessionId", "title", "updatedAt"}]
       86 GETTABLEKS                       R15 R11 K27 ["threadId"]
       88 SETTABLEKS                       R15 R14 K1 ["sessionId"]
       90 GETTABLEKS                       R15 R11 K24 ["title"]
       92 SETTABLEKS                       R15 R14 K24 ["title"]
       94 GETIMPORT                        R15 K30 [os.date]
       96 LOADK                            R16 K31 ["!%Y-%m-%dT%H:%M:%SZ"]
       97 GETTABLEKS                       R19 R11 K25 ["updatedAt"]
       99 DIVK                             R18 R19 K32 [1000]
      100 FASTCALL1                        MATH_FLOOR R18 ; [+2]
      101 GETIMPORT                        R17 K35 [math.floor]
      103 CALL                             R17 1 1
      104 CALL                             R15 2 1
      105 SETTABLEKS                       R15 R14 K25 ["updatedAt"]
      107 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
      109 MOVE                             R13 R5
      110 GETIMPORT                        R12 K38 [table.insert]
      112 CALL                             R12 2 0
      113 FORGLOOP                         R7 2 ; [-29]
      115 DUPTABLE                         R7 K39 [{"sessions", "nextPageToken"}]
      116 SETTABLEKS                       R5 R7 K12 ["sessions"]
      118 GETTABLEKS                       R8 R4 K18 ["cursor"]
      120 SETTABLEKS                       R8 R7 K13 ["nextPageToken"]
      122 RETURN                           R7 1

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
       26 GETTABLEKS                       R5 R3 K8 ["gameId"]
       28 GETTABLEKS                       R6 R3 K9 ["placeId"]
       30 LOADB                            R4 0
       31 LOADN                            R7 0
       32 JUMPIFNOTLT                      R7 R5 ; [+6]
       34 LOADN                            R7 0
       35 JUMPIFLT                         R7 R6 ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 JUMPIF                           R4 ; [+5]
       40 GETIMPORT                        R4 K3 [error]
       42 LOADK                            R5 K10 ["ACP persistence is unavailable in unpublished places"]
       43 LOADN                            R6 0
       44 CALL                             R4 2 0
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R4 R4 K11 ["FIntAssistantPersistenceMessageLoadLimit"]
       48 GETUPVAL                         R5 3
       49 GETTABLEKS                       R5 R5 K12 ["FFlagDebugLogAssistantUI"]
       51 JUMPIFNOT                        R5 ; [+14]
       52 GETIMPORT                        R5 K14 [print]
       54 LOADK                            R6 K15 ["[Persistence][ACP] session/load request: sessionId=%*, historyPageToken=%*, limit=%*"]
       55 MOVE                             R8 R0
       56 FASTCALL1                        TOSTRING R1 ; [+3]
       57 MOVE                             R10 R1
       58 GETIMPORT                        R9 K17 [tostring]
       60 CALL                             R9 1 1
       61 MOVE                             R10 R4
       62 NAMECALL                         R6 R6 K18 ["format"]
       64 CALL                             R6 4 1
       65 CALL                             R5 1 0
       66 MOVE                             R5 R2
       67 MOVE                             R6 R0
       68 DUPTABLE                         R7 K21 [{"cursor", "limit"}]
       69 SETTABLEKS                       R1 R7 K19 ["cursor"]
       71 SETTABLEKS                       R4 R7 K20 ["limit"]
       73 CALL                             R5 2 2
       74 JUMPIFNOT                        R5 ; [+1]
       75 JUMPIF                           R6 ; [+26]
       76 GETUPVAL                         R7 3
       77 GETTABLEKS                       R7 R7 K12 ["FFlagDebugLogAssistantUI"]
       79 JUMPIFNOT                        R7 ; [+13]
       80 GETIMPORT                        R7 K23 [warn]
       82 LOADK                            R8 K24 ["[Persistence][ACP] session/load failed: sessionId=%*, historyPageToken=%*"]
       83 MOVE                             R10 R0
       84 FASTCALL1                        TOSTRING R1 ; [+3]
       85 MOVE                             R12 R1
       86 GETIMPORT                        R11 K17 [tostring]
       88 CALL                             R11 1 1
       89 NAMECALL                         R8 R8 K18 ["format"]
       91 CALL                             R8 3 1
       92 CALL                             R7 1 0
       93 GETIMPORT                        R7 K3 [error]
       95 LOADK                            R8 K25 ["Failed to load ACP session %*"]
       96 MOVE                             R10 R0
       97 NAMECALL                         R8 R8 K18 ["format"]
       99 CALL                             R8 2 1
      100 LOADN                            R9 0
      101 CALL                             R7 2 0
      102 GETTABLEKS                       R7 R6 K26 ["messages"]
      104 JUMPIF                           R7 ; [+2]
      105 NEWTABLE                         R7 0 0
      107 GETUPVAL                         R8 3
      108 GETTABLEKS                       R8 R8 K12 ["FFlagDebugLogAssistantUI"]
      110 JUMPIFNOT                        R8 ; [+15]
      111 GETIMPORT                        R8 K14 [print]
      113 LOADK                            R9 K27 ["[Persistence][ACP] session/load response: sessionId=%*, messageCount=%*, nextHistoryPageToken=%*"]
      114 MOVE                             R11 R0
      115 LENGTH                           R12 R7
      116 GETTABLEKS                       R14 R6 K19 ["cursor"]
      118 FASTCALL1                        TOSTRING R14 ; [+2]
      119 GETIMPORT                        R13 K17 [tostring]
      121 CALL                             R13 1 1
      122 NAMECALL                         R9 R9 K18 ["format"]
      124 CALL                             R9 4 1
      125 CALL                             R8 1 0
      126 DUPCLOSURE                       R8 K28 [PROTO_18]
      127 GETIMPORT                        R9 K31 [table.sort]
      129 MOVE                             R10 R7
      130 DUPCLOSURE                       R11 K32 [PROTO_19]
      131 CAPTURE                          UPVAL U3
      132 CALL                             R9 2 0
      133 DUPTABLE                         R9 K36 [{["messages"], ["modes"] = , ["nextHistoryPageToken"]}]
      134 SETTABLEKS                       R7 R9 K26 ["messages"]
      136 GETTABLEKS                       R10 R6 K19 ["cursor"]
      138 SETTABLEKS                       R10 R9 K35 ["nextHistoryPageToken"]
      140 RETURN                           R9 1

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
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["getDataModelType"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["Types"]
       11 GETTABLEKS                       R3 R3 K3 ["Standalone"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R0 K4 ["networkingOLD"]
       20 NAMECALL                         R1 R1 K5 ["IsHost"]
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETTABLEKS                       R1 R0 K1 ["environment"]
        6 GETTABLEKS                       R1 R1 K2 ["hasUI"]
        8 CALL                             R1 0 -1
        9 RETURN                           R1 -1
       10 GETTABLEKS                       R1 R0 K3 ["networkingOLD"]
       12 NAMECALL                         R1 R1 K4 ["IsGuest"]
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ALL"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
        0 GETTABLEKS                       R2 R0 K0 ["networkingOLD"]
        2 GETTABLEKS                       R3 R0 K1 ["net"]
        4 GETTABLEKS                       R4 R1 K2 ["gameMetadataCache"]
        6 GETTABLEKS                       R5 R1 K3 ["loadedPlaceIds"]
        8 GETTABLEKS                       R6 R1 K4 ["sessionIdRef"]
       10 GETTABLEKS                       R7 R1 K5 ["sessionMetadataLoaded"]
       12 NEWCLOSURE                       R8 P0
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R5
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R7
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R0
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R10 R10 K6 ["FFlagAssistantUseNewDMNetworking"]
       24 JUMPIFNOT                        R10 ; [+14]
       25 GETUPVAL                         R10 4
       26 GETTABLEKS                       R10 R10 K7 ["getDataModelType"]
       28 CALL                             R10 0 1
       29 GETUPVAL                         R11 4
       30 GETTABLEKS                       R11 R11 K8 ["Types"]
       32 GETTABLEKS                       R11 R11 K9 ["Standalone"]
       34 JUMPIFNOTEQ                      R10 R11 ; [+2]
       36 LOADB                            R9 0 +1
       37 LOADB                            R9 1
       38 JUMP                             ; [+5]
       39 GETTABLEKS                       R9 R0 K0 ["networkingOLD"]
       41 NAMECALL                         R9 R9 K10 ["IsHost"]
       43 CALL                             R9 1 1
       44 GETUPVAL                         R11 0
       45 GETTABLEKS                       R11 R11 K6 ["FFlagAssistantUseNewDMNetworking"]
       47 JUMPIFNOT                        R11 ; [+6]
       48 GETTABLEKS                       R10 R0 K11 ["environment"]
       50 GETTABLEKS                       R10 R10 K12 ["hasUI"]
       52 CALL                             R10 0 1
       53 JUMP                             ; [+5]
       54 GETTABLEKS                       R10 R0 K0 ["networkingOLD"]
       56 NAMECALL                         R10 R10 K13 ["IsGuest"]
       58 CALL                             R10 1 1
       59 LOADNIL                          R11
       60 LOADNIL                          R12
       61 GETUPVAL                         R13 0
       62 GETTABLEKS                       R13 R13 K6 ["FFlagAssistantUseNewDMNetworking"]
       64 JUMPIFNOT                        R13 ; [+19]
       65 GETUPVAL                         R13 5
       66 GETTABLEKS                       R13 R13 K14 ["Remote"]
       68 GETTABLEKS                       R13 R13 K15 ["event"]
       70 MOVE                             R14 R3
       71 LOADK                            R15 K16 ["PersistenceSessionOrchestrator.sendGameMetadata"]
       72 CALL                             R13 2 1
       73 JUMPIFNOT                        R10 ; [+6]
       74 MOVE                             R16 R8
       75 NAMECALL                         R14 R13 K17 ["Connect"]
       77 CALL                             R14 2 1
       78 NEWCLOSURE                       R12 P1
       79 CAPTURE                          VAL R14
       80 NEWCLOSURE                       R11 P2
       81 CAPTURE                          VAL R13
       82 CAPTURE                          UPVAL U5
       83 JUMP                             ; [+12]
       84 LOADNIL                          R13
       85 LOADK                            R16 K18 ["StudioSessionOrchestration_sendGameMetadata"]
       86 MOVE                             R17 R8
       87 NAMECALL                         R14 R2 K19 ["OnGuestEvent"]
       89 CALL                             R14 3 2
       90 MOVE                             R13 R14
       91 MOVE                             R12 R15
       92 NEWCLOSURE                       R11 P3
       93 CAPTURE                          REF R13
       94 CAPTURE                          UPVAL U6
       95 CLOSEUPVALS                      R13
       96 LOADNIL                          R13
       97 JUMPIFNOT                        R9 ; [+6]
       98 GETUPVAL                         R14 7
       99 MOVE                             R15 R0
      100 MOVE                             R16 R6
      101 MOVE                             R17 R11
      102 CALL                             R14 3 1
      103 MOVE                             R13 R14
      104 LOADNIL                          R14
      105 JUMPIFNOT                        R10 ; [+5]
      106 GETUPVAL                         R15 8
      107 MOVE                             R16 R0
      108 MOVE                             R17 R1
      109 CALL                             R15 2 1
      110 MOVE                             R14 R15
      111 NEWCLOSURE                       R15 P4
      112 CAPTURE                          REF R12
      113 CAPTURE                          REF R13
      114 CAPTURE                          REF R14
      115 CLOSEUPVALS                      R12
      116 RETURN                           R15 1

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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
      144 JUMPIFNOTEQ                      R1 R2 ; [+177]
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
      163 GETTABLEKS                       R1 R0 K29 ["loadUntilMessageId"]
      165 GETTABLEKS                       R2 R0 K9 ["cursor"]
      167 NEWTABLE                         R3 0 0
      169 LOADB                            R4 0
      170 LOADNIL                          R5
      171 LOADB                            R6 0
      172 LOADB                            R7 1
      173 JUMPIFNOT                        R7 ; [+128]
      174 GETIMPORT                        R8 K18 [pcall]
      176 NEWCLOSURE                       R9 P1
      177 CAPTURE                          UPVAL U7
      178 CAPTURE                          VAL R0
      179 CAPTURE                          REF R2
      180 CAPTURE                          UPVAL U4
      181 CALL                             R8 1 2
      182 JUMPIF                           R8 ; [+19]
      183 GETUPVAL                         R10 5
      184 GETTABLEKS                       R10 R10 K14 ["setLoadState"]
      186 GETUPVAL                         R11 6
      187 GETTABLEKS                       R11 R11 K25 ["Error"]
      189 DUPTABLE                         R12 K28 [{"scope", "threadId"}]
      190 GETUPVAL                         R13 0
      191 GETTABLEKS                       R13 R13 K26 ["Messages"]
      193 SETTABLEKS                       R13 R12 K0 ["scope"]
      195 GETTABLEKS                       R13 R0 K27 ["threadId"]
      197 SETTABLEKS                       R13 R12 K27 ["threadId"]
      199 CALL                             R10 2 0
      200 CLOSEUPVALS                      R2
      201 RETURN                           R0 0
      202 JUMPIFNOT                        R9 ; [+86]
      203 LOADB                            R6 1
      204 GETTABLEKS                       R10 R9 K30 ["messages"]
      206 JUMPIFNOT                        R10 ; [+77]
      207 MOVE                             R11 R10
      208 LOADNIL                          R12
      209 LOADNIL                          R13
      210 FORGPREP                         R11
      211 DUPTABLE                         R16 K47 [{["messageId"], ["sourceId"], ["rootId"], ["createdAt"], ["updatedAt"], ["ephemeral"], ["isDirty"] = False, ["isDeleted"], ["role"], ["thumbsState"], ["contents"], ["contentCountAdded"], ["contentCountLoaded"], ["LayoutOrder"], ["hidden"]}]
      212 GETTABLEKS                       R17 R15 K31 ["messageId"]
      214 SETTABLEKS                       R17 R16 K31 ["messageId"]
      216 GETTABLEKS                       R17 R15 K32 ["sourceId"]
      218 SETTABLEKS                       R17 R16 K32 ["sourceId"]
      220 GETTABLEKS                       R17 R15 K33 ["rootId"]
      222 SETTABLEKS                       R17 R16 K33 ["rootId"]
      224 GETTABLEKS                       R17 R15 K34 ["createdAt"]
      226 SETTABLEKS                       R17 R16 K34 ["createdAt"]
      228 GETTABLEKS                       R17 R15 K35 ["updatedAt"]
      230 SETTABLEKS                       R17 R16 K35 ["updatedAt"]
      232 GETTABLEKS                       R17 R15 K36 ["ephemeral"]
      234 SETTABLEKS                       R17 R16 K36 ["ephemeral"]
      236 GETTABLEKS                       R17 R15 K39 ["isDeleted"]
      238 SETTABLEKS                       R17 R16 K39 ["isDeleted"]
      240 GETTABLEKS                       R17 R15 K40 ["role"]
      242 SETTABLEKS                       R17 R16 K40 ["role"]
      244 GETTABLEKS                       R17 R15 K41 ["thumbsState"]
      246 SETTABLEKS                       R17 R16 K41 ["thumbsState"]
      248 GETTABLEKS                       R17 R15 K42 ["contents"]
      250 JUMPIF                           R17 ; [+2]
      251 NEWTABLE                         R17 0 0
      253 SETTABLEKS                       R17 R16 K42 ["contents"]
      255 GETTABLEKS                       R18 R15 K43 ["contentCountAdded"]
      257 ORK                              R17 R18 K48 [0]
      258 SETTABLEKS                       R17 R16 K43 ["contentCountAdded"]
      260 GETTABLEKS                       R18 R15 K44 ["contentCountLoaded"]
      262 ORK                              R17 R18 K48 [0]
      263 SETTABLEKS                       R17 R16 K44 ["contentCountLoaded"]
      265 GETTABLEKS                       R17 R15 K45 ["LayoutOrder"]
      267 SETTABLEKS                       R17 R16 K45 ["LayoutOrder"]
      269 GETTABLEKS                       R17 R15 K46 ["hidden"]
      271 SETTABLEKS                       R17 R16 K46 ["hidden"]
      273 GETTABLEKS                       R17 R16 K31 ["messageId"]
      275 SETTABLE                         R16 R3 R17
      276 JUMPIFNOT                        R1 ; [+5]
      277 GETTABLEKS                       R17 R16 K31 ["messageId"]
      279 JUMPIFNOTEQ                      R17 R1 ; [+2]
      281 LOADB                            R4 1
      282 FORGLOOP                         R11 2 ; [-72]
      284 GETTABLEKS                       R5 R9 K9 ["cursor"]
      286 GETTABLEKS                       R2 R9 K9 ["cursor"]
      288 JUMP                             ; [+2]
      289 LOADNIL                          R5
      290 LOADNIL                          R2
      291 LOADB                            R10 0
      292 JUMPIFEQKNIL                     R1 ; [+7]
      294 NOT                              R10 R4
      295 JUMPIFNOT                        R10 ; [+4]
      296 JUMPIFNOTEQKNIL                  R2 ; [+2]
      298 LOADB                            R10 0 +1
      299 LOADB                            R10 1
      300 MOVE                             R7 R10
      301 JUMPBACK                         ; [-129]
      302 JUMPIFNOT                        R6 ; [+18]
      303 GETUPVAL                         R8 5
      304 GETTABLEKS                       R8 R8 K19 ["notifyLoadedAsync"]
      306 DUPTABLE                         R9 K49 [{"scope", "threadId", "messages", "nextCursor"}]
      307 GETUPVAL                         R10 0
      308 GETTABLEKS                       R10 R10 K26 ["Messages"]
      310 SETTABLEKS                       R10 R9 K0 ["scope"]
      312 GETTABLEKS                       R10 R0 K27 ["threadId"]
      314 SETTABLEKS                       R10 R9 K27 ["threadId"]
      316 SETTABLEKS                       R3 R9 K30 ["messages"]
      318 SETTABLEKS                       R5 R9 K21 ["nextCursor"]
      320 CALL                             R8 1 0
      321 CLOSEUPVALS                      R2
      322 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["coordinator"]
        2 GETTABLEKS                       R2 R0 K1 ["io"]
        4 GETTABLEKS                       R3 R1 K2 ["onSaveReady"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R1
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_38:
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

PROTO_39:
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

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deleteThreadAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Messages"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+33]
        7 GETTABLEKS                       R1 R0 K2 ["threadId"]
        9 GETIMPORT                        R2 K4 [pcall]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 CALL                             R2 1 2
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K5 ["FFlagDebugLogAssistantUI"]
       18 JUMPIFNOT                        R4 ; [+20]
       19 JUMPIFNOT                        R2 ; [+1]
       20 JUMPIF                           R3 ; [+10]
       21 GETIMPORT                        R4 K7 [print]
       23 LOADK                            R5 K8 ["[Persistence] [Session] Failed to delete thread with id %*. Error: %*"]
       24 MOVE                             R7 R1
       25 MOVE                             R8 R3
       26 NAMECALL                         R5 R5 K9 ["format"]
       28 CALL                             R5 3 1
       29 CALL                             R4 1 0
       30 RETURN                           R0 0
       31 GETIMPORT                        R4 K7 [print]
       33 LOADK                            R5 K10 ["[Persistence] [Session] Successfully deleted thread with id %*"]
       34 MOVE                             R7 R1
       35 NAMECALL                         R5 R5 K9 ["format"]
       37 CALL                             R5 2 1
       38 CALL                             R4 1 0
       39 RETURN                           R0 0

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["coordinator"]
        2 GETTABLEKS                       R2 R0 K1 ["io"]
        4 GETTABLEKS                       R3 R1 K2 ["onDeleteRequested"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U1
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["waitForPendingSaves"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_44:
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

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ALL"]
        4 NAMECALL                         R0 R0 K1 ["InvokeAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_46:
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
       28 JUMPIF                           R0 ; [+22]
       29 GETUPVAL                         R0 3
       30 JUMPIFNOT                        R0 ; [+5]
       31 GETUPVAL                         R0 4
       32 GETTABLEKS                       R0 R0 K6 ["waitForPendingSaves"]
       34 CALL                             R0 0 0
       35 JUMP                             ; [+15]
       36 GETIMPORT                        R0 K8 [pcall]
       38 NEWCLOSURE                       R1 P0
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U6
       41 CALL                             R0 1 2
       42 JUMPIF                           R0 ; [+8]
       43 GETIMPORT                        R2 K10 [warn]
       45 LOADK                            R3 K11 ["[Assistant] waitForPendingSaves failed: %*"]
       46 MOVE                             R5 R1
       47 NAMECALL                         R3 R3 K12 ["format"]
       49 CALL                             R3 2 1
       50 CALL                             R2 1 0
       51 GETUPVAL                         R0 7
       52 NAMECALL                         R0 R0 K4 ["Destroy"]
       54 CALL                             R0 1 0
       55 RETURN                           R0 0

PROTO_47:
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
       22 JUMPIFNOT                        R0 ; [+2]
       23 GETUPVAL                         R0 1
       24 CALL                             R0 0 0
       25 GETUPVAL                         R0 2
       26 JUMPIFNOT                        R0 ; [+2]
       27 GETUPVAL                         R0 2
       28 CALL                             R0 0 0
       29 GETUPVAL                         R0 3
       30 JUMPIFNOT                        R0 ; [+2]
       31 GETUPVAL                         R0 3
       32 CALL                             R0 0 0
       33 GETUPVAL                         R0 4
       34 GETTABLEKS                       R0 R0 K4 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
       36 JUMPIF                           R0 ; [+9]
       37 GETUPVAL                         R0 5
       38 JUMPIFNOT                        R0 ; [+5]
       39 GETUPVAL                         R0 6
       40 GETTABLEKS                       R0 R0 K5 ["waitForPendingSaves"]
       42 CALL                             R0 0 0
       43 JUMP                             ; [+2]
       44 GETUPVAL                         R0 7
       45 CALL                             R0 0 0
       46 GETUPVAL                         R0 8
       47 JUMPIFNOT                        R0 ; [+2]
       48 GETUPVAL                         R0 8
       49 CALL                             R0 0 0
       50 GETUPVAL                         R0 9
       51 JUMPIFNOT                        R0 ; [+2]
       52 GETUPVAL                         R0 9
       53 CALL                             R0 0 0
       54 GETUPVAL                         R0 10
       55 JUMPIFNOT                        R0 ; [+2]
       56 GETUPVAL                         R0 10
       57 CALL                             R0 0 0
       58 RETURN                           R0 0

PROTO_48:
        0 GETTABLEKS                       R1 R0 K0 ["networkingOLD"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["coordinator"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["FFlagAssistantUseNewDMNetworking"]
        9 JUMPIFNOT                        R5 ; [+6]
       10 GETTABLEKS                       R4 R0 K4 ["environment"]
       12 GETTABLEKS                       R4 R4 K5 ["hasUI"]
       14 CALL                             R4 0 1
       15 JUMP                             ; [+5]
       16 GETTABLEKS                       R4 R0 K0 ["networkingOLD"]
       18 NAMECALL                         R4 R4 K6 ["IsGuest"]
       20 CALL                             R4 1 1
       21 DUPTABLE                         R5 K11 [{"gameMetadataCache", "loadedPlaceIds", "sessionIdRef", "sessionMetadataLoaded"}]
       22 NEWTABLE                         R6 0 0
       24 SETTABLEKS                       R6 R5 K7 ["gameMetadataCache"]
       26 NEWTABLE                         R6 0 0
       28 SETTABLEKS                       R6 R5 K8 ["loadedPlaceIds"]
       30 DUPTABLE                         R6 K14 [{["sessionId"] = ""}]
       31 SETTABLEKS                       R6 R5 K9 ["sessionIdRef"]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K15 ["new"]
       36 CALL                             R6 0 1
       37 SETTABLEKS                       R6 R5 K10 ["sessionMetadataLoaded"]
       39 GETUPVAL                         R6 2
       40 MOVE                             R7 R0
       41 MOVE                             R8 R5
       42 CALL                             R6 2 1
       43 NEWCLOSURE                       R7 P0
       44 CAPTURE                          VAL R3
       45 NEWCLOSURE                       R8 P1
       46 CAPTURE                          VAL R5
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R9 R9 K3 ["FFlagAssistantUseNewDMNetworking"]
       50 JUMPIFNOT                        R9 ; [+96]
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R9 R9 K15 ["new"]
       54 CALL                             R9 0 1
       55 GETUPVAL                         R10 3
       56 GETTABLEKS                       R10 R10 K15 ["new"]
       58 CALL                             R10 0 1
       59 GETUPVAL                         R13 4
       60 MOVE                             R14 R0
       61 MOVE                             R15 R5
       62 CALL                             R13 2 1
       63 NAMECALL                         R11 R9 K16 ["Add"]
       65 CALL                             R11 2 0
       66 GETUPVAL                         R11 5
       67 GETTABLEKS                       R11 R11 K17 ["Remote"]
       69 GETTABLEKS                       R11 R11 K18 ["invoke"]
       71 MOVE                             R12 R2
       72 LOADK                            R13 K19 ["PersistenceSessionOrchestrator.waitForPendingSavesAsync"]
       73 CALL                             R11 2 1
       74 JUMPIFNOT                        R4 ; [+55]
       75 GETUPVAL                         R14 6
       76 MOVE                             R15 R0
       77 MOVE                             R16 R5
       78 CALL                             R14 2 -1
       79 NAMECALL                         R12 R9 K16 ["Add"]
       81 CALL                             R12 -1 0
       82 GETUPVAL                         R14 7
       83 MOVE                             R15 R0
       84 CALL                             R14 1 -1
       85 NAMECALL                         R12 R9 K16 ["Add"]
       87 CALL                             R12 -1 0
       88 GETUPVAL                         R14 8
       89 MOVE                             R15 R0
       90 CALL                             R14 1 -1
       91 NAMECALL                         R12 R10 K16 ["Add"]
       93 CALL                             R12 -1 0
       94 GETTABLEKS                       R15 R0 K20 ["io"]
       96 GETTABLEKS                       R15 R15 K21 ["uploadAgentThreadsAsync"]
       98 GETTABLEKS                       R16 R0 K20 ["io"]
      100 GETTABLEKS                       R16 R16 K22 ["uploadAgentMessagesAsync"]
      102 JUMPIFNOT                        R15 ; [+1]
      103 JUMPIF                           R16 ; [+2]
      104 LOADNIL                          R14
      105 JUMP                             ; [+10]
      106 GETTABLEKS                       R17 R0 K2 ["coordinator"]
      108 GETTABLEKS                       R17 R17 K23 ["onAgentSaveReady"]
      110 NEWCLOSURE                       R18 P2
      111 CAPTURE                          UPVAL U9
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R16
      114 CALL                             R17 1 1
      115 MOVE                             R14 R17
      116 JUMPIF                           R14 ; [+3]
      117 GETUPVAL                         R14 3
      118 GETTABLEKS                       R14 R14 K24 ["none"]
      120 NAMECALL                         R12 R10 K16 ["Add"]
      122 CALL                             R12 2 0
      123 MOVE                             R16 R7
      124 NAMECALL                         R14 R11 K25 ["Connect"]
      126 CALL                             R14 2 -1
      127 NAMECALL                         R12 R10 K16 ["Add"]
      129 CALL                             R12 -1 0
      130 GETTABLEKS                       R12 R0 K4 ["environment"]
      132 GETTABLEKS                       R12 R12 K26 ["Destroying"]
      134 NEWCLOSURE                       R14 P3
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R9
      137 CAPTURE                          UPVAL U0
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R11
      141 CAPTURE                          UPVAL U5
      142 CAPTURE                          VAL R10
      143 NAMECALL                         R12 R12 K27 ["Once"]
      145 CALL                             R12 2 0
      146 RETURN                           R6 1
      147 GETUPVAL                         R9 4
      148 MOVE                             R10 R0
      149 MOVE                             R11 R5
      150 CALL                             R9 2 1
      151 LOADNIL                          R10
      152 LOADNIL                          R11
      153 LOADNIL                          R12
      154 LOADNIL                          R13
      155 JUMPIFNOT                        R4 ; [+65]
      156 GETTABLEKS                       R14 R0 K2 ["coordinator"]
      158 GETTABLEKS                       R15 R0 K20 ["io"]
      160 GETTABLEKS                       R16 R5 K9 ["sessionIdRef"]
      162 GETTABLEKS                       R17 R14 K28 ["onLoadRequested"]
      164 NEWCLOSURE                       R18 P4
      165 CAPTURE                          UPVAL U9
      166 CAPTURE                          VAL R16
      167 CAPTURE                          UPVAL U10
      168 CAPTURE                          VAL R5
      169 CAPTURE                          UPVAL U0
      170 CAPTURE                          VAL R14
      171 CAPTURE                          UPVAL U11
      172 CAPTURE                          VAL R15
      173 CALL                             R17 1 1
      174 MOVE                             R10 R17
      175 GETTABLEKS                       R14 R0 K2 ["coordinator"]
      177 GETTABLEKS                       R15 R0 K20 ["io"]
      179 GETTABLEKS                       R16 R14 K29 ["onSaveReady"]
      181 NEWCLOSURE                       R17 P5
      182 CAPTURE                          UPVAL U9
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R14
      185 CALL                             R16 1 1
      186 MOVE                             R11 R16
      187 GETTABLEKS                       R14 R0 K20 ["io"]
      189 GETTABLEKS                       R14 R14 K21 ["uploadAgentThreadsAsync"]
      191 GETTABLEKS                       R15 R0 K20 ["io"]
      193 GETTABLEKS                       R15 R15 K22 ["uploadAgentMessagesAsync"]
      195 JUMPIFNOT                        R14 ; [+1]
      196 JUMPIF                           R15 ; [+2]
      197 LOADNIL                          R12
      198 JUMP                             ; [+10]
      199 GETTABLEKS                       R16 R0 K2 ["coordinator"]
      201 GETTABLEKS                       R16 R16 K23 ["onAgentSaveReady"]
      203 NEWCLOSURE                       R17 P2
      204 CAPTURE                          UPVAL U9
      205 CAPTURE                          VAL R14
      206 CAPTURE                          VAL R15
      207 CALL                             R16 1 1
      208 MOVE                             R12 R16
      209 GETTABLEKS                       R14 R0 K2 ["coordinator"]
      211 GETTABLEKS                       R15 R0 K20 ["io"]
      213 GETTABLEKS                       R16 R14 K30 ["onDeleteRequested"]
      215 NEWCLOSURE                       R17 P6
      216 CAPTURE                          UPVAL U9
      217 CAPTURE                          VAL R15
      218 CAPTURE                          UPVAL U0
      219 CALL                             R16 1 1
      220 MOVE                             R13 R16
      221 LOADK                            R16 K31 ["StudioSessionOrchestration_waitForPendingSavesAsync"]
      222 MOVE                             R17 R7
      223 NAMECALL                         R14 R1 K32 ["OnGuestInvokeAsync"]
      225 CALL                             R14 3 2
      226 NEWCLOSURE                       R16 P7
      227 CAPTURE                          VAL R5
      228 CAPTURE                          VAL R9
      229 CAPTURE                          REF R10
      230 CAPTURE                          REF R13
      231 CAPTURE                          UPVAL U0
      232 CAPTURE                          VAL R4
      233 CAPTURE                          VAL R3
      234 CAPTURE                          VAL R14
      235 CAPTURE                          REF R12
      236 CAPTURE                          REF R11
      237 CAPTURE                          VAL R15
      238 GETTABLEKS                       R17 R1 K26 ["Destroying"]
      240 MOVE                             R19 R16
      241 NAMECALL                         R17 R17 K27 ["Once"]
      243 CALL                             R17 2 0
      244 CLOSEUPVALS                      R10
      245 RETURN                           R6 1

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
       26 GETTABLEKS                       R6 R1 K10 ["DMNetworkingOLD"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["Signal"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R0 K12 ["Util"]
       38 GETTABLEKS                       R8 R8 K13 ["DataModelType"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R0 K14 ["Guest"]
       45 GETTABLEKS                       R9 R9 K15 ["Environment"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K6 [require]
       50 GETTABLEKS                       R10 R0 K16 ["Flags"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K6 [require]
       55 GETIMPORT                        R11 K1 [script]
       57 GETTABLEKS                       R11 R11 K4 ["Parent"]
       59 GETTABLEKS                       R11 R11 K17 ["PersistenceCoordinator"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K6 [require]
       64 GETTABLEKS                       R12 R0 K18 ["Types"]
       66 CALL                             R11 1 1
       67 GETTABLEKS                       R12 R11 K19 ["PersistenceLoadStates"]
       69 GETTABLEKS                       R13 R11 K20 ["ScopeTypes"]
       71 DUPTABLE                         R14 K29 [{["Idle"] = "idle", ["Loading"] = "loading", ["Loaded"] = "loaded", ["Failed"] = "failed"}]
       72 DUPCLOSURE                       R15 K30 [PROTO_0]
       73 DUPCLOSURE                       R16 K31 [PROTO_1]
       74 CAPTURE                          VAL R6
       75 DUPCLOSURE                       R17 K32 [PROTO_2]
       76 CAPTURE                          VAL R9
       77 DUPCLOSURE                       R18 K33 [PROTO_8]
       78 CAPTURE                          VAL R9
       79 DUPCLOSURE                       R19 K34 [PROTO_12]
       80 DUPCLOSURE                       R20 K35 [PROTO_15]
       81 CAPTURE                          VAL R9
       82 DUPCLOSURE                       R21 K36 [PROTO_21]
       83 CAPTURE                          VAL R17
       84 CAPTURE                          VAL R9
       85 DUPCLOSURE                       R22 K37 [PROTO_22]
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R7
       88 DUPCLOSURE                       R23 K38 [PROTO_23]
       89 CAPTURE                          VAL R9
       90 DUPCLOSURE                       R24 K39 [PROTO_29]
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R20
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R18
       99 CAPTURE                          VAL R19
      100 DUPCLOSURE                       R25 K40 [PROTO_33]
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R17
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R12
      105 DUPCLOSURE                       R26 K41 [PROTO_37]
      106 CAPTURE                          VAL R13
      107 DUPCLOSURE                       R27 K42 [PROTO_39]
      108 CAPTURE                          VAL R13
      109 DUPCLOSURE                       R28 K43 [PROTO_42]
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R9
      112 DUPCLOSURE                       R29 K44 [PROTO_48]
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R21
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R24
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R25
      120 CAPTURE                          VAL R28
      121 CAPTURE                          VAL R26
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R12
      125 DUPTABLE                         R30 K46 [{"trackSessions"}]
      126 SETTABLEKS                       R29 R30 K45 ["trackSessions"]
      128 RETURN                           R30 1
