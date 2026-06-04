MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagDevFrameworkShimmerImprovements"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Style"]
       20 GETTABLEKS                       R3 R3 K10 ["StyleKey"]
       22 CALL                             R2 1 1
       23 MOVE                             R3 R1
       24 CALL                             R3 0 1
       25 JUMPIFNOT                        R3 ; [+27]
       26 DUPTABLE                         R3 K17 [{"BackgroundColor", "ColorStart", "ColorEnd", "ColorEndTintPercent", "Rotation", "Time"}]
       27 GETIMPORT                        R4 K20 [Color3.new]
       29 LOADN                            R5 1
       30 LOADN                            R6 1
       31 LOADN                            R7 1
       32 CALL                             R4 3 1
       33 SETTABLEKS                       R4 R3 K11 ["BackgroundColor"]
       35 GETTABLEKS                       R4 R2 K21 ["ShimmerStart"]
       37 SETTABLEKS                       R4 R3 K12 ["ColorStart"]
       39 GETTABLEKS                       R4 R2 K22 ["ShimmerEnd"]
       41 SETTABLEKS                       R4 R3 K13 ["ColorEnd"]
       43 LOADN                            R4 1
       44 SETTABLEKS                       R4 R3 K14 ["ColorEndTintPercent"]
       46 LOADN                            R4 0
       47 SETTABLEKS                       R4 R3 K15 ["Rotation"]
       49 LOADN                            R4 1
       50 SETTABLEKS                       R4 R3 K16 ["Time"]
       52 RETURN                           R3 1
       53 DUPTABLE                         R3 K25 [{"CornerRadius", "ColorStart", "ColorEnd", "TransitionPeriod"}]
       54 GETIMPORT                        R4 K27 [UDim.new]
       56 LOADK                            R5 K28 [0.03]
       57 LOADN                            R6 0
       58 CALL                             R4 2 1
       59 SETTABLEKS                       R4 R3 K23 ["CornerRadius"]
       61 GETTABLEKS                       R4 R2 K21 ["ShimmerStart"]
       63 SETTABLEKS                       R4 R3 K12 ["ColorStart"]
       65 GETTABLEKS                       R4 R2 K22 ["ShimmerEnd"]
       67 SETTABLEKS                       R4 R3 K13 ["ColorEnd"]
       69 LOADN                            R4 2
       70 SETTABLEKS                       R4 R3 K24 ["TransitionPeriod"]
       72 RETURN                           R3 1
