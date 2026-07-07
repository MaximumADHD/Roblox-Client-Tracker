PROTO_0:
        0 DUPTABLE                         R0 K6 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["requestHandler"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["processEvent"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["createLLMSession"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["cancelSession"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["formatTools"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["systemMessage"]
       19 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["processEvent"]
        2 GETTABLEKS                       R2 R0 K1 ["createLLMSession"]
        4 GETTABLEKS                       R3 R0 K2 ["cancelSession"]
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R2 ; [+7]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["createProcessEventHandler"]
       11 CALL                             R4 0 3
       12 MOVE                             R1 R4
       13 MOVE                             R2 R5
       14 MOVE                             R3 R6
       15 GETTABLEKS                       R4 R0 K4 ["requestHandler"]
       17 JUMPIF                           R4 ; [+4]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K5 ["createRequestHandler"]
       21 CALL                             R4 0 1
       22 GETTABLEKS                       R5 R0 K6 ["formatTools"]
       24 JUMPIF                           R5 ; [+3]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K6 ["formatTools"]
       28 GETTABLEKS                       R6 R0 K7 ["systemMessage"]
       30 JUMPIF                           R6 ; [+4]
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K8 ["getSystemMessage"]
       34 CALL                             R6 0 1
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K9 ["useMemo"]
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          VAL R4
       40 CAPTURE                          REF R1
       41 CAPTURE                          REF R2
       42 CAPTURE                          REF R3
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R6
       45 NEWTABLE                         R9 0 6
       47 MOVE                             R10 R4
       48 MOVE                             R11 R1
       49 MOVE                             R12 R2
       50 MOVE                             R13 R3
       51 MOVE                             R14 R5
       52 MOVE                             R15 R6
       53 SETLIST                          R9 R10 6 [1]
       55 CALL                             R7 2 1
       56 GETUPVAL                         R8 5
       57 GETUPVAL                         R9 6
       58 GETTABLEKS                       R9 R9 K10 ["Context"]
       60 GETTABLEKS                       R9 R9 K11 ["Provider"]
       62 DUPTABLE                         R10 K13 [{"value"}]
       63 SETTABLEKS                       R7 R10 K12 ["value"]
       65 GETTABLEKS                       R11 R0 K14 ["children"]
       67 CALL                             R8 3 -1
       68 CLOSEUPVALS                      R1
       69 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["DefaultLLMProvider"]
       15 GETTABLEKS                       R2 R2 K9 ["LLMPackageContextProvider"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Components"]
       22 GETTABLEKS                       R3 R3 K7 ["Contexts"]
       24 GETTABLEKS                       R3 R3 K8 ["DefaultLLMProvider"]
       26 GETTABLEKS                       R3 R3 K10 ["LLMProcessEvent"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K11 ["Parent"]
       33 GETTABLEKS                       R4 R4 K12 ["React"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R0 K6 ["Components"]
       38 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       40 GETTABLEKS                       R4 R4 K13 ["OpenAI"]
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R4 K14 ["OpenAILLMRequest"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K5 [require]
       49 GETTABLEKS                       R7 R4 K15 ["OpenAILLMSystemMessage"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R4 K16 ["OpenAILLMToolFormat"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R3 K17 ["createElement"]
       59 DUPCLOSURE                       R9 K18 [PROTO_1]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R1
       67 DUPTABLE                         R10 K21 [{"Context", "Provider"}]
       68 GETTABLEKS                       R11 R1 K19 ["Context"]
       70 SETTABLEKS                       R11 R10 K19 ["Context"]
       72 SETTABLEKS                       R9 R10 K20 ["Provider"]
       74 RETURN                           R10 1
