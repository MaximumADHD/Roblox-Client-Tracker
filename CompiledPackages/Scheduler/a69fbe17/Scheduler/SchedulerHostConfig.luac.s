MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K4 [script]
        5 GETTABLEKS                       R2 R2 K5 ["Parent"]
        7 GETTABLEKS                       R2 R2 K6 ["forks"]
        9 GETTABLEKS                       R1 R2 K2 ["SchedulerHostConfig.default"]
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1
