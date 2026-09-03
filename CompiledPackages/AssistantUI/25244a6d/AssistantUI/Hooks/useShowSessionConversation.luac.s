PROTO_0:
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

PROTO_1:
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

PROTO_2:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K2 [table.clone]
        6 GETTABLEKS                       R4 R0 K3 ["threads"]
        8 CALL                             R3 1 1
        9 NEWTABLE                         R4 0 0
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K4 ["FFlagAssistantDedupeAcpSessionListThreads"]
       14 JUMPIFNOT                        R5 ; [+12]
       15 MOVE                             R5 R3
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 GETTABLEKS                       R10 R9 K5 ["acpSessionId"]
       21 JUMPIFNOT                        R10 ; [+3]
       22 JUMPIFEQKS                       R10 K6 [""] ; [+2]
       24 SETTABLE                         R8 R4 R10
       25 FORGLOOP                         R5 2 ; [-7]
       27 GETTABLEKS                       R5 R1 K7 ["sessions"]
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 GETTABLEKS                       R11 R9 K8 ["sessionId"]
       34 GETTABLE                         R10 R3 R11
       35 JUMPIF                           R10 ; [+68]
       36 GETTABLEKS                       R11 R9 K8 ["sessionId"]
       38 GETTABLE                         R10 R4 R11
       39 JUMPIF                           R10 ; [+64]
       40 GETTABLEKS                       R10 R9 K9 ["title"]
       42 JUMPIFEQKNIL                     R10 ; [+5]
       44 GETTABLEKS                       R10 R9 K9 ["title"]
       46 JUMPIFNOTEQKS                    R10 K6 [""] ; [+11]
       48 GETIMPORT                        R10 K11 [warn]
       50 LOADK                            R12 K12 ["[Assistant][ACP History] session/list entry %* has nil title; expected persisted title from storage"]
       51 GETTABLEKS                       R14 R9 K8 ["sessionId"]
       53 NAMECALL                         R12 R12 K13 ["format"]
       55 CALL                             R12 2 1
       56 MOVE                             R11 R12
       57 CALL                             R10 1 0
       58 GETTABLEKS                       R11 R9 K14 ["updatedAt"]
       60 JUMPIF                           R11 ; [+2]
       61 LOADN                            R10 -1
       62 JUMP                             ; [+9]
       63 GETIMPORT                        R12 K17 [DateTime.fromIsoDate]
       65 MOVE                             R13 R11
       66 CALL                             R12 1 1
       67 JUMPIFNOT                        R12 ; [+3]
       68 GETTABLEKS                       R10 R12 K18 ["UnixTimestampMillis"]
       70 JUMP                             ; [+1]
       71 LOADN                            R10 -1
       72 GETTABLEKS                       R11 R9 K8 ["sessionId"]
       74 DUPTABLE                         R12 K35 [{["threadId"], ["acpSessionId"], ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["lastActivityAt"], ["lastViewedAt"] = -1, ["title"], ["isPinned"] = False, ["messages"], ["messageLoadState"] = , ["messagePageState"] = , ["messageCountAdded"] = 0, ["messageCountLoaded"] = 0}]
       75 GETTABLEKS                       R13 R9 K8 ["sessionId"]
       77 SETTABLEKS                       R13 R12 K19 ["threadId"]
       79 GETTABLEKS                       R13 R9 K8 ["sessionId"]
       81 SETTABLEKS                       R13 R12 K5 ["acpSessionId"]
       83 SETTABLEKS                       R10 R12 K20 ["createdAt"]
       85 SETTABLEKS                       R10 R12 K14 ["updatedAt"]
       87 SETTABLEKS                       R10 R12 K24 ["lastActivityAt"]
       89 GETTABLEKS                       R14 R9 K9 ["title"]
       91 ORK                              R13 R14 K6 [""]
       92 SETTABLEKS                       R13 R12 K9 ["title"]
       94 NEWTABLE                         R13 0 0
       96 SETTABLEKS                       R13 R12 K28 ["messages"]
       98 SETTABLE                         R12 R3 R11
       99 GETTABLEKS                       R11 R9 K8 ["sessionId"]
      101 GETTABLEKS                       R12 R9 K8 ["sessionId"]
      103 SETTABLE                         R12 R4 R11
      104 FORGLOOP                         R5 2 ; [-73]
      106 SETTABLEKS                       R3 R2 K3 ["threads"]
      108 GETUPVAL                         R5 1
      109 GETTABLEKS                       R5 R5 K36 ["PersistenceLoadStates"]
      111 GETTABLEKS                       R5 R5 K37 ["Loaded"]
      113 SETTABLEKS                       R5 R2 K38 ["threadLoadState"]
      115 DUPTABLE                         R5 K40 [{"nextCursor"}]
      116 GETTABLEKS                       R6 R1 K41 ["nextPageToken"]
      118 SETTABLEKS                       R6 R5 K39 ["nextCursor"]
      120 SETTABLEKS                       R5 R2 K42 ["threadPageState"]
      122 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["isEditDataModelAvailable"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseRemoteService"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADB                            R0 1
        5 RETURN                           R0 1
        6 GETIMPORT                        R0 K2 [pcall]
        8 DUPCLOSURE                       R1 K3 [PROTO_3]
        9 CAPTURE                          UPVAL U1
       10 CALL                             R0 1 2
       11 MOVE                             R2 R0
       12 JUMPIFNOT                        R2 ; [+4]
       13 JUMPIFEQKB                       R1 TRUE ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseRemoteService"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADB                            R0 1
        5 RETURN                           R0 1
        6 GETIMPORT                        R1 K2 [pcall]
        8 DUPCLOSURE                       R2 K3 [PROTO_3]
        9 CAPTURE                          UPVAL U1
       10 CALL                             R1 1 2
       11 MOVE                             R0 R1
       12 JUMPIFNOT                        R0 ; [+4]
       13 JUMPIFEQKB                       R2 TRUE ; [+2]
       15 LOADB                            R0 0 +1
       16 LOADB                            R0 1
       17 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["subscribeEditDataModelAvailabilityChanged"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseRemoteService"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["get"]
        8 CALL                             R0 0 1
        9 GETIMPORT                        R1 K3 [pcall]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CALL                             R1 1 2
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantUseRemoteService"]
       19 JUMPIF                           R5 ; [+2]
       20 LOADB                            R4 1
       21 JUMP                             ; [+11]
       22 GETIMPORT                        R5 K3 [pcall]
       24 DUPCLOSURE                       R6 K4 [PROTO_3]
       25 CAPTURE                          UPVAL U1
       26 CALL                             R5 1 2
       27 MOVE                             R4 R5
       28 JUMPIFNOT                        R4 ; [+4]
       29 JUMPIFEQKB                       R6 TRUE ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 CALL                             R3 1 0
       34 NEWCLOSURE                       R3 P2
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["PersistenceLoadStates"]
        5 GETTABLEKS                       R1 R1 K1 ["Loading"]
        7 SETTABLEKS                       R1 R0 K2 ["threadLoadState"]
        9 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 [""] ; [+7]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["current"]
        6 GETUPVAL                         R1 2
        7 JUMPIFNOTEQ                      R0 R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 2
       12 SETTABLEKS                       R1 R0 K1 ["current"]
       14 GETUPVAL                         R0 3
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K1 ["current"]
       18 GETUPVAL                         R0 4
       19 GETTABLEKS                       R1 R0 K1 ["current"]
       21 ADDK                             R1 R1 K2 [1]
       22 SETTABLEKS                       R1 R0 K1 ["current"]
       24 GETUPVAL                         R0 5
       25 GETUPVAL                         R1 6
       26 SETTABLEKS                       R1 R0 K1 ["current"]
       28 GETUPVAL                         R0 7
       29 LOADB                            R1 0
       30 CALL                             R0 1 0
       31 GETUPVAL                         R0 8
       32 DUPCLOSURE                       R1 K3 [PROTO_10]
       33 CAPTURE                          UPVAL U9
       34 CAPTURE                          UPVAL U10
       35 CALL                             R0 1 0
       36 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["PersistenceLoadStates"]
        7 GETTABLEKS                       R2 R2 K4 ["Error"]
        9 SETTABLEKS                       R2 R1 K5 ["threadLoadState"]
       11 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 DUPCLOSURE                       R2 K1 [PROTO_14]
        9 CAPTURE                          UPVAL U3
       10 CALL                             R1 1 0
       11 GETIMPORT                        R1 K3 [warn]
       13 LOADK                            R3 K4 ["[Assistant][ACP History] session/list failed: %*"]
       14 FASTCALL1                        TOSTRING R0 ; [+3]
       15 MOVE                             R6 R0
       16 GETIMPORT                        R5 K6 [tostring]
       18 CALL                             R5 1 1
       19 NAMECALL                         R3 R3 K7 ["format"]
       21 CALL                             R3 2 1
       22 MOVE                             R2 R3
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 GETUPVAL                         R1 2
        8 JUMPIFNOTEQ                      R0 R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K2 ["threadLoadState"]
       14 GETUPVAL                         R1 4
       15 GETTABLEKS                       R1 R1 K3 ["PersistenceLoadStates"]
       17 GETTABLEKS                       R1 R1 K4 ["Loaded"]
       19 JUMPIFEQ                         R0 R1 ; [+11]
       21 GETUPVAL                         R0 3
       22 GETTABLEKS                       R0 R0 K2 ["threadLoadState"]
       24 GETUPVAL                         R1 4
       25 GETTABLEKS                       R1 R1 K3 ["PersistenceLoadStates"]
       27 GETTABLEKS                       R1 R1 K5 ["Error"]
       29 JUMPIFNOTEQ                      R0 R1 ; [+2]
       31 RETURN                           R0 0
       32 GETUPVAL                         R0 5
       33 GETTABLEKS                       R0 R0 K1 ["current"]
       35 JUMPIFNOTEQKNIL                  R0 ; [+2]
       37 RETURN                           R0 0
       38 GETUPVAL                         R0 6
       39 JUMPIFEQKNIL                     R0 ; [+3]
       41 GETUPVAL                         R0 7
       42 JUMPIF                           R0 ; [+1]
       43 RETURN                           R0 0
       44 GETUPVAL                         R0 1
       45 GETUPVAL                         R1 2
       46 SETTABLEKS                       R1 R0 K1 ["current"]
       48 GETUPVAL                         R0 8
       49 GETTABLEKS                       R1 R0 K1 ["current"]
       51 ADDK                             R1 R1 K6 [1]
       52 SETTABLEKS                       R1 R0 K1 ["current"]
       54 GETUPVAL                         R0 8
       55 GETTABLEKS                       R0 R0 K1 ["current"]
       57 GETUPVAL                         R1 9
       58 GETTABLEKS                       R1 R1 K7 ["FFlagDebugLogAssistantUI"]
       60 JUMPIFNOT                        R1 ; [+17]
       61 GETIMPORT                        R1 K9 [print]
       63 LOADK                            R3 K10 ["[Assistant][ACP History] requesting session/list: local GameId=%*, local PlaceId=%*, studioSessionId=%*"]
       64 GETIMPORT                        R5 K12 [game]
       66 GETTABLEKS                       R5 R5 K13 ["GameId"]
       68 GETIMPORT                        R6 K12 [game]
       70 GETTABLEKS                       R6 R6 K14 ["PlaceId"]
       72 GETUPVAL                         R7 0
       73 NAMECALL                         R3 R3 K15 ["format"]
       75 CALL                             R3 4 1
       76 MOVE                             R2 R3
       77 CALL                             R1 1 0
       78 GETUPVAL                         R1 6
       79 DUPTABLE                         R3 K18 [{["pageToken"] = }]
       80 NAMECALL                         R1 R1 K19 ["listSessionsPage"]
       82 CALL                             R1 2 1
       83 NEWCLOSURE                       R3 P0
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U8
       86 CAPTURE                          UPVAL U10
       87 CAPTURE                          UPVAL U11
       88 NAMECALL                         R1 R1 K20 ["andThen"]
       90 CALL                             R1 2 1
       91 NEWCLOSURE                       R3 P1
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U8
       94 CAPTURE                          UPVAL U10
       95 CAPTURE                          UPVAL U4
       96 NAMECALL                         R1 R1 K21 ["catch"]
       98 CALL                             R1 2 0
       99 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["threadLoadState"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["PersistenceLoadStates"]
       12 GETTABLEKS                       R2 R2 K3 ["Loaded"]
       14 JUMPIFEQ                         R1 R2 ; [+9]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K2 ["PersistenceLoadStates"]
       19 GETTABLEKS                       R2 R2 K4 ["Error"]
       21 JUMPIFEQ                         R1 R2 ; [+2]
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 3
       25 JUMPIFEQ                         R2 R0 ; [+9]
       27 GETUPVAL                         R2 0
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R2 K0 ["current"]
       31 GETUPVAL                         R2 4
       32 LOADB                            R3 1
       33 CALL                             R2 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 0
       36 LOADNIL                          R3
       37 SETTABLEKS                       R3 R2 K0 ["current"]
       39 GETUPVAL                         R2 2
       40 GETTABLEKS                       R2 R2 K2 ["PersistenceLoadStates"]
       42 GETTABLEKS                       R2 R2 K3 ["Loaded"]
       44 JUMPIFNOTEQ                      R1 R2 ; [+14]
       46 GETUPVAL                         R2 5
       47 GETUPVAL                         R3 1
       48 CALL                             R2 1 1
       49 JUMPIFNOT                        R2 ; [+9]
       50 GETUPVAL                         R3 6
       51 GETTABLEKS                       R4 R2 K5 ["threadId"]
       53 LOADNIL                          R5
       54 CALL                             R3 2 0
       55 GETUPVAL                         R3 4
       56 LOADB                            R4 1
       57 CALL                             R3 1 0
       58 RETURN                           R0 0
       59 GETUPVAL                         R2 7
       60 GETTABLEKS                       R2 R2 K6 ["getThreadMetadata"]
       62 GETUPVAL                         R3 3
       63 CALL                             R2 1 1
       64 GETTABLEKS                       R2 R2 K7 ["isNewThread"]
       66 JUMPIF                           R2 ; [+5]
       67 GETUPVAL                         R2 6
       68 GETUPVAL                         R3 8
       69 CALL                             R3 0 1
       70 LOADNIL                          R4
       71 CALL                             R2 2 0
       72 GETUPVAL                         R2 4
       73 LOADB                            R3 1
       74 CALL                             R2 1 0
       75 RETURN                           R0 0

PROTO_18:
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
       36 DUPCLOSURE                       R8 K7 [PROTO_5]
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U7
       39 CALL                             R7 1 2
       40 LOADK                            R10 K8 ["%*:%*"]
       41 MOVE                             R12 R5
       42 FASTCALL1                        TOSTRING R7 ; [+3]
       43 MOVE                             R14 R7
       44 GETIMPORT                        R13 K10 [tostring]
       46 CALL                             R13 1 1
       47 NAMECALL                         R10 R10 K11 ["format"]
       49 CALL                             R10 3 1
       50 MOVE                             R9 R10
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R10 R10 K12 ["useRef"]
       54 LOADNIL                          R11
       55 CALL                             R10 1 1
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R11 R11 K12 ["useRef"]
       59 LOADNIL                          R12
       60 CALL                             R11 1 1
       61 GETUPVAL                         R12 0
       62 GETTABLEKS                       R12 R12 K12 ["useRef"]
       64 LOADNIL                          R13
       65 CALL                             R12 1 1
       66 GETUPVAL                         R13 0
       67 GETTABLEKS                       R13 R13 K12 ["useRef"]
       69 LOADN                            R14 0
       70 CALL                             R13 1 1
       71 GETUPVAL                         R14 0
       72 GETTABLEKS                       R14 R14 K6 ["useState"]
       74 LOADB                            R15 0
       75 CALL                             R14 1 2
       76 GETUPVAL                         R16 0
       77 GETTABLEKS                       R16 R16 K13 ["useEffect"]
       79 NEWCLOSURE                       R17 P1
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          UPVAL U7
       82 CAPTURE                          VAL R8
       83 NEWTABLE                         R18 0 1
       85 MOVE                             R19 R8
       86 SETLIST                          R18 R19 1 [1]
       88 CALL                             R16 2 0
       89 GETUPVAL                         R16 0
       90 GETTABLEKS                       R16 R16 K14 ["useLayoutEffect"]
       92 NEWCLOSURE                       R17 P2
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R2
      102 CAPTURE                          UPVAL U8
      103 CAPTURE                          UPVAL U9
      104 NEWTABLE                         R18 0 5
      106 MOVE                             R19 R9
      107 MOVE                             R20 R5
      108 MOVE                             R21 R2
      109 MOVE                             R22 R15
      110 MOVE                             R23 R4
      111 SETLIST                          R18 R19 5 [1]
      113 CALL                             R16 2 0
      114 GETUPVAL                         R16 0
      115 GETTABLEKS                       R16 R16 K13 ["useEffect"]
      117 NEWCLOSURE                       R17 P3
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R1
      122 CAPTURE                          UPVAL U9
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R13
      127 CAPTURE                          UPVAL U6
      128 CAPTURE                          VAL R2
      129 CAPTURE                          UPVAL U10
      130 NEWTABLE                         R18 0 6
      132 MOVE                             R19 R6
      133 GETTABLEKS                       R20 R1 K15 ["threadLoadState"]
      135 MOVE                             R21 R7
      136 MOVE                             R22 R9
      137 MOVE                             R23 R5
      138 MOVE                             R24 R2
      139 SETLIST                          R18 R19 6 [1]
      141 CALL                             R16 2 0
      142 GETUPVAL                         R16 0
      143 GETTABLEKS                       R16 R16 K14 ["useLayoutEffect"]
      145 NEWCLOSURE                       R17 P4
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R1
      148 CAPTURE                          UPVAL U9
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R15
      151 CAPTURE                          UPVAL U11
      152 CAPTURE                          VAL R3
      153 CAPTURE                          UPVAL U12
      154 CAPTURE                          UPVAL U13
      155 NEWTABLE                         R18 0 4
      157 MOVE                             R19 R1
      158 MOVE                             R20 R15
      159 MOVE                             R21 R3
      160 MOVE                             R22 R4
      161 SETLIST                          R18 R19 4 [1]
      163 CALL                             R16 2 0
      164 RETURN                           R14 1

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
       93 DUPCLOSURE                       R13 K24 [PROTO_0]
       94 DUPCLOSURE                       R14 K25 [PROTO_1]
       95 CAPTURE                          VAL R2
       96 DUPCLOSURE                       R15 K26 [PROTO_2]
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R8
       99 DUPCLOSURE                       R16 K27 [PROTO_4]
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R4
      102 DUPCLOSURE                       R17 K28 [PROTO_18]
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R9
      117 RETURN                           R17 1
