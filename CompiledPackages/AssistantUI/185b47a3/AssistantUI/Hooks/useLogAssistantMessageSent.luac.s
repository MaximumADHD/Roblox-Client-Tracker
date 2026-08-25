PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["get"]
        3 CALL                             R5 0 1
        4 GETTABLEKS                       R5 R5 K1 ["EventLogger"]
        6 GETTABLEKS                       R6 R0 K2 ["threads"]
        8 JUMPIFNOT                        R6 ; [+3]
        9 GETTABLEKS                       R7 R0 K2 ["threads"]
       11 GETTABLE                         R6 R7 R2
       12 JUMPIF                           R6 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R8 R6 K3 ["messages"]
       16 GETTABLE                         R7 R8 R3
       17 JUMPIFNOT                        R7 ; [+3]
       18 GETTABLEKS                       R8 R7 K4 ["contents"]
       20 JUMPIF                           R8 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K5 ["readMessage"]
       25 MOVE                             R9 R7
       26 CALL                             R8 1 1
       27 GETIMPORT                        R9 K7 [pcall]
       29 NEWCLOSURE                       R10 P0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R8
       32 CALL                             R9 1 2
       33 JUMPIFNOT                        R9 ; [+16]
       34 JUMPIFEQKS                       R10 K8 [""] ; [+15]
       36 GETTABLEKS                       R11 R5 K9 ["logAssistantMessageSent"]
       38 DUPTABLE                         R12 K15 [{"messageGuid", "sessionId", "threadId", "acpSessionId", "message"}]
       39 SETTABLEKS                       R3 R12 K10 ["messageGuid"]
       41 SETTABLEKS                       R1 R12 K11 ["sessionId"]
       43 SETTABLEKS                       R2 R12 K12 ["threadId"]
       45 SETTABLEKS                       R4 R12 K13 ["acpSessionId"]
       47 SETTABLEKS                       R10 R12 K14 ["message"]
       49 CALL                             R11 1 0
       50 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 GETTABLEKS                       R4 R0 K1 ["sessionId"]
        9 GETTABLEKS                       R5 R0 K2 ["threadId"]
       11 GETTABLEKS                       R6 R0 K3 ["messageId"]
       13 GETTABLEKS                       R7 R0 K4 ["acpSessionId"]
       15 CALL                             R2 5 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useRef"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K1 ["current"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["useCallback"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 NEWTABLE                         R3 0 0
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

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
       15 GETTABLEKS                       R3 R0 K10 ["Guest"]
       17 GETTABLEKS                       R3 R3 K11 ["Environment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Components"]
       31 GETTABLEKS                       R5 R5 K15 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K16 ["SessionIdContext"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K17 ["Types"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K18 ["Util"]
       45 GETTABLEKS                       R7 R7 K19 ["readMessage"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K20 ["Hooks"]
       52 GETTABLEKS                       R8 R8 K21 ["useConversation"]
       54 CALL                             R7 1 1
       55 DUPCLOSURE                       R8 K22 [PROTO_1]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R1
       59 DUPCLOSURE                       R9 K23 [PROTO_3]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R8
       63 RETURN                           R9 1
