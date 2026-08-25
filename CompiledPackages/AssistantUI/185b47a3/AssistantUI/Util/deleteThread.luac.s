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
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+27]
        7 GETTABLEKS                       R2 R0 K1 ["acpSessionId"]
        9 JUMPIFNOT                        R2 ; [+19]
       10 GETTABLEKS                       R2 R0 K2 ["acpClientService"]
       12 JUMPIFNOT                        R2 ; [+16]
       13 GETTABLEKS                       R2 R0 K2 ["acpClientService"]
       15 DUPTABLE                         R4 K4 [{"sessionId"}]
       16 GETTABLEKS                       R5 R0 K1 ["acpSessionId"]
       18 SETTABLEKS                       R5 R4 K3 ["sessionId"]
       20 NAMECALL                         R2 R2 K5 ["deleteSession"]
       22 CALL                             R2 2 1
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R2 R2 K6 ["catch"]
       27 CALL                             R2 2 0
       28 JUMP                             ; [+24]
       29 GETIMPORT                        R2 K8 [warn]
       31 LOADK                            R3 K9 ["[Assistant] Cannot delete ACP session without its canonical session ID and service"]
       32 CALL                             R2 1 0
       33 JUMP                             ; [+19]
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K10 ["getCoordinator"]
       37 CALL                             R2 0 1
       38 GETTABLEKS                       R3 R2 K11 ["requestDelete"]
       40 DUPTABLE                         R4 K14 [{"scope", "threadId"}]
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R5 R5 K15 ["ScopeTypes"]
       44 GETTABLEKS                       R5 R5 K16 ["Messages"]
       46 SETTABLEKS                       R5 R4 K12 ["scope"]
       48 GETTABLEKS                       R5 R0 K17 ["deleteThreadId"]
       50 SETTABLEKS                       R5 R4 K13 ["threadId"]
       52 CALL                             R3 1 0
       53 GETUPVAL                         R3 1
       54 CALL                             R3 0 1
       55 JUMPIFNOT                        R3 ; [+3]
       56 GETTABLEKS                       R2 R0 K1 ["acpSessionId"]
       58 JUMP                             ; [+2]
       59 GETTABLEKS                       R2 R0 K17 ["deleteThreadId"]
       61 JUMPIFNOT                        R2 ; [+16]
       62 GETTABLEKS                       R3 R1 K18 ["EventLogger"]
       64 GETTABLEKS                       R3 R3 K19 ["logThreadDeleted"]
       66 DUPTABLE                         R4 K22 [{"conversationId", "threadId", "deleteReason"}]
       67 GETTABLEKS                       R5 R0 K3 ["sessionId"]
       69 SETTABLEKS                       R5 R4 K20 ["conversationId"]
       71 SETTABLEKS                       R2 R4 K13 ["threadId"]
       73 GETTABLEKS                       R5 R0 K21 ["deleteReason"]
       75 SETTABLEKS                       R5 R4 K21 ["deleteReason"]
       77 CALL                             R3 1 0
       78 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["ACPClientService"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Guest"]
       16 GETTABLEKS                       R3 R3 K8 ["Environment"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["FlagUtils"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K10 ["Util"]
       28 GETTABLEKS                       R5 R5 K11 ["Persistence"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K12 ["Types"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R3 K13 ["getIsAssistantHarnessSplit"]
       38 DUPCLOSURE                       R7 K14 [PROTO_1]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 RETURN                           R7 1
