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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["makeConversation"]
        3 CALL                             R0 0 1
        4 LOADNIL                          R1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          REF R0
        8 CAPTURE                          REF R1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U0
       11 MOVE                             R3 R2
       12 DUPTABLE                         R4 K3 [{"getConversation", "setConversation"}]
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          REF R0
       15 SETTABLEKS                       R5 R4 K1 ["getConversation"]
       17 NEWCLOSURE                       R5 P2
       18 CAPTURE                          REF R0
       19 CAPTURE                          REF R1
       20 SETTABLEKS                       R5 R4 K2 ["setConversation"]
       22 CLOSEUPVALS                      R0
       23 RETURN                           R3 2

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
       28 GETTABLEKS                       R4 R2 K12 ["createElement"]
       30 DUPCLOSURE                       R5 K13 [PROTO_3]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 RETURN                           R5 1
