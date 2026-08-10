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
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["PersistenceLoadStates"]
        7 GETTABLEKS                       R2 R2 K4 ["Loading"]
        9 SETTABLEKS                       R2 R1 K5 ["threadLoadState"]
       11 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [table.clone]
        6 GETTABLEKS                       R3 R0 K3 ["threads"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K4 ["sessions"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETTABLEKS                       R9 R7 K5 ["sessionId"]
       17 GETTABLE                         R8 R2 R9
       18 JUMPIF                           R8 ; [+59]
       19 GETTABLEKS                       R8 R7 K6 ["title"]
       21 JUMPIFEQKNIL                     R8 ; [+5]
       23 GETTABLEKS                       R8 R7 K6 ["title"]
       25 JUMPIFNOTEQKS                    R8 K7 [""] ; [+11]
       27 GETIMPORT                        R8 K9 [warn]
       29 LOADK                            R10 K10 ["[Assistant][ACP History] session/list entry %* has nil title; expected persisted title from storage"]
       30 GETTABLEKS                       R12 R7 K5 ["sessionId"]
       32 NAMECALL                         R10 R10 K11 ["format"]
       34 CALL                             R10 2 1
       35 MOVE                             R9 R10
       36 CALL                             R8 1 0
       37 GETTABLEKS                       R9 R7 K12 ["updatedAt"]
       39 JUMPIF                           R9 ; [+2]
       40 LOADN                            R8 -1
       41 JUMP                             ; [+9]
       42 GETIMPORT                        R10 K15 [DateTime.fromIsoDate]
       44 MOVE                             R11 R9
       45 CALL                             R10 1 1
       46 JUMPIFNOT                        R10 ; [+3]
       47 GETTABLEKS                       R8 R10 K16 ["UnixTimestampMillis"]
       49 JUMP                             ; [+1]
       50 LOADN                            R8 -1
       51 GETTABLEKS                       R9 R7 K5 ["sessionId"]
       53 DUPTABLE                         R10 K34 [{["threadId"], ["acpSessionId"], ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["lastActivityAt"], ["lastViewedAt"] = -1, ["title"], ["isPinned"] = False, ["messages"], ["messageLoadState"] = , ["messagePageState"] = , ["messageCountAdded"] = 0, ["messageCountLoaded"] = 0}]
       54 GETTABLEKS                       R11 R7 K5 ["sessionId"]
       56 SETTABLEKS                       R11 R10 K17 ["threadId"]
       58 GETTABLEKS                       R11 R7 K5 ["sessionId"]
       60 SETTABLEKS                       R11 R10 K18 ["acpSessionId"]
       62 SETTABLEKS                       R8 R10 K19 ["createdAt"]
       64 SETTABLEKS                       R8 R10 K12 ["updatedAt"]
       66 SETTABLEKS                       R8 R10 K23 ["lastActivityAt"]
       68 GETTABLEKS                       R12 R7 K6 ["title"]
       70 ORK                              R11 R12 K7 [""]
       71 SETTABLEKS                       R11 R10 K6 ["title"]
       73 NEWTABLE                         R11 0 0
       75 SETTABLEKS                       R11 R10 K27 ["messages"]
       77 SETTABLE                         R10 R2 R9
       78 FORGLOOP                         R3 2 ; [-64]
       80 SETTABLEKS                       R2 R1 K3 ["threads"]
       82 GETUPVAL                         R3 1
       83 GETTABLEKS                       R3 R3 K35 ["PersistenceLoadStates"]
       85 GETTABLEKS                       R3 R3 K36 ["Loaded"]
       87 SETTABLEKS                       R3 R1 K37 ["threadLoadState"]
       89 DUPTABLE                         R3 K39 [{"nextCursor"}]
       90 GETUPVAL                         R4 0
       91 GETTABLEKS                       R4 R4 K40 ["nextPageToken"]
       93 SETTABLEKS                       R4 R3 K38 ["nextCursor"]
       95 SETTABLEKS                       R3 R1 K41 ["threadPageState"]
       97 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R2 K0 [PROTO_4]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K2 [warn]
        6 LOADK                            R3 K3 ["[Assistant][ACP History] session/list failed: %*"]
        7 FASTCALL1                        TOSTRING R0 ; [+3]
        8 MOVE                             R6 R0
        9 GETIMPORT                        R5 K5 [tostring]
       11 CALL                             R5 1 1
       12 NAMECALL                         R3 R3 K6 ["format"]
       14 CALL                             R3 2 1
       15 MOVE                             R2 R3
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+18]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R3 K3 ["[Assistant][ACP History] requesting session/list: local GameId=%*, local PlaceId=%*, enabled=%*, studioSessionId=%*"]
        7 GETIMPORT                        R5 K5 [game]
        9 GETTABLEKS                       R5 R5 K6 ["GameId"]
       11 GETIMPORT                        R6 K5 [game]
       13 GETTABLEKS                       R6 R6 K7 ["PlaceId"]
       15 GETUPVAL                         R7 1
       16 GETUPVAL                         R8 2
       17 NAMECALL                         R3 R3 K8 ["format"]
       19 CALL                             R3 5 1
       20 MOVE                             R2 R3
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 1
       23 JUMPIFNOT                        R1 ; [+5]
       24 GETUPVAL                         R1 3
       25 JUMPIFNOT                        R1 ; [+3]
       26 GETUPVAL                         R1 2
       27 JUMPIFNOTEQKS                    R1 K9 [""] ; [+2]
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 4
       31 DUPCLOSURE                       R2 K10 [PROTO_1]
       32 CAPTURE                          UPVAL U5
       33 CALL                             R1 1 0
       34 GETUPVAL                         R1 3
       35 DUPTABLE                         R3 K12 [{"pageToken"}]
       36 SETTABLEKS                       R0 R3 K11 ["pageToken"]
       38 NAMECALL                         R1 R1 K13 ["listSessionsPage"]
       40 CALL                             R1 2 1
       41 NEWCLOSURE                       R3 P1
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 NAMECALL                         R1 R1 K14 ["andThen"]
       46 CALL                             R1 2 1
       47 NEWCLOSURE                       R3 P2
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U5
       50 NAMECALL                         R1 R1 K15 ["catch"]
       52 CALL                             R1 2 0
       53 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+10]
        2 NEWTABLE                         R1 0 0
        4 SETTABLEKS                       R1 R0 K0 ["messages"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K1 ["messageCountAdded"]
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K2 ["messageCountLoaded"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K3 ["PersistenceLoadStates"]
       15 GETTABLEKS                       R1 R1 K4 ["Loading"]
       17 SETTABLEKS                       R1 R0 K5 ["messageLoadState"]
       19 MOVE                             R1 R0
       20 DUPTABLE                         R2 K8 [{["rawTransformValues"] = True}]
       21 RETURN                           R1 2

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["threadId"]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 2
       11 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       13 MOVE                             R5 R2
       14 GETIMPORT                        R3 K5 [table.insert]
       16 CALL                             R3 2 0
       17 RETURN                           R2 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["threadId"]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_10:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["threadId"]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["setClientToolUiContext"]
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["title"]
        3 SETTABLEKS                       R1 R0 K0 ["title"]
        5 MOVE                             R1 R0
        6 DUPTABLE                         R2 K3 [{["rawTransformValues"] = True}]
        7 RETURN                           R1 2

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["title"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["handleUpdate"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K1 ["messageCountLoaded"]
        2 ORK                              R1 R2 K0 [0]
        3 GETUPVAL                         R3 0
        4 LENGTH                           R2 R3
        5 GETUPVAL                         R3 0
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R9 R0 K2 ["messages"]
       11 GETTABLE                         R8 R9 R7
       12 JUMPIFNOT                        R8 ; [+6]
       13 ADD                              R12 R1 R2
       14 SUB                              R11 R12 R6
       15 ADDK                             R10 R11 K3 [1]
       16 MINUS                            R9 R10
       17 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       19 FORGLOOP                         R3 2 ; [-11]
       21 LOADN                            R4 0
       22 GETTABLEKS                       R6 R0 K5 ["messageCountAdded"]
       24 SUB                              R5 R6 R2
       25 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       27 GETIMPORT                        R3 K8 [math.max]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R0 K5 ["messageCountAdded"]
       32 ADD                              R3 R1 R2
       33 SETTABLEKS                       R3 R0 K1 ["messageCountLoaded"]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K9 ["PersistenceLoadStates"]
       38 GETTABLEKS                       R3 R3 K10 ["Loaded"]
       40 SETTABLEKS                       R3 R0 K11 ["messageLoadState"]
       42 DUPTABLE                         R3 K13 [{"nextCursor"}]
       43 GETUPVAL                         R4 2
       44 GETTABLEKS                       R4 R4 K14 ["nextHistoryPageToken"]
       46 SETTABLEKS                       R4 R3 K12 ["nextCursor"]
       48 SETTABLEKS                       R3 R0 K15 ["messagePageState"]
       50 MOVE                             R3 R0
       51 DUPTABLE                         R4 K18 [{["rawTransformValues"] = True}]
       52 RETURN                           R3 2

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PersistenceLoadStates"]
        3 GETTABLEKS                       R1 R1 K1 ["Error"]
        5 SETTABLEKS                       R1 R0 K2 ["messageLoadState"]
        7 MOVE                             R1 R0
        8 DUPTABLE                         R2 K5 [{["rawTransformValues"] = True}]
        9 RETURN                           R1 2

PROTO_18:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["[Assistant][ACP History] session/load failed: %*"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R6 R0
        5 GETIMPORT                        R5 K4 [tostring]
        7 CALL                             R5 1 1
        8 NAMECALL                         R3 R3 K5 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 0
       14 GETUPVAL                         R2 1
       15 DUPCLOSURE                       R3 K6 [PROTO_17]
       16 CAPTURE                          UPVAL U2
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["clearInputDisabled"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 2
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["acpSessionId"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 3
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K0 ["acpSessionId"]
       15 JUMPIFEQKNIL                     R0 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 NEWTABLE                         R4 0 0
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R5 R5 K1 ["inputEnabled"]
       24 JUMPIFNOT                        R5 ; [+9]
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K2 ["markInputDisabled"]
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R7 R7 K3 ["InputDisabledReasons"]
       31 GETTABLEKS                       R7 R7 K4 ["Generation"]
       33 CALL                             R6 1 0
       34 JUMPIFNOT                        R3 ; [+8]
       35 GETUPVAL                         R6 6
       36 JUMPIFNOT                        R6 ; [+6]
       37 GETUPVAL                         R6 6
       38 MOVE                             R7 R1
       39 CALL                             R6 1 1
       40 NAMECALL                         R6 R6 K5 ["resetRenderedState"]
       42 CALL                             R6 1 0
       43 GETUPVAL                         R6 7
       44 MOVE                             R7 R1
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          VAL R3
       47 CAPTURE                          UPVAL U8
       48 CALL                             R6 2 0
       49 GETUPVAL                         R6 9
       50 GETTABLEKS                       R6 R6 K6 ["new"]
       52 DUPTABLE                         R7 K14 [{["isHistoryReplay"] = True, ["addMessage"], ["addContent"], ["editContent"], ["onToolWidgetCreated"], ["onSessionInfo"]}]
       53 NEWCLOSURE                       R8 P1
       54 CAPTURE                          VAL R1
       55 CAPTURE                          UPVAL U10
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R8 R7 K9 ["addMessage"]
       59 NEWCLOSURE                       R8 P2
       60 CAPTURE                          VAL R1
       61 CAPTURE                          UPVAL U11
       62 SETTABLEKS                       R8 R7 K10 ["addContent"]
       64 NEWCLOSURE                       R8 P3
       65 CAPTURE                          VAL R1
       66 CAPTURE                          UPVAL U12
       67 SETTABLEKS                       R8 R7 K11 ["editContent"]
       69 NEWCLOSURE                       R8 P4
       70 CAPTURE                          UPVAL U1
       71 SETTABLEKS                       R8 R7 K12 ["onToolWidgetCreated"]
       73 NEWCLOSURE                       R8 P5
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R8 R7 K13 ["onSessionInfo"]
       78 CALL                             R6 1 1
       79 GETUPVAL                         R7 1
       80 DUPTABLE                         R9 K20 [{["sessionId"], ["cwd"] = "/", ["mcpServers"], ["historyPageToken"]}]
       81 SETTABLEKS                       R2 R9 K15 ["sessionId"]
       83 NEWTABLE                         R10 0 0
       85 SETTABLEKS                       R10 R9 K18 ["mcpServers"]
       87 SETTABLEKS                       R0 R9 K19 ["historyPageToken"]
       89 NEWCLOSURE                       R10 P6
       90 CAPTURE                          VAL R6
       91 NAMECALL                         R7 R7 K21 ["loadSessionPage"]
       93 CALL                             R7 3 1
       94 NEWCLOSURE                       R9 P7
       95 CAPTURE                          UPVAL U7
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R4
       98 CAPTURE                          UPVAL U8
       99 NAMECALL                         R7 R7 K22 ["andThen"]
      101 CALL                             R7 2 1
      102 NEWCLOSURE                       R9 P8
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          VAL R1
      105 CAPTURE                          UPVAL U8
      106 NAMECALL                         R7 R7 K23 ["catch"]
      108 CALL                             R7 2 1
      109 NEWCLOSURE                       R9 P9
      110 CAPTURE                          VAL R5
      111 CAPTURE                          UPVAL U4
      112 NAMECALL                         R7 R7 K24 ["finally"]
      114 CALL                             R7 2 0
      115 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["service"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R2 R2 K3 ["getSessionMonitor"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["useContext"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K1 ["Context"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K4 ["setConversation"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K0 ["useContext"]
       30 GETUPVAL                         R6 4
       31 GETTABLEKS                       R6 R6 K1 ["Context"]
       33 CALL                             R5 1 1
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K0 ["useContext"]
       37 GETUPVAL                         R7 5
       38 GETTABLEKS                       R7 R7 K1 ["Context"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R6 R6 K5 ["sessionId"]
       43 GETUPVAL                         R7 6
       44 CALL                             R7 0 1
       45 GETUPVAL                         R8 7
       46 CALL                             R8 0 1
       47 GETUPVAL                         R9 8
       48 CALL                             R9 0 1
       49 GETUPVAL                         R10 9
       50 CALL                             R10 0 1
       51 GETUPVAL                         R11 10
       52 CALL                             R11 0 1
       53 GETUPVAL                         R12 11
       54 CALL                             R12 0 1
       55 GETUPVAL                         R13 0
       56 GETTABLEKS                       R13 R13 K6 ["useCallback"]
       58 NEWCLOSURE                       R14 P0
       59 CAPTURE                          UPVAL U12
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R4
       64 CAPTURE                          UPVAL U13
       65 NEWTABLE                         R15 0 4
       67 MOVE                             R16 R0
       68 MOVE                             R17 R1
       69 MOVE                             R18 R4
       70 MOVE                             R19 R6
       71 SETLIST                          R15 R16 4 [1]
       73 CALL                             R13 2 1
       74 GETUPVAL                         R14 0
       75 GETTABLEKS                       R14 R14 K6 ["useCallback"]
       77 NEWCLOSURE                       R15 P1
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R5
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R12
       86 CAPTURE                          UPVAL U13
       87 CAPTURE                          UPVAL U14
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R11
       91 NEWTABLE                         R16 0 10
       93 MOVE                             R17 R0
       94 MOVE                             R18 R1
       95 MOVE                             R19 R2
       96 MOVE                             R20 R8
       97 MOVE                             R21 R7
       98 MOVE                             R22 R9
       99 MOVE                             R23 R10
      100 MOVE                             R24 R11
      101 MOVE                             R25 R12
      102 MOVE                             R26 R5
      103 SETLIST                          R16 R17 10 [1]
      105 CALL                             R14 2 1
      106 DUPTABLE                         R15 K9 [{"listSessionsPage", "loadSessionPage"}]
      107 SETTABLEKS                       R13 R15 K7 ["listSessionsPage"]
      109 SETTABLEKS                       R14 R15 K8 ["loadSessionPage"]
      111 RETURN                           R15 1

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
       18 GETTABLEKS                       R3 R0 K9 ["ACPClientService"]
       20 GETTABLEKS                       R3 R3 K10 ["ACPClientServiceUIRelay"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K11 ["AcpSessionMonitorContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Components"]
       36 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       38 GETTABLEKS                       R5 R5 K12 ["ConversationContext"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K13 ["Flags"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Components"]
       50 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       52 GETTABLEKS                       R7 R7 K14 ["InputStateContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K15 ["Parent"]
       59 GETTABLEKS                       R8 R8 K16 ["React"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Components"]
       66 GETTABLEKS                       R9 R9 K7 ["Contexts"]
       68 GETTABLEKS                       R9 R9 K17 ["SessionIdContext"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K18 ["Types"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K19 ["Hooks"]
       80 GETTABLEKS                       R11 R11 K20 ["useAddContent"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       87 GETTABLEKS                       R12 R12 K21 ["useAddMessage"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K19 ["Hooks"]
       94 GETTABLEKS                       R13 R13 K22 ["useCurrentThread"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K19 ["Hooks"]
      101 GETTABLEKS                       R14 R14 K23 ["useEditContent"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K19 ["Hooks"]
      108 GETTABLEKS                       R15 R15 K24 ["useEditThread"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K19 ["Hooks"]
      115 GETTABLEKS                       R16 R16 K25 ["useThreadId"]
      117 CALL                             R15 1 1
      118 DUPCLOSURE                       R16 K26 [PROTO_0]
      119 DUPCLOSURE                       R17 K27 [PROTO_21]
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R2
      135 RETURN                           R17 1
