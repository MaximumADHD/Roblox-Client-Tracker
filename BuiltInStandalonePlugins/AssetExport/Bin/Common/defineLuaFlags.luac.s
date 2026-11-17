MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["SafeFlags"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K9 [{"getFFlagEnableAssetExport"}]
       15 GETTABLEKS                       R3 R1 K10 ["createGetFFlag"]
       17 LOADK                            R4 K11 ["EnableAssetExport"]
       18 LOADB                            R5 0
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K8 ["getFFlagEnableAssetExport"]
       22 RETURN                           R2 1
