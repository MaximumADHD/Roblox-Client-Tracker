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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getUserId"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["PersistenceLoadStates"]
        7 GETTABLEKS                       R2 R2 K4 ["Loading"]
        9 SETTABLEKS                       R2 R1 K5 ["threadLoadState"]
       11 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [table.clone]
        6 GETTABLEKS                       R3 R0 K3 ["threads"]
        8 CALL                             R2 1 1
        9 NEWTABLE                         R3 0 0
       11 MOVE                             R4 R2
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLEKS                       R9 R8 K4 ["acpSessionId"]
       17 JUMPIFNOT                        R9 ; [+3]
       18 JUMPIFEQKS                       R9 K5 [""] ; [+2]
       20 SETTABLE                         R7 R3 R9
       21 FORGLOOP                         R4 2 ; [-7]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K6 ["sessions"]
       26 LOADNIL                          R5
       27 LOADNIL                          R6
       28 FORGPREP                         R4
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R9 R9 K7 ["FFlagAssistantPinForBuildUI"]
       32 JUMPIFNOT                        R9 ; [+28]
       33 GETTABLEKS                       R10 R8 K8 ["_meta"]
       35 FASTCALL1                        TYPEOF R10 ; [+3]
       36 MOVE                             R12 R10
       37 GETIMPORT                        R11 K10 [typeof]
       39 CALL                             R11 1 1
       40 JUMPIFEQKS                       R11 K0 ["table"] ; [+3]
       42 LOADB                            R9 0
       43 JUMP                             ; [+17]
       44 GETTABLEKS                       R11 R10 K11 ["_roblox"]
       46 FASTCALL1                        TYPEOF R11 ; [+3]
       47 MOVE                             R13 R11
       48 GETIMPORT                        R12 K10 [typeof]
       50 CALL                             R12 1 1
       51 JUMPIFEQKS                       R12 K0 ["table"] ; [+3]
       53 LOADB                            R9 0
       54 JUMP                             ; [+6]
       55 GETTABLEKS                       R12 R11 K12 ["pinForBuild"]
       57 JUMPIFEQKB                       R12 TRUE ; [+2]
       59 LOADB                            R9 0 +1
       60 LOADB                            R9 1
       61 GETTABLEKS                       R11 R8 K13 ["sessionId"]
       63 GETTABLE                         R10 R3 R11
       64 GETTABLEKS                       R12 R8 K13 ["sessionId"]
       66 GETTABLE                         R11 R2 R12
       67 JUMPIF                           R11 ; [+68]
       68 JUMPIF                           R10 ; [+67]
       69 GETTABLEKS                       R11 R8 K14 ["title"]
       71 JUMPIFEQKNIL                     R11 ; [+5]
       73 GETTABLEKS                       R11 R8 K14 ["title"]
       75 JUMPIFNOTEQKS                    R11 K5 [""] ; [+11]
       77 GETIMPORT                        R11 K16 [warn]
       79 LOADK                            R13 K17 ["[Assistant][ACP History] session/list entry %* has nil title; expected persisted title from storage"]
       80 GETTABLEKS                       R15 R8 K13 ["sessionId"]
       82 NAMECALL                         R13 R13 K18 ["format"]
       84 CALL                             R13 2 1
       85 MOVE                             R12 R13
       86 CALL                             R11 1 0
       87 GETTABLEKS                       R12 R8 K19 ["updatedAt"]
       89 JUMPIF                           R12 ; [+2]
       90 LOADN                            R11 -1
       91 JUMP                             ; [+9]
       92 GETIMPORT                        R13 K22 [DateTime.fromIsoDate]
       94 MOVE                             R14 R12
       95 CALL                             R13 1 1
       96 JUMPIFNOT                        R13 ; [+3]
       97 GETTABLEKS                       R11 R13 K23 ["UnixTimestampMillis"]
       99 JUMP                             ; [+1]
      100 LOADN                            R11 -1
      101 GETTABLEKS                       R12 R8 K13 ["sessionId"]
      103 DUPTABLE                         R13 K41 [{["threadId"], ["acpSessionId"], ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["lastActivityAt"], ["lastViewedAt"] = -1, ["title"], ["isPinned"] = False, ["isSharedWithBuild"], ["messages"], ["messageLoadState"] = , ["messagePageState"] = , ["messageCountAdded"] = 0, ["messageCountLoaded"] = 0}]
      104 GETTABLEKS                       R14 R8 K13 ["sessionId"]
      106 SETTABLEKS                       R14 R13 K24 ["threadId"]
      108 GETTABLEKS                       R14 R8 K13 ["sessionId"]
      110 SETTABLEKS                       R14 R13 K4 ["acpSessionId"]
      112 SETTABLEKS                       R11 R13 K25 ["createdAt"]
      114 SETTABLEKS                       R11 R13 K19 ["updatedAt"]
      116 SETTABLEKS                       R11 R13 K29 ["lastActivityAt"]
      118 GETTABLEKS                       R15 R8 K14 ["title"]
      120 ORK                              R14 R15 K5 [""]
      121 SETTABLEKS                       R14 R13 K14 ["title"]
      123 SETTABLEKS                       R9 R13 K33 ["isSharedWithBuild"]
      125 NEWTABLE                         R14 0 0
      127 SETTABLEKS                       R14 R13 K34 ["messages"]
      129 SETTABLE                         R13 R2 R12
      130 GETTABLEKS                       R12 R8 K13 ["sessionId"]
      132 GETTABLEKS                       R13 R8 K13 ["sessionId"]
      134 SETTABLE                         R13 R3 R12
      135 JUMP                             ; [+18]
      136 JUMPIFNOT                        R9 ; [+17]
      137 MOVE                             R11 R10
      138 JUMPIF                           R11 ; [+2]
      139 GETTABLEKS                       R11 R8 K13 ["sessionId"]
      141 GETTABLE                         R12 R2 R11
      142 JUMPIFNOT                        R12 ; [+11]
      143 GETTABLEKS                       R13 R12 K33 ["isSharedWithBuild"]
      145 JUMPIF                           R13 ; [+8]
      146 GETIMPORT                        R13 K2 [table.clone]
      148 MOVE                             R14 R12
      149 CALL                             R13 1 1
      150 LOADB                            R14 1
      151 SETTABLEKS                       R14 R13 K33 ["isSharedWithBuild"]
      153 SETTABLE                         R13 R2 R11
      154 FORGLOOP                         R4 2 ; [-126]
      156 SETTABLEKS                       R2 R1 K3 ["threads"]
      158 GETUPVAL                         R4 2
      159 GETTABLEKS                       R4 R4 K42 ["PersistenceLoadStates"]
      161 GETTABLEKS                       R4 R4 K43 ["Loaded"]
      163 SETTABLEKS                       R4 R1 K44 ["threadLoadState"]
      165 DUPTABLE                         R4 K46 [{"nextCursor"}]
      166 GETUPVAL                         R5 0
      167 GETTABLEKS                       R5 R5 K47 ["nextPageToken"]
      169 SETTABLEKS                       R5 R4 K45 ["nextCursor"]
      171 SETTABLEKS                       R4 R1 K48 ["threadPageState"]
      173 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["PersistenceLoadStates"]
        7 GETTABLEKS                       R2 R2 K4 ["Error"]
        9 SETTABLEKS                       R2 R1 K5 ["threadLoadState"]
       11 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R2 K0 [PROTO_6]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K2 [warn]
        6 LOADK                            R3 K3 ["[Assistant][ACP History] session/list failed: %*"]
        7 GETUPVAL                         R5 2
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 2 1
       13 MOVE                             R2 R3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+34]
        4 LOADK                            R1 K1 ["unknown"]
        5 GETIMPORT                        R2 K3 [pcall]
        7 DUPCLOSURE                       R3 K4 [PROTO_2]
        8 CAPTURE                          UPVAL U1
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+6]
       11 FASTCALL1                        TOSTRING R3 ; [+3]
       12 MOVE                             R5 R3
       13 GETIMPORT                        R4 K6 [tostring]
       15 CALL                             R4 1 1
       16 MOVE                             R1 R4
       17 GETIMPORT                        R4 K8 [print]
       19 LOADK                            R6 K9 ["[Assistant][ACP History] requesting session/list: userId=%*, local GameId=%*, local PlaceId=%*, harnessSplit=%*, remoteService=%*, studioSessionId=%*"]
       20 MOVE                             R8 R1
       21 GETIMPORT                        R9 K11 [game]
       23 GETTABLEKS                       R9 R9 K12 ["GameId"]
       25 GETIMPORT                        R10 K11 [game]
       27 GETTABLEKS                       R10 R10 K13 ["PlaceId"]
       29 GETUPVAL                         R11 2
       30 GETUPVAL                         R12 3
       31 CALL                             R12 0 1
       32 GETUPVAL                         R13 4
       33 NAMECALL                         R6 R6 K14 ["format"]
       35 CALL                             R6 7 1
       36 MOVE                             R5 R6
       37 CALL                             R4 1 0
       38 GETUPVAL                         R1 2
       39 JUMPIFNOT                        R1 ; [+5]
       40 GETUPVAL                         R1 5
       41 JUMPIFNOT                        R1 ; [+3]
       42 GETUPVAL                         R1 4
       43 JUMPIFNOTEQKS                    R1 K15 [""] ; [+2]
       45 RETURN                           R0 0
       46 GETUPVAL                         R1 6
       47 DUPCLOSURE                       R2 K16 [PROTO_3]
       48 CAPTURE                          UPVAL U7
       49 CALL                             R1 1 0
       50 GETUPVAL                         R1 5
       51 DUPTABLE                         R3 K18 [{"pageToken"}]
       52 SETTABLEKS                       R0 R3 K17 ["pageToken"]
       54 NAMECALL                         R1 R1 K19 ["listSessionsPage"]
       56 CALL                             R1 2 1
       57 NEWCLOSURE                       R3 P2
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U7
       61 NAMECALL                         R1 R1 K20 ["andThen"]
       63 CALL                             R1 2 1
       64 NEWCLOSURE                       R3 P3
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          UPVAL U7
       67 CAPTURE                          UPVAL U8
       68 NAMECALL                         R1 R1 K21 ["catch"]
       70 CALL                             R1 2 0
       71 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["handleUpdate"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantACPFixPendingToolCall"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+8]
       10 GETUPVAL                         R0 3
       11 CALL                             R0 0 1
       12 JUMPIF                           R0 ; [+5]
       13 GETUPVAL                         R0 4
       14 DUPTABLE                         R2 K8 [{["sessionUpdate"] = "state_update", ["state"] = "idle", ["stopReason"] = "end_turn"}]
       15 NAMECALL                         R0 R0 K9 ["handleUpdate"]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 4
       19 NAMECALL                         R0 R0 K10 ["endHistoryReplay"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_13:
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
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["threadId"]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["setClientToolUiContext"]
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["title"]
        3 SETTABLEKS                       R1 R0 K0 ["title"]
        5 MOVE                             R1 R0
        6 DUPTABLE                         R2 K3 [{["rawTransformValues"] = True}]
        7 RETURN                           R1 2

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["title"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["handleUpdate"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["clearInputDisabled"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PersistenceLoadStates"]
        3 GETTABLEKS                       R1 R1 K1 ["Error"]
        5 SETTABLEKS                       R1 R0 K2 ["messageLoadState"]
        7 MOVE                             R1 R0
        8 DUPTABLE                         R2 K5 [{["rawTransformValues"] = True}]
        9 RETURN                           R1 2

PROTO_25:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["[Assistant][ACP History] session/load failed: threadId=%* sessionId=%* %*"]
        3 GETUPVAL                         R5 0
        4 GETUPVAL                         R6 1
        5 GETUPVAL                         R7 2
        6 MOVE                             R8 R0
        7 CALL                             R7 1 1
        8 NAMECALL                         R3 R3 K3 ["format"]
       10 CALL                             R3 4 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 3
       14 GETUPVAL                         R2 0
       15 DUPCLOSURE                       R3 K4 [PROTO_24]
       16 CAPTURE                          UPVAL U4
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_27:
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
       52 JUMPIFNOT                        R8 ; [+32]
       53 GETUPVAL                         R8 4
       54 JUMPIFNOT                        R8 ; [+30]
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
       82 CAPTURE                          UPVAL U10
       83 CAPTURE                          VAL R8
       84 JUMP                             ; [+44]
       85 JUMPIFNOT                        R3 ; [+8]
       86 GETUPVAL                         R8 4
       87 JUMPIFNOT                        R8 ; [+6]
       88 GETUPVAL                         R8 4
       89 MOVE                             R9 R1
       90 CALL                             R8 1 1
       91 NAMECALL                         R8 R8 K11 ["resetRenderedState"]
       93 CALL                             R8 1 0
       94 GETUPVAL                         R8 11
       95 GETTABLEKS                       R8 R8 K12 ["new"]
       97 DUPTABLE                         R9 K20 [{["isHistoryReplay"] = True, ["addMessage"], ["addContent"], ["editContent"], ["onToolWidgetCreated"], ["onSessionInfo"]}]
       98 NEWCLOSURE                       R10 P4
       99 CAPTURE                          VAL R1
      100 CAPTURE                          UPVAL U12
      101 CAPTURE                          VAL R4
      102 SETTABLEKS                       R10 R9 K15 ["addMessage"]
      104 NEWCLOSURE                       R10 P5
      105 CAPTURE                          VAL R1
      106 CAPTURE                          UPVAL U13
      107 SETTABLEKS                       R10 R9 K16 ["addContent"]
      109 NEWCLOSURE                       R10 P6
      110 CAPTURE                          VAL R1
      111 CAPTURE                          UPVAL U14
      112 SETTABLEKS                       R10 R9 K17 ["editContent"]
      114 NEWCLOSURE                       R10 P7
      115 CAPTURE                          UPVAL U1
      116 SETTABLEKS                       R10 R9 K18 ["onToolWidgetCreated"]
      118 NEWCLOSURE                       R10 P8
      119 CAPTURE                          UPVAL U8
      120 CAPTURE                          VAL R1
      121 SETTABLEKS                       R10 R9 K19 ["onSessionInfo"]
      123 CALL                             R8 1 1
      124 NEWCLOSURE                       R6 P9
      125 CAPTURE                          VAL R8
      126 NEWCLOSURE                       R7 P10
      127 CAPTURE                          VAL R5
      128 CAPTURE                          UPVAL U6
      129 GETUPVAL                         R8 3
      130 GETTABLEKS                       R8 R8 K21 ["FFlagDebugLogAssistantUI"]
      132 JUMPIFNOT                        R8 ; [+15]
      133 GETIMPORT                        R8 K23 [print]
      135 LOADK                            R10 K24 ["[Assistant][ACP History] requesting session/load: threadId=%* sessionId=%* historyPageToken=%*"]
      136 MOVE                             R12 R1
      137 MOVE                             R13 R2
      138 FASTCALL1                        TOSTRING R0 ; [+3]
      139 MOVE                             R15 R0
      140 GETIMPORT                        R14 K26 [tostring]
      142 CALL                             R14 1 1
      143 NAMECALL                         R10 R10 K27 ["format"]
      145 CALL                             R10 4 1
      146 MOVE                             R9 R10
      147 CALL                             R8 1 0
      148 GETUPVAL                         R8 1
      149 DUPTABLE                         R10 K33 [{["sessionId"], ["cwd"] = "/", ["mcpServers"], ["historyPageToken"]}]
      150 SETTABLEKS                       R2 R10 K28 ["sessionId"]
      152 NEWTABLE                         R11 0 0
      154 SETTABLEKS                       R11 R10 K31 ["mcpServers"]
      156 SETTABLEKS                       R0 R10 K32 ["historyPageToken"]
      158 NEWCLOSURE                       R11 P11
      159 CAPTURE                          REF R6
      160 NAMECALL                         R8 R8 K34 ["loadSessionPage"]
      162 CALL                             R8 3 1
      163 NEWCLOSURE                       R10 P12
      164 CAPTURE                          UPVAL U8
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R4
      167 CAPTURE                          UPVAL U9
      168 NAMECALL                         R8 R8 K35 ["andThen"]
      170 CALL                             R8 2 1
      171 NEWCLOSURE                       R10 P13
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R2
      174 CAPTURE                          UPVAL U15
      175 CAPTURE                          UPVAL U8
      176 CAPTURE                          UPVAL U9
      177 NAMECALL                         R8 R8 K36 ["catch"]
      179 CALL                             R8 2 1
      180 NEWCLOSURE                       R10 P14
      181 CAPTURE                          REF R7
      182 NAMECALL                         R8 R8 K37 ["finally"]
      184 CALL                             R8 2 0
      185 CLOSEUPVALS                      R6
      186 RETURN                           R0 0

PROTO_28:
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
       60 CAPTURE                          UPVAL U13
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U14
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R4
       66 CAPTURE                          UPVAL U15
       67 CAPTURE                          UPVAL U16
       68 NEWTABLE                         R15 0 4
       70 MOVE                             R16 R0
       71 MOVE                             R17 R1
       72 MOVE                             R18 R4
       73 MOVE                             R19 R6
       74 SETLIST                          R15 R16 4 [1]
       76 CALL                             R13 2 1
       77 GETUPVAL                         R14 0
       78 GETTABLEKS                       R14 R14 K6 ["useCallback"]
       80 NEWCLOSURE                       R15 P1
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R8
       84 CAPTURE                          UPVAL U12
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R5
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          VAL R12
       90 CAPTURE                          UPVAL U15
       91 CAPTURE                          UPVAL U14
       92 CAPTURE                          UPVAL U17
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R11
       96 CAPTURE                          UPVAL U16
       97 NEWTABLE                         R16 0 10
       99 MOVE                             R17 R0
      100 MOVE                             R18 R1
      101 MOVE                             R19 R2
      102 MOVE                             R20 R8
      103 MOVE                             R21 R7
      104 MOVE                             R22 R9
      105 MOVE                             R23 R10
      106 MOVE                             R24 R11
      107 MOVE                             R25 R12
      108 MOVE                             R26 R5
      109 SETLIST                          R16 R17 10 [1]
      111 CALL                             R14 2 1
      112 DUPTABLE                         R15 K9 [{"listSessionsPage", "loadSessionPage"}]
      113 SETTABLEKS                       R13 R15 K7 ["listSessionsPage"]
      115 SETTABLEKS                       R14 R15 K8 ["loadSessionPage"]
      117 RETURN                           R15 1

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
       34 GETTABLEKS                       R5 R0 K12 ["Parent"]
       36 GETTABLEKS                       R5 R5 K13 ["AssistantHarness"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Components"]
       43 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K14 ["ConversationContext"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K15 ["Guest"]
       52 GETTABLEKS                       R7 R7 K16 ["Environment"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K17 ["Flags"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Components"]
       64 GETTABLEKS                       R9 R9 K7 ["Contexts"]
       66 GETTABLEKS                       R9 R9 K18 ["InputStateContext"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K12 ["Parent"]
       73 GETTABLEKS                       R10 R10 K19 ["React"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K6 ["Components"]
       80 GETTABLEKS                       R11 R11 K7 ["Contexts"]
       82 GETTABLEKS                       R11 R11 K20 ["SessionIdContext"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K21 ["Types"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K22 ["FlagUtils"]
       94 GETTABLEKS                       R13 R13 K23 ["getIsAssistantUseRemoteService"]
       96 CALL                             R12 1 1
       97 GETTABLEKS                       R12 R12 K24 ["get"]
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K25 ["Hooks"]
      103 GETTABLEKS                       R14 R14 K26 ["useAddContent"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K5 [require]
      108 GETTABLEKS                       R15 R0 K25 ["Hooks"]
      110 GETTABLEKS                       R15 R15 K27 ["useAddMessage"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K5 [require]
      115 GETTABLEKS                       R16 R0 K25 ["Hooks"]
      117 GETTABLEKS                       R16 R16 K28 ["useCurrentThread"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K5 [require]
      122 GETTABLEKS                       R17 R0 K25 ["Hooks"]
      124 GETTABLEKS                       R17 R17 K29 ["useEditContent"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K5 [require]
      129 GETTABLEKS                       R18 R0 K25 ["Hooks"]
      131 GETTABLEKS                       R18 R18 K30 ["useEditThread"]
      133 CALL                             R17 1 1
      134 GETIMPORT                        R18 K5 [require]
      136 GETTABLEKS                       R19 R0 K25 ["Hooks"]
      138 GETTABLEKS                       R19 R19 K31 ["useThreadId"]
      140 CALL                             R18 1 1
      141 GETTABLEKS                       R19 R4 K32 ["describeError"]
      143 DUPCLOSURE                       R20 K33 [PROTO_0]
      144 DUPCLOSURE                       R21 K34 [PROTO_1]
      145 DUPCLOSURE                       R22 K35 [PROTO_28]
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R2
      164 RETURN                           R22 1
