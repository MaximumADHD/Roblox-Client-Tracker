PROTO_0:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["[Assistant] Failed to delete ACP session %*: %*"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K3 ["acpSessionId"]
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R7 R0
        8 GETIMPORT                        R6 K5 [tostring]
       10 CALL                             R6 1 1
       11 NAMECALL                         R3 R3 K6 ["format"]
       13 CALL                             R3 3 1
       14 MOVE                             R2 R3
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantHarnessSplit"]
        7 JUMPIFNOT                        R2 ; [+27]
        8 GETTABLEKS                       R2 R0 K2 ["acpSessionId"]
       10 JUMPIFNOT                        R2 ; [+19]
       11 GETTABLEKS                       R2 R0 K3 ["assistantService"]
       13 JUMPIFNOT                        R2 ; [+16]
       14 GETTABLEKS                       R2 R0 K3 ["assistantService"]
       16 DUPTABLE                         R4 K5 [{"sessionId"}]
       17 GETTABLEKS                       R5 R0 K2 ["acpSessionId"]
       19 SETTABLEKS                       R5 R4 K4 ["sessionId"]
       21 NAMECALL                         R2 R2 K6 ["deleteSession"]
       23 CALL                             R2 2 1
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R0
       26 NAMECALL                         R2 R2 K7 ["catch"]
       28 CALL                             R2 2 0
       29 JUMP                             ; [+24]
       30 GETIMPORT                        R2 K9 [warn]
       32 LOADK                            R3 K10 ["[Assistant] Cannot delete ACP session without its canonical session ID and service"]
       33 CALL                             R2 1 0
       34 JUMP                             ; [+19]
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R2 K11 ["getCoordinator"]
       38 CALL                             R2 0 1
       39 GETTABLEKS                       R3 R2 K12 ["requestDelete"]
       41 DUPTABLE                         R4 K15 [{"scope", "threadId"}]
       42 GETUPVAL                         R5 3
       43 GETTABLEKS                       R5 R5 K16 ["ScopeTypes"]
       45 GETTABLEKS                       R5 R5 K17 ["Messages"]
       47 SETTABLEKS                       R5 R4 K13 ["scope"]
       49 GETTABLEKS                       R5 R0 K18 ["deleteThreadId"]
       51 SETTABLEKS                       R5 R4 K14 ["threadId"]
       53 CALL                             R3 1 0
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantHarnessSplit"]
       57 JUMPIFNOT                        R3 ; [+3]
       58 GETTABLEKS                       R2 R0 K2 ["acpSessionId"]
       60 JUMP                             ; [+2]
       61 GETTABLEKS                       R2 R0 K18 ["deleteThreadId"]
       63 JUMPIFNOT                        R2 ; [+16]
       64 GETTABLEKS                       R3 R1 K19 ["EventLogger"]
       66 GETTABLEKS                       R3 R3 K20 ["logThreadDeleted"]
       68 DUPTABLE                         R4 K23 [{"conversationId", "threadId", "deleteReason"}]
       69 GETTABLEKS                       R5 R0 K4 ["sessionId"]
       71 SETTABLEKS                       R5 R4 K21 ["conversationId"]
       73 SETTABLEKS                       R2 R4 K14 ["threadId"]
       75 GETTABLEKS                       R5 R0 K22 ["deleteReason"]
       77 SETTABLEKS                       R5 R4 K22 ["deleteReason"]
       79 CALL                             R3 1 0
       80 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["AssistantService"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Guest"]
       16 GETTABLEKS                       R3 R3 K8 ["Environment"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Flags"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K10 ["Util"]
       28 GETTABLEKS                       R5 R5 K11 ["Persistence"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K12 ["Types"]
       35 CALL                             R5 1 1
       36 DUPCLOSURE                       R6 K13 [PROTO_1]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 RETURN                           R6 1
