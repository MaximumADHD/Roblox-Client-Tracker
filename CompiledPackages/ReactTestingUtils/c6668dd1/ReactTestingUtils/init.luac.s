MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["ReactUtils"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K9 [{"waitForEvents", "renderTestHook", "stageHook"}]
       11 GETTABLEKS                       R2 R0 K6 ["waitForEvents"]
       13 SETTABLEKS                       R2 R1 K6 ["waitForEvents"]
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R4 K3 [script]
       19 GETTABLEKS                       R3 R4 K7 ["renderTestHook"]
       21 CALL                             R2 1 1
       22 SETTABLEKS                       R2 R1 K7 ["renderTestHook"]
       24 GETIMPORT                        R2 K1 [require]
       26 GETIMPORT                        R4 K3 [script]
       28 GETTABLEKS                       R3 R4 K8 ["stageHook"]
       30 CALL                             R2 1 1
       31 SETTABLEKS                       R2 R1 K8 ["stageHook"]
       33 RETURN                           R1 1
