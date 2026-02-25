PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{"session", "scrollWidthObservable", "visibleNodeObservable", "boxSelecting", "windowIsHoveredObservable", "scrollingFrameRef"}]
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R4 R5 K0 ["session"]
        6 SETTABLEKS                       R4 R3 K0 ["session"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K1 ["scrollWidthObservable"]
       11 SETTABLEKS                       R4 R3 K1 ["scrollWidthObservable"]
       13 SETTABLEKS                       R0 R3 K2 ["visibleNodeObservable"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K3 ["boxSelecting"]
       18 SETTABLEKS                       R4 R3 K3 ["boxSelecting"]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K4 ["windowIsHoveredObservable"]
       23 SETTABLEKS                       R4 R3 K4 ["windowIsHoveredObservable"]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R4 R5 K5 ["scrollingFrameRef"]
       28 SETTABLEKS                       R4 R3 K5 ["scrollingFrameRef"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 1
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R4 K6 [{"session", "viewportSizeBinding", "scrollHeightObservable", "visibleNodeObservables", "zIndex", "render"}]
        6 GETTABLEKS                       R5 R0 K0 ["session"]
        8 SETTABLEKS                       R5 R4 K0 ["session"]
       10 GETTABLEKS                       R5 R0 K1 ["viewportSizeBinding"]
       12 SETTABLEKS                       R5 R4 K1 ["viewportSizeBinding"]
       14 GETTABLEKS                       R5 R0 K2 ["scrollHeightObservable"]
       16 SETTABLEKS                       R5 R4 K2 ["scrollHeightObservable"]
       18 GETTABLEKS                       R5 R0 K3 ["visibleNodeObservables"]
       20 SETTABLEKS                       R5 R4 K3 ["visibleNodeObservables"]
       22 GETTABLEKS                       R5 R0 K4 ["zIndex"]
       24 SETTABLEKS                       R5 R4 K4 ["zIndex"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R5 R4 K5 ["render"]
       32 DUPTABLE                         R5 K8 [{"DragDropIndicator"}]
       33 GETUPVAL                         R6 1
       34 GETUPVAL                         R7 4
       35 DUPTABLE                         R8 K11 [{"draggingTargetObservable", "scrollHeightObservable", "scrollWidthObservable", "visibleNodeObservables", "session", "zIndex"}]
       36 GETTABLEKS                       R9 R0 K9 ["draggingTargetObservable"]
       38 SETTABLEKS                       R9 R8 K9 ["draggingTargetObservable"]
       40 GETTABLEKS                       R9 R0 K2 ["scrollHeightObservable"]
       42 SETTABLEKS                       R9 R8 K2 ["scrollHeightObservable"]
       44 GETTABLEKS                       R9 R0 K10 ["scrollWidthObservable"]
       46 SETTABLEKS                       R9 R8 K10 ["scrollWidthObservable"]
       48 GETTABLEKS                       R9 R0 K3 ["visibleNodeObservables"]
       50 SETTABLEKS                       R9 R8 K3 ["visibleNodeObservables"]
       52 GETTABLEKS                       R9 R0 K0 ["session"]
       54 SETTABLEKS                       R9 R8 K0 ["session"]
       56 MOVE                             R9 R1
       57 CALL                             R9 0 1
       58 SETTABLEKS                       R9 R8 K4 ["zIndex"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K7 ["DragDropIndicator"]
       63 CALL                             R2 3 -1
       64 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R3 K1 [script]
       11 GETTABLEKS                       R2 R3 K6 ["DragDropIndicator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Components"]
       18 GETTABLEKS                       R3 R4 K8 ["NodeDecorators"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R5 K10 ["Observable"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R5 R6 K11 ["OverlaysRow"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Parent"]
       39 GETTABLEKS                       R6 R7 K13 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["RpcTypes"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Util"]
       51 GETTABLEKS                       R8 R9 K15 ["createNextOrder"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R10 R0 K16 ["Hooks"]
       58 GETTABLEKS                       R9 R10 K17 ["useDragAndDrop"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R11 R0 K16 ["Hooks"]
       65 GETTABLEKS                       R10 R11 K18 ["useVisibleExplorerNodeRange"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R10 R5 K19 ["createElement"]
       70 DUPCLOSURE                       R11 K20 [PROTO_1]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R1
       76 GETTABLEKS                       R12 R5 K21 ["memo"]
       78 MOVE                             R13 R11
       79 CALL                             R12 1 1
       80 MOVE                             R11 R12
       81 RETURN                           R11 1
