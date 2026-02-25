PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K3 [{"startSelectionDrag", "selectionDragInProgress", "selectionDragDropped"}]
        1 GETTABLEKS                       R2 R0 K0 ["startSelectionDrag"]
        3 SETTABLEKS                       R2 R1 K0 ["startSelectionDrag"]
        5 GETTABLEKS                       R2 R0 K1 ["selectionDragInProgress"]
        7 SETTABLEKS                       R2 R1 K1 ["selectionDragInProgress"]
        9 GETTABLEKS                       R2 R0 K2 ["selectionDragDropped"]
       11 SETTABLEKS                       R2 R1 K2 ["selectionDragDropped"]
       13 GETUPVAL                         R2 0
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K4 ["Provider"]
       17 DUPTABLE                         R4 K6 [{"value"}]
       18 SETTABLEKS                       R1 R4 K5 ["value"]
       20 GETTABLEKS                       R5 R0 K7 ["children"]
       22 CALL                             R2 3 -1
       23 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Signal"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["createElement"]
       23 DUPTABLE                         R4 K13 [{"startSelectionDrag", "selectionDragInProgress", "selectionDragDropped"}]
       24 DUPCLOSURE                       R5 K14 [PROTO_0]
       25 SETTABLEKS                       R5 R4 K10 ["startSelectionDrag"]
       27 LOADB                            R5 0
       28 SETTABLEKS                       R5 R4 K11 ["selectionDragInProgress"]
       30 GETTABLEKS                       R5 R2 K15 ["new"]
       32 CALL                             R5 0 1
       33 SETTABLEKS                       R5 R4 K12 ["selectionDragDropped"]
       35 GETTABLEKS                       R5 R1 K16 ["createContext"]
       37 MOVE                             R6 R4
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K17 [PROTO_1]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R5
       42 DUPTABLE                         R7 K20 [{"Context", "Provider"}]
       43 SETTABLEKS                       R5 R7 K18 ["Context"]
       45 SETTABLEKS                       R6 R7 K19 ["Provider"]
       47 RETURN                           R7 1
