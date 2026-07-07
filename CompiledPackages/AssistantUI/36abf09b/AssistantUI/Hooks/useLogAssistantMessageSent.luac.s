PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["get"]
        3 CALL                             R4 0 1
        4 GETTABLEKS                       R4 R4 K1 ["EventLogger"]
        6 GETTABLEKS                       R5 R0 K2 ["threads"]
        8 JUMPIFNOT                        R5 ; [+3]
        9 GETTABLEKS                       R6 R0 K2 ["threads"]
       11 GETTABLE                         R5 R6 R2
       12 JUMPIF                           R5 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R7 R5 K3 ["messages"]
       16 GETTABLE                         R6 R7 R3
       17 JUMPIFNOT                        R6 ; [+3]
       18 GETTABLEKS                       R7 R6 K4 ["contents"]
       20 JUMPIF                           R7 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K5 ["readMessage"]
       25 MOVE                             R8 R6
       26 CALL                             R7 1 1
       27 GETIMPORT                        R8 K7 [pcall]
       29 NEWCLOSURE                       R9 P0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R7
       32 CALL                             R8 1 2
       33 JUMPIFNOT                        R8 ; [+14]
       34 JUMPIFEQKS                       R9 K8 [""] ; [+13]
       36 GETTABLEKS                       R10 R4 K9 ["logAssistantMessageSent"]
       38 DUPTABLE                         R11 K14 [{"messageGuid", "sessionId", "threadId", "message"}]
       39 SETTABLEKS                       R3 R11 K10 ["messageGuid"]
       41 SETTABLEKS                       R1 R11 K11 ["sessionId"]
       43 SETTABLEKS                       R2 R11 K12 ["threadId"]
       45 SETTABLEKS                       R9 R11 K13 ["message"]
       47 CALL                             R10 1 0
       48 RETURN                           R0 0

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
       13 CALL                             R2 4 0
       14 RETURN                           R0 0

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
