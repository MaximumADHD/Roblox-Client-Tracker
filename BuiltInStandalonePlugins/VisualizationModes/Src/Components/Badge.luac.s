PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 2 0
        6 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        8 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["Tag"]
       13 LOADK                            R5 K4 ["VisualizationModes-Badge X-Fit X-Middle"]
       14 SETTABLE                         R5 R3 R4
       15 DUPTABLE                         R4 K6 [{"Label"}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["createElement"]
       19 GETUPVAL                         R6 1
       20 NEWTABLE                         R7 2 0
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K3 ["Tag"]
       25 LOADK                            R9 K7 ["X-Fit"]
       26 SETTABLE                         R9 R7 R8
       27 GETTABLEKS                       R8 R0 K8 ["Text"]
       29 SETTABLEKS                       R8 R7 K8 ["Text"]
       31 CALL                             R5 2 1
       32 SETTABLEKS                       R5 R4 K5 ["Label"]
       34 CALL                             R1 3 -1
       35 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["TextLabel"]
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 RETURN                           R5 1
