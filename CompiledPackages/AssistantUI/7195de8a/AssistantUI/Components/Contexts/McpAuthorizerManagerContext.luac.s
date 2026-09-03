PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"authorizerManager"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["authorizerManager"]
        4 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 GETTABLEKS                       R3 R0 K2 ["override"]
       10 OR                               R2 R3 R1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["useMemo"]
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R5 0 1
       18 MOVE                             R6 R2
       19 SETLIST                          R5 R6 1 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 2
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K3 ["Provider"]
       26 DUPTABLE                         R6 K5 [{"value"}]
       27 SETTABLEKS                       R3 R6 K4 ["value"]
       29 GETTABLEKS                       R7 R0 K6 ["children"]
       31 CALL                             R4 3 -1
       32 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["IntegrationManagement"]
       13 GETTABLEKS                       R2 R2 K8 ["AuthorizerManager"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["createElement"]
       25 DUPTABLE                         R4 K14 [{["authorizerManager"] = }]
       26 GETTABLEKS                       R5 R2 K15 ["createContext"]
       28 MOVE                             R6 R4
       29 CALL                             R5 1 1
       30 DUPCLOSURE                       R6 K16 [PROTO_2]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R5
       35 DUPTABLE                         R7 K19 [{"Context", "Provider"}]
       36 SETTABLEKS                       R5 R7 K17 ["Context"]
       38 SETTABLEKS                       R6 R7 K18 ["Provider"]
       40 RETURN                           R7 1
