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
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["InputSize"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R2 K10 ["createContext"]
       23 DUPTABLE                         R5 K18 [{"hasDivider", "isContained", "isInset", "hasMargin", "lastLayoutOrder", "size", "testId"}]
       24 LOADB                            R6 0
       25 SETTABLEKS                       R6 R5 K11 ["hasDivider"]
       27 LOADB                            R6 0
       28 SETTABLEKS                       R6 R5 K12 ["isContained"]
       30 LOADB                            R6 0
       31 SETTABLEKS                       R6 R5 K13 ["isInset"]
       33 LOADB                            R6 0
       34 SETTABLEKS                       R6 R5 K14 ["hasMargin"]
       36 LOADN                            R6 0
       37 SETTABLEKS                       R6 R5 K15 ["lastLayoutOrder"]
       39 GETTABLEKS                       R6 R3 K19 ["Medium"]
       41 SETTABLEKS                       R6 R5 K16 ["size"]
       43 LOADK                            R6 K20 [""]
       44 SETTABLEKS                       R6 R5 K17 ["testId"]
       46 CALL                             R4 1 -1
       47 RETURN                           R4 -1
