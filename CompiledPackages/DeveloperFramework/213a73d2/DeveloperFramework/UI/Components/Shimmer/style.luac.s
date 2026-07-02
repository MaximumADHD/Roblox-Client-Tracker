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
       25 JUMPIFNOT                        R3 ; [+18]
       26 DUPTABLE                         R3 K19 [{["BackgroundColor"], ["ColorStart"], ["ColorEnd"], ["ColorEndTintPercent"] = 1, ["Rotation"] = 0, ["Time"] = 1}]
       27 GETIMPORT                        R4 K22 [Color3.new]
       29 LOADN                            R5 1
       30 LOADN                            R6 1
       31 LOADN                            R7 1
       32 CALL                             R4 3 1
       33 SETTABLEKS                       R4 R3 K11 ["BackgroundColor"]
       35 GETTABLEKS                       R4 R2 K23 ["ShimmerStart"]
       37 SETTABLEKS                       R4 R3 K12 ["ColorStart"]
       39 GETTABLEKS                       R4 R2 K24 ["ShimmerEnd"]
       41 SETTABLEKS                       R4 R3 K13 ["ColorEnd"]
       43 RETURN                           R3 1
       44 DUPTABLE                         R3 K28 [{["CornerRadius"], ["ColorStart"], ["ColorEnd"], ["TransitionPeriod"] = 2}]
       45 GETIMPORT                        R4 K30 [UDim.new]
       47 LOADK                            R5 K31 [0.03]
       48 LOADN                            R6 0
       49 CALL                             R4 2 1
       50 SETTABLEKS                       R4 R3 K25 ["CornerRadius"]
       52 GETTABLEKS                       R4 R2 K23 ["ShimmerStart"]
       54 SETTABLEKS                       R4 R3 K12 ["ColorStart"]
       56 GETTABLEKS                       R4 R2 K24 ["ShimmerEnd"]
       58 SETTABLEKS                       R4 R3 K13 ["ColorEnd"]
       60 RETURN                           R3 1
