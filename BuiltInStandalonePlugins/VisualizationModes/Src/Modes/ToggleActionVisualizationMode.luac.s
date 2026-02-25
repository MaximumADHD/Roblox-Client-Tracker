PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 RETURN                           R0 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["FeatureId"]
        3 GETTABLEKS                       R3 R0 K1 ["ActionId"]
        5 LOADB                            R4 0
        6 CALL                             R1 3 2
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K5 [{"Title", "ToolTip", "UseState"}]
        9 GETTABLEKS                       R5 R0 K2 ["Title"]
       11 SETTABLEKS                       R5 R4 K2 ["Title"]
       13 GETTABLEKS                       R5 R0 K3 ["ToolTip"]
       15 SETTABLEKS                       R5 R4 K3 ["ToolTip"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R5 R4 K4 ["UseState"]
       22 CALL                             R3 1 -1
       23 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Hooks"]
       13 GETTABLEKS                       R2 R3 K8 ["useToggleAction"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Modes"]
       22 GETTABLEKS                       R3 R4 K10 ["VisualizationMode"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
