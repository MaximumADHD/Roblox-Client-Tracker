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
       17 JUMPIF                           R4 ; [+3]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K4 ["requestHandler"]
       21 GETTABLEKS                       R5 R0 K5 ["formatTools"]
       23 JUMPIF                           R5 ; [+3]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K5 ["formatTools"]
       27 GETTABLEKS                       R6 R0 K6 ["systemMessage"]
       29 JUMPIF                           R6 ; [+4]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K7 ["getSystemMessage"]
       33 CALL                             R6 0 1
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R7 R7 K8 ["useMemo"]
       37 NEWCLOSURE                       R8 P0
       38 CAPTURE                          VAL R4
       39 CAPTURE                          REF R1
       40 CAPTURE                          REF R2
       41 CAPTURE                          REF R3
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 NEWTABLE                         R9 0 6
       46 MOVE                             R10 R4
       47 MOVE                             R11 R1
       48 MOVE                             R12 R2
       49 MOVE                             R13 R3
       50 MOVE                             R14 R5
       51 MOVE                             R15 R6
       52 SETLIST                          R9 R10 6 [1]
       54 CALL                             R7 2 1
       55 GETUPVAL                         R8 5
       56 GETUPVAL                         R9 6
       57 GETTABLEKS                       R9 R9 K9 ["Context"]
       59 GETTABLEKS                       R9 R9 K10 ["Provider"]
       61 DUPTABLE                         R10 K12 [{"value"}]
       62 SETTABLEKS                       R7 R10 K11 ["value"]
       64 GETTABLEKS                       R11 R0 K13 ["children"]
       66 CALL                             R8 3 -1
       67 CLOSEUPVALS                      R1
       68 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["DefaultLLMProvider"]
       22 GETTABLEKS                       R3 R3 K11 ["LLMPackageContextProvider"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K12 ["Engine"]
       27 GETTABLEKS                       R3 R3 K13 ["LLMProcessEvent"]
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R5 R0 K6 ["Parent"]
       33 GETTABLEKS                       R5 R5 K14 ["React"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R0 K8 ["Components"]
       38 GETTABLEKS                       R5 R5 K9 ["Contexts"]
       40 GETTABLEKS                       R5 R5 K15 ["OpenAI"]
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R5 K16 ["OpenAILLMSystemMessage"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R0 K8 ["Components"]
       49 GETTABLEKS                       R7 R7 K9 ["Contexts"]
       51 GETTABLEKS                       R7 R7 K17 ["TestLLM"]
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R7 K18 ["TestLLMRequest"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R10 R7 K19 ["TestLLMToolFormat"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R4 K20 ["createElement"]
       65 DUPCLOSURE                       R11 K21 [PROTO_1]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R2
       73 DUPTABLE                         R12 K24 [{"Context", "Provider"}]
       74 GETTABLEKS                       R13 R2 K22 ["Context"]
       76 SETTABLEKS                       R13 R12 K22 ["Context"]
       78 SETTABLEKS                       R11 R12 K23 ["Provider"]
       80 RETURN                           R12 1
