MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CrossEnvironment"]
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
       21 DUPTABLE                         R3 K12 [{"getMousePosition", "isLeftMouseDown", "bindOnPointerAction"}]
       22 GETTABLEKS                       R4 R2 K13 ["createUnimplemented"]
       24 LOADK                            R5 K9 ["getMousePosition"]
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R3 K9 ["getMousePosition"]
       28 GETTABLEKS                       R4 R2 K13 ["createUnimplemented"]
       30 LOADK                            R5 K10 ["isLeftMouseDown"]
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K10 ["isLeftMouseDown"]
       34 GETTABLEKS                       R4 R2 K13 ["createUnimplemented"]
       36 LOADK                            R5 K11 ["bindOnPointerAction"]
       37 CALL                             R4 1 1
       38 SETTABLEKS                       R4 R3 K11 ["bindOnPointerAction"]
       40 GETTABLEKS                       R4 R1 K14 ["createContext"]
       42 MOVE                             R5 R3
       43 CALL                             R4 1 -1
       44 RETURN                           R4 -1
