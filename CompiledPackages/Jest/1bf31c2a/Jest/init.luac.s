MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["JestCore"]
        9 CALL                             R1 1 1
       10 DUPTABLE                         R2 K11 [{"SearchSource", "TestWatcher", "createTestScheduler", "runCLI", "args"}]
       11 GETTABLEKS                       R3 R1 K6 ["SearchSource"]
       13 SETTABLEKS                       R3 R2 K6 ["SearchSource"]
       15 GETTABLEKS                       R3 R1 K7 ["TestWatcher"]
       17 SETTABLEKS                       R3 R2 K7 ["TestWatcher"]
       19 GETTABLEKS                       R3 R1 K8 ["createTestScheduler"]
       21 SETTABLEKS                       R3 R2 K8 ["createTestScheduler"]
       23 GETTABLEKS                       R3 R1 K9 ["runCLI"]
       25 SETTABLEKS                       R3 R2 K9 ["runCLI"]
       27 GETIMPORT                        R3 K4 [require]
       29 GETIMPORT                        R5 K1 [script]
       31 GETTABLEKS                       R4 R5 K12 ["args.roblox"]
       33 CALL                             R3 1 1
       34 SETTABLEKS                       R3 R2 K10 ["args"]
       36 RETURN                           R2 1
