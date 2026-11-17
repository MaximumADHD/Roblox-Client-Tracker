PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{["tag"] = "bg-surface-200 radius-medium stroke-default", ["Size"], ["LayoutOrder"]}]
        5 GETIMPORT                        R4 K8 [UDim2.fromOffset]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K9 ["LOOK_PREVIEW_SIZE"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K9 ["LOOK_PREVIEW_SIZE"]
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K3 ["Size"]
       16 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       18 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       20 DUPTABLE                         R4 K11 [{"LoadingOverlay"}]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K0 ["createElement"]
       24 GETUPVAL                         R6 1
       25 DUPTABLE                         R7 K15 [{["tag"] = "size-full bg-surface-200", ["ZIndex"] = 10}]
       26 DUPTABLE                         R8 K17 [{"LoadingIndicator"}]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K0 ["createElement"]
       30 GETUPVAL                         R10 3
       31 GETTABLEKS                       R10 R10 K16 ["LoadingIndicator"]
       33 DUPTABLE                         R11 K20 [{"Size", "AnchorPoint", "Position"}]
       34 GETIMPORT                        R12 K8 [UDim2.fromOffset]
       36 LOADN                            R13 32
       37 LOADN                            R14 32
       38 CALL                             R12 2 1
       39 SETTABLEKS                       R12 R11 K3 ["Size"]
       41 GETIMPORT                        R12 K23 [Vector2.new]
       43 LOADK                            R13 K24 [0.5]
       44 LOADK                            R14 K24 [0.5]
       45 CALL                             R12 2 1
       46 SETTABLEKS                       R12 R11 K18 ["AnchorPoint"]
       48 GETIMPORT                        R12 K26 [UDim2.fromScale]
       50 LOADK                            R13 K24 [0.5]
       51 LOADK                            R14 K24 [0.5]
       52 CALL                             R12 2 1
       53 SETTABLEKS                       R12 R11 K19 ["Position"]
       55 CALL                             R9 2 1
       56 SETTABLEKS                       R9 R8 K16 ["LoadingIndicator"]
       58 CALL                             R5 3 1
       59 SETTABLEKS                       R5 R4 K10 ["LoadingOverlay"]
       61 CALL                             R1 3 -1
       62 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R5 K10 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["UI"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Util"]
       38 GETTABLEKS                       R7 R7 K14 ["Constants"]
       40 CALL                             R6 1 1
       41 DUPCLOSURE                       R7 K15 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R5
       46 RETURN                           R7 1
