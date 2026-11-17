MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["createUnimplemented"]
       29 CALL                             R3 1 1
       30 DUPTABLE                         R4 K18 [{["setStage"], ["stage"] = "CheckBody", ["setIsTextured"], ["isTextured"] = True}]
       31 MOVE                             R5 R3
       32 LOADK                            R6 K12 ["setStage"]
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R4 K12 ["setStage"]
       36 MOVE                             R5 R3
       37 LOADK                            R6 K15 ["setIsTextured"]
       38 CALL                             R5 1 1
       39 SETTABLEKS                       R5 R4 K15 ["setIsTextured"]
       41 GETTABLEKS                       R5 R1 K19 ["createContext"]
       43 MOVE                             R6 R4
       44 CALL                             R5 1 -1
       45 RETURN                           R5 -1
