PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R3 R0 K3 ["ZIndex"]
        9 ORK                              R2 R3 K2 [1]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K4 ["createElement"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K5 ["Fragment"]
       16 NEWTABLE                         R5 0 0
       18 DUPTABLE                         R6 K7 [{"InputDetector"}]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K4 ["createElement"]
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R8 R8 K6 ["InputDetector"]
       25 DUPTABLE                         R9 K19 [{["TreatMouseAsAnchor"] = True, ["OnPress"], ["OnHoverStart"], ["OnHoverMoved"], ["OnHoverEnded"], ["OnScroll"], ["OnRelease"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnded"], ["ZIndex"]}]
       26 GETTABLEKS                       R10 R1 K20 ["onPress"]
       28 SETTABLEKS                       R10 R9 K10 ["OnPress"]
       30 GETTABLEKS                       R10 R1 K21 ["onEvent"]
       32 SETTABLEKS                       R10 R9 K11 ["OnHoverStart"]
       34 GETTABLEKS                       R10 R1 K21 ["onEvent"]
       36 SETTABLEKS                       R10 R9 K12 ["OnHoverMoved"]
       38 GETTABLEKS                       R10 R1 K21 ["onEvent"]
       40 SETTABLEKS                       R10 R9 K13 ["OnHoverEnded"]
       42 GETTABLEKS                       R10 R1 K21 ["onEvent"]
       44 SETTABLEKS                       R10 R9 K14 ["OnScroll"]
       46 GETTABLEKS                       R10 R1 K21 ["onEvent"]
       48 SETTABLEKS                       R10 R9 K15 ["OnRelease"]
       50 GETTABLEKS                       R10 R1 K22 ["onDragStart"]
       52 SETTABLEKS                       R10 R9 K16 ["OnDragStart"]
       54 GETTABLEKS                       R10 R1 K23 ["onDragMoved"]
       56 SETTABLEKS                       R10 R9 K17 ["OnDragMoved"]
       58 GETTABLEKS                       R10 R1 K24 ["onDragEnded"]
       60 SETTABLEKS                       R10 R9 K18 ["OnDragEnded"]
       62 SETTABLEKS                       R2 R9 K3 ["ZIndex"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K6 ["InputDetector"]
       67 CALL                             R3 3 -1
       68 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Graphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["GraphingCanvasBackgroundDragContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 RETURN                           R4 1
