MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 NEWTABLE                         R1 8 0
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["JestCore"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["SearchSource"]
       14 SETTABLEKS                       R3 R1 K6 ["SearchSource"]
       16 GETTABLEKS                       R3 R2 K7 ["TestWatcher"]
       18 SETTABLEKS                       R3 R1 K7 ["TestWatcher"]
       20 GETTABLEKS                       R3 R2 K8 ["createTestScheduler"]
       22 SETTABLEKS                       R3 R1 K8 ["createTestScheduler"]
       24 GETTABLEKS                       R3 R2 K9 ["runCLI"]
       26 SETTABLEKS                       R3 R1 K9 ["runCLI"]
       28 GETIMPORT                        R3 K4 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R4 R5 K10 ["args.roblox"]
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R3 R1 K11 ["args"]
       37 RETURN                           R1 1
