PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["guestRpcInterface"]
        3 GETTABLEKS                       R0 R0 K1 ["openContextMenuAsync"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["get"]
        8 CALL                             R1 0 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["coreItems"]
        3 GETTABLEKS                       R1 R1 K1 ["collapseAll"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+11]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["collapseAll"]
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K2 ["get"]
       14 CALL                             R3 0 -1
       15 CALL                             R1 -1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["coreItems"]
       20 GETTABLEKS                       R1 R1 K3 ["expandAll"]
       22 JUMPIFNOTEQ                      R0 R1 ; [+11]
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K3 ["expandAll"]
       27 GETUPVAL                         R2 2
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R3 R3 K2 ["get"]
       31 CALL                             R3 0 -1
       32 CALL                             R1 -1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R1 2
       35 GETTABLEKS                       R1 R1 K4 ["guestRpcInterface"]
       37 GETTABLEKS                       R1 R1 K5 ["performContextMenuAction"]
       39 MOVE                             R2 R0
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 NEWCLOSURE                       R3 P1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 DUPTABLE                         R4 K2 [{"openContextMenuAsync", "performContextMenuAction"}]
        9 SETTABLEKS                       R2 R4 K0 ["openContextMenuAsync"]
       11 SETTABLEKS                       R3 R4 K1 ["performContextMenuAction"]
       13 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Data"]
       11 GETTABLEKS                       R2 R2 K7 ["ContextMenu"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Networking"]
       18 GETTABLEKS                       R3 R3 K9 ["createSession"]
       20 GETTABLEKS                       R3 R3 K10 ["Expanding"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["Observable"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["RpcTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Networking"]
       39 GETTABLEKS                       R6 R6 K9 ["createSession"]
       41 GETTABLEKS                       R6 R6 K14 ["createSessionTypes"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K15 [PROTO_2]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
