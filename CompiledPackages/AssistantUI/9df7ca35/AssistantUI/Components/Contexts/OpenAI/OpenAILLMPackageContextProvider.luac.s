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
       30 JUMPIF                           R6 ; [+12]
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K8 ["get"]
       34 CALL                             R6 0 1
       35 GETTABLEKS                       R6 R6 K9 ["getSystemPrompt"]
       37 CALL                             R6 0 1
       38 JUMPIF                           R6 ; [+4]
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R6 R6 K10 ["getSystemMessage"]
       42 CALL                             R6 0 1
       43 GETUPVAL                         R7 5
       44 GETTABLEKS                       R7 R7 K11 ["useMemo"]
       46 NEWCLOSURE                       R8 P0
       47 CAPTURE                          VAL R4
       48 CAPTURE                          REF R1
       49 CAPTURE                          REF R2
       50 CAPTURE                          REF R3
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 NEWTABLE                         R9 0 6
       55 MOVE                             R10 R4
       56 MOVE                             R11 R1
       57 MOVE                             R12 R2
       58 MOVE                             R13 R3
       59 MOVE                             R14 R5
       60 MOVE                             R15 R6
       61 SETLIST                          R9 R10 6 [1]
       63 CALL                             R7 2 1
       64 GETUPVAL                         R8 6
       65 GETUPVAL                         R9 7
       66 GETTABLEKS                       R9 R9 K12 ["Context"]
       68 GETTABLEKS                       R9 R9 K13 ["Provider"]
       70 DUPTABLE                         R10 K15 [{"value"}]
       71 SETTABLEKS                       R7 R10 K14 ["value"]
       73 GETTABLEKS                       R11 R0 K16 ["children"]
       75 CALL                             R8 3 -1
       76 CLOSEUPVALS                      R1
       77 RETURN                           R8 -1

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
       43 GETTABLEKS                       R6 R0 K10 ["Components"]
       45 GETTABLEKS                       R6 R6 K11 ["Contexts"]
       47 GETTABLEKS                       R6 R6 K17 ["OpenAI"]
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R6 K18 ["OpenAILLMRequest"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R1 K14 ["Engine"]
       56 GETTABLEKS                       R8 R8 K19 ["Providers"]
       58 GETTABLEKS                       R8 R8 K20 ["OpenAILLMSystemMessage"]
       60 GETTABLEKS                       R9 R1 K14 ["Engine"]
       62 GETTABLEKS                       R9 R9 K19 ["Providers"]
       64 GETTABLEKS                       R9 R9 K21 ["OpenAILLMToolFormat"]
       66 GETTABLEKS                       R10 R5 K22 ["createElement"]
       68 DUPCLOSURE                       R11 K23 [PROTO_1]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R3
       77 DUPTABLE                         R12 K26 [{"Context", "Provider"}]
       78 GETTABLEKS                       R13 R3 K24 ["Context"]
       80 SETTABLEKS                       R13 R12 K24 ["Context"]
       82 SETTABLEKS                       R11 R12 K25 ["Provider"]
       84 RETURN                           R12 1
