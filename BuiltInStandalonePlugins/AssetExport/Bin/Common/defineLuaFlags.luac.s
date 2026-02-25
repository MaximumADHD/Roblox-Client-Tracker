MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Bin"]
        9 GETTABLEKS                       R1 R2 K5 ["Common"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["safeGetFFlagCallback"]
       15 CALL                             R2 1 1
       16 DUPTABLE                         R3 K10 [{"getFFlagEnableAssetExport"}]
       17 MOVE                             R4 R2
       18 LOADK                            R5 K11 ["EnableAssetExport"]
       19 LOADB                            R6 0
       20 CALL                             R4 2 1
       21 SETTABLEKS                       R4 R3 K9 ["getFFlagEnableAssetExport"]
       23 RETURN                           R3 1
