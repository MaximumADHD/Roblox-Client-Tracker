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
       44 GETTABLEKS                       R6 R4 K14 ["OpenAILLMSystemMessage"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R6 R0 K6 ["Components"]
       49 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       51 GETTABLEKS                       R6 R6 K15 ["TestLLM"]
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R6 K16 ["TestLLMRequest"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R6 K17 ["TestLLMToolFormat"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R3 K18 ["createElement"]
       65 DUPCLOSURE                       R10 K19 [PROTO_1]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R1
       73 DUPTABLE                         R11 K22 [{"Context", "Provider"}]
       74 GETTABLEKS                       R12 R1 K20 ["Context"]
       76 SETTABLEKS                       R12 R11 K20 ["Context"]
       78 SETTABLEKS                       R10 R11 K21 ["Provider"]
       80 RETURN                           R11 1
