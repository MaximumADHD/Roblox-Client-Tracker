MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"GetFFlagWorkingInAssetDM"}]
        2 GETIMPORT                        R1 K3 [require]
        4 GETIMPORT                        R2 K5 [script]
        6 GETTABLEKS                       R2 R2 K0 ["GetFFlagWorkingInAssetDM"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["GetFFlagWorkingInAssetDM"]
       11 RETURN                           R0 1
