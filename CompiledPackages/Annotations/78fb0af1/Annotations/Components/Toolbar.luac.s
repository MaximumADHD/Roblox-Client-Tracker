PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["View"]
        6 DUPTABLE                         R2 K9 [{["AnchorPoint"], ["Position"], ["Size"], ["testId"] = "AnnotationsToolbar", ["tag"] = "radius-large bg-surface-100"}]
        7 GETIMPORT                        R3 K12 [Vector2.new]
        9 LOADK                            R4 K13 [0.5]
       10 LOADN                            R5 1
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K2 ["AnchorPoint"]
       14 GETIMPORT                        R3 K15 [UDim2.new]
       16 LOADK                            R4 K13 [0.5]
       17 LOADN                            R5 0
       18 LOADN                            R6 1
       19 LOADN                            R7 -12
       20 CALL                             R3 4 1
       21 SETTABLEKS                       R3 R2 K3 ["Position"]
       23 GETIMPORT                        R3 K17 [UDim2.fromOffset]
       25 LOADN                            R4 240
       26 LOADN                            R5 40
       27 CALL                             R3 2 1
       28 SETTABLEKS                       R3 R2 K4 ["Size"]
       30 CALL                             R0 2 -1
       31 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Annotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 DUPCLOSURE                       R4 K9 [PROTO_0]
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R2
       22 RETURN                           R4 1
