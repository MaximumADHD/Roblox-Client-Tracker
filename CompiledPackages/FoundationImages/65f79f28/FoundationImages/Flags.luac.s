MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FoundationImages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["SafeFlags"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K10 [{"FixBlurryImages", "FoundationImagesRemoveDeprecatedIconAssets"}]
       15 GETTABLEKS                       R3 R1 K11 ["createGetFFlag"]
       17 LOADK                            R4 K8 ["FixBlurryImages"]
       18 CALL                             R3 1 1
       19 CALL                             R3 0 1
       20 SETTABLEKS                       R3 R2 K8 ["FixBlurryImages"]
       22 GETTABLEKS                       R3 R1 K11 ["createGetFFlag"]
       24 LOADK                            R4 K9 ["FoundationImagesRemoveDeprecatedIconAssets"]
       25 CALL                             R3 1 1
       26 CALL                             R3 0 1
       27 SETTABLEKS                       R3 R2 K9 ["FoundationImagesRemoveDeprecatedIconAssets"]
       29 RETURN                           R2 1
