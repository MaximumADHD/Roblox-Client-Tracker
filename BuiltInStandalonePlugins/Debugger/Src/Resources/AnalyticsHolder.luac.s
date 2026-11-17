MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["ContextServices"]
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R0 K8 ["Src"]
       22 GETTABLEKS                       R4 R4 K9 ["Resources"]
       24 GETTABLEKS                       R4 R4 K10 ["AnalyticsHandlers"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R2 K11 ["Analytics"]
       29 GETTABLEKS                       R4 R4 K12 ["new"]
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 RETURN                           R4 1
