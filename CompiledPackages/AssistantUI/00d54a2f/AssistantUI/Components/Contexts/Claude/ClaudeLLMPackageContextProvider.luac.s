PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["processEvent"]
        2 GETTABLEKS                       R2 R0 K1 ["createLLMSession"]
        4 GETTABLEKS                       R3 R0 K2 ["cancelSession"]
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R2 ; [+7]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K3 ["createProcessEventHandler"]
       11 CALL                             R4 0 3
       12 MOVE                             R1 R4
       13 MOVE                             R2 R5
       14 MOVE                             R3 R6
       15 DUPTABLE                         R4 K7 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage"}]
       16 GETTABLEKS                       R5 R0 K4 ["requestHandler"]
       18 JUMPIF                           R5 ; [+4]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K8 ["createRequestHandler"]
       22 CALL                             R5 0 1
       23 SETTABLEKS                       R5 R4 K4 ["requestHandler"]
       25 SETTABLEKS                       R1 R4 K0 ["processEvent"]
       27 SETTABLEKS                       R2 R4 K1 ["createLLMSession"]
       29 SETTABLEKS                       R3 R4 K2 ["cancelSession"]
       31 GETTABLEKS                       R5 R0 K5 ["formatTools"]
       33 JUMPIF                           R5 ; [+3]
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R5 R6 K5 ["formatTools"]
       37 SETTABLEKS                       R5 R4 K5 ["formatTools"]
       39 GETTABLEKS                       R5 R0 K6 ["systemMessage"]
       41 JUMPIF                           R5 ; [+4]
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R5 R6 K9 ["getSystemMessage"]
       45 CALL                             R5 0 1
       46 SETTABLEKS                       R5 R4 K6 ["systemMessage"]
       48 GETUPVAL                         R5 4
       49 GETUPVAL                         R8 5
       50 GETTABLEKS                       R7 R8 K10 ["Context"]
       52 GETTABLEKS                       R6 R7 K11 ["Provider"]
       54 DUPTABLE                         R7 K13 [{"value"}]
       55 SETTABLEKS                       R4 R7 K12 ["value"]
       57 GETTABLEKS                       R8 R0 K14 ["children"]
       59 CALL                             R5 3 -1
       60 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Components"]
       11 GETTABLEKS                       R4 R5 K7 ["Contexts"]
       13 GETTABLEKS                       R3 R4 K8 ["DefaultLLMProvider"]
       15 GETTABLEKS                       R2 R3 K9 ["LLMPackageContextProvider"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Components"]
       22 GETTABLEKS                       R5 R6 K7 ["Contexts"]
       24 GETTABLEKS                       R4 R5 K8 ["DefaultLLMProvider"]
       26 GETTABLEKS                       R3 R4 K10 ["LLMProcessEvent"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R5 R0 K11 ["Parent"]
       33 GETTABLEKS                       R4 R5 K12 ["React"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R6 R0 K6 ["Components"]
       38 GETTABLEKS                       R5 R6 K7 ["Contexts"]
       40 GETTABLEKS                       R4 R5 K13 ["Claude"]
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R4 K14 ["ClaudeLLMRequest"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K5 [require]
       49 GETTABLEKS                       R7 R4 K15 ["ClaudeLLMSystemMessage"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R4 K16 ["ClaudeLLMToolFormat"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R3 K17 ["createElement"]
       59 DUPCLOSURE                       R9 K18 [PROTO_0]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R1
       66 DUPTABLE                         R10 K21 [{"Context", "Provider"}]
       67 GETTABLEKS                       R11 R1 K19 ["Context"]
       69 SETTABLEKS                       R11 R10 K19 ["Context"]
       71 SETTABLEKS                       R9 R10 K20 ["Provider"]
       73 RETURN                           R10 1
