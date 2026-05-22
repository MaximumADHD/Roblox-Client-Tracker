PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+19]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["getCoordinator"]
       10 CALL                             R2 0 1
       11 GETTABLEKS                       R3 R2 K2 ["requestDelete"]
       13 DUPTABLE                         R4 K5 [{"scope", "threadId"}]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K6 ["ScopeTypes"]
       17 GETTABLEKS                       R5 R5 K7 ["Messages"]
       19 SETTABLEKS                       R5 R4 K3 ["scope"]
       21 GETTABLEKS                       R5 R0 K8 ["deleteThreadId"]
       23 SETTABLEKS                       R5 R4 K4 ["threadId"]
       25 CALL                             R3 1 0
       26 GETTABLEKS                       R2 R1 K9 ["EventLogger"]
       28 GETTABLEKS                       R2 R2 K10 ["logThreadDeleted"]
       30 DUPTABLE                         R3 K13 [{"conversationId", "threadId", "deleteReason"}]
       31 GETTABLEKS                       R4 R0 K14 ["sessionId"]
       33 SETTABLEKS                       R4 R3 K11 ["conversationId"]
       35 GETTABLEKS                       R4 R0 K8 ["deleteThreadId"]
       37 SETTABLEKS                       R4 R3 K4 ["threadId"]
       39 GETTABLEKS                       R4 R0 K12 ["deleteReason"]
       41 SETTABLEKS                       R4 R3 K12 ["deleteReason"]
       43 CALL                             R2 1 0
       44 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Persistence"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Flags"]
       30 GETTABLEKS                       R5 R5 K12 ["FFlagAssistantMultipleChatPersistence"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K13 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 RETURN                           R5 1
