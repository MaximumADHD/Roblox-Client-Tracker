PROTO_0:
        0 DUPTABLE                         R0 K1 [{"persistedIntegrations"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["persistedIntegrations"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+13]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K0 ["useMemo"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R5 0 1
       13 MOVE                             R6 R1
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 MOVE                             R2 R3
       18 JUMP                             ; [+4]
       19 DUPTABLE                         R3 K2 [{"persistedIntegrations"}]
       20 SETTABLEKS                       R1 R3 K1 ["persistedIntegrations"]
       22 MOVE                             R2 R3
       23 GETUPVAL                         R3 3
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R4 R5 K3 ["Provider"]
       27 DUPTABLE                         R5 K5 [{"value"}]
       28 SETTABLEKS                       R2 R5 K4 ["value"]
       30 GETTABLEKS                       R6 R0 K6 ["children"]
       32 CALL                             R3 3 -1
       33 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["IntegrationManagement"]
       20 GETTABLEKS                       R3 R4 K10 ["usePersistedIntegrations"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Flags"]
       27 GETTABLEKS                       R4 R5 K12 ["FFlagAssistantUseMemoizedContextValues"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K13 ["createElement"]
       32 DUPTABLE                         R5 K15 [{"persistedIntegrations"}]
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R5 K14 ["persistedIntegrations"]
       36 GETTABLEKS                       R6 R1 K16 ["createContext"]
       38 MOVE                             R7 R5
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K17 [PROTO_1]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R6
       46 DUPTABLE                         R8 K20 [{"Context", "Provider"}]
       47 SETTABLEKS                       R6 R8 K18 ["Context"]
       49 SETTABLEKS                       R7 R8 K19 ["Provider"]
       51 RETURN                           R8 1
