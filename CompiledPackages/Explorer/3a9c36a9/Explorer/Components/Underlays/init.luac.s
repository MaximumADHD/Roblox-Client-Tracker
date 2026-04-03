PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K7 [{"session", "visibleNodeObservable", "draggingTargetObservable", "scrollingFrameRef", "startEdgeScrolling", "startBoxSelect", "textLabelRef"}]
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R5 R6 K0 ["session"]
        6 SETTABLEKS                       R5 R4 K0 ["session"]
        8 SETTABLEKS                       R0 R4 K1 ["visibleNodeObservable"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K2 ["draggingTargetObservable"]
       13 SETTABLEKS                       R5 R4 K2 ["draggingTargetObservable"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R5 R6 K3 ["scrollingFrameRef"]
       18 SETTABLEKS                       R5 R4 K3 ["scrollingFrameRef"]
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R5 R6 K4 ["startEdgeScrolling"]
       23 SETTABLEKS                       R5 R4 K4 ["startEdgeScrolling"]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K5 ["startBoxSelect"]
       28 SETTABLEKS                       R5 R4 K5 ["startBoxSelect"]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R6 R7 K8 ["textLabelRefs"]
       33 GETTABLE                         R5 R6 R1
       34 SETTABLEKS                       R5 R4 K6 ["textLabelRef"]
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{"session", "viewportSizeBinding", "scrollHeightObservable", "visibleNodeObservables", "zIndex", "render"}]
        3 GETTABLEKS                       R4 R0 K0 ["session"]
        5 SETTABLEKS                       R4 R3 K0 ["session"]
        7 GETTABLEKS                       R4 R0 K1 ["viewportSizeBinding"]
        9 SETTABLEKS                       R4 R3 K1 ["viewportSizeBinding"]
       11 GETTABLEKS                       R4 R0 K2 ["scrollHeightObservable"]
       13 SETTABLEKS                       R4 R3 K2 ["scrollHeightObservable"]
       15 GETTABLEKS                       R4 R0 K3 ["visibleNodeObservables"]
       17 SETTABLEKS                       R4 R3 K3 ["visibleNodeObservables"]
       19 GETTABLEKS                       R4 R0 K4 ["zIndex"]
       21 SETTABLEKS                       R4 R3 K4 ["zIndex"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R4 R3 K5 ["render"]
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["NodeDecorators"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["Observable"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R5 K11 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["RpcTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETIMPORT                        R7 K1 [script]
       37 GETTABLEKS                       R6 R7 K13 ["UnderlaysRow"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       44 GETTABLEKS                       R7 R8 K15 ["useBoxSelect"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Hooks"]
       51 GETTABLEKS                       R8 R9 K16 ["useDragAndDrop"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R10 R0 K14 ["Hooks"]
       58 GETTABLEKS                       R9 R10 K17 ["useVisibleExplorerNodeRange"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R3 K18 ["createElement"]
       63 DUPCLOSURE                       R10 K19 [PROTO_1]
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R5
       67 RETURN                           R10 1
