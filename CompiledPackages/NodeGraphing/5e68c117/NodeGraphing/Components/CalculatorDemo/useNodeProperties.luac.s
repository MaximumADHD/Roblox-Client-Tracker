PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["get"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 JUMPIF                           R3 ; [+2]
        6 NEWTABLE                         R3 0 0
        8 GETIMPORT                        R4 K3 [table.clone]
       10 MOVE                             R5 R3
       11 CALL                             R4 1 1
       12 MOVE                             R3 R4
       13 SETTABLE                         R2 R3 R1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K4 ["set"]
       17 MOVE                             R5 R0
       18 MOVE                             R6 R3
       19 CALL                             R4 2 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R3 0 2
        9 GETTABLEKS                       R4 R0 K1 ["get"]
       11 GETTABLEKS                       R5 R0 K2 ["set"]
       13 SETLIST                          R3 R4 2 [1]
       15 CALL                             R1 2 1
       16 DUPTABLE                         R2 K5 [{"setNodeProperty", "observeNodePropsById"}]
       17 SETTABLEKS                       R1 R2 K3 ["setNodeProperty"]
       19 GETTABLEKS                       R3 R0 K6 ["observe"]
       21 SETTABLEKS                       R3 R2 K4 ["observeNodePropsById"]
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["NodeViewTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["React"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["Signals"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Hooks"]
       30 GETTABLEKS                       R5 R5 K11 ["useSignalDispatcher"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K12 [PROTO_1]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R2
       36 RETURN                           R5 1
