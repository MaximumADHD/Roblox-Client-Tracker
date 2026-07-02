PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["getCoordinator"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R3 R2 K2 ["requestDelete"]
       10 DUPTABLE                         R4 K5 [{"scope", "threadId"}]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K6 ["ScopeTypes"]
       14 GETTABLEKS                       R5 R5 K7 ["Messages"]
       16 SETTABLEKS                       R5 R4 K3 ["scope"]
       18 GETTABLEKS                       R5 R0 K8 ["deleteThreadId"]
       20 SETTABLEKS                       R5 R4 K4 ["threadId"]
       22 CALL                             R3 1 0
       23 GETTABLEKS                       R3 R1 K9 ["EventLogger"]
       25 GETTABLEKS                       R3 R3 K10 ["logThreadDeleted"]
       27 DUPTABLE                         R4 K13 [{"conversationId", "threadId", "deleteReason"}]
       28 GETTABLEKS                       R5 R0 K14 ["sessionId"]
       30 SETTABLEKS                       R5 R4 K11 ["conversationId"]
       32 GETTABLEKS                       R5 R0 K8 ["deleteThreadId"]
       34 SETTABLEKS                       R5 R4 K4 ["threadId"]
       36 GETTABLEKS                       R5 R0 K12 ["deleteReason"]
       38 SETTABLEKS                       R5 R4 K12 ["deleteReason"]
       40 CALL                             R3 1 0
       41 RETURN                           R0 0

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
       26 DUPCLOSURE                       R4 K11 [PROTO_0]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 RETURN                           R4 1
