PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 DUPTABLE                         R0 K1 [{"threads"}]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K0 ["threads"]
        8 RETURN                           R0 1
        9 NEWTABLE                         R0 0 0
       11 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["default"]
        2 JUMPIFEQKNIL                     R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["default is not supported in this context"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K4 ["useState"]
       15 GETUPVAL                         R2 1
       16 CALL                             R1 1 2
       17 DUPTABLE                         R3 K7 [{"conversation", "setConversation"}]
       18 GETTABLEKS                       R5 R0 K5 ["conversation"]
       20 OR                               R4 R5 R1
       21 SETTABLEKS                       R4 R3 K5 ["conversation"]
       23 GETTABLEKS                       R5 R0 K6 ["setConversation"]
       25 OR                               R4 R5 R2
       26 SETTABLEKS                       R4 R3 K6 ["setConversation"]
       28 GETUPVAL                         R4 2
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R5 R6 K8 ["Provider"]
       32 DUPTABLE                         R6 K10 [{"value"}]
       33 SETTABLEKS                       R3 R6 K9 ["value"]
       35 GETTABLEKS                       R7 R0 K11 ["children"]
       37 CALL                             R4 3 -1
       38 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Flags"]
       23 GETTABLEKS                       R4 R5 K10 ["FFlagAssistantMultipleChatSupport"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R1 K11 ["createElement"]
       28 DUPCLOSURE                       R5 K12 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 DUPTABLE                         R6 K16 [{"default", "conversation", "setConversation"}]
       31 LOADB                            R7 1
       32 SETTABLEKS                       R7 R6 K13 ["default"]
       34 MOVE                             R7 R5
       35 CALL                             R7 0 1
       36 SETTABLEKS                       R7 R6 K14 ["conversation"]
       38 DUPCLOSURE                       R7 K17 [PROTO_1]
       39 SETTABLEKS                       R7 R6 K15 ["setConversation"]
       41 GETTABLEKS                       R7 R1 K18 ["createContext"]
       43 MOVE                             R8 R6
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K19 [PROTO_2]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R7
       50 DUPTABLE                         R9 K23 [{"Context", "Provider", "makeConversation"}]
       51 SETTABLEKS                       R7 R9 K20 ["Context"]
       53 SETTABLEKS                       R8 R9 K21 ["Provider"]
       55 SETTABLEKS                       R5 R9 K22 ["makeConversation"]
       57 RETURN                           R9 1
