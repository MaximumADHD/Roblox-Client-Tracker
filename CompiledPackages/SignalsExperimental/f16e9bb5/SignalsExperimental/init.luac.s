MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["SignalsScheduler"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R3 K3 [script]
       14 GETTABLEKS                       R2 R3 K6 ["createProxy"]
       16 CALL                             R1 1 1
       17 DUPTABLE                         R2 K10 [{"batch", "createProxy", "createReducer", "onDisposed"}]
       18 GETTABLEKS                       R3 R0 K7 ["batch"]
       20 SETTABLEKS                       R3 R2 K7 ["batch"]
       22 SETTABLEKS                       R1 R2 K6 ["createProxy"]
       24 GETIMPORT                        R3 K1 [require]
       26 GETIMPORT                        R5 K3 [script]
       28 GETTABLEKS                       R4 R5 K8 ["createReducer"]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R2 K8 ["createReducer"]
       33 GETIMPORT                        R3 K1 [require]
       35 GETIMPORT                        R5 K3 [script]
       37 GETTABLEKS                       R4 R5 K9 ["onDisposed"]
       39 CALL                             R3 1 1
       40 SETTABLEKS                       R3 R2 K9 ["onDisposed"]
       42 RETURN                           R2 1
