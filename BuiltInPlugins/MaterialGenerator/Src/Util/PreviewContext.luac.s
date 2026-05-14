MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createUnimplemented"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Types"]
       29 CALL                             R4 1 1
       30 DUPTABLE                         R5 K15 [{"selectedMaterial", "setSelectedMaterial", "applySelectedMaterial"}]
       31 LOADNIL                          R6
       32 SETTABLEKS                       R6 R5 K12 ["selectedMaterial"]
       34 MOVE                             R6 R3
       35 LOADK                            R7 K13 ["setSelectedMaterial"]
       36 CALL                             R6 1 1
       37 SETTABLEKS                       R6 R5 K13 ["setSelectedMaterial"]
       39 MOVE                             R6 R3
       40 LOADK                            R7 K14 ["applySelectedMaterial"]
       41 CALL                             R6 1 1
       42 SETTABLEKS                       R6 R5 K14 ["applySelectedMaterial"]
       44 GETTABLEKS                       R6 R1 K16 ["createContext"]
       46 MOVE                             R7 R5
       47 CALL                             R6 1 1
       48 RETURN                           R6 1
