PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["useContext"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K1 ["Context"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 3
       15 MOVE                             R5 R0
       16 CALL                             R4 1 1
       17 GETTABLEKS                       R5 R4 K2 ["enabled"]
       19 GETTABLEKS                       R6 R2 K3 ["selectionDragInProgress"]
       21 GETTABLEKS                       R7 R3 K4 ["insertObjectOpenFor"]
       23 JUMPIFEQKNIL                     R7 ; [+16]
       25 GETTABLEKS                       R8 R3 K4 ["insertObjectOpenFor"]
       27 GETTABLEKS                       R11 R0 K5 ["get"]
       29 CALL                             R11 0 1
       30 GETTABLEKS                       R10 R11 K6 ["datum"]
       32 GETTABLEKS                       R9 R10 K7 ["id"]
       34 JUMPIFNOTEQ                      R8 R9 ; [+3]
       36 LOADK                            R7 K8 ["keepVisible"]
       37 RETURN                           R7 1
       38 LOADK                            R7 K9 ["notVisible"]
       39 RETURN                           R7 1
       40 JUMPIF                           R1 ; [+4]
       41 JUMPIF                           R5 ; [+3]
       42 JUMPIF                           R6 ; [+2]
       43 LOADK                            R7 K10 ["visibleIfHovered"]
       44 RETURN                           R7 1
       45 LOADK                            R7 K9 ["notVisible"]
       46 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["DragDropContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Components"]
       20 GETTABLEKS                       R4 R5 K7 ["Contexts"]
       22 GETTABLEKS                       R3 R4 K9 ["InsertObjectContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["Observable"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Parent"]
       36 GETTABLEKS                       R5 R6 K13 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K14 ["Hooks"]
       43 GETTABLEKS                       R6 R7 K15 ["useRenameBoxActivity"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       50 GETTABLEKS                       R7 R8 K16 ["useVisibleExplorerNodeRange"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K17 [PROTO_0]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 RETURN                           R7 1
