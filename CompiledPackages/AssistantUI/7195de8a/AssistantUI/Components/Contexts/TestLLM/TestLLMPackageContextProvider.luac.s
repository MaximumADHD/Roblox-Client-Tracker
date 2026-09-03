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
       29 JUMPIF                           R6 ; [+12]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K7 ["get"]
       33 CALL                             R6 0 1
       34 GETTABLEKS                       R6 R6 K8 ["getSystemPrompt"]
       36 CALL                             R6 0 1
       37 JUMPIF                           R6 ; [+4]
       38 GETUPVAL                         R6 4
       39 GETTABLEKS                       R6 R6 K9 ["getSystemMessage"]
       41 CALL                             R6 0 1
       42 GETUPVAL                         R7 5
       43 GETTABLEKS                       R7 R7 K10 ["useMemo"]
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          VAL R4
       47 CAPTURE                          REF R1
       48 CAPTURE                          REF R2
       49 CAPTURE                          REF R3
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 NEWTABLE                         R9 0 6
       54 MOVE                             R10 R4
       55 MOVE                             R11 R1
       56 MOVE                             R12 R2
       57 MOVE                             R13 R3
       58 MOVE                             R14 R5
       59 MOVE                             R15 R6
       60 SETLIST                          R9 R10 6 [1]
       62 CALL                             R7 2 1
       63 GETUPVAL                         R8 6
       64 GETUPVAL                         R9 7
       65 GETTABLEKS                       R9 R9 K11 ["Context"]
       67 GETTABLEKS                       R9 R9 K12 ["Provider"]
       69 DUPTABLE                         R10 K14 [{"value"}]
       70 SETTABLEKS                       R7 R10 K13 ["value"]
       72 GETTABLEKS                       R11 R0 K15 ["children"]
       74 CALL                             R8 3 -1
       75 CLOSEUPVALS                      R1
       76 RETURN                           R8 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K12 ["DefaultLLMProvider"]
       29 GETTABLEKS                       R4 R4 K13 ["LLMPackageContextProvider"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K14 ["Engine"]
       34 GETTABLEKS                       R4 R4 K15 ["LLMProcessEvent"]
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R0 K6 ["Parent"]
       40 GETTABLEKS                       R6 R6 K16 ["React"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R1 K14 ["Engine"]
       45 GETTABLEKS                       R6 R6 K17 ["Providers"]
       47 GETTABLEKS                       R6 R6 K18 ["OpenAILLMSystemMessage"]
       49 GETTABLEKS                       R7 R0 K10 ["Components"]
       51 GETTABLEKS                       R7 R7 K11 ["Contexts"]
       53 GETTABLEKS                       R7 R7 K19 ["TestLLM"]
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R9 R7 K20 ["TestLLMRequest"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K5 [require]
       62 GETTABLEKS                       R10 R7 K21 ["TestLLMToolFormat"]
       64 CALL                             R9 1 1
       65 GETTABLEKS                       R10 R5 K22 ["createElement"]
       67 DUPCLOSURE                       R11 K23 [PROTO_1]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R3
       76 DUPTABLE                         R12 K26 [{"Context", "Provider"}]
       77 GETTABLEKS                       R13 R3 K24 ["Context"]
       79 SETTABLEKS                       R13 R12 K24 ["Context"]
       81 SETTABLEKS                       R11 R12 K25 ["Provider"]
       83 RETURN                           R12 1
