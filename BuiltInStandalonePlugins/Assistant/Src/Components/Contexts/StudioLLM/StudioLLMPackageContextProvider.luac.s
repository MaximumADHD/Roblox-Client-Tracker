PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K2 ["Components"]
       10 GETTABLEKS                       R4 R5 K3 ["DefaultLLMProvider"]
       12 GETTABLEKS                       R3 R4 K4 ["LLMProcessEvent"]
       14 GETTABLEKS                       R2 R3 K5 ["createProcessEventHandler"]
       16 CALL                             R2 0 3
       17 GETUPVAL                         R5 2
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R8 R9 K2 ["Components"]
       21 GETTABLEKS                       R7 R8 K6 ["Contexts"]
       23 GETTABLEKS                       R6 R7 K7 ["LLMPackageContextProvider"]
       25 DUPTABLE                         R7 K9 [{"studioProvider"}]
       26 DUPTABLE                         R8 K16 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage"}]
       27 GETUPVAL                         R10 3
       28 GETTABLEKS                       R9 R10 K17 ["createRequestHandler"]
       30 GETIMPORT                        R10 K19 [game]
       32 MOVE                             R11 R1
       33 CALL                             R9 2 1
       34 SETTABLEKS                       R9 R8 K10 ["requestHandler"]
       36 SETTABLEKS                       R2 R8 K11 ["processEvent"]
       38 SETTABLEKS                       R3 R8 K12 ["createLLMSession"]
       40 SETTABLEKS                       R4 R8 K13 ["cancelSession"]
       42 GETUPVAL                         R10 4
       43 GETTABLEKS                       R9 R10 K14 ["formatTools"]
       45 SETTABLEKS                       R9 R8 K14 ["formatTools"]
       47 GETUPVAL                         R10 5
       48 GETTABLEKS                       R9 R10 K20 ["getSystemMessage"]
       50 CALL                             R9 0 1
       51 SETTABLEKS                       R9 R8 K15 ["systemMessage"]
       53 SETTABLEKS                       R8 R7 K8 ["studioProvider"]
       55 GETTABLEKS                       R8 R0 K21 ["children"]
       57 CALL                             R5 3 -1
       58 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R7 R0 K10 ["Src"]
       30 GETTABLEKS                       R6 R7 K11 ["Components"]
       32 GETTABLEKS                       R5 R6 K12 ["Contexts"]
       34 GETTABLEKS                       R4 R5 K13 ["StudioLLM"]
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R4 K14 ["StudioLLMRequest"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R4 K15 ["StudioLLMSystemMessage"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R2 K16 ["ContextServices"]
       48 GETTABLEKS                       R8 R7 K17 ["Plugin"]
       50 GETTABLEKS                       R11 R1 K11 ["Components"]
       52 GETTABLEKS                       R10 R11 K18 ["Claude"]
       54 GETTABLEKS                       R9 R10 K19 ["ClaudeLLMToolFormat"]
       56 GETTABLEKS                       R10 R3 K20 ["createElement"]
       58 DUPCLOSURE                       R11 K21 [PROTO_0]
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R6
       65 RETURN                           R11 1
