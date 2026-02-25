MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K7 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["useCategorySectionAssets.impl"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 DUPTABLE                         R3 K9 [{"fetchCategoryAssets"}]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R7 R0 K10 ["Src"]
       22 GETTABLEKS                       R6 R7 K11 ["Requests"]
       24 GETTABLEKS                       R5 R6 K8 ["fetchCategoryAssets"]
       26 CALL                             R4 1 1
       27 SETTABLEKS                       R4 R3 K8 ["fetchCategoryAssets"]
       29 CALL                             R2 1 -1
       30 RETURN                           R2 -1
