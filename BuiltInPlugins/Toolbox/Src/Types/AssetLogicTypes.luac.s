MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Models"]
       13 GETTABLEKS                       R2 R3 K8 ["AssetInfo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K9 ["Util"]
       22 GETTABLEKS                       R4 R5 K10 ["Analytics"]
       24 GETTABLEKS                       R3 R4 K11 ["AssetAnalytics"]
       26 CALL                             R2 1 1
       27 NEWTABLE                         R3 0 0
       29 RETURN                           R3 1
