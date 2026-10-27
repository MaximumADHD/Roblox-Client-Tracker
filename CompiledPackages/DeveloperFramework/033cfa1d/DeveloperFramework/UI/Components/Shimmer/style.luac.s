MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K17 [{["BackgroundColor"], ["ColorStart"], ["ColorEnd"], ["ColorEndTintPercent"] = 1, ["Rotation"] = 0, ["Time"] = 1}]
       17 GETIMPORT                        R3 K20 [Color3.new]
       19 LOADN                            R4 1
       20 LOADN                            R5 1
       21 LOADN                            R6 1
       22 CALL                             R3 3 1
       23 SETTABLEKS                       R3 R2 K9 ["BackgroundColor"]
       25 GETTABLEKS                       R3 R1 K21 ["ShimmerStart"]
       27 SETTABLEKS                       R3 R2 K10 ["ColorStart"]
       29 GETTABLEKS                       R3 R1 K22 ["ShimmerEnd"]
       31 SETTABLEKS                       R3 R2 K11 ["ColorEnd"]
       33 RETURN                           R2 1
