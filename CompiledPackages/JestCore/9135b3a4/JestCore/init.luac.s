MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R2 K1 [require]
        5 GETIMPORT                        R4 K3 [script]
        7 GETTABLEKS                       R3 R4 K4 ["SearchSource"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R1 R2 K5 ["default"]
       12 SETTABLEKS                       R1 R0 K4 ["SearchSource"]
       14 GETIMPORT                        R2 K1 [require]
       16 GETIMPORT                        R4 K3 [script]
       18 GETTABLEKS                       R3 R4 K6 ["TestScheduler"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R1 R2 K7 ["createTestScheduler"]
       23 SETTABLEKS                       R1 R0 K7 ["createTestScheduler"]
       25 GETIMPORT                        R2 K1 [require]
       27 GETIMPORT                        R4 K3 [script]
       29 GETTABLEKS                       R3 R4 K8 ["TestWatcher"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R1 R2 K5 ["default"]
       34 SETTABLEKS                       R1 R0 K8 ["TestWatcher"]
       36 GETIMPORT                        R2 K1 [require]
       38 GETIMPORT                        R4 K3 [script]
       40 GETTABLEKS                       R3 R4 K9 ["cli"]
       42 CALL                             R2 1 1
       43 GETTABLEKS                       R1 R2 K10 ["runCLI"]
       45 SETTABLEKS                       R1 R0 K10 ["runCLI"]
       47 RETURN                           R0 1
