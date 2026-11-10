PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getConversation"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setGetConversationCallback"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setGetConversationCallback"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 DUPCLOSURE                       R0 K1 [PROTO_1]
        8 CAPTURE                          UPVAL U0
        9 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R3 0 1
       11 MOVE                             R4 R0
       12 SETLIST                          R3 R4 1 [1]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantEval"]
       13 GETTABLEKS                       R2 R2 K8 ["EvalController"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Util"]
       20 GETTABLEKS                       R3 R3 K7 ["AssistantEval"]
       22 GETTABLEKS                       R3 R3 K9 ["EvalConversationFormatter"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Parent"]
       29 GETTABLEKS                       R4 R4 K11 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K13 ["useConversation"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_3]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 RETURN                           R5 1
