MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R5 K9 ["InputSize"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R2 K10 ["createContext"]
       23 DUPTABLE                         R5 K15 [{"hasDivider", "isInset", "size", "testId"}]
       24 LOADB                            R6 0
       25 SETTABLEKS                       R6 R5 K11 ["hasDivider"]
       27 LOADB                            R6 0
       28 SETTABLEKS                       R6 R5 K12 ["isInset"]
       30 GETTABLEKS                       R6 R3 K16 ["Medium"]
       32 SETTABLEKS                       R6 R5 K13 ["size"]
       34 LOADK                            R6 K17 [""]
       35 SETTABLEKS                       R6 R5 K14 ["testId"]
       37 CALL                             R4 1 -1
       38 RETURN                           R4 -1
