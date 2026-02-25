MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
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
       23 DUPTABLE                         R3 K21 [{"generations", "updateGeneration", "modelToGenerations", "updateModelToGenerations", "selected", "setSelected", "quota", "setQuota", "total", "setTotal"}]
       24 NEWTABLE                         R4 0 0
       26 SETTABLEKS                       R4 R3 K11 ["generations"]
       28 MOVE                             R4 R2
       29 LOADK                            R5 K12 ["updateGeneration"]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R4 R3 K12 ["updateGeneration"]
       33 NEWTABLE                         R4 0 0
       35 SETTABLEKS                       R4 R3 K13 ["modelToGenerations"]
       37 MOVE                             R4 R2
       38 LOADK                            R5 K14 ["updateModelToGenerations"]
       39 CALL                             R4 1 1
       40 SETTABLEKS                       R4 R3 K14 ["updateModelToGenerations"]
       42 LOADNIL                          R4
       43 SETTABLEKS                       R4 R3 K15 ["selected"]
       45 MOVE                             R4 R2
       46 LOADK                            R5 K16 ["setSelected"]
       47 CALL                             R4 1 1
       48 SETTABLEKS                       R4 R3 K16 ["setSelected"]
       50 LOADN                            R4 0
       51 SETTABLEKS                       R4 R3 K17 ["quota"]
       53 MOVE                             R4 R2
       54 LOADK                            R5 K18 ["setQuota"]
       55 CALL                             R4 1 1
       56 SETTABLEKS                       R4 R3 K18 ["setQuota"]
       58 LOADN                            R4 0
       59 SETTABLEKS                       R4 R3 K19 ["total"]
       61 MOVE                             R4 R2
       62 LOADK                            R5 K20 ["setTotal"]
       63 CALL                             R4 1 1
       64 SETTABLEKS                       R4 R3 K20 ["setTotal"]
       66 GETTABLEKS                       R4 R1 K22 ["createContext"]
       68 MOVE                             R5 R3
       69 CALL                             R4 1 1
       70 RETURN                           R4 1
