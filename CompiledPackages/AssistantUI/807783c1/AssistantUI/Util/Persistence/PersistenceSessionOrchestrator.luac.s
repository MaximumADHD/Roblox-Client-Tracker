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
        0 DUPTABLE                         R1 K4 [{"gameId", "placeId", "loadState", "Destroying"}]
        1 GETTABLEKS                       R2 R0 K0 ["gameId"]
        3 SETTABLEKS                       R2 R1 K0 ["gameId"]
        5 GETTABLEKS                       R2 R0 K1 ["placeId"]
        7 SETTABLEKS                       R2 R1 K1 ["placeId"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K5 ["Idle"]
       12 SETTABLEKS                       R2 R1 K2 ["loadState"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K6 ["new"]
       17 CALL                             R2 0 1
       18 SETTABLEKS                       R2 R1 K3 ["Destroying"]
       20 RETURN                           R1 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R1 K0 [""] ; [+10]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETIMPORT                        R2 K2 [print]
        7 LOADK                            R3 K3 ["[Persistence] [Session] Session id is empty while waiting for conversation metadata."]
        8 CALL                             R2 1 0
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 GETTABLEKS                       R3 R0 K4 ["gameMetadataCache"]
       13 GETTABLE                         R2 R3 R1
       14 JUMPIFNOT                        R2 ; [+1]
       15 RETURN                           R2 1
       16 GETTABLEKS                       R3 R0 K5 ["sessionMetadataLoaded"]
       18 NAMECALL                         R3 R3 K6 ["Wait"]
       20 CALL                             R3 1 1
       21 JUMPIFNOTEQKNIL                  R3 ; [+3]
       23 LOADNIL                          R4
       24 RETURN                           R4 1
       25 JUMPBACK                         ; [-15]
       26 RETURN                           R0 0

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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETIMPORT                        R0 K1 [print]
        5 LOADK                            R1 K2 ["[Persistence] [Session] Publish started. Attempting to cache current conversation state."]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETIMPORT                        R0 K1 [print]
        5 LOADK                            R1 K2 ["[Persistence] [Session] Publish ended. Attempting to save conversation state."]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 LOADB                            R0 0
       10 LOADN                            R3 0
       11 JUMPIFNOTLT                      R3 R1 ; [+6]
       13 LOADN                            R3 0
       14 JUMPIFLT                         R3 R2 ; [+2]
       16 LOADB                            R0 0 +1
       17 LOADB                            R0 1
       18 JUMPIFNOT                        R0 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 3
       21 GETTABLEKS                       R0 R0 K3 ["GameId"]
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R1 R1 K4 ["PlaceId"]
       26 LOADB                            R2 0
       27 LOADN                            R3 0
       28 JUMPIFNOTLT                      R3 R0 ; [+6]
       30 LOADN                            R3 0
       31 JUMPIFLT                         R3 R1 ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 JUMPIF                           R2 ; [+1]
       36 RETURN                           R0 0
       37 SETUPVAL                         R0 1
       38 SETUPVAL                         R1 2
       39 DUPTABLE                         R2 K9 [{"sessionId", "gameId", "placeId", "overwrite"}]
       40 GETUPVAL                         R3 4
       41 GETTABLEKS                       R3 R3 K5 ["sessionId"]
       43 SETTABLEKS                       R3 R2 K5 ["sessionId"]
       45 SETTABLEKS                       R0 R2 K6 ["gameId"]
       47 SETTABLEKS                       R1 R2 K7 ["placeId"]
       49 LOADB                            R3 1
       50 SETTABLEKS                       R3 R2 K8 ["overwrite"]
       52 GETUPVAL                         R3 5
       53 GETUPVAL                         R4 6
       54 GETTABLEKS                       R4 R4 K10 ["ALL"]
       56 MOVE                             R5 R2
       57 CALL                             R3 2 0
       58 RETURN                           R0 0

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
        1 CALL                             R0 0 1
        2 GETIMPORT                        R1 K2 [task.wait]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+12]
        9 GETIMPORT                        R1 K4 [print]
       11 LOADK                            R3 K5 ["[Persistence] [Session] Auto-saving conversations for placeId %* after waiting %* seconds."]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K6 ["placeId"]
       15 MOVE                             R6 R0
       16 NAMECALL                         R3 R3 K7 ["format"]
       18 CALL                             R3 3 1
       19 MOVE                             R2 R3
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K8 ["requestSave"]
       24 DUPTABLE                         R2 K10 [{"metadata"}]
       25 GETUPVAL                         R3 4
       26 SETTABLEKS                       R3 R2 K9 ["metadata"]
       28 CALL                             R1 1 0
       29 JUMPBACK                         ; [-30]
       30 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFEQKS                       R0 K3 ["dead"] ; [+5]
        6 GETIMPORT                        R0 K6 [task.cancel]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 1
       11 CALL                             R0 0 1
       12 JUMPIFNOT                        R0 ; [+11]
       13 GETIMPORT                        R0 K8 [print]
       15 LOADK                            R2 K9 ["[Persistence] [Session] Session ended for placeId %*. Attempting to save conversations before destroying cached metadata."]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K10 ["placeId"]
       19 NAMECALL                         R2 R2 K11 ["format"]
       21 CALL                             R2 2 1
       22 MOVE                             R1 R2
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 3
       25 GETTABLEKS                       R0 R0 K12 ["requestSave"]
       27 DUPTABLE                         R1 K14 [{"metadata"}]
       28 GETUPVAL                         R2 4
       29 SETTABLEKS                       R2 R1 K13 ["metadata"]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

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
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R3
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R1 K7 ["Destroying"]
       22 NEWCLOSURE                       R7 P1
       23 CAPTURE                          VAL R4
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 NAMECALL                         R5 R5 K8 ["Once"]
       30 CALL                             R5 2 0
       31 RETURN                           R0 0

PROTO_16:
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
       17 JUMPIF                           R2 ; [+26]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R4 R1 K3 ["sessionId"]
       21 GETTABLE                         R2 R3 R4
       22 JUMPIF                           R2 ; [+5]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R4 R1 K1 ["placeId"]
       26 GETTABLE                         R2 R3 R4
       27 JUMPIFNOT                        R2 ; [+16]
       28 GETUPVAL                         R2 2
       29 CALL                             R2 0 1
       30 JUMPIFNOT                        R2 ; [+12]
       31 GETIMPORT                        R2 K5 [print]
       33 LOADK                            R4 K6 ["[Persistence] [Session] Session %* already has cached metadata for placeId %*"]
       34 GETTABLEKS                       R6 R1 K3 ["sessionId"]
       36 GETTABLEKS                       R7 R1 K1 ["placeId"]
       38 NAMECALL                         R4 R4 K7 ["format"]
       40 CALL                             R4 3 1
       41 MOVE                             R3 R4
       42 CALL                             R2 1 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R4 R1 K3 ["sessionId"]
       47 GETTABLE                         R2 R3 R4
       48 JUMPIFNOT                        R2 ; [+5]
       49 GETTABLEKS                       R3 R2 K8 ["Destroying"]
       51 NAMECALL                         R3 R3 K9 ["Fire"]
       53 CALL                             R3 1 0
       54 DUPTABLE                         R3 K11 [{"gameId", "placeId", "loadState", "Destroying"}]
       55 GETTABLEKS                       R4 R1 K0 ["gameId"]
       57 SETTABLEKS                       R4 R3 K0 ["gameId"]
       59 GETTABLEKS                       R4 R1 K1 ["placeId"]
       61 SETTABLEKS                       R4 R3 K1 ["placeId"]
       63 GETUPVAL                         R4 3
       64 GETTABLEKS                       R4 R4 K12 ["Idle"]
       66 SETTABLEKS                       R4 R3 K10 ["loadState"]
       68 GETUPVAL                         R4 4
       69 GETTABLEKS                       R4 R4 K13 ["new"]
       71 CALL                             R4 0 1
       72 SETTABLEKS                       R4 R3 K8 ["Destroying"]
       74 GETUPVAL                         R4 0
       75 GETTABLEKS                       R5 R1 K3 ["sessionId"]
       77 SETTABLE                         R3 R4 R5
       78 GETUPVAL                         R4 1
       79 GETTABLEKS                       R5 R1 K1 ["placeId"]
       81 LOADB                            R6 1
       82 SETTABLE                         R6 R4 R5
       83 GETUPVAL                         R4 5
       84 GETTABLEKS                       R6 R1 K3 ["sessionId"]
       86 NAMECALL                         R4 R4 K9 ["Fire"]
       88 CALL                             R4 2 0
       89 GETUPVAL                         R4 6
       90 GETUPVAL                         R5 7
       91 MOVE                             R6 R3
       92 CALL                             R4 2 0
       93 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["networking"]
        2 GETTABLEKS                       R3 R1 K1 ["gameMetadataCache"]
        4 GETTABLEKS                       R4 R1 K2 ["loadedPlaceIds"]
        6 GETTABLEKS                       R5 R1 K3 ["sessionIdRef"]
        8 GETTABLEKS                       R6 R1 K4 ["sessionMetadataLoaded"]
       10 LOADK                            R9 K5 ["StudioSessionOrchestration_sendGameMetadata"]
       11 NEWCLOSURE                       R10 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R4
       14 CAPTURE                          UPVAL U0
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

PROTO_19:
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
       15 CALL                             R2 0 1
       16 SETTABLEKS                       R2 R1 K3 ["limit"]
       18 CALL                             R0 1 2
       19 JUMPIF                           R0 ; [+5]
       20 GETIMPORT                        R2 K6 [error]
       22 LOADK                            R3 K7 ["IO error while loading threads"]
       23 LOADN                            R4 0
       24 CALL                             R2 2 0
       25 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getMessagesAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["threadId"]
        6 DUPTABLE                         R2 K4 [{"cursor", "limit"}]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["cursor"]
       10 GETUPVAL                         R3 3
       11 CALL                             R3 0 1
       12 SETTABLEKS                       R3 R2 K3 ["limit"]
       14 CALL                             R0 2 2
       15 JUMPIF                           R0 ; [+5]
       16 GETIMPORT                        R2 K6 [error]
       18 LOADK                            R3 K7 ["IO error while loading messages"]
       19 LOADN                            R4 0
       20 CALL                             R2 2 0
       21 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Threads"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+144]
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
       29 JUMPIF                           R3 ; [+8]
       30 GETUPVAL                         R3 4
       31 CALL                             R3 0 1
       32 JUMPIFNOT                        R3 ; [+4]
       33 GETIMPORT                        R3 K6 [print]
       35 LOADK                            R4 K7 ["[Persistence] [Session] Loading and saving conversations is disabled in unpublished places."]
       36 CALL                             R3 1 0
       37 RETURN                           R0 0
       38 GETTABLEKS                       R4 R0 K8 ["cursor"]
       40 JUMPIFEQKNIL                     R4 ; [+2]
       42 LOADB                            R3 0 +1
       43 LOADB                            R3 1
       44 JUMPIFNOT                        R3 ; [+14]
       45 GETTABLEKS                       R4 R2 K9 ["loadState"]
       47 GETUPVAL                         R5 5
       48 GETTABLEKS                       R5 R5 K10 ["Idle"]
       50 JUMPIFEQ                         R4 R5 ; [+2]
       52 RETURN                           R0 0
       53 GETUPVAL                         R4 5
       54 GETTABLEKS                       R4 R4 K11 ["Loading"]
       56 SETTABLEKS                       R4 R2 K9 ["loadState"]
       58 JUMP                             ; [+8]
       59 GETTABLEKS                       R4 R2 K9 ["loadState"]
       61 GETUPVAL                         R5 5
       62 GETTABLEKS                       R5 R5 K12 ["Loaded"]
       64 JUMPIFEQ                         R4 R5 ; [+2]
       66 RETURN                           R0 0
       67 GETUPVAL                         R4 6
       68 GETTABLEKS                       R4 R4 K13 ["setLoadState"]
       70 GETUPVAL                         R5 7
       71 GETTABLEKS                       R5 R5 K11 ["Loading"]
       73 DUPTABLE                         R6 K14 [{"scope"}]
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R7 R7 K1 ["Threads"]
       77 SETTABLEKS                       R7 R6 K0 ["scope"]
       79 CALL                             R4 2 0
       80 GETIMPORT                        R4 K16 [pcall]
       82 NEWCLOSURE                       R5 P0
       83 CAPTURE                          UPVAL U8
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U9
       87 CALL                             R4 1 2
       88 JUMPIFNOT                        R4 ; [+22]
       89 JUMPIFNOT                        R5 ; [+21]
       90 GETUPVAL                         R6 6
       91 GETTABLEKS                       R6 R6 K17 ["notifyLoadedAsync"]
       93 DUPTABLE                         R7 K20 [{"scope", "threads", "nextCursor"}]
       94 GETUPVAL                         R8 0
       95 GETTABLEKS                       R8 R8 K1 ["Threads"]
       97 SETTABLEKS                       R8 R7 K0 ["scope"]
       99 GETTABLEKS                       R8 R5 K18 ["threads"]
      101 JUMPIF                           R8 ; [+2]
      102 NEWTABLE                         R8 0 0
      104 SETTABLEKS                       R8 R7 K18 ["threads"]
      106 GETTABLEKS                       R8 R5 K8 ["cursor"]
      108 SETTABLEKS                       R8 R7 K19 ["nextCursor"]
      110 CALL                             R6 1 0
      111 JUMPIFNOT                        R4 ; [+19]
      112 GETUPVAL                         R6 5
      113 GETTABLEKS                       R6 R6 K12 ["Loaded"]
      115 SETTABLEKS                       R6 R2 K9 ["loadState"]
      117 GETUPVAL                         R6 6
      118 GETTABLEKS                       R6 R6 K13 ["setLoadState"]
      120 GETUPVAL                         R7 7
      121 GETTABLEKS                       R7 R7 K12 ["Loaded"]
      123 DUPTABLE                         R8 K14 [{"scope"}]
      124 GETUPVAL                         R9 0
      125 GETTABLEKS                       R9 R9 K1 ["Threads"]
      127 SETTABLEKS                       R9 R8 K0 ["scope"]
      129 CALL                             R6 2 0
      130 RETURN                           R0 0
      131 GETUPVAL                         R6 5
      132 GETTABLEKS                       R6 R6 K21 ["Failed"]
      134 SETTABLEKS                       R6 R2 K9 ["loadState"]
      136 GETUPVAL                         R6 6
      137 GETTABLEKS                       R6 R6 K13 ["setLoadState"]
      139 GETUPVAL                         R7 7
      140 GETTABLEKS                       R7 R7 K22 ["Error"]
      142 DUPTABLE                         R8 K14 [{"scope"}]
      143 GETUPVAL                         R9 0
      144 GETTABLEKS                       R9 R9 K1 ["Threads"]
      146 SETTABLEKS                       R9 R8 K0 ["scope"]
      148 CALL                             R6 2 0
      149 RETURN                           R0 0
      150 GETTABLEKS                       R1 R0 K0 ["scope"]
      152 GETUPVAL                         R2 0
      153 GETTABLEKS                       R2 R2 K23 ["Messages"]
      155 JUMPIFNOTEQ                      R1 R2 ; [+185]
      157 GETUPVAL                         R1 6
      158 GETTABLEKS                       R1 R1 K13 ["setLoadState"]
      160 GETUPVAL                         R2 7
      161 GETTABLEKS                       R2 R2 K11 ["Loading"]
      163 DUPTABLE                         R3 K25 [{"scope", "threadId"}]
      164 GETUPVAL                         R4 0
      165 GETTABLEKS                       R4 R4 K23 ["Messages"]
      167 SETTABLEKS                       R4 R3 K0 ["scope"]
      169 GETTABLEKS                       R4 R0 K24 ["threadId"]
      171 SETTABLEKS                       R4 R3 K24 ["threadId"]
      173 CALL                             R1 2 0
      174 GETUPVAL                         R2 10
      175 CALL                             R2 0 1
      176 JUMPIFNOT                        R2 ; [+3]
      177 GETTABLEKS                       R1 R0 K26 ["loadUntilMessageId"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R1
      181 GETTABLEKS                       R2 R0 K8 ["cursor"]
      183 NEWTABLE                         R3 0 0
      185 LOADB                            R4 0
      186 LOADNIL                          R5
      187 LOADB                            R6 0
      188 LOADB                            R7 1
      189 JUMPIFNOT                        R7 ; [+131]
      190 GETIMPORT                        R8 K16 [pcall]
      192 NEWCLOSURE                       R9 P1
      193 CAPTURE                          UPVAL U8
      194 CAPTURE                          VAL R0
      195 CAPTURE                          REF R2
      196 CAPTURE                          UPVAL U11
      197 CALL                             R8 1 2
      198 JUMPIF                           R8 ; [+19]
      199 GETUPVAL                         R10 6
      200 GETTABLEKS                       R10 R10 K13 ["setLoadState"]
      202 GETUPVAL                         R11 7
      203 GETTABLEKS                       R11 R11 K22 ["Error"]
      205 DUPTABLE                         R12 K25 [{"scope", "threadId"}]
      206 GETUPVAL                         R13 0
      207 GETTABLEKS                       R13 R13 K23 ["Messages"]
      209 SETTABLEKS                       R13 R12 K0 ["scope"]
      211 GETTABLEKS                       R13 R0 K24 ["threadId"]
      213 SETTABLEKS                       R13 R12 K24 ["threadId"]
      215 CALL                             R10 2 0
      216 CLOSEUPVALS                      R2
      217 RETURN                           R0 0
      218 JUMPIFNOT                        R9 ; [+89]
      219 LOADB                            R6 1
      220 GETTABLEKS                       R10 R9 K27 ["messages"]
      222 JUMPIFNOT                        R10 ; [+80]
      223 MOVE                             R11 R10
      224 LOADNIL                          R12
      225 LOADNIL                          R13
      226 FORGPREP                         R11
      227 DUPTABLE                         R16 K43 [{"messageId", "sourceId", "rootId", "createdAt", "updatedAt", "ephemeral", "isDirty", "isDeleted", "role", "thumbsState", "contents", "contentCountAdded", "contentCountLoaded", "LayoutOrder", "hidden"}]
      228 GETTABLEKS                       R17 R15 K28 ["messageId"]
      230 SETTABLEKS                       R17 R16 K28 ["messageId"]
      232 GETTABLEKS                       R17 R15 K29 ["sourceId"]
      234 SETTABLEKS                       R17 R16 K29 ["sourceId"]
      236 GETTABLEKS                       R17 R15 K30 ["rootId"]
      238 SETTABLEKS                       R17 R16 K30 ["rootId"]
      240 GETTABLEKS                       R17 R15 K31 ["createdAt"]
      242 SETTABLEKS                       R17 R16 K31 ["createdAt"]
      244 GETTABLEKS                       R17 R15 K32 ["updatedAt"]
      246 SETTABLEKS                       R17 R16 K32 ["updatedAt"]
      248 GETTABLEKS                       R17 R15 K33 ["ephemeral"]
      250 SETTABLEKS                       R17 R16 K33 ["ephemeral"]
      252 LOADB                            R17 0
      253 SETTABLEKS                       R17 R16 K34 ["isDirty"]
      255 GETTABLEKS                       R17 R15 K35 ["isDeleted"]
      257 SETTABLEKS                       R17 R16 K35 ["isDeleted"]
      259 GETTABLEKS                       R17 R15 K36 ["role"]
      261 SETTABLEKS                       R17 R16 K36 ["role"]
      263 GETTABLEKS                       R17 R15 K37 ["thumbsState"]
      265 SETTABLEKS                       R17 R16 K37 ["thumbsState"]
      267 GETTABLEKS                       R17 R15 K38 ["contents"]
      269 JUMPIF                           R17 ; [+2]
      270 NEWTABLE                         R17 0 0
      272 SETTABLEKS                       R17 R16 K38 ["contents"]
      274 GETTABLEKS                       R18 R15 K39 ["contentCountAdded"]
      276 ORK                              R17 R18 K44 [0]
      277 SETTABLEKS                       R17 R16 K39 ["contentCountAdded"]
      279 GETTABLEKS                       R18 R15 K40 ["contentCountLoaded"]
      281 ORK                              R17 R18 K44 [0]
      282 SETTABLEKS                       R17 R16 K40 ["contentCountLoaded"]
      284 GETTABLEKS                       R17 R15 K41 ["LayoutOrder"]
      286 SETTABLEKS                       R17 R16 K41 ["LayoutOrder"]
      288 GETTABLEKS                       R17 R15 K42 ["hidden"]
      290 SETTABLEKS                       R17 R16 K42 ["hidden"]
      292 GETTABLEKS                       R17 R16 K28 ["messageId"]
      294 SETTABLE                         R16 R3 R17
      295 JUMPIFNOT                        R1 ; [+5]
      296 GETTABLEKS                       R17 R16 K28 ["messageId"]
      298 JUMPIFNOTEQ                      R17 R1 ; [+2]
      300 LOADB                            R4 1
      301 FORGLOOP                         R11 2 ; [-75]
      303 GETTABLEKS                       R5 R9 K8 ["cursor"]
      305 GETTABLEKS                       R2 R9 K8 ["cursor"]
      307 JUMP                             ; [+2]
      308 LOADNIL                          R5
      309 LOADNIL                          R2
      310 LOADB                            R10 0
      311 JUMPIFEQKNIL                     R1 ; [+7]
      313 NOT                              R10 R4
      314 JUMPIFNOT                        R10 ; [+4]
      315 JUMPIFNOTEQKNIL                  R2 ; [+2]
      317 LOADB                            R10 0 +1
      318 LOADB                            R10 1
      319 MOVE                             R7 R10
      320 JUMPBACK                         ; [-132]
      321 JUMPIFNOT                        R6 ; [+18]
      322 GETUPVAL                         R8 6
      323 GETTABLEKS                       R8 R8 K17 ["notifyLoadedAsync"]
      325 DUPTABLE                         R9 K45 [{"scope", "threadId", "messages", "nextCursor"}]
      326 GETUPVAL                         R10 0
      327 GETTABLEKS                       R10 R10 K23 ["Messages"]
      329 SETTABLEKS                       R10 R9 K0 ["scope"]
      331 GETTABLEKS                       R10 R0 K24 ["threadId"]
      333 SETTABLEKS                       R10 R9 K24 ["threadId"]
      335 SETTABLEKS                       R3 R9 K27 ["messages"]
      337 SETTABLEKS                       R5 R9 K19 ["nextCursor"]
      339 CALL                             R8 1 0
      340 CLOSEUPVALS                      R2
      341 RETURN                           R0 0

PROTO_22:
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
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R3
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U7
       21 CALL                             R5 1 -1
       22 RETURN                           R5 -1

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["coordinator"]
        2 GETTABLEKS                       R2 R0 K1 ["io"]
        4 GETTABLEKS                       R3 R1 K2 ["onSaveReady"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R1
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deleteThreadAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Messages"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+34]
        7 GETTABLEKS                       R1 R0 K2 ["threadId"]
        9 GETIMPORT                        R2 K4 [pcall]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 CALL                             R2 1 2
       15 GETUPVAL                         R4 2
       16 CALL                             R4 0 1
       17 JUMPIFNOT                        R4 ; [+22]
       18 JUMPIFNOT                        R2 ; [+1]
       19 JUMPIF                           R3 ; [+11]
       20 GETIMPORT                        R4 K6 [print]
       22 LOADK                            R6 K7 ["[Persistence] [Session] Failed to delete thread with id %*. Error: %*"]
       23 MOVE                             R8 R1
       24 MOVE                             R9 R3
       25 NAMECALL                         R6 R6 K8 ["format"]
       27 CALL                             R6 3 1
       28 MOVE                             R5 R6
       29 CALL                             R4 1 0
       30 RETURN                           R0 0
       31 GETIMPORT                        R4 K6 [print]
       33 LOADK                            R6 K9 ["[Persistence] [Session] Successfully deleted thread with id %*"]
       34 MOVE                             R8 R1
       35 NAMECALL                         R6 R6 K8 ["format"]
       37 CALL                             R6 2 1
       38 MOVE                             R5 R6
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["coordinator"]
        2 GETTABLEKS                       R2 R0 K1 ["io"]
        4 GETTABLEKS                       R3 R1 K2 ["onDeleteRequested"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U1
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["waitForPendingSaves"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_31:
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
       34 CALL                             R1 0 1
       35 JUMPIF                           R1 ; [+12]
       36 GETUPVAL                         R1 5
       37 NAMECALL                         R1 R1 K4 ["IsGuest"]
       39 CALL                             R1 1 1
       40 JUMPIFNOT                        R1 ; [+5]
       41 GETUPVAL                         R1 6
       42 GETTABLEKS                       R1 R1 K5 ["waitForPendingSaves"]
       44 CALL                             R1 0 0
       45 JUMP                             ; [+2]
       46 GETUPVAL                         R1 7
       47 CALL                             R1 0 0
       48 GETUPVAL                         R1 8
       49 JUMPIFNOT                        R1 ; [+2]
       50 GETUPVAL                         R1 8
       51 CALL                             R1 0 0
       52 GETUPVAL                         R1 9
       53 JUMPIFNOT                        R1 ; [+2]
       54 GETUPVAL                         R1 9
       55 CALL                             R1 0 0
       56 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["coordinator"]
        4 DUPTABLE                         R3 K6 [{"gameMetadataCache", "loadedPlaceIds", "sessionIdRef", "sessionMetadataLoaded"}]
        5 NEWTABLE                         R4 0 0
        7 SETTABLEKS                       R4 R3 K2 ["gameMetadataCache"]
        9 NEWTABLE                         R4 0 0
       11 SETTABLEKS                       R4 R3 K3 ["loadedPlaceIds"]
       13 DUPTABLE                         R4 K8 [{"sessionId"}]
       14 LOADK                            R5 K9 [""]
       15 SETTABLEKS                       R5 R4 K7 ["sessionId"]
       17 SETTABLEKS                       R4 R3 K4 ["sessionIdRef"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K10 ["new"]
       22 CALL                             R4 0 1
       23 SETTABLEKS                       R4 R3 K5 ["sessionMetadataLoaded"]
       25 GETUPVAL                         R4 1
       26 MOVE                             R5 R0
       27 MOVE                             R6 R3
       28 CALL                             R4 2 1
       29 LOADNIL                          R5
       30 LOADNIL                          R6
       31 LOADNIL                          R7
       32 NAMECALL                         R8 R1 K11 ["IsGuest"]
       34 CALL                             R8 1 1
       35 JUMPIFNOT                        R8 ; [+47]
       36 GETTABLEKS                       R8 R0 K1 ["coordinator"]
       38 GETTABLEKS                       R9 R0 K12 ["io"]
       40 GETTABLEKS                       R10 R3 K4 ["sessionIdRef"]
       42 GETTABLEKS                       R11 R8 K13 ["onLoadRequested"]
       44 NEWCLOSURE                       R12 P0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R10
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R3
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R8
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          VAL R9
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U8
       56 CAPTURE                          UPVAL U9
       57 CALL                             R11 1 1
       58 MOVE                             R5 R11
       59 GETTABLEKS                       R8 R0 K1 ["coordinator"]
       61 GETTABLEKS                       R9 R0 K12 ["io"]
       63 GETTABLEKS                       R10 R8 K14 ["onSaveReady"]
       65 NEWCLOSURE                       R11 P1
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R8
       69 CALL                             R10 1 1
       70 MOVE                             R6 R10
       71 GETTABLEKS                       R8 R0 K1 ["coordinator"]
       73 GETTABLEKS                       R9 R0 K12 ["io"]
       75 GETTABLEKS                       R10 R8 K15 ["onDeleteRequested"]
       77 NEWCLOSURE                       R11 P2
       78 CAPTURE                          UPVAL U2
       79 CAPTURE                          VAL R9
       80 CAPTURE                          UPVAL U4
       81 CALL                             R10 1 1
       82 MOVE                             R7 R10
       83 LOADK                            R10 K16 ["StudioSessionOrchestration_waitForPendingSavesAsync"]
       84 NEWCLOSURE                       R11 P3
       85 CAPTURE                          VAL R2
       86 NAMECALL                         R8 R1 K17 ["OnGuestInvokeAsync"]
       88 CALL                             R8 3 2
       89 GETTABLEKS                       R10 R1 K18 ["Destroying"]
       91 NEWCLOSURE                       R12 P4
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R4
       94 CAPTURE                          REF R5
       95 CAPTURE                          REF R7
       96 CAPTURE                          UPVAL U10
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R8
      100 CAPTURE                          REF R6
      101 CAPTURE                          VAL R9
      102 NAMECALL                         R10 R10 K19 ["Once"]
      104 CALL                             R10 2 0
      105 CLOSEUPVALS                      R5
      106 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Signal"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K1 [script]
       28 GETTABLEKS                       R4 R4 K6 ["Parent"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R4 K10 ["PersistenceCoordinator"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Flags"]
       39 GETTABLEKS                       R7 R7 K12 ["FFlagAssistantMarkdownPlanMode"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R0 K11 ["Flags"]
       46 GETTABLEKS                       R8 R8 K13 ["FFlagAssistantRemoveWaitForPendingSavesOnDestroy"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K5 [require]
       51 GETTABLEKS                       R9 R0 K11 ["Flags"]
       53 GETTABLEKS                       R9 R9 K14 ["FFlagDebugLogAssistantUI"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K11 ["Flags"]
       60 GETTABLEKS                       R10 R10 K15 ["FIntAssistantAutoSaveInterval"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K11 ["Flags"]
       67 GETTABLEKS                       R11 R11 K16 ["FIntAssistantPersistenceMessageLoadLimit"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R12 R0 K11 ["Flags"]
       74 GETTABLEKS                       R12 R12 K17 ["FIntAssistantPersistenceThreadLoadLimit"]
       76 CALL                             R11 1 1
       77 GETTABLEKS                       R12 R3 K18 ["PersistenceLoadStates"]
       79 GETTABLEKS                       R13 R3 K19 ["ScopeTypes"]
       81 DUPTABLE                         R14 K24 [{"Idle", "Loading", "Loaded", "Failed"}]
       82 LOADK                            R15 K25 ["idle"]
       83 SETTABLEKS                       R15 R14 K20 ["Idle"]
       85 LOADK                            R15 K26 ["loading"]
       86 SETTABLEKS                       R15 R14 K21 ["Loading"]
       88 LOADK                            R15 K27 ["loaded"]
       89 SETTABLEKS                       R15 R14 K22 ["Loaded"]
       91 LOADK                            R15 K28 ["failed"]
       92 SETTABLEKS                       R15 R14 K23 ["Failed"]
       94 DUPCLOSURE                       R15 K29 [PROTO_0]
       95 DUPCLOSURE                       R16 K30 [PROTO_1]
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R2
       98 DUPCLOSURE                       R17 K31 [PROTO_2]
       99 CAPTURE                          VAL R8
      100 DUPCLOSURE                       R18 K32 [PROTO_8]
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R8
      103 DUPCLOSURE                       R19 K33 [PROTO_12]
      104 DUPCLOSURE                       R20 K34 [PROTO_15]
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R8
      107 DUPCLOSURE                       R21 K35 [PROTO_18]
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R20
      112 CAPTURE                          VAL R18
      113 CAPTURE                          VAL R19
      114 DUPCLOSURE                       R22 K36 [PROTO_22]
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R17
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R10
      123 DUPCLOSURE                       R23 K37 [PROTO_26]
      124 CAPTURE                          VAL R13
      125 DUPCLOSURE                       R24 K38 [PROTO_29]
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R8
      128 DUPCLOSURE                       R25 K39 [PROTO_32]
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R21
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R7
      140 DUPTABLE                         R26 K41 [{"trackSessions"}]
      141 SETTABLEKS                       R25 R26 K40 ["trackSessions"]
      143 RETURN                           R26 1
