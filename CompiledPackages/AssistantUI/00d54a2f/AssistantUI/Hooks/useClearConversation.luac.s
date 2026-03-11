PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+38]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["get"]
        6 CALL                             R1 0 1
        7 GETTABLEKS                       R2 R1 K1 ["conversationPersistence"]
        9 GETTABLEKS                       R3 R0 K2 ["threads"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R8 R7 K3 ["ephemeral"]
       16 JUMPIF                           R8 ; [+13]
       17 GETTABLEKS                       R8 R2 K4 ["requestDelete"]
       19 DUPTABLE                         R9 K7 [{"scope", "threadId"}]
       20 GETUPVAL                         R12 2
       21 GETTABLEKS                       R11 R12 K8 ["SCOPE_TYPES"]
       23 GETTABLEKS                       R10 R11 K9 ["Thread"]
       25 SETTABLEKS                       R10 R9 K5 ["scope"]
       27 SETTABLEKS                       R6 R9 K6 ["threadId"]
       29 CALL                             R8 1 0
       30 FORGLOOP                         R3 2 ; [-17]
       32 GETUPVAL                         R3 3
       33 CALL                             R3 0 1
       34 LOADB                            R4 0
       35 SETTABLEKS                       R4 R3 K3 ["ephemeral"]
       37 GETUPVAL                         R4 4
       38 MOVE                             R5 R3
       39 CALL                             R4 1 0
       40 RETURN                           R3 1
       41 NEWTABLE                         R1 0 0
       43 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMP                             ; [+5]
        6 GETUPVAL                         R0 2
        7 LOADB                            R2 0
        8 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
       10 CALL                             R0 2 1
       11 GETUPVAL                         R1 3
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 4
       15 DUPCLOSURE                       R2 K1 [PROTO_0]
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U8
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["setConversation"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["useContext"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K3 ["setThreadId"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U9
       31 NEWTABLE                         R6 0 2
       33 MOVE                             R7 R1
       34 MOVE                             R8 R3
       35 SETLIST                          R6 R7 2 [1]
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1

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
       54 GETTABLEKS                       R8 R9 K20 ["createNewThread"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R10 R0 K19 ["Util"]
       61 GETTABLEKS                       R9 R10 K21 ["makeConversation"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R11 R0 K19 ["Util"]
       68 GETTABLEKS                       R10 R11 K22 ["markDirty"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R12 R0 K23 ["Flags"]
       75 GETTABLEKS                       R11 R12 K24 ["FFlagAssistantMultipleChatSupport"]
       77 CALL                             R10 1 1
       78 DUPCLOSURE                       R11 K25 [PROTO_2]
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R9
       89 RETURN                           R11 1
