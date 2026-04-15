PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+17]
        7 GETTABLEKS                       R2 R1 K1 ["conversationPersistence"]
        9 GETTABLEKS                       R3 R2 K2 ["requestDelete"]
       11 DUPTABLE                         R4 K5 [{"scope", "threadId"}]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R6 R7 K6 ["SCOPE_TYPES"]
       15 GETTABLEKS                       R5 R6 K7 ["Thread"]
       17 SETTABLEKS                       R5 R4 K3 ["scope"]
       19 GETTABLEKS                       R5 R0 K8 ["deleteThreadId"]
       21 SETTABLEKS                       R5 R4 K4 ["threadId"]
       23 CALL                             R3 1 0
       24 GETTABLEKS                       R3 R1 K9 ["EventLogger"]
       26 GETTABLEKS                       R2 R3 K10 ["logThreadDeleted"]
       28 DUPTABLE                         R3 K13 [{"conversationId", "threadId", "deleteReason"}]
       29 GETTABLEKS                       R4 R0 K14 ["sessionId"]
       31 SETTABLEKS                       R4 R3 K11 ["conversationId"]
       33 GETTABLEKS                       R4 R0 K8 ["deleteThreadId"]
       35 SETTABLEKS                       R4 R3 K4 ["threadId"]
       37 GETTABLEKS                       R4 R0 K12 ["deleteReason"]
       39 SETTABLEKS                       R4 R3 K12 ["deleteReason"]
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Flags"]
       23 GETTABLEKS                       R4 R5 K10 ["FFlagAssistantMultipleChatPersistence"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_0]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 RETURN                           R4 1
