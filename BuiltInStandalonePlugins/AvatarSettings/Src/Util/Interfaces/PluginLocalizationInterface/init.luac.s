MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["Interfaces"]
       15 GETTABLEKS                       R2 R3 K9 ["InterfaceTypes"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R7 R0 K6 ["Src"]
       22 GETTABLEKS                       R6 R7 K7 ["Util"]
       24 GETTABLEKS                       R5 R6 K8 ["Interfaces"]
       26 GETTABLEKS                       R4 R5 K10 ["PluginLocalizationInterface"]
       28 GETTABLEKS                       R3 R4 K11 ["createLocalization"]
       30 CALL                             R2 1 1
       31 DUPTABLE                         R3 K12 [{"createLocalization"}]
       32 SETTABLEKS                       R2 R3 K11 ["createLocalization"]
       34 RETURN                           R3 1
