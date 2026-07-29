PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["threads"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K1 ["ephemeral"]
        7 JUMPIF                           R6 ; [+22]
        8 GETUPVAL                         R6 0
        9 DUPTABLE                         R7 K7 [{"deleteThreadId", "acpSessionId", "assistantService", "sessionId", "deleteReason"}]
       10 SETTABLEKS                       R4 R7 K2 ["deleteThreadId"]
       12 GETTABLEKS                       R8 R5 K3 ["acpSessionId"]
       14 SETTABLEKS                       R8 R7 K3 ["acpSessionId"]
       16 GETUPVAL                         R8 1
       17 SETTABLEKS                       R8 R7 K4 ["assistantService"]
       19 GETUPVAL                         R8 2
       20 SETTABLEKS                       R8 R7 K5 ["sessionId"]
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R8 R8 K8 ["DeletionReason"]
       25 GETTABLEKS                       R8 R8 K9 ["UserConversationDelete"]
       27 SETTABLEKS                       R8 R7 K6 ["deleteReason"]
       29 CALL                             R6 1 0
       30 FORGLOOP                         R1 2 ; [-26]
       32 GETUPVAL                         R1 4
       33 CALL                             R1 0 1
       34 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearAll"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K1 ["ThreadSwitchSource"]
       11 GETTABLEKS                       R3 R3 K2 ["ClearConversation"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 4
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U8
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["setConversation"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R2 R2 K3 ["service"]
       18 GETUPVAL                         R3 3
       19 CALL                             R3 0 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K0 ["useContext"]
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K1 ["Context"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K4 ["sessionId"]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          VAL R3
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R5
       41 CAPTURE                          UPVAL U9
       42 NEWTABLE                         R8 0 4
       44 MOVE                             R9 R1
       45 MOVE                             R10 R3
       46 MOVE                             R11 R5
       47 MOVE                             R12 R2
       48 SETLIST                          R8 R9 4 [1]
       50 CALL                             R6 2 -1
       51 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["AssistantServiceContext"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["Engine"]
       25 GETTABLEKS                       R3 R3 K12 ["CompactedStore"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K8 ["Components"]
       31 GETTABLEKS                       R5 R5 K9 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K13 ["ConversationContext"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R0 K6 ["Parent"]
       40 GETTABLEKS                       R6 R6 K14 ["React"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K8 ["Components"]
       47 GETTABLEKS                       R7 R7 K9 ["Contexts"]
       49 GETTABLEKS                       R7 R7 K15 ["SessionIdContext"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K16 ["Types"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K17 ["Util"]
       61 GETTABLEKS                       R9 R9 K18 ["createNewThread"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K5 [require]
       66 GETTABLEKS                       R10 R0 K17 ["Util"]
       68 GETTABLEKS                       R10 R10 K19 ["deleteThread"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K5 [require]
       73 GETTABLEKS                       R11 R0 K17 ["Util"]
       75 GETTABLEKS                       R11 R11 K20 ["makeConversation"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K5 [require]
       80 GETTABLEKS                       R12 R0 K21 ["Hooks"]
       82 GETTABLEKS                       R12 R12 K22 ["useSwitchThread"]
       84 CALL                             R11 1 1
       85 DUPCLOSURE                       R12 K23 [PROTO_2]
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R10
       96 RETURN                           R12 1
