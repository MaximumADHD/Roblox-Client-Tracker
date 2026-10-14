MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K15 [{["canCreateGraph"] = False, ["selectedTargetName"] = , ["createGraphFromIdAsync"], ["createNewGraphAsync"]}]
       22 GETTABLEKS                       R4 R2 K16 ["createUnimplemented"]
       24 LOADK                            R5 K13 ["createGraphFromIdAsync"]
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R3 K13 ["createGraphFromIdAsync"]
       28 GETTABLEKS                       R4 R2 K16 ["createUnimplemented"]
       30 LOADK                            R5 K14 ["createNewGraphAsync"]
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K14 ["createNewGraphAsync"]
       34 GETTABLEKS                       R4 R1 K17 ["createContext"]
       36 MOVE                             R5 R3
       37 CALL                             R4 1 1
       38 DUPTABLE                         R5 K20 [{"Context", "default"}]
       39 SETTABLEKS                       R4 R5 K18 ["Context"]
       41 SETTABLEKS                       R3 R5 K19 ["default"]
       43 RETURN                           R5 1
