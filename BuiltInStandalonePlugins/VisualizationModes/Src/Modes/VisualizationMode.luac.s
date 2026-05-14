PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["UseState"]
        2 CALL                             R1 0 2
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["createElement"]
       12 LOADK                            R5 K3 ["VisualizationMode"]
       13 NEWTABLE                         R6 4 0
       15 GETTABLEKS                       R7 R0 K4 ["Title"]
       17 SETTABLEKS                       R7 R6 K4 ["Title"]
       19 SETTABLEKS                       R1 R6 K5 ["Enabled"]
       21 GETTABLEKS                       R7 R0 K6 ["ToolTip"]
       23 SETTABLEKS                       R7 R6 K6 ["ToolTip"]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K7 ["Change"]
       28 GETTABLEKS                       R7 R7 K5 ["Enabled"]
       30 SETTABLE                         R3 R6 R7
       31 CALL                             R4 2 -1
       32 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_1]
       22 CAPTURE                          VAL R2
       23 RETURN                           R3 1
