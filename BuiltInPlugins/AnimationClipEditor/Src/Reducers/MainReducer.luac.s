MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Reducers"]
       20 GETTABLEKS                       R3 R3 K10 ["Status"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Reducers"]
       29 GETTABLEKS                       R4 R4 K11 ["AnimationData"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Reducers"]
       38 GETTABLEKS                       R5 R5 K12 ["History"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Reducers"]
       47 GETTABLEKS                       R6 R6 K13 ["Notifications"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R1 K14 ["combineReducers"]
       52 DUPTABLE                         R7 K15 [{"Status", "AnimationData", "History", "Notifications"}]
       53 SETTABLEKS                       R2 R7 K10 ["Status"]
       55 SETTABLEKS                       R3 R7 K11 ["AnimationData"]
       57 SETTABLEKS                       R4 R7 K12 ["History"]
       59 SETTABLEKS                       R5 R7 K13 ["Notifications"]
       61 CALL                             R6 1 -1
       62 RETURN                           R6 -1
