MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["createUnimplemented"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K13 [{"default", "getBundleDetailsAsync"}]
       24 LOADB                            R4 1
       25 SETTABLEKS                       R4 R3 K11 ["default"]
       27 MOVE                             R4 R2
       28 LOADK                            R5 K12 ["getBundleDetailsAsync"]
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R4 R3 K12 ["getBundleDetailsAsync"]
       32 GETTABLEKS                       R4 R1 K14 ["createContext"]
       34 MOVE                             R5 R3
       35 CALL                             R4 1 1
       36 RETURN                           R4 1
