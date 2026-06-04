PROTO_0:
        0 DUPTABLE                         R0 K1 [{"persistedIntegrations"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["persistedIntegrations"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R4 0 1
        9 MOVE                             R5 R1
       10 SETLIST                          R4 R5 1 [1]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K1 ["Provider"]
       17 DUPTABLE                         R5 K3 [{"value"}]
       18 SETTABLEKS                       R2 R5 K2 ["value"]
       20 GETTABLEKS                       R6 R0 K4 ["children"]
       22 CALL                             R3 3 -1
       23 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["IntegrationManagement"]
       20 GETTABLEKS                       R3 R3 K10 ["usePersistedIntegrations"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["createElement"]
       25 DUPTABLE                         R4 K13 [{"persistedIntegrations"}]
       26 LOADNIL                          R5
       27 SETTABLEKS                       R5 R4 K12 ["persistedIntegrations"]
       29 GETTABLEKS                       R5 R1 K14 ["createContext"]
       31 MOVE                             R6 R4
       32 CALL                             R5 1 1
       33 DUPCLOSURE                       R6 K15 [PROTO_1]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R5
       38 DUPTABLE                         R7 K18 [{"Context", "Provider"}]
       39 SETTABLEKS                       R5 R7 K16 ["Context"]
       41 SETTABLEKS                       R6 R7 K17 ["Provider"]
       43 RETURN                           R7 1
