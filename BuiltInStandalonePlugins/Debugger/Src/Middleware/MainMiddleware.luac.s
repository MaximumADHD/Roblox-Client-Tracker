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
       16 GETTABLEKS                       R2 R1 K7 ["Util"]
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R0 K8 ["Src"]
       22 GETTABLEKS                       R4 R4 K9 ["Resources"]
       24 GETTABLEKS                       R4 R4 K10 ["AnalyticsHolder"]
       26 CALL                             R3 1 1
       27 NEWTABLE                         R4 1 0
       29 SETTABLEKS                       R3 R4 K11 ["analytics"]
       31 GETTABLEKS                       R5 R2 K12 ["ThunkWithArgsMiddleware"]
       33 MOVE                             R6 R4
       34 CALL                             R5 1 1
       35 NEWTABLE                         R6 0 1
       37 MOVE                             R7 R5
       38 SETLIST                          R6 R7 1 [1]
       40 RETURN                           R6 1
