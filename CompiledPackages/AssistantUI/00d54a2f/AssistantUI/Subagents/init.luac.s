PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["register"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R6 K3 [script]
        5 GETTABLEKS                       R5 R6 K4 ["Parent"]
        7 GETTABLEKS                       R4 R5 K5 ["Components"]
        9 GETTABLEKS                       R3 R4 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["DefaultLLMProvider"]
       13 GETTABLEKS                       R1 R2 K8 ["LLMRequest"]
       15 CALL                             R0 1 1
       16 GETIMPORT                        R1 K1 [require]
       18 GETIMPORT                        R3 K3 [script]
       20 GETTABLEKS                       R2 R3 K9 ["ExploreSubagent"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R4 K3 [script]
       27 GETTABLEKS                       R3 R4 K10 ["SubagentRegistry"]
       29 CALL                             R2 1 1
       30 LOADNIL                          R3
       31 NEWTABLE                         R4 4 0
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          REF R3
       35 SETTABLEKS                       R5 R4 K11 ["setRequestHandler"]
       37 NEWCLOSURE                       R5 P1
       38 CAPTURE                          REF R3
       39 SETTABLEKS                       R5 R4 K12 ["getRequestHandler"]
       41 DUPCLOSURE                       R5 K13 [PROTO_2]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R5 R4 K14 ["registerAll"]
       46 CLOSEUPVALS                      R3
       47 RETURN                           R4 1
