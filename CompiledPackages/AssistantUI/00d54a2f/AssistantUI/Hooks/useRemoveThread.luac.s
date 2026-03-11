PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+64]
        3 NEWTABLE                         R1 0 1
        5 LOADK                            R2 K0 ["threads"]
        6 SETLIST                          R1 R2 1 [1]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 4
       12 JUMPIF                           R2 ; [+19]
       13 GETIMPORT                        R6 K2 [warn]
       15 LOADK                            R7 K3 ["Failed to clone path for removing thread:"]
       16 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       17 MOVE                             R9 R1
       18 GETIMPORT                        R8 K6 [table.unpack]
       20 CALL                             R8 1 -1
       21 CALL                             R6 -1 0
       22 GETIMPORT                        R6 K2 [warn]
       24 LOADK                            R8 K7 ["Failed at key: %*"]
       25 MOVE                             R10 R5
       26 NAMECALL                         R8 R8 K8 ["format"]
       28 CALL                             R8 2 1
       29 MOVE                             R7 R8
       30 CALL                             R6 1 0
       31 RETURN                           R0 1
       32 GETUPVAL                         R7 2
       33 GETTABLE                         R6 R4 R7
       34 GETUPVAL                         R7 2
       35 LOADNIL                          R8
       36 SETTABLE                         R8 R4 R7
       37 GETTABLEKS                       R7 R6 K9 ["ephemeral"]
       39 JUMPIF                           R7 ; [+26]
       40 GETUPVAL                         R7 3
       41 MOVE                             R8 R3
       42 CALL                             R7 1 0
       43 GETUPVAL                         R7 4
       44 CALL                             R7 0 1
       45 JUMPIFNOT                        R7 ; [+20]
       46 GETUPVAL                         R8 5
       47 GETTABLEKS                       R7 R8 K10 ["get"]
       49 CALL                             R7 0 1
       50 GETTABLEKS                       R8 R7 K11 ["conversationPersistence"]
       52 GETTABLEKS                       R9 R8 K12 ["requestDelete"]
       54 DUPTABLE                         R10 K15 [{"scope", "threadId"}]
       55 GETUPVAL                         R13 6
       56 GETTABLEKS                       R12 R13 K16 ["SCOPE_TYPES"]
       58 GETTABLEKS                       R11 R12 K17 ["Thread"]
       60 SETTABLEKS                       R11 R10 K13 ["scope"]
       62 GETUPVAL                         R11 2
       63 SETTABLEKS                       R11 R10 K14 ["threadId"]
       65 CALL                             R9 1 0
       66 RETURN                           R3 1
       67 GETIMPORT                        R1 K19 [table.clone]
       69 MOVE                             R2 R0
       70 CALL                             R1 1 1
       71 GETUPVAL                         R2 2
       72 LOADNIL                          R3
       73 SETTABLE                         R3 R1 R2
       74 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+15]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETUPVAL                         R1 2
        7 CALL                             R1 0 1
        8 JUMP                             ; [+5]
        9 GETUPVAL                         R1 3
       10 LOADB                            R3 0
       11 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 4
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 GETUPVAL                         R1 5
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          UPVAL U9
       25 CAPTURE                          UPVAL U10
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["useRemoveThread is only available when multiple chat support is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K3 ["useContext"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K4 ["Context"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R1 R0 K5 ["setConversation"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K3 ["useContext"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R3 R4 K4 ["Context"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K6 ["threadId"]
       26 GETTABLEKS                       R4 R2 K7 ["setThreadId"]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K8 ["useCallback"]
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          UPVAL U10
       43 NEWTABLE                         R7 0 3
       45 MOVE                             R8 R1
       46 MOVE                             R9 R3
       47 MOVE                             R10 R4
       48 SETLIST                          R7 R8 3 [1]
       50 CALL                             R5 2 -1
       51 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R0 K10 ["Components"]
       17 GETTABLEKS                       R4 R5 K11 ["Contexts"]
       19 GETTABLEKS                       R3 R4 K12 ["ConversationContext"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R5 R0 K13 ["Guest"]
       26 GETTABLEKS                       R4 R5 K14 ["Environment"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R0 K15 ["Parent"]
       33 GETTABLEKS                       R5 R6 K16 ["React"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R8 R0 K10 ["Components"]
       40 GETTABLEKS                       R7 R8 K11 ["Contexts"]
       42 GETTABLEKS                       R6 R7 K17 ["ThreadIdContext"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K18 ["Types"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R9 R0 K19 ["Util"]
       54 GETTABLEKS                       R8 R9 K20 ["clonePath"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R10 R0 K19 ["Util"]
       61 GETTABLEKS                       R9 R10 K21 ["createNewThread"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R11 R0 K19 ["Util"]
       68 GETTABLEKS                       R10 R11 K22 ["markDirty"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R12 R0 K23 ["Flags"]
       75 GETTABLEKS                       R11 R12 K24 ["FFlagAssistantMultipleChatSupport"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K9 [require]
       80 GETTABLEKS                       R13 R0 K23 ["Flags"]
       82 GETTABLEKS                       R12 R13 K25 ["FFlagAssistantPersistConversations"]
       84 CALL                             R11 1 1
       85 DUPCLOSURE                       R12 K26 [PROTO_2]
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R6
       97 RETURN                           R12 1
