PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Setting"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Property"]
        7 LOADB                            R3 0
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K4 [{"Title", "ToolTip", "SortOrder", "UseState"}]
        2 GETTABLEKS                       R3 R0 K0 ["Title"]
        4 SETTABLEKS                       R3 R2 K0 ["Title"]
        6 GETTABLEKS                       R3 R0 K1 ["ToolTip"]
        8 SETTABLEKS                       R3 R2 K1 ["ToolTip"]
       10 GETTABLEKS                       R3 R0 K2 ["SortOrder"]
       12 SETTABLEKS                       R3 R2 K2 ["SortOrder"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R3 R2 K3 ["UseState"]
       19 CALL                             R1 1 -1
       20 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Hooks"]
       13 GETTABLEKS                       R2 R2 K8 ["useInstanceSetting"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Modes"]
       22 GETTABLEKS                       R3 R3 K10 ["VisualizationMode"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 RETURN                           R3 1
