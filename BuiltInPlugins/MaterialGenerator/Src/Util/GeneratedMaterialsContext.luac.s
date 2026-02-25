MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createUnimplemented"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Types"]
       29 CALL                             R4 1 1
       30 DUPTABLE                         R5 K22 [{"promptGroups", "materialStates", "addMaterials", "removeMaterial", "removeAllMaterials", "hasBaseMaterial", "markHasBaseMaterial", "getMaterialStatus", "setMaterialStatus", "getMaterialIdentifiers"}]
       31 NEWTABLE                         R6 0 0
       33 SETTABLEKS                       R6 R5 K12 ["promptGroups"]
       35 NEWTABLE                         R6 0 0
       37 SETTABLEKS                       R6 R5 K13 ["materialStates"]
       39 MOVE                             R6 R3
       40 LOADK                            R7 K14 ["addMaterials"]
       41 CALL                             R6 1 1
       42 SETTABLEKS                       R6 R5 K14 ["addMaterials"]
       44 MOVE                             R6 R3
       45 LOADK                            R7 K15 ["removeMaterial"]
       46 CALL                             R6 1 1
       47 SETTABLEKS                       R6 R5 K15 ["removeMaterial"]
       49 MOVE                             R6 R3
       50 LOADK                            R7 K16 ["removeAllMaterials"]
       51 CALL                             R6 1 1
       52 SETTABLEKS                       R6 R5 K16 ["removeAllMaterials"]
       54 MOVE                             R6 R3
       55 LOADK                            R7 K17 ["hasBaseMaterial"]
       56 CALL                             R6 1 1
       57 SETTABLEKS                       R6 R5 K17 ["hasBaseMaterial"]
       59 MOVE                             R6 R3
       60 LOADK                            R7 K18 ["markHasBaseMaterial"]
       61 CALL                             R6 1 1
       62 SETTABLEKS                       R6 R5 K18 ["markHasBaseMaterial"]
       64 MOVE                             R6 R3
       65 LOADK                            R7 K19 ["getMaterialStatus"]
       66 CALL                             R6 1 1
       67 SETTABLEKS                       R6 R5 K19 ["getMaterialStatus"]
       69 MOVE                             R6 R3
       70 LOADK                            R7 K20 ["setMaterialStatus"]
       71 CALL                             R6 1 1
       72 SETTABLEKS                       R6 R5 K20 ["setMaterialStatus"]
       74 MOVE                             R6 R3
       75 LOADK                            R7 K21 ["getMaterialIdentifiers"]
       76 CALL                             R6 1 1
       77 SETTABLEKS                       R6 R5 K21 ["getMaterialIdentifiers"]
       79 GETTABLEKS                       R6 R1 K23 ["createContext"]
       81 MOVE                             R7 R5
       82 CALL                             R6 1 1
       83 RETURN                           R6 1
