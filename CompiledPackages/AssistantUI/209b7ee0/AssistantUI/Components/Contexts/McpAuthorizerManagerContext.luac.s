PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 1
        4 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"authorizerManager"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["authorizerManager"]
        4 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 LOADNIL                          R2
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+16]
       12 GETTABLEKS                       R4 R0 K2 ["override"]
       14 OR                               R3 R4 R1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K0 ["useMemo"]
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R6 0 1
       22 MOVE                             R7 R3
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 1
       26 MOVE                             R2 R4
       27 JUMP                             ; [+7]
       28 DUPTABLE                         R3 K4 [{"authorizerManager"}]
       29 GETTABLEKS                       R5 R0 K2 ["override"]
       31 OR                               R4 R5 R1
       32 SETTABLEKS                       R4 R3 K3 ["authorizerManager"]
       34 MOVE                             R2 R3
       35 GETUPVAL                         R3 3
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R4 R5 K5 ["Provider"]
       39 DUPTABLE                         R5 K7 [{"value"}]
       40 SETTABLEKS                       R2 R5 K6 ["value"]
       42 GETTABLEKS                       R6 R0 K8 ["children"]
       44 CALL                             R3 3 -1
       45 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["IntegrationManagement"]
       13 GETTABLEKS                       R2 R3 K8 ["AuthorizerManager"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Flags"]
       27 GETTABLEKS                       R4 R5 K12 ["FFlagAssistantUseMemoizedContextValues"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K13 ["createElement"]
       32 DUPTABLE                         R5 K15 [{"authorizerManager"}]
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R5 K14 ["authorizerManager"]
       36 GETTABLEKS                       R6 R2 K16 ["createContext"]
       38 MOVE                             R7 R5
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K17 [PROTO_2]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R6
       46 DUPTABLE                         R8 K20 [{"Context", "Provider"}]
       47 SETTABLEKS                       R6 R8 K18 ["Context"]
       49 SETTABLEKS                       R7 R8 K19 ["Provider"]
       51 RETURN                           R8 1
