PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 4 0
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["Tag"]
        9 LOADK                            R5 K3 ["VisualizationModes-Bottom-Divider"]
       10 SETTABLE                         R5 R3 R4
       11 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       13 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       15 GETTABLEKS                       R4 R0 K5 ["Visible"]
       17 SETTABLEKS                       R4 R3 K5 ["Visible"]
       19 DUPTABLE                         R4 K7 [{"DividerRender"}]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K0 ["createElement"]
       23 LOADK                            R6 K1 ["Frame"]
       24 CALL                             R5 1 1
       25 SETTABLEKS                       R5 R4 K6 ["DividerRender"]
       27 CALL                             R1 3 -1
       28 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
