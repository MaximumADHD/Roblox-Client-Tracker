PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"conversation", "setConversation"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["conversation"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setConversation"]
        7 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["default"]
        2 JUMPIFEQKNIL                     R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["default is not supported in this context"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["useState"]
       15 GETUPVAL                         R2 1
       16 CALL                             R1 1 2
       17 LOADNIL                          R3
       18 GETUPVAL                         R4 2
       19 CALL                             R4 0 1
       20 JUMPIFNOT                        R4 ; [+21]
       21 GETTABLEKS                       R5 R0 K5 ["conversation"]
       23 OR                               R4 R5 R1
       24 GETTABLEKS                       R6 R0 K6 ["setConversation"]
       26 OR                               R5 R6 R2
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K7 ["useMemo"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R5
       33 NEWTABLE                         R8 0 2
       35 MOVE                             R9 R4
       36 MOVE                             R10 R5
       37 SETLIST                          R8 R9 2 [1]
       39 CALL                             R6 2 1
       40 MOVE                             R3 R6
       41 JUMP                             ; [+12]
       42 DUPTABLE                         R4 K8 [{"conversation", "setConversation"}]
       43 GETTABLEKS                       R6 R0 K5 ["conversation"]
       45 OR                               R5 R6 R1
       46 SETTABLEKS                       R5 R4 K5 ["conversation"]
       48 GETTABLEKS                       R6 R0 K6 ["setConversation"]
       50 OR                               R5 R6 R2
       51 SETTABLEKS                       R5 R4 K6 ["setConversation"]
       53 MOVE                             R3 R4
       54 GETUPVAL                         R4 3
       55 GETUPVAL                         R5 4
       56 GETTABLEKS                       R5 R5 K9 ["Provider"]
       58 DUPTABLE                         R6 K11 [{"value"}]
       59 SETTABLEKS                       R3 R6 K10 ["value"]
       61 GETTABLEKS                       R7 R0 K12 ["children"]
       63 CALL                             R4 3 -1
       64 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["makeConversation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Flags"]
       30 GETTABLEKS                       R5 R5 K12 ["FFlagAssistantUseMemoizedContextValues"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R1 K13 ["createElement"]
       35 DUPTABLE                         R6 K17 [{"default", "conversation", "setConversation"}]
       36 LOADB                            R7 1
       37 SETTABLEKS                       R7 R6 K14 ["default"]
       39 MOVE                             R7 R3
       40 CALL                             R7 0 1
       41 SETTABLEKS                       R7 R6 K15 ["conversation"]
       43 DUPCLOSURE                       R7 K18 [PROTO_0]
       44 SETTABLEKS                       R7 R6 K16 ["setConversation"]
       46 GETTABLEKS                       R7 R1 K19 ["createContext"]
       48 MOVE                             R8 R6
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K20 [PROTO_2]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R7
       56 DUPTABLE                         R9 K23 [{"Context", "Provider"}]
       57 SETTABLEKS                       R7 R9 K21 ["Context"]
       59 SETTABLEKS                       R8 R9 K22 ["Provider"]
       61 RETURN                           R9 1
