PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_selectionHighlightsEnabled"]
        3 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["_selectionHighlightsEnabled"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["ToggleSelectionHighlightsSignal"]
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K2 ["Fire"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Signal"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 4 0
       18 GETTABLEKS                       R3 R1 K9 ["new"]
       20 CALL                             R3 0 1
       21 SETTABLEKS                       R3 R2 K10 ["ToggleSelectionHighlightsSignal"]
       23 LOADB                            R3 1
       24 SETTABLEKS                       R3 R2 K11 ["_selectionHighlightsEnabled"]
       26 DUPCLOSURE                       R3 K12 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R3 R2 K13 ["GetSelectionHighlightsEnabled"]
       30 DUPCLOSURE                       R3 K14 [PROTO_1]
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R3 R2 K15 ["ToggleSelectionHighlights"]
       34 RETURN                           R2 1
