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
        0 GETTABLEKS                       R1 R0 K0 ["_meta"]
        2 FASTCALL1                        TYPEOF R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K2 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K3 ["table"] ; [+3]
        9 LOADB                            R2 0
       10 RETURN                           R2 1
       11 GETTABLEKS                       R2 R1 K4 ["_roblox"]
       13 FASTCALL1                        TYPEOF R2 ; [+3]
       14 MOVE                             R4 R2
       15 GETIMPORT                        R3 K2 [typeof]
       17 CALL                             R3 1 1
       18 JUMPIFEQKS                       R3 K3 ["table"] ; [+3]
       20 LOADB                            R3 0
       21 RETURN                           R3 1
       22 GETTABLEKS                       R4 R2 K5 ["pinForBuild"]
       24 JUMPIFEQKB                       R4 TRUE ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["PersistenceLoadStates"]
        7 GETTABLEKS                       R2 R2 K4 ["Loading"]
        9 SETTABLEKS                       R2 R1 K5 ["threadLoadState"]
       11 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [table.clone]
        6 GETTABLEKS                       R3 R0 K3 ["threads"]
        8 CALL                             R2 1 1
        9 NEWTABLE                         R3 0 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["FFlagAssistantDedupeAcpSessionListThreads"]
       14 JUMPIFNOT                        R4 ; [+12]
       15 MOVE                             R4 R2
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 GETTABLEKS                       R9 R8 K5 ["acpSessionId"]
       21 JUMPIFNOT                        R9 ; [+3]
       22 JUMPIFEQKS                       R9 K6 [""] ; [+2]
       24 SETTABLE                         R7 R3 R9
       25 FORGLOOP                         R4 2 ; [-7]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K7 ["sessions"]
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 FORGPREP                         R4
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K8 ["FFlagAssistantPinForBuildUI"]
       36 JUMPIFNOT                        R9 ; [+28]
       37 GETTABLEKS                       R10 R8 K9 ["_meta"]
       39 FASTCALL1                        TYPEOF R10 ; [+3]
       40 MOVE                             R12 R10
       41 GETIMPORT                        R11 K11 [typeof]
       43 CALL                             R11 1 1
       44 JUMPIFEQKS                       R11 K0 ["table"] ; [+3]
       46 LOADB                            R9 0
       47 JUMP                             ; [+17]
       48 GETTABLEKS                       R11 R10 K12 ["_roblox"]
       50 FASTCALL1                        TYPEOF R11 ; [+3]
       51 MOVE                             R13 R11
       52 GETIMPORT                        R12 K11 [typeof]
       54 CALL                             R12 1 1
       55 JUMPIFEQKS                       R12 K0 ["table"] ; [+3]
       57 LOADB                            R9 0
       58 JUMP                             ; [+6]
       59 GETTABLEKS                       R12 R11 K13 ["pinForBuild"]
       61 JUMPIFEQKB                       R12 TRUE ; [+2]
       63 LOADB                            R9 0 +1
       64 LOADB                            R9 1
       65 GETTABLEKS                       R11 R8 K14 ["sessionId"]
       67 GETTABLE                         R10 R3 R11
       68 GETTABLEKS                       R12 R8 K14 ["sessionId"]
       70 GETTABLE                         R11 R2 R12
       71 JUMPIF                           R11 ; [+68]
       72 JUMPIF                           R10 ; [+67]
       73 GETTABLEKS                       R11 R8 K15 ["title"]
       75 JUMPIFEQKNIL                     R11 ; [+5]
       77 GETTABLEKS                       R11 R8 K15 ["title"]
       79 JUMPIFNOTEQKS                    R11 K6 [""] ; [+11]
       81 GETIMPORT                        R11 K17 [warn]
       83 LOADK                            R13 K18 ["[Assistant][ACP History] session/list entry %* has nil title; expected persisted title from storage"]
       84 GETTABLEKS                       R15 R8 K14 ["sessionId"]
       86 NAMECALL                         R13 R13 K19 ["format"]
       88 CALL                             R13 2 1
       89 MOVE                             R12 R13
       90 CALL                             R11 1 0
       91 GETTABLEKS                       R12 R8 K20 ["updatedAt"]
       93 JUMPIF                           R12 ; [+2]
       94 LOADN                            R11 -1
       95 JUMP                             ; [+9]
       96 GETIMPORT                        R13 K23 [DateTime.fromIsoDate]
       98 MOVE                             R14 R12
       99 CALL                             R13 1 1
      100 JUMPIFNOT                        R13 ; [+3]
      101 GETTABLEKS                       R11 R13 K24 ["UnixTimestampMillis"]
      103 JUMP                             ; [+1]
      104 LOADN                            R11 -1
      105 GETTABLEKS                       R12 R8 K14 ["sessionId"]
      107 DUPTABLE                         R13 K42 [{["threadId"], ["acpSessionId"], ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["lastActivityAt"], ["lastViewedAt"] = -1, ["title"], ["isPinned"] = False, ["isSharedWithBuild"], ["messages"], ["messageLoadState"] = , ["messagePageState"] = , ["messageCountAdded"] = 0, ["messageCountLoaded"] = 0}]
      108 GETTABLEKS                       R14 R8 K14 ["sessionId"]
      110 SETTABLEKS                       R14 R13 K25 ["threadId"]
      112 GETTABLEKS                       R14 R8 K14 ["sessionId"]
      114 SETTABLEKS                       R14 R13 K5 ["acpSessionId"]
      116 SETTABLEKS                       R11 R13 K26 ["createdAt"]
      118 SETTABLEKS                       R11 R13 K20 ["updatedAt"]
      120 SETTABLEKS                       R11 R13 K30 ["lastActivityAt"]
      122 GETTABLEKS                       R15 R8 K15 ["title"]
      124 ORK                              R14 R15 K6 [""]
      125 SETTABLEKS                       R14 R13 K15 ["title"]
      127 SETTABLEKS                       R9 R13 K34 ["isSharedWithBuild"]
      129 NEWTABLE                         R14 0 0
      131 SETTABLEKS                       R14 R13 K35 ["messages"]
      133 SETTABLE                         R13 R2 R12
      134 GETTABLEKS                       R12 R8 K14 ["sessionId"]
      136 GETTABLEKS                       R13 R8 K14 ["sessionId"]
      138 SETTABLE                         R13 R3 R12
      139 JUMP                             ; [+18]
      140 JUMPIFNOT                        R9 ; [+17]
      141 MOVE                             R11 R10
      142 JUMPIF                           R11 ; [+2]
      143 GETTABLEKS                       R11 R8 K14 ["sessionId"]
      145 GETTABLE                         R12 R2 R11
      146 JUMPIFNOT                        R12 ; [+11]
      147 GETTABLEKS                       R13 R12 K34 ["isSharedWithBuild"]
      149 JUMPIF                           R13 ; [+8]
      150 GETIMPORT                        R13 K2 [table.clone]
      152 MOVE                             R14 R12
      153 CALL                             R13 1 1
      154 LOADB                            R14 1
      155 SETTABLEKS                       R14 R13 K34 ["isSharedWithBuild"]
      157 SETTABLE                         R13 R2 R11
      158 FORGLOOP                         R4 2 ; [-126]
      160 SETTABLEKS                       R2 R1 K3 ["threads"]
      162 GETUPVAL                         R4 2
      163 GETTABLEKS                       R4 R4 K43 ["PersistenceLoadStates"]
      165 GETTABLEKS                       R4 R4 K44 ["Loaded"]
      167 SETTABLEKS                       R4 R1 K45 ["threadLoadState"]
      169 DUPTABLE                         R4 K47 [{"nextCursor"}]
      170 GETUPVAL                         R5 1
      171 GETTABLEKS                       R5 R5 K48 ["nextPageToken"]
      173 SETTABLEKS                       R5 R4 K46 ["nextCursor"]
      175 SETTABLEKS                       R4 R1 K49 ["threadPageState"]
      177 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["PersistenceLoadStates"]
        7 GETTABLEKS                       R2 R2 K4 ["Error"]
        9 SETTABLEKS                       R2 R1 K5 ["threadLoadState"]
       11 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R2 K0 [PROTO_5]
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

PROTO_7:
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
       31 DUPCLOSURE                       R2 K10 [PROTO_2]
       32 CAPTURE                          UPVAL U5
       33 CALL                             R1 1 0
       34 GETUPVAL                         R1 3
       35 DUPTABLE                         R3 K12 [{"pageToken"}]
       36 SETTABLEKS                       R0 R3 K11 ["pageToken"]
       38 NAMECALL                         R1 R1 K13 ["listSessionsPage"]
       40 CALL                             R1 2 1
       41 NEWCLOSURE                       R3 P1
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          UPVAL U5
       45 NAMECALL                         R1 R1 K14 ["andThen"]
       47 CALL                             R1 2 1
       48 NEWCLOSURE                       R3 P2
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U5
       51 NAMECALL                         R1 R1 K15 ["catch"]
       53 CALL                             R1 2 0
       54 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["handleUpdate"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantACPFixPendingToolCall"]
        7 JUMPIFNOT                        R0 ; [+11]
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+9]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K2 ["FFlagAssistantUseRemoteService"]
       13 JUMPIF                           R0 ; [+5]
       14 GETUPVAL                         R0 3
       15 DUPTABLE                         R2 K9 [{["sessionUpdate"] = "state_update", ["state"] = "idle", ["stopReason"] = "end_turn"}]
       16 NAMECALL                         R0 R0 K10 ["handleUpdate"]
       18 CALL                             R0 2 0
       19 GETUPVAL                         R0 3
       20 NAMECALL                         R0 R0 K11 ["endHistoryReplay"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["threadId"]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_14:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["threadId"]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["setClientToolUiContext"]
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["title"]
        3 SETTABLEKS                       R1 R0 K0 ["title"]
        5 MOVE                             R1 R0
        6 DUPTABLE                         R2 K3 [{["rawTransformValues"] = True}]
        7 RETURN                           R1 2

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["title"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["handleUpdate"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["clearInputDisabled"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PersistenceLoadStates"]
        3 GETTABLEKS                       R1 R1 K1 ["Error"]
        5 SETTABLEKS                       R1 R0 K2 ["messageLoadState"]
        7 MOVE                             R1 R0
        8 DUPTABLE                         R2 K5 [{["rawTransformValues"] = True}]
        9 RETURN                           R1 2

PROTO_24:
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
       15 DUPCLOSURE                       R3 K6 [PROTO_23]
       16 CAPTURE                          UPVAL U2
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_26:
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
       12 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantACPFixPendingToolCall"]
       14 JUMPIFNOT                        R1 ; [+3]
       15 GETUPVAL                         R1 4
       16 JUMPIF                           R1 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 5
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K0 ["acpSessionId"]
       22 JUMPIFEQKNIL                     R0 ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 NEWTABLE                         R4 0 0
       28 GETUPVAL                         R5 6
       29 GETTABLEKS                       R5 R5 K2 ["inputEnabled"]
       31 JUMPIFNOT                        R5 ; [+9]
       32 GETUPVAL                         R6 6
       33 GETTABLEKS                       R6 R6 K3 ["markInputDisabled"]
       35 GETUPVAL                         R7 7
       36 GETTABLEKS                       R7 R7 K4 ["InputDisabledReasons"]
       38 GETTABLEKS                       R7 R7 K5 ["Generation"]
       40 CALL                             R6 1 0
       41 GETUPVAL                         R6 8
       42 MOVE                             R7 R1
       43 NEWCLOSURE                       R8 P0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U9
       46 CALL                             R6 2 0
       47 LOADNIL                          R6
       48 LOADNIL                          R7
       49 GETUPVAL                         R8 3
       50 GETTABLEKS                       R8 R8 K1 ["FFlagAssistantACPFixPendingToolCall"]
       52 JUMPIFNOT                        R8 ; [+31]
       53 GETUPVAL                         R8 4
       54 JUMPIFNOT                        R8 ; [+29]
       55 GETUPVAL                         R8 4
       56 MOVE                             R9 R1
       57 CALL                             R8 1 1
       58 NAMECALL                         R9 R8 K6 ["getRelay"]
       60 CALL                             R9 1 1
       61 GETTABLEKS                       R9 R9 K7 ["onMessageAddedSignal"]
       63 NEWCLOSURE                       R11 P1
       64 CAPTURE                          VAL R4
       65 NAMECALL                         R9 R9 K8 ["Connect"]
       67 CALL                             R9 2 1
       68 MOVE                             R12 R3
       69 NAMECALL                         R10 R8 K9 ["beginHistoryReplay"]
       71 CALL                             R10 2 0
       72 JUMPIFNOT                        R5 ; [+3]
       73 NAMECALL                         R10 R8 K10 ["needClearInputDisabled"]
       75 CALL                             R10 1 0
       76 NEWCLOSURE                       R6 P2
       77 CAPTURE                          VAL R8
       78 NEWCLOSURE                       R7 P3
       79 CAPTURE                          VAL R9
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R8
       83 JUMP                             ; [+44]
       84 JUMPIFNOT                        R3 ; [+8]
       85 GETUPVAL                         R8 4
       86 JUMPIFNOT                        R8 ; [+6]
       87 GETUPVAL                         R8 4
       88 MOVE                             R9 R1
       89 CALL                             R8 1 1
       90 NAMECALL                         R8 R8 K11 ["resetRenderedState"]
       92 CALL                             R8 1 0
       93 GETUPVAL                         R8 10
       94 GETTABLEKS                       R8 R8 K12 ["new"]
       96 DUPTABLE                         R9 K20 [{["isHistoryReplay"] = True, ["addMessage"], ["addContent"], ["editContent"], ["onToolWidgetCreated"], ["onSessionInfo"]}]
       97 NEWCLOSURE                       R10 P4
       98 CAPTURE                          VAL R1
       99 CAPTURE                          UPVAL U11
      100 CAPTURE                          VAL R4
      101 SETTABLEKS                       R10 R9 K15 ["addMessage"]
      103 NEWCLOSURE                       R10 P5
      104 CAPTURE                          VAL R1
      105 CAPTURE                          UPVAL U12
      106 SETTABLEKS                       R10 R9 K16 ["addContent"]
      108 NEWCLOSURE                       R10 P6
      109 CAPTURE                          VAL R1
      110 CAPTURE                          UPVAL U13
      111 SETTABLEKS                       R10 R9 K17 ["editContent"]
      113 NEWCLOSURE                       R10 P7
      114 CAPTURE                          UPVAL U1
      115 SETTABLEKS                       R10 R9 K18 ["onToolWidgetCreated"]
      117 NEWCLOSURE                       R10 P8
      118 CAPTURE                          UPVAL U8
      119 CAPTURE                          VAL R1
      120 SETTABLEKS                       R10 R9 K19 ["onSessionInfo"]
      122 CALL                             R8 1 1
      123 NEWCLOSURE                       R6 P9
      124 CAPTURE                          VAL R8
      125 NEWCLOSURE                       R7 P10
      126 CAPTURE                          VAL R5
      127 CAPTURE                          UPVAL U6
      128 GETUPVAL                         R8 1
      129 DUPTABLE                         R10 K26 [{["sessionId"], ["cwd"] = "/", ["mcpServers"], ["historyPageToken"]}]
      130 SETTABLEKS                       R2 R10 K21 ["sessionId"]
      132 NEWTABLE                         R11 0 0
      134 SETTABLEKS                       R11 R10 K24 ["mcpServers"]
      136 SETTABLEKS                       R0 R10 K25 ["historyPageToken"]
      138 NEWCLOSURE                       R11 P11
      139 CAPTURE                          REF R6
      140 NAMECALL                         R8 R8 K27 ["loadSessionPage"]
      142 CALL                             R8 3 1
      143 NEWCLOSURE                       R10 P12
      144 CAPTURE                          UPVAL U8
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R4
      147 CAPTURE                          UPVAL U9
      148 NAMECALL                         R8 R8 K28 ["andThen"]
      150 CALL                             R8 2 1
      151 NEWCLOSURE                       R10 P13
      152 CAPTURE                          UPVAL U8
      153 CAPTURE                          VAL R1
      154 CAPTURE                          UPVAL U9
      155 NAMECALL                         R8 R8 K29 ["catch"]
      157 CALL                             R8 2 1
      158 NEWCLOSURE                       R10 P14
      159 CAPTURE                          REF R7
      160 NAMECALL                         R8 R8 K30 ["finally"]
      162 CALL                             R8 2 0
      163 CLOSEUPVALS                      R6
      164 RETURN                           R0 0

PROTO_27:
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
       81 CAPTURE                          UPVAL U12
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R5
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          VAL R12
       87 CAPTURE                          UPVAL U13
       88 CAPTURE                          UPVAL U14
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R11
       92 NEWTABLE                         R16 0 10
       94 MOVE                             R17 R0
       95 MOVE                             R18 R1
       96 MOVE                             R19 R2
       97 MOVE                             R20 R8
       98 MOVE                             R21 R7
       99 MOVE                             R22 R9
      100 MOVE                             R23 R10
      101 MOVE                             R24 R11
      102 MOVE                             R25 R12
      103 MOVE                             R26 R5
      104 SETLIST                          R16 R17 10 [1]
      106 CALL                             R14 2 1
      107 DUPTABLE                         R15 K9 [{"listSessionsPage", "loadSessionPage"}]
      108 SETTABLEKS                       R13 R15 K7 ["listSessionsPage"]
      110 SETTABLEKS                       R14 R15 K8 ["loadSessionPage"]
      112 RETURN                           R15 1

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
      119 DUPCLOSURE                       R17 K27 [PROTO_1]
      120 DUPCLOSURE                       R18 K28 [PROTO_27]
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R2
      136 RETURN                           R18 1
