PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["makeConversation"]
        6 CALL                             R1 0 -1
        7 RETURN                           R1 -1
        8 NEWTABLE                         R1 0 0
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 DUPCLOSURE                       R2 K1 [PROTO_0]
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["setConversation"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["useContext"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K3 ["setThreadId"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U1
       27 NEWTABLE                         R6 0 2
       29 MOVE                             R7 R1
       30 MOVE                             R8 R3
       31 SETLIST                          R6 R7 2 [1]
       33 CALL                             R4 2 -1
       34 RETURN                           R4 -1

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
       15 GETTABLEKS                       R5 R0 K10 ["Components"]
       17 GETTABLEKS                       R4 R5 K11 ["Contexts"]
       19 GETTABLEKS                       R3 R4 K12 ["ConversationContext"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R5 R0 K13 ["Parent"]
       26 GETTABLEKS                       R4 R5 K14 ["React"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R7 R0 K10 ["Components"]
       33 GETTABLEKS                       R6 R7 K11 ["Contexts"]
       35 GETTABLEKS                       R5 R6 K15 ["ThreadIdContext"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R7 R0 K16 ["Flags"]
       42 GETTABLEKS                       R6 R7 K17 ["FFlagAssistantMultipleChatSupport"]
       44 CALL                             R5 1 1
       45 DUPCLOSURE                       R6 K18 [PROTO_2]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R5
       51 RETURN                           R6 1
