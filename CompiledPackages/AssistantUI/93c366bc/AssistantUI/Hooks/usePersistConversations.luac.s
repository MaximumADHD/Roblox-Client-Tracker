PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantPersistConversations must be enabled"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K3 ["wasLoadedFromPersistence"]
       10 JUMPIF                           R2 ; [+17]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K4 ["join"]
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K4 ["join"]
       20 GETTABLEKS                       R4 R0 K5 ["threads"]
       22 GETTABLEKS                       R5 R1 K5 ["threads"]
       24 CALL                             R3 2 1
       25 SETTABLEKS                       R3 R2 K5 ["threads"]
       27 RETURN                           R2 1
       28 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["threads"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R1 R0 K1 ["messages"]
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K2 ["get"]
       14 CALL                             R1 0 1
       15 GETTABLEKS                       R2 R1 K3 ["conversationPersistence"]
       17 JUMPIF                           R2 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R4 R5 K4 ["current"]
       22 GETUPVAL                         R5 1
       23 GETTABLE                         R3 R4 R5
       24 JUMPIFNOT                        R3 ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R3 R4 K4 ["current"]
       29 GETUPVAL                         R4 1
       30 LOADB                            R5 1
       31 SETTABLE                         R5 R3 R4
       32 GETTABLEKS                       R3 R2 K5 ["requestLoad"]
       34 DUPTABLE                         R4 K8 [{"scope", "threadId"}]
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R5 R6 K9 ["Thread"]
       38 SETTABLEKS                       R5 R4 K6 ["scope"]
       40 GETUPVAL                         R5 1
       41 SETTABLEKS                       R5 R4 K7 ["threadId"]
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["conversation"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["useRef"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K4 ["threadId"]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K0 ["useContext"]
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R6 R7 K1 ["Context"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R5 K5 ["sessionId"]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K6 ["useEffect"]
       35 NEWCLOSURE                       R8 P0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 NEWTABLE                         R9 0 1
       40 MOVE                             R10 R1
       41 SETLIST                          R9 R10 1 [1]
       43 CALL                             R7 2 0
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R7 R8 K3 ["useRef"]
       47 NEWTABLE                         R8 0 0
       49 CALL                             R7 1 1
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R8 R9 K6 ["useEffect"]
       53 NEWCLOSURE                       R9 P1
       54 CAPTURE                          VAL R7
       55 NEWTABLE                         R10 0 1
       57 MOVE                             R11 R6
       58 SETLIST                          R10 R11 1 [1]
       60 CALL                             R8 2 0
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R8 R9 K6 ["useEffect"]
       64 NEWCLOSURE                       R9 P2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R4
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R7
       69 CAPTURE                          UPVAL U5
       70 NEWTABLE                         R10 0 2
       72 MOVE                             R11 R1
       73 MOVE                             R12 R4
       74 SETLIST                          R10 R11 2 [1]
       76 CALL                             R8 2 0
       77 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["conversation"]
        3 GETUPVAL                         R4 1
        4 CALL                             R4 0 1
        5 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        7 LOADK                            R5 K1 ["FFlagAssistantPersistConversations must be enabled"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETTABLEKS                       R3 R0 K4 ["wasLoadedFromPersistence"]
       13 JUMPIF                           R3 ; [+18]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K5 ["join"]
       17 MOVE                             R4 R0
       18 MOVE                             R5 R2
       19 CALL                             R3 2 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K5 ["join"]
       23 GETTABLEKS                       R5 R0 K6 ["threads"]
       25 GETTABLEKS                       R6 R2 K6 ["threads"]
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K6 ["threads"]
       30 MOVE                             R1 R3
       31 RETURN                           R1 1
       32 MOVE                             R1 R2
       33 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R1 0 2
        2 LOADK                            R2 K0 ["threads"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["threadId"]
        6 SETLIST                          R1 R2 2 [1]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 4
       12 JUMPIF                           R2 ; [+19]
       13 GETIMPORT                        R6 K3 [warn]
       15 LOADK                            R7 K4 ["Failed to clone path for loading messages into thread:"]
       16 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       17 MOVE                             R9 R1
       18 GETIMPORT                        R8 K7 [table.unpack]
       20 CALL                             R8 1 -1
       21 CALL                             R6 -1 0
       22 GETIMPORT                        R6 K3 [warn]
       24 LOADK                            R8 K8 ["Failed at key: %*"]
       25 MOVE                             R10 R5
       26 NAMECALL                         R8 R8 K9 ["format"]
       28 CALL                             R8 2 1
       29 MOVE                             R7 R8
       30 CALL                             R6 1 0
       31 RETURN                           R0 1
       32 GETUPVAL                         R6 2
       33 SETTABLEKS                       R6 R4 K10 ["messages"]
       35 GETUPVAL                         R6 3
       36 SETTABLEKS                       R6 R4 K11 ["messageCount"]
       38 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["Conversation"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+8]
        7 GETUPVAL                         R1 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CALL                             R1 1 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R1 R0 K0 ["scope"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K2 ["Thread"]
       19 JUMPIFNOTEQ                      R1 R2 ; [+23]
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R1 R2 K3 ["hydrateMessages"]
       24 GETTABLEKS                       R2 R0 K4 ["messages"]
       26 CALL                             R1 1 1
       27 LOADN                            R2 0
       28 MOVE                             R3 R1
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 ADDK                             R2 R2 K5 [1]
       33 FORGLOOP                         R3 2 ; [-2]
       35 GETUPVAL                         R3 1
       36 NEWCLOSURE                       R4 P1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          VAL R1
       40 CAPTURE                          REF R2
       41 CALL                             R3 1 0
       42 CLOSEUPVALS                      R2
       43 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K3 ["isDirty"]
        7 RETURN                           R1 1

PROTO_9:
        0 NEWTABLE                         R1 0 2
        2 LOADK                            R2 K0 ["threads"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["threadId"]
        6 SETLIST                          R1 R2 2 [1]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 4
       12 JUMPIF                           R2 ; [+19]
       13 GETIMPORT                        R6 K3 [warn]
       15 LOADK                            R7 K4 ["Failed to clone path for clearing dirty from thread:"]
       16 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       17 MOVE                             R9 R1
       18 GETIMPORT                        R8 K7 [table.unpack]
       20 CALL                             R8 1 -1
       21 CALL                             R6 -1 0
       22 GETIMPORT                        R6 K3 [warn]
       24 LOADK                            R8 K8 ["Failed at key: %*"]
       25 MOVE                             R10 R5
       26 NAMECALL                         R8 R8 K9 ["format"]
       28 CALL                             R8 2 1
       29 MOVE                             R7 R8
       30 CALL                             R6 1 0
       31 RETURN                           R0 1
       32 LOADB                            R6 0
       33 SETTABLEKS                       R6 R4 K10 ["isDirty"]
       35 RETURN                           R3 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["Conversation"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+5]
        7 GETUPVAL                         R1 1
        8 DUPCLOSURE                       R2 K2 [PROTO_8]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 GETTABLEKS                       R1 R0 K0 ["scope"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K3 ["Thread"]
       16 JUMPIFNOTEQ                      R1 R2 ; [+6]
       18 GETUPVAL                         R1 1
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U2
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["conversationPersistence"]
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R1 K2 ["onLoadReady"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R1 K3 ["onClearDirty"]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U6
       24 CALL                             R3 1 1
       25 NEWCLOSURE                       R4 P2
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K1 ["isDirty"]
        7 JUMPIFNOT                        R2 ; [+16]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["provideSaveData"]
       11 DUPTABLE                         R3 K6 [{"scope", "conversation", "metadata"}]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K7 ["Conversation"]
       15 SETTABLEKS                       R4 R3 K3 ["scope"]
       17 SETTABLEKS                       R1 R3 K4 ["conversation"]
       19 GETTABLEKS                       R4 R0 K5 ["metadata"]
       21 SETTABLEKS                       R4 R3 K5 ["metadata"]
       23 CALL                             R2 1 0
       24 GETTABLEKS                       R2 R1 K8 ["threads"]
       26 LOADNIL                          R3
       27 LOADNIL                          R4
       28 FORGPREP                         R2
       29 GETTABLEKS                       R7 R6 K1 ["isDirty"]
       31 JUMPIFNOT                        R7 ; [+30]
       32 GETTABLEKS                       R8 R6 K9 ["messages"]
       34 FASTCALL2K                       ASSERT R8 K10 ; [+4]
       36 LOADK                            R9 K10 ["Dirty thread is missing messages"]
       37 GETIMPORT                        R7 K12 [assert]
       39 CALL                             R7 2 0
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R7 R8 K2 ["provideSaveData"]
       43 DUPTABLE                         R8 K14 [{"scope", "threadId", "messages", "metadata"}]
       44 GETUPVAL                         R10 2
       45 GETTABLEKS                       R9 R10 K15 ["Thread"]
       47 SETTABLEKS                       R9 R8 K3 ["scope"]
       49 GETTABLEKS                       R9 R6 K13 ["threadId"]
       51 SETTABLEKS                       R9 R8 K13 ["threadId"]
       53 GETTABLEKS                       R9 R6 K9 ["messages"]
       55 SETTABLEKS                       R9 R8 K9 ["messages"]
       57 GETTABLEKS                       R9 R0 K5 ["metadata"]
       59 SETTABLEKS                       R9 R8 K5 ["metadata"]
       61 CALL                             R7 1 0
       62 FORGLOOP                         R2 2 ; [-34]
       64 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["conversationPersistence"]
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R1 K2 ["onSaveRequested"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 CALL                             R2 1 1
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R2
       17 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["FFlagAssistantPersistConversations must be enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K3 ["useContext"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K4 ["Context"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R1 R0 K5 ["setConversation"]
       17 GETUPVAL                         R2 3
       18 CALL                             R2 0 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K6 ["useEffect"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 NEWTABLE                         R5 0 1
       32 MOVE                             R6 R1
       33 SETLIST                          R5 R6 1 [1]
       35 CALL                             R3 2 0
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R3 R4 K6 ["useEffect"]
       39 NEWCLOSURE                       R4 P1
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U5
       43 NEWTABLE                         R5 0 0
       45 CALL                             R3 2 0
       46 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["ConversationContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["Dash"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Guest"]
       27 GETTABLEKS                       R4 R5 K12 ["Environment"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Parent"]
       34 GETTABLEKS                       R5 R6 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Util"]
       41 GETTABLEKS                       R6 R7 K15 ["Serializer"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K6 ["Components"]
       48 GETTABLEKS                       R8 R9 K7 ["Contexts"]
       50 GETTABLEKS                       R7 R8 K16 ["SessionIdContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K6 ["Components"]
       57 GETTABLEKS                       R9 R10 K7 ["Contexts"]
       59 GETTABLEKS                       R8 R9 K17 ["ThreadIdContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K18 ["Types"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R11 R0 K14 ["Util"]
       71 GETTABLEKS                       R10 R11 K19 ["clonePath"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R12 R0 K20 ["Flags"]
       78 GETTABLEKS                       R11 R12 K21 ["FFlagAssistantPersistConversations"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R8 K22 ["SCOPE_TYPES"]
       83 DUPCLOSURE                       R12 K23 [PROTO_0]
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R2
       86 DUPCLOSURE                       R13 K24 [PROTO_4]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R11
       93 DUPCLOSURE                       R14 K25 [PROTO_16]
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R9
      103 RETURN                           R14 1
