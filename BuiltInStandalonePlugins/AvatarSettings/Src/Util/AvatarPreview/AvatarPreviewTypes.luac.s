MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R6 R0 K6 ["Src"]
       11 GETTABLEKS                       R5 R6 K7 ["Util"]
       13 GETTABLEKS                       R4 R5 K8 ["BridgingFiles"]
       15 GETTABLEKS                       R3 R4 K9 ["AssetDmFiles"]
       17 GETTABLEKS                       R2 R3 K10 ["assetDmTypes"]
       19 CALL                             R1 1 1
       20 LOADNIL                          R2
       21 RETURN                           R2 1
