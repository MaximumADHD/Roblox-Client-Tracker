MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["LoadAnimationTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K7 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["createUnimplemented"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K15 [{["default"] = True, ["getAnimationIdFrom"]}]
       33 MOVE                             R5 R3
       34 LOADK                            R6 K14 ["getAnimationIdFrom"]
       35 CALL                             R5 1 1
       36 SETTABLEKS                       R5 R4 K14 ["getAnimationIdFrom"]
       38 GETTABLEKS                       R5 R2 K16 ["createContext"]
       40 MOVE                             R6 R4
       41 CALL                             R5 1 1
       42 RETURN                           R5 1
