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
        4 GETTABLEKS                       R2 R0 K1 ["acpSessionId"]
        6 JUMPIFNOT                        R2 ; [+19]
        7 GETTABLEKS                       R2 R0 K2 ["acpClientService"]
        9 JUMPIFNOT                        R2 ; [+16]
       10 GETTABLEKS                       R2 R0 K2 ["acpClientService"]
       12 DUPTABLE                         R4 K4 [{"sessionId"}]
       13 GETTABLEKS                       R5 R0 K1 ["acpSessionId"]
       15 SETTABLEKS                       R5 R4 K3 ["sessionId"]
       17 NAMECALL                         R2 R2 K5 ["deleteSession"]
       19 CALL                             R2 2 1
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R2 R2 K6 ["catch"]
       24 CALL                             R2 2 0
       25 JUMP                             ; [+4]
       26 GETIMPORT                        R2 K8 [warn]
       28 LOADK                            R3 K9 ["[Assistant] Cannot delete ACP session without its canonical session ID and service"]
       29 CALL                             R2 1 0
       30 GETTABLEKS                       R2 R0 K1 ["acpSessionId"]
       32 JUMPIFNOT                        R2 ; [+16]
       33 GETTABLEKS                       R3 R1 K10 ["EventLogger"]
       35 GETTABLEKS                       R3 R3 K11 ["logThreadDeleted"]
       37 DUPTABLE                         R4 K15 [{"conversationId", "threadId", "deleteReason"}]
       38 GETTABLEKS                       R5 R0 K3 ["sessionId"]
       40 SETTABLEKS                       R5 R4 K12 ["conversationId"]
       42 SETTABLEKS                       R2 R4 K13 ["threadId"]
       44 GETTABLEKS                       R5 R0 K14 ["deleteReason"]
       46 SETTABLEKS                       R5 R4 K14 ["deleteReason"]
       48 CALL                             R3 1 0
       49 RETURN                           R0 0

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
       21 GETTABLEKS                       R4 R0 K9 ["Types"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K10 [PROTO_1]
       25 CAPTURE                          VAL R2
       26 RETURN                           R4 1
