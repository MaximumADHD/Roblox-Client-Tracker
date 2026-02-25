MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Tests"]
       11 GETTABLEKS                       R3 R4 K7 ["Utils"]
       13 GETTABLEKS                       R2 R3 K8 ["TestMatch"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K12 [{"displayName", "testMatch", "testTimeout"}]
       17 LOADK                            R3 K13 ["AssetManager/Src"]
       18 SETTABLEKS                       R3 R2 K9 ["displayName"]
       20 SETTABLEKS                       R1 R2 K10 ["testMatch"]
       22 LOADN                            R3 16
       23 SETTABLEKS                       R3 R2 K11 ["testTimeout"]
       25 RETURN                           R2 1
