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
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["AssistantMode"]
        5 GETTABLEKS                       R3 R4 K1 ["Agent"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 LOADK                            R3 K2 ["AssistantModeToolStates"]
       10 NEWTABLE                         R4 0 0
       12 CALL                             R2 2 1
       13 LOADNIL                          R3
       14 GETUPVAL                         R4 2
       15 CALL                             R4 0 1
       16 JUMPIFNOT                        R4 ; [+15]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R6 0 2
       25 MOVE                             R7 R1
       26 MOVE                             R8 R2
       27 SETLIST                          R6 R7 2 [1]
       29 CALL                             R4 2 1
       30 MOVE                             R3 R4
       31 JUMP                             ; [+6]
       32 DUPTABLE                         R4 K6 [{"assistantMode", "assistantModeToolStates"}]
       33 SETTABLEKS                       R1 R4 K4 ["assistantMode"]
       35 SETTABLEKS                       R2 R4 K5 ["assistantModeToolStates"]
       37 MOVE                             R3 R4
       38 GETUPVAL                         R4 4
       39 GETUPVAL                         R6 5
       40 GETTABLEKS                       R5 R6 K7 ["Provider"]
       42 DUPTABLE                         R6 K9 [{"value"}]
       43 SETTABLEKS                       R3 R6 K8 ["value"]
       45 GETTABLEKS                       R7 R0 K10 ["children"]
       47 CALL                             R4 3 -1
       48 RETURN                           R4 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Hooks"]
       23 GETTABLEKS                       R4 R5 K10 ["createPersistedSetting"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Flags"]
       30 GETTABLEKS                       R5 R6 K12 ["FFlagAssistantUseMemoizedContextValues"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R1 K13 ["createElement"]
       35 DUPTABLE                         R6 K16 [{"assistantMode", "assistantModeToolStates"}]
       36 DUPTABLE                         R7 K18 [{"isReady"}]
       37 LOADB                            R8 0
       38 SETTABLEKS                       R8 R7 K17 ["isReady"]
       40 SETTABLEKS                       R7 R6 K14 ["assistantMode"]
       42 NEWTABLE                         R7 0 0
       44 SETTABLEKS                       R7 R6 K15 ["assistantModeToolStates"]
       46 GETTABLEKS                       R7 R1 K19 ["createContext"]
       48 MOVE                             R8 R6
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K20 [PROTO_1]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R7
       57 DUPTABLE                         R9 K23 [{"Context", "Provider"}]
       58 SETTABLEKS                       R7 R9 K21 ["Context"]
       60 SETTABLEKS                       R8 R9 K22 ["Provider"]
       62 RETURN                           R9 1
