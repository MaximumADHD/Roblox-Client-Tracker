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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["isEditDataModelAvailable"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 JUMPIF                           R0 ; [+2]
        7 LOADB                            R0 1
        8 RETURN                           R0 1
        9 GETIMPORT                        R0 K2 [pcall]
       11 DUPCLOSURE                       R1 K3 [PROTO_3]
       12 CAPTURE                          UPVAL U2
       13 CALL                             R0 1 2
       14 MOVE                             R2 R0
       15 JUMPIFNOT                        R2 ; [+4]
       16 JUMPIFEQKB                       R1 TRUE ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 JUMPIF                           R1 ; [+2]
        7 LOADB                            R0 1
        8 RETURN                           R0 1
        9 GETIMPORT                        R1 K2 [pcall]
       11 DUPCLOSURE                       R2 K3 [PROTO_3]
       12 CAPTURE                          UPVAL U2
       13 CALL                             R1 1 2
       14 MOVE                             R0 R1
       15 JUMPIFNOT                        R0 ; [+4]
       16 JUMPIFEQKB                       R2 TRUE ; [+2]
       18 LOADB                            R0 0 +1
       19 LOADB                            R0 1
       20 RETURN                           R0 1

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
       30 DUPCLOSURE                       R6 K4 [PROTO_3]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getUserId"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_14:
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

PROTO_15:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["PersistenceLoadStates"]
        7 GETTABLEKS                       R2 R2 K4 ["Error"]
        9 SETTABLEKS                       R2 R1 K5 ["threadLoadState"]
       11 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 DUPCLOSURE                       R2 K1 [PROTO_15]
        9 CAPTURE                          UPVAL U3
       10 CALL                             R1 1 0
       11 GETIMPORT                        R1 K3 [warn]
       13 LOADK                            R2 K4 ["[Assistant][ACP History] session/list failed: %*"]
       14 FASTCALL1                        TOSTRING R0 ; [+3]
       15 MOVE                             R5 R0
       16 GETIMPORT                        R4 K6 [tostring]
       18 CALL                             R4 1 1
       19 NAMECALL                         R2 R2 K7 ["format"]
       21 CALL                             R2 2 1
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_17:
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
       60 JUMPIFNOT                        R1 ; [+32]
       61 LOADK                            R1 K8 ["unknown"]
       62 GETIMPORT                        R2 K10 [pcall]
       64 DUPCLOSURE                       R3 K11 [PROTO_12]
       65 CAPTURE                          UPVAL U10
       66 CALL                             R2 1 2
       67 JUMPIFNOT                        R2 ; [+6]
       68 FASTCALL1                        TOSTRING R3 ; [+3]
       69 MOVE                             R5 R3
       70 GETIMPORT                        R4 K13 [tostring]
       72 CALL                             R4 1 1
       73 MOVE                             R1 R4
       74 GETIMPORT                        R4 K15 [print]
       76 LOADK                            R5 K16 ["[Assistant][ACP History] requesting session/list: userId=%*, local GameId=%*, local PlaceId=%*, studioSessionId=%*, harnessSplit=true, remoteService=%*"]
       77 MOVE                             R7 R1
       78 GETIMPORT                        R8 K18 [game]
       80 GETTABLEKS                       R8 R8 K19 ["GameId"]
       82 GETIMPORT                        R9 K18 [game]
       84 GETTABLEKS                       R9 R9 K20 ["PlaceId"]
       86 GETUPVAL                         R10 0
       87 GETUPVAL                         R11 11
       88 CALL                             R11 0 1
       89 NAMECALL                         R5 R5 K21 ["format"]
       91 CALL                             R5 6 1
       92 CALL                             R4 1 0
       93 GETUPVAL                         R1 6
       94 DUPTABLE                         R3 K24 [{["pageToken"] = }]
       95 NAMECALL                         R1 R1 K25 ["listSessionsPage"]
       97 CALL                             R1 2 1
       98 NEWCLOSURE                       R3 P1
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U8
      101 CAPTURE                          UPVAL U12
      102 CAPTURE                          UPVAL U13
      103 NAMECALL                         R1 R1 K26 ["andThen"]
      105 CALL                             R1 2 1
      106 NEWCLOSURE                       R3 P2
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U8
      109 CAPTURE                          UPVAL U12
      110 CAPTURE                          UPVAL U4
      111 NAMECALL                         R1 R1 K27 ["catch"]
      113 CALL                             R1 2 0
      114 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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
       39 CAPTURE                          UPVAL U8
       40 CALL                             R7 1 2
       41 LOADK                            R9 K8 ["%*:%*"]
       42 MOVE                             R11 R5
       43 FASTCALL1                        TOSTRING R7 ; [+3]
       44 MOVE                             R13 R7
       45 GETIMPORT                        R12 K10 [tostring]
       47 CALL                             R12 1 1
       48 NAMECALL                         R9 R9 K11 ["format"]
       50 CALL                             R9 3 1
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
       82 CAPTURE                          UPVAL U8
       83 CAPTURE                          VAL R8
       84 NEWTABLE                         R18 0 1
       86 MOVE                             R19 R8
       87 SETLIST                          R18 R19 1 [1]
       89 CALL                             R16 2 0
       90 GETUPVAL                         R16 0
       91 GETTABLEKS                       R16 R16 K14 ["useLayoutEffect"]
       93 NEWCLOSURE                       R17 P2
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R2
      103 CAPTURE                          UPVAL U9
      104 CAPTURE                          UPVAL U10
      105 NEWTABLE                         R18 0 5
      107 MOVE                             R19 R9
      108 MOVE                             R20 R5
      109 MOVE                             R21 R2
      110 MOVE                             R22 R15
      111 MOVE                             R23 R4
      112 SETLIST                          R18 R19 5 [1]
      114 CALL                             R16 2 0
      115 GETUPVAL                         R16 0
      116 GETTABLEKS                       R16 R16 K13 ["useEffect"]
      118 NEWCLOSURE                       R17 P3
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R1
      123 CAPTURE                          UPVAL U10
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R13
      128 CAPTURE                          UPVAL U6
      129 CAPTURE                          UPVAL U8
      130 CAPTURE                          UPVAL U7
      131 CAPTURE                          VAL R2
      132 CAPTURE                          UPVAL U11
      133 NEWTABLE                         R18 0 6
      135 MOVE                             R19 R6
      136 GETTABLEKS                       R20 R1 K15 ["threadLoadState"]
      138 MOVE                             R21 R7
      139 MOVE                             R22 R9
      140 MOVE                             R23 R5
      141 MOVE                             R24 R2
      142 SETLIST                          R18 R19 6 [1]
      144 CALL                             R16 2 0
      145 GETUPVAL                         R16 0
      146 GETTABLEKS                       R16 R16 K14 ["useLayoutEffect"]
      148 NEWCLOSURE                       R17 P4
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R1
      151 CAPTURE                          UPVAL U10
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R15
      154 CAPTURE                          UPVAL U12
      155 CAPTURE                          VAL R3
      156 CAPTURE                          UPVAL U13
      157 CAPTURE                          UPVAL U14
      158 NEWTABLE                         R18 0 4
      160 MOVE                             R19 R1
      161 MOVE                             R20 R15
      162 MOVE                             R21 R3
      163 MOVE                             R22 R4
      164 SETLIST                          R18 R19 4 [1]
      166 CALL                             R16 2 0
      167 RETURN                           R14 1

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
      104 CAPTURE                          VAL R2
      105 DUPCLOSURE                       R16 K29 [PROTO_2]
      106 CAPTURE                          VAL R8
      107 DUPCLOSURE                       R17 K30 [PROTO_4]
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R4
      111 DUPCLOSURE                       R18 K31 [PROTO_19]
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R9
      127 RETURN                           R18 1
