PROTO_0:
        0 DUPTABLE                         R0 K2 [{"assistantMode", "assistantModeToolStates"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["assistantMode"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["assistantModeToolStates"]
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["AssistantMode"]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["AssistantMode"]
        5 GETTABLEKS                       R3 R3 K1 ["Agent"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 LOADK                            R3 K2 ["AssistantModeToolStates"]
       10 NEWTABLE                         R4 0 0
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R5 0 2
       21 MOVE                             R6 R1
       22 MOVE                             R7 R2
       23 SETLIST                          R5 R6 2 [1]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 3
       27 GETUPVAL                         R5 4
       28 GETTABLEKS                       R5 R5 K4 ["Provider"]
       30 DUPTABLE                         R6 K6 [{"value"}]
       31 SETTABLEKS                       R3 R6 K5 ["value"]
       33 GETTABLEKS                       R7 R0 K7 ["children"]
       35 CALL                             R4 3 -1
       36 RETURN                           R4 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Hooks"]
       23 GETTABLEKS                       R4 R4 K10 ["createPersistedSetting"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R1 K11 ["createElement"]
       28 DUPTABLE                         R5 K14 [{"assistantMode", "assistantModeToolStates"}]
       29 DUPTABLE                         R6 K16 [{"isReady"}]
       30 LOADB                            R7 0
       31 SETTABLEKS                       R7 R6 K15 ["isReady"]
       33 SETTABLEKS                       R6 R5 K12 ["assistantMode"]
       35 NEWTABLE                         R6 0 0
       37 SETTABLEKS                       R6 R5 K13 ["assistantModeToolStates"]
       39 GETTABLEKS                       R6 R1 K17 ["createContext"]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 1
       43 DUPCLOSURE                       R7 K18 [PROTO_1]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R6
       49 DUPTABLE                         R8 K21 [{"Context", "Provider"}]
       50 SETTABLEKS                       R6 R8 K19 ["Context"]
       52 SETTABLEKS                       R7 R8 K20 ["Provider"]
       54 RETURN                           R8 1
