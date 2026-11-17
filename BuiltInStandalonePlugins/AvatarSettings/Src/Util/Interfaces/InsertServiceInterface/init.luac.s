MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Interfaces"]
       15 GETTABLEKS                       R2 R2 K9 ["InterfaceTypes"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETTABLEKS                       R3 R3 K8 ["Interfaces"]
       26 GETTABLEKS                       R3 R3 K10 ["InsertServiceInterface"]
       28 GETTABLEKS                       R3 R3 K11 ["LoadAsset"]
       30 CALL                             R2 1 1
       31 DUPTABLE                         R3 K12 [{"LoadAsset"}]
       32 SETTABLEKS                       R2 R3 K11 ["LoadAsset"]
       34 RETURN                           R3 1
