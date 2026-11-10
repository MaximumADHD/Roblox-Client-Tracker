PROTO_0:
        0 LOADB                            R3 0
        1 GETTABLEKS                       R4 R0 K0 ["sessionId"]
        3 JUMPIFNOTEQ                      R4 R1 ; [+7]
        5 GETTABLEKS                       R4 R0 K1 ["editReady"]
        7 JUMPIFEQ                         R4 R2 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 RETURN                           R3 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADN                            R1 -1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [DateTime.fromIsoDate]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R2 R1 K3 ["UnixTimestampMillis"]
       10 RETURN                           R2 1
       11 LOADN                            R2 -1
       12 RETURN                           R2 1

PROTO_2:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["threads"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K1 ["isDeleted"]
        8 JUMPIF                           R7 ; [+48]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K2 ["getThreadMetadata"]
       12 GETTABLEKS                       R8 R6 K3 ["threadId"]
       14 CALL                             R7 1 1
       15 GETTABLEKS                       R7 R7 K4 ["isNewThread"]
       17 JUMPIF                           R7 ; [+39]
       18 JUMPIFEQKNIL                     R1 ; [+37]
       20 GETTABLEKS                       R7 R6 K5 ["lastActivityAt"]
       22 GETTABLEKS                       R8 R1 K5 ["lastActivityAt"]
       24 JUMPIFLT                         R8 R7 ; [+31]
       26 GETTABLEKS                       R7 R6 K5 ["lastActivityAt"]
       28 GETTABLEKS                       R8 R1 K5 ["lastActivityAt"]
       30 JUMPIFNOTEQ                      R7 R8 ; [+7]
       32 GETTABLEKS                       R7 R6 K6 ["createdAt"]
       34 GETTABLEKS                       R8 R1 K6 ["createdAt"]
       36 JUMPIFLT                         R8 R7 ; [+19]
       38 GETTABLEKS                       R7 R6 K5 ["lastActivityAt"]
       40 GETTABLEKS                       R8 R1 K5 ["lastActivityAt"]
       42 JUMPIFNOTEQ                      R7 R8 ; [+14]
       44 GETTABLEKS                       R7 R6 K6 ["createdAt"]
       46 GETTABLEKS                       R8 R1 K6 ["createdAt"]
       48 JUMPIFNOTEQ                      R7 R8 ; [+8]
       50 GETTABLEKS                       R7 R6 K3 ["threadId"]
       52 GETTABLEKS                       R8 R1 K3 ["threadId"]
       54 JUMPIFNOTLT                      R7 R8 ; [+2]
       56 MOVE                             R1 R6
       57 FORGLOOP                         R2 2 ; [-52]
       59 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K2 [table.clone]
        6 GETTABLEKS                       R4 R0 K3 ["threads"]
        8 CALL                             R3 1 1
        9 NEWTABLE                         R4 0 0
       11 MOVE                             R5 R3
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 FORGPREP                         R5
       15 GETTABLEKS                       R10 R9 K4 ["acpSessionId"]
       17 JUMPIFNOT                        R10 ; [+3]
       18 JUMPIFEQKS                       R10 K5 [""] ; [+2]
       20 SETTABLE                         R8 R4 R10
       21 FORGLOOP                         R5 2 ; [-7]
       23 GETTABLEKS                       R5 R1 K6 ["sessions"]
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 FORGPREP                         R5
       28 GETTABLEKS                       R11 R9 K7 ["sessionId"]
       30 GETTABLE                         R10 R3 R11
       31 JUMPIF                           R10 ; [+67]
       32 GETTABLEKS                       R11 R9 K7 ["sessionId"]
       34 GETTABLE                         R10 R4 R11
       35 JUMPIF                           R10 ; [+63]
       36 GETTABLEKS                       R10 R9 K8 ["title"]
       38 JUMPIFEQKNIL                     R10 ; [+5]
       40 GETTABLEKS                       R10 R9 K8 ["title"]
       42 JUMPIFNOTEQKS                    R10 K5 [""] ; [+10]
       44 GETIMPORT                        R10 K10 [warn]
       46 LOADK                            R11 K11 ["[Assistant][ACP History] session/list entry %* has nil title; expected persisted title from storage"]
       47 GETTABLEKS                       R13 R9 K7 ["sessionId"]
       49 NAMECALL                         R11 R11 K12 ["format"]
       51 CALL                             R11 2 1
       52 CALL                             R10 1 0
       53 GETTABLEKS                       R11 R9 K13 ["updatedAt"]
       55 JUMPIF                           R11 ; [+2]
       56 LOADN                            R10 -1
       57 JUMP                             ; [+9]
       58 GETIMPORT                        R12 K16 [DateTime.fromIsoDate]
       60 MOVE                             R13 R11
       61 CALL                             R12 1 1
       62 JUMPIFNOT                        R12 ; [+3]
       63 GETTABLEKS                       R10 R12 K17 ["UnixTimestampMillis"]
       65 JUMP                             ; [+1]
       66 LOADN                            R10 -1
       67 GETTABLEKS                       R11 R9 K7 ["sessionId"]
       69 DUPTABLE                         R12 K34 [{["threadId"], ["acpSessionId"], ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["lastActivityAt"], ["lastViewedAt"] = -1, ["title"], ["isPinned"] = False, ["messages"], ["messageLoadState"] = , ["messagePageState"] = , ["messageCountAdded"] = 0, ["messageCountLoaded"] = 0}]
       70 GETTABLEKS                       R13 R9 K7 ["sessionId"]
       72 SETTABLEKS                       R13 R12 K18 ["threadId"]
       74 GETTABLEKS                       R13 R9 K7 ["sessionId"]
       76 SETTABLEKS                       R13 R12 K4 ["acpSessionId"]
       78 SETTABLEKS                       R10 R12 K19 ["createdAt"]
       80 SETTABLEKS                       R10 R12 K13 ["updatedAt"]
       82 SETTABLEKS                       R10 R12 K23 ["lastActivityAt"]
       84 GETTABLEKS                       R14 R9 K8 ["title"]
       86 ORK                              R13 R14 K5 [""]
       87 SETTABLEKS                       R13 R12 K8 ["title"]
       89 NEWTABLE                         R13 0 0
       91 SETTABLEKS                       R13 R12 K27 ["messages"]
       93 SETTABLE                         R12 R3 R11
       94 GETTABLEKS                       R11 R9 K7 ["sessionId"]
       96 GETTABLEKS                       R12 R9 K7 ["sessionId"]
       98 SETTABLE                         R12 R4 R11
       99 FORGLOOP                         R5 2 ; [-72]
      101 SETTABLEKS                       R3 R2 K3 ["threads"]
      103 GETUPVAL                         R5 0
      104 GETTABLEKS                       R5 R5 K35 ["PersistenceLoadStates"]
      106 GETTABLEKS                       R5 R5 K36 ["Loaded"]
      108 SETTABLEKS                       R5 R2 K37 ["threadLoadState"]
      110 DUPTABLE                         R5 K39 [{"nextCursor"}]
      111 GETTABLEKS                       R6 R1 K40 ["nextPageToken"]
      113 SETTABLEKS                       R6 R5 K38 ["nextCursor"]
      115 SETTABLEKS                       R5 R2 K41 ["threadPageState"]
      117 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["PersistenceLoadStates"]
        7 GETTABLEKS                       R2 R2 K4 ["Error"]
        9 SETTABLEKS                       R2 R1 K5 ["threadLoadState"]
       11 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["isEditDataModelAvailable"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 JUMPIF                           R0 ; [+2]
        7 LOADB                            R0 1
        8 RETURN                           R0 1
        9 GETIMPORT                        R0 K2 [pcall]
       11 DUPCLOSURE                       R1 K3 [PROTO_5]
       12 CAPTURE                          UPVAL U2
       13 CALL                             R0 1 2
       14 MOVE                             R2 R0
       15 JUMPIFNOT                        R2 ; [+4]
       16 JUMPIFEQKB                       R1 TRUE ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 JUMPIF                           R1 ; [+2]
        7 LOADB                            R0 1
        8 RETURN                           R0 1
        9 GETIMPORT                        R1 K2 [pcall]
       11 DUPCLOSURE                       R2 K3 [PROTO_5]
       12 CAPTURE                          UPVAL U2
       13 CALL                             R1 1 2
       14 MOVE                             R0 R1
       15 JUMPIFNOT                        R0 ; [+4]
       16 JUMPIFEQKB                       R2 TRUE ; [+2]
       18 LOADB                            R0 0 +1
       19 LOADB                            R0 1
       20 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["subscribeEditDataModelAvailabilityChanged"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["get"]
       11 CALL                             R0 0 1
       12 GETIMPORT                        R1 K3 [pcall]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 CALL                             R1 1 2
       18 GETUPVAL                         R3 3
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
       22 JUMPIFNOT                        R5 ; [+5]
       23 GETUPVAL                         R5 1
       24 CALL                             R5 0 1
       25 JUMPIF                           R5 ; [+2]
       26 LOADB                            R4 1
       27 JUMP                             ; [+11]
       28 GETIMPORT                        R5 K3 [pcall]
       30 DUPCLOSURE                       R6 K4 [PROTO_5]
       31 CAPTURE                          UPVAL U2
       32 CALL                             R5 1 2
       33 MOVE                             R4 R5
       34 JUMPIFNOT                        R4 ; [+4]
       35 JUMPIFEQKB                       R6 TRUE ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 CALL                             R3 1 0
       40 NEWCLOSURE                       R3 P2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["PersistenceLoadStates"]
        5 GETTABLEKS                       R1 R1 K1 ["Loading"]
        7 SETTABLEKS                       R1 R0 K2 ["threadLoadState"]
        9 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+7]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K1 ["kind"]
        8 JUMPIFNOTEQKS                    R0 K2 ["idle"] ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 JUMPIFNOTEQKS                    R0 K0 [""] ; [+20]
       14 GETUPVAL                         R0 3
       15 DUPCLOSURE                       R1 K3 [PROTO_12]
       16 CAPTURE                          UPVAL U4
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 5
       19 GETUPVAL                         R1 6
       20 CALL                             R1 0 1
       21 LOADNIL                          R2
       22 CALL                             R0 2 0
       23 GETUPVAL                         R0 7
       24 DUPTABLE                         R1 K7 [{["kind"] = "closed", ["sessionId"], ["editReady"]}]
       25 GETUPVAL                         R2 1
       26 SETTABLEKS                       R2 R1 K5 ["sessionId"]
       28 GETUPVAL                         R2 8
       29 SETTABLEKS                       R2 R1 K6 ["editReady"]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R0 3
       34 DUPCLOSURE                       R1 K8 [PROTO_13]
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U9
       37 CALL                             R0 1 0
       38 GETUPVAL                         R0 7
       39 DUPTABLE                         R1 K11 [{["kind"] = "waitingToList", ["sessionId"], ["editReady"], ["pendingThreadId"]}]
       40 GETUPVAL                         R2 1
       41 SETTABLEKS                       R2 R1 K5 ["sessionId"]
       43 GETUPVAL                         R2 8
       44 SETTABLEKS                       R2 R1 K6 ["editReady"]
       46 GETUPVAL                         R2 10
       47 SETTABLEKS                       R2 R1 K10 ["pendingThreadId"]
       49 CALL                             R0 1 0
       50 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getUserId"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+2]
        3 RETURN                           R0 1
        4 DUPTABLE                         R1 K6 [{[1] = "listed", ["sessionId"], ["editReady"], ["pendingThreadId"], ["response"]}]
        5 GETUPVAL                         R2 1
        6 SETTABLEKS                       R2 R1 K2 ["sessionId"]
        8 GETUPVAL                         R2 2
        9 SETTABLEKS                       R2 R1 K3 ["editReady"]
       11 GETUPVAL                         R2 3
       12 SETTABLEKS                       R2 R1 K4 ["pendingThreadId"]
       14 GETUPVAL                         R2 4
       15 SETTABLEKS                       R2 R1 K5 ["response"]
       17 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["[Assistant][ACP History] session/list failed: %*"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 NAMECALL                         R2 R2 K5 ["format"]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 LOADNIL                          R3
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R3
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["kind"]
        3 JUMPIFNOTEQKS                    R0 K1 ["waitingToList"] ; [+3]
        5 GETUPVAL                         R0 1
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 JUMPIFEQKNIL                     R0 ; [+3]
       11 GETUPVAL                         R0 3
       12 JUMPIF                           R0 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K2 ["pendingThreadId"]
       17 DUPTABLE                         R1 K6 [{[1] = "listing", ["sessionId"], ["editReady"], ["pendingThreadId"]}]
       18 GETUPVAL                         R2 4
       19 SETTABLEKS                       R2 R1 K4 ["sessionId"]
       21 GETUPVAL                         R2 3
       22 SETTABLEKS                       R2 R1 K5 ["editReady"]
       24 SETTABLEKS                       R0 R1 K2 ["pendingThreadId"]
       26 GETUPVAL                         R2 5
       27 MOVE                             R3 R1
       28 CALL                             R2 1 0
       29 GETUPVAL                         R2 6
       30 GETTABLEKS                       R2 R2 K7 ["FFlagDebugLogAssistantUI"]
       32 JUMPIFNOT                        R2 ; [+32]
       33 LOADK                            R2 K8 ["unknown"]
       34 GETIMPORT                        R3 K10 [pcall]
       36 DUPCLOSURE                       R4 K11 [PROTO_15]
       37 CAPTURE                          UPVAL U7
       38 CALL                             R3 1 2
       39 JUMPIFNOT                        R3 ; [+6]
       40 FASTCALL1                        TOSTRING R4 ; [+3]
       41 MOVE                             R6 R4
       42 GETIMPORT                        R5 K13 [tostring]
       44 CALL                             R5 1 1
       45 MOVE                             R2 R5
       46 GETIMPORT                        R5 K15 [print]
       48 LOADK                            R6 K16 ["[Assistant][ACP History] requesting session/list: userId=%*, local GameId=%*, local PlaceId=%*, studioSessionId=%*, harnessSplit=true, remoteService=%*"]
       49 MOVE                             R8 R2
       50 GETIMPORT                        R9 K18 [game]
       52 GETTABLEKS                       R9 R9 K19 ["GameId"]
       54 GETIMPORT                        R10 K18 [game]
       56 GETTABLEKS                       R10 R10 K20 ["PlaceId"]
       58 GETUPVAL                         R11 4
       59 GETUPVAL                         R12 8
       60 CALL                             R12 0 1
       61 NAMECALL                         R6 R6 K21 ["format"]
       63 CALL                             R6 6 1
       64 CALL                             R5 1 0
       65 NEWCLOSURE                       R2 P1
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          VAL R0
       71 GETUPVAL                         R3 2
       72 DUPTABLE                         R5 K24 [{["pageToken"] = }]
       73 NAMECALL                         R3 R3 K25 ["listSessionsPage"]
       75 CALL                             R3 2 1
       76 MOVE                             R5 R2
       77 NAMECALL                         R3 R3 K26 ["andThen"]
       79 CALL                             R3 2 1
       80 NEWCLOSURE                       R5 P2
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          VAL R1
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          VAL R0
       86 NAMECALL                         R3 R3 K27 ["catch"]
       88 CALL                             R3 2 0
       89 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 2
        6 JUMPIFNOT                        R2 ; [+5]
        7 GETUPVAL                         R1 3
        8 MOVE                             R2 R0
        9 GETUPVAL                         R3 2
       10 CALL                             R1 2 1
       11 RETURN                           R1 1
       12 GETIMPORT                        R2 K2 [table.clone]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R3 R3 K3 ["PersistenceLoadStates"]
       19 GETTABLEKS                       R3 R3 K4 ["Error"]
       21 SETTABLEKS                       R3 R2 K5 ["threadLoadState"]
       23 MOVE                             R1 R2
       24 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["kind"]
        3 JUMPIFNOTEQKS                    R0 K1 ["listed"] ; [+3]
        5 GETUPVAL                         R0 1
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["response"]
       11 JUMPIFNOT                        R0 ; [+5]
       12 GETUPVAL                         R1 2
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R0
       15 CALL                             R1 2 1
       16 JUMP                             ; [+13]
       17 GETUPVAL                         R2 3
       18 GETIMPORT                        R3 K5 [table.clone]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K6 ["PersistenceLoadStates"]
       25 GETTABLEKS                       R4 R4 K7 ["Error"]
       27 SETTABLEKS                       R4 R3 K8 ["threadLoadState"]
       29 MOVE                             R1 R3
       30 GETUPVAL                         R2 5
       31 NEWCLOSURE                       R3 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U4
       37 CALL                             R2 1 0
       38 GETUPVAL                         R2 6
       39 DUPTABLE                         R3 K12 [{[1] = "ready", ["sessionId"], ["editReady"]}]
       40 GETUPVAL                         R4 7
       41 SETTABLEKS                       R4 R3 K10 ["sessionId"]
       43 GETUPVAL                         R4 8
       44 SETTABLEKS                       R4 R3 K11 ["editReady"]
       46 CALL                             R2 1 0
       47 GETUPVAL                         R2 9
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K13 ["pendingThreadId"]
       51 JUMPIFEQ                         R2 R3 ; [+2]
       53 RETURN                           R0 0
       54 JUMPIFNOT                        R0 ; [+4]
       55 GETUPVAL                         R2 10
       56 MOVE                             R3 R1
       57 CALL                             R2 1 1
       58 JUMP                             ; [+1]
       59 LOADNIL                          R2
       60 JUMPIFNOT                        R2 ; [+6]
       61 GETUPVAL                         R3 11
       62 GETTABLEKS                       R4 R2 K14 ["threadId"]
       64 LOADNIL                          R5
       65 CALL                             R3 2 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R3 12
       68 GETTABLEKS                       R3 R3 K15 ["getThreadMetadata"]
       70 GETUPVAL                         R4 9
       71 CALL                             R3 1 1
       72 GETTABLEKS                       R3 R3 K16 ["isNewThread"]
       74 JUMPIF                           R3 ; [+5]
       75 GETUPVAL                         R3 11
       76 GETUPVAL                         R4 13
       77 CALL                             R4 0 1
       78 LOADNIL                          R5
       79 CALL                             R3 2 0
       80 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["conversation"]
        9 GETTABLEKS                       R2 R0 K3 ["setConversation"]
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 3
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["useContext"]
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R6 R6 K1 ["Context"]
       21 CALL                             R5 1 1
       22 GETTABLEKS                       R5 R5 K4 ["sessionId"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K0 ["useContext"]
       27 GETUPVAL                         R7 5
       28 GETTABLEKS                       R7 R7 K1 ["Context"]
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R6 R6 K5 ["service"]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K6 ["useState"]
       36 DUPCLOSURE                       R8 K7 [PROTO_7]
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U8
       40 CALL                             R7 1 2
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R9 R9 K6 ["useState"]
       44 DUPTABLE                         R10 K10 [{["kind"] = "idle"}]
       45 CALL                             R9 1 2
       46 LOADB                            R11 0
       47 GETTABLEKS                       R12 R9 K4 ["sessionId"]
       49 JUMPIFNOTEQ                      R12 R5 ; [+7]
       51 GETTABLEKS                       R12 R9 K11 ["editReady"]
       53 JUMPIFEQ                         R12 R7 ; [+2]
       55 LOADB                            R11 0 +1
       56 LOADB                            R11 1
       57 GETUPVAL                         R12 0
       58 GETTABLEKS                       R12 R12 K12 ["useEffect"]
       60 NEWCLOSURE                       R13 P1
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          UPVAL U8
       64 CAPTURE                          VAL R8
       65 NEWTABLE                         R14 0 1
       67 MOVE                             R15 R8
       68 SETLIST                          R14 R15 1 [1]
       70 CALL                             R12 2 0
       71 GETUPVAL                         R12 0
       72 GETTABLEKS                       R12 R12 K13 ["useLayoutEffect"]
       74 NEWCLOSURE                       R13 P2
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R2
       79 CAPTURE                          UPVAL U9
       80 CAPTURE                          VAL R3
       81 CAPTURE                          UPVAL U10
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R7
       84 CAPTURE                          UPVAL U11
       85 CAPTURE                          VAL R4
       86 NEWTABLE                         R14 0 7
       88 MOVE                             R15 R7
       89 MOVE                             R16 R9
       90 MOVE                             R17 R11
       91 MOVE                             R18 R5
       92 MOVE                             R19 R2
       93 MOVE                             R20 R3
       94 MOVE                             R21 R4
       95 SETLIST                          R14 R15 7 [1]
       97 CALL                             R12 2 0
       98 GETUPVAL                         R12 0
       99 GETTABLEKS                       R12 R12 K12 ["useEffect"]
      101 NEWCLOSURE                       R13 P3
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R10
      108 CAPTURE                          UPVAL U6
      109 CAPTURE                          UPVAL U8
      110 CAPTURE                          UPVAL U7
      111 NEWTABLE                         R14 0 5
      113 MOVE                             R15 R6
      114 MOVE                             R16 R7
      115 MOVE                             R17 R9
      116 MOVE                             R18 R11
      117 MOVE                             R19 R5
      118 SETLIST                          R14 R15 5 [1]
      120 CALL                             R12 2 0
      121 GETUPVAL                         R12 0
      122 GETTABLEKS                       R12 R12 K13 ["useLayoutEffect"]
      124 NEWCLOSURE                       R13 P4
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R11
      127 CAPTURE                          UPVAL U12
      128 CAPTURE                          VAL R1
      129 CAPTURE                          UPVAL U11
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R4
      135 CAPTURE                          UPVAL U13
      136 CAPTURE                          VAL R3
      137 CAPTURE                          UPVAL U14
      138 CAPTURE                          UPVAL U10
      139 NEWTABLE                         R14 0 8
      141 MOVE                             R15 R1
      142 MOVE                             R16 R7
      143 MOVE                             R17 R9
      144 MOVE                             R18 R11
      145 MOVE                             R19 R5
      146 MOVE                             R20 R2
      147 MOVE                             R21 R3
      148 MOVE                             R22 R4
      149 SETLIST                          R14 R15 8 [1]
      151 CALL                             R12 2 0
      152 LOADB                            R12 1
      153 GETTABLEKS                       R13 R9 K8 ["kind"]
      155 JUMPIFEQKS                       R13 K14 ["ready"] ; [+7]
      157 GETTABLEKS                       R13 R9 K8 ["kind"]
      159 JUMPIFEQKS                       R13 K15 ["closed"] ; [+2]
      161 LOADB                            R12 0 +1
      162 LOADB                            R12 1
      163 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ACPClientServiceContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["ContentIdGenerator"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K11 ["ConversationContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Guest"]
       36 GETTABLEKS                       R5 R5 K13 ["Environment"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Flags"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Parent"]
       48 GETTABLEKS                       R7 R7 K16 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K7 ["Contexts"]
       57 GETTABLEKS                       R8 R8 K17 ["SessionIdContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K18 ["Types"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K9 ["Util"]
       69 GETTABLEKS                       R10 R10 K19 ["createNewThread"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K9 ["Util"]
       76 GETTABLEKS                       R11 R11 K20 ["makeConversation"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K21 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K22 ["useSwitchThread"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K21 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K23 ["useThreadId"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K24 ["FlagUtils"]
       97 GETTABLEKS                       R14 R14 K25 ["getIsAssistantUseRemoteService"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R13 R13 K26 ["get"]
      102 DUPCLOSURE                       R14 K27 [PROTO_0]
      103 DUPCLOSURE                       R15 K28 [PROTO_1]
      104 DUPCLOSURE                       R16 K29 [PROTO_2]
      105 CAPTURE                          VAL R2
      106 DUPCLOSURE                       R17 K30 [PROTO_3]
      107 CAPTURE                          VAL R8
      108 DUPCLOSURE                       R18 K31 [PROTO_4]
      109 CAPTURE                          VAL R8
      110 DUPCLOSURE                       R19 K32 [PROTO_6]
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R4
      114 DUPCLOSURE                       R20 K33 [PROTO_22]
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R2
      130 RETURN                           R20 1
