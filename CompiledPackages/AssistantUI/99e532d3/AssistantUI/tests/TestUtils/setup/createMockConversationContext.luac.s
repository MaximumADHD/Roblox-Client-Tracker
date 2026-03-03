PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 2
        5 SETUPVAL                         R2 2
        6 GETUPVAL                         R3 3
        7 GETUPVAL                         R5 4
        8 GETTABLEKS                       R4 R5 K1 ["Provider"]
       10 DUPTABLE                         R5 K4 [{"conversation", "setConversation"}]
       11 SETTABLEKS                       R1 R5 K2 ["conversation"]
       13 SETTABLEKS                       R2 R5 K3 ["setConversation"]
       15 GETTABLEKS                       R6 R0 K5 ["children"]
       17 CALL                             R3 3 -1
       18 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 LOADNIL                          R1
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          REF R0
        6 CAPTURE                          REF R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 MOVE                             R3 R2
       10 DUPTABLE                         R4 K2 [{"getConversation", "setConversation"}]
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          REF R0
       13 SETTABLEKS                       R5 R4 K0 ["getConversation"]
       15 NEWCLOSURE                       R5 P2
       16 CAPTURE                          REF R0
       17 CAPTURE                          REF R1
       18 SETTABLEKS                       R5 R4 K1 ["setConversation"]
       20 CLOSEUPVALS                      R0
       21 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["ConversationContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Util"]
       32 GETTABLEKS                       R5 R6 K13 ["makeConversation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K14 ["createElement"]
       37 DUPCLOSURE                       R6 K15 [PROTO_3]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R1
       42 RETURN                           R6 1
