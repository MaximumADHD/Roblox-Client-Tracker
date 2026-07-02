MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Tests"]
       11 GETTABLEKS                       R2 R2 K7 ["TestUtils"]
       13 GETTABLEKS                       R2 R2 K8 ["TestMatch"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K14 [{["displayName"] = "AssetManager/Src", ["testMatch"], ["testTimeout"] = 10000}]
       17 SETTABLEKS                       R1 R2 K11 ["testMatch"]
       19 RETURN                           R2 1
