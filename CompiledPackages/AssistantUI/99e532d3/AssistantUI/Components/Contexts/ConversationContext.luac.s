PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
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
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R5 K10 ["makeConversation"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R1 K11 ["createElement"]
       28 DUPTABLE                         R5 K15 [{"default", "conversation", "setConversation"}]
       29 LOADB                            R6 1
       30 SETTABLEKS                       R6 R5 K12 ["default"]
       32 MOVE                             R6 R3
       33 CALL                             R6 0 1
       34 SETTABLEKS                       R6 R5 K13 ["conversation"]
       36 DUPCLOSURE                       R6 K16 [PROTO_0]
       37 SETTABLEKS                       R6 R5 K14 ["setConversation"]
       39 GETTABLEKS                       R6 R1 K17 ["createContext"]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 1
       43 DUPCLOSURE                       R7 K18 [PROTO_1]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R6
       48 DUPTABLE                         R8 K21 [{"Context", "Provider"}]
       49 SETTABLEKS                       R6 R8 K19 ["Context"]
       51 SETTABLEKS                       R7 R8 K20 ["Provider"]
       53 RETURN                           R8 1
