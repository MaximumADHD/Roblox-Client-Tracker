PROTO_0:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Signals"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Data"]
       25 GETTABLEKS                       R4 R4 K10 ["StateMachineData"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Data"]
       32 GETTABLEKS                       R5 R5 K11 ["StateMachineTypes"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_0]
       36 GETTABLEKS                       R6 R2 K13 ["createSignal"]
       38 GETTABLEKS                       R7 R3 K14 ["getDefault"]
       40 CALL                             R7 0 -1
       41 CALL                             R6 -1 1
       42 DUPTABLE                         R7 K24 [{"observeData", "createState", "deleteStates", "moveStates", "renameState", "createTransition", "createStateAndTransition", "deleteTransition", "setTransitionField"}]
       43 SETTABLEKS                       R6 R7 K15 ["observeData"]
       45 SETTABLEKS                       R5 R7 K16 ["createState"]
       47 SETTABLEKS                       R5 R7 K17 ["deleteStates"]
       49 SETTABLEKS                       R5 R7 K18 ["moveStates"]
       51 SETTABLEKS                       R5 R7 K19 ["renameState"]
       53 SETTABLEKS                       R5 R7 K20 ["createTransition"]
       55 SETTABLEKS                       R5 R7 K21 ["createStateAndTransition"]
       57 SETTABLEKS                       R5 R7 K22 ["deleteTransition"]
       59 SETTABLEKS                       R5 R7 K23 ["setTransitionField"]
       61 GETTABLEKS                       R8 R1 K25 ["createContext"]
       63 MOVE                             R9 R7
       64 CALL                             R8 1 1
       65 DUPTABLE                         R9 K27 [{"Context"}]
       66 SETTABLEKS                       R8 R9 K26 ["Context"]
       68 RETURN                           R9 1
