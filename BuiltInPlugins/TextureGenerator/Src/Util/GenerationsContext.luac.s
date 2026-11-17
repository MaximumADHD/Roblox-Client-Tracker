MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["createUnimplemented"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K23 [{["generations"], ["updateGeneration"], ["modelToGenerations"], ["updateModelToGenerations"], ["selected"] = , ["setSelected"], ["quota"] = 0, ["setQuota"], ["total"] = 0, ["setTotal"]}]
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
       42 MOVE                             R4 R2
       43 LOADK                            R5 K17 ["setSelected"]
       44 CALL                             R4 1 1
       45 SETTABLEKS                       R4 R3 K17 ["setSelected"]
       47 MOVE                             R4 R2
       48 LOADK                            R5 K20 ["setQuota"]
       49 CALL                             R4 1 1
       50 SETTABLEKS                       R4 R3 K20 ["setQuota"]
       52 MOVE                             R4 R2
       53 LOADK                            R5 K22 ["setTotal"]
       54 CALL                             R4 1 1
       55 SETTABLEKS                       R4 R3 K22 ["setTotal"]
       57 GETTABLEKS                       R4 R1 K24 ["createContext"]
       59 MOVE                             R5 R3
       60 CALL                             R4 1 1
       61 RETURN                           R4 1
