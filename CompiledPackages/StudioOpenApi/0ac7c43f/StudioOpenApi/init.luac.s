MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [require]
        5 GETTABLEKS                       R2 R0 K4 ["Types"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K3 [require]
       10 GETTABLEKS                       R3 R0 K5 ["createRuntime"]
       12 CALL                             R2 1 1
       13 GETIMPORT                        R3 K3 [require]
       15 GETTABLEKS                       R4 R0 K6 ["describeError"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K3 [require]
       20 GETTABLEKS                       R5 R0 K7 ["resolveEnvironmentUrl"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K3 [require]
       25 GETTABLEKS                       R6 R0 K8 ["sendWithOptions"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K3 [require]
       30 GETTABLEKS                       R7 R0 K9 ["throwError"]
       32 CALL                             R6 1 1
       33 DUPTABLE                         R7 K10 [{"createRuntime", "describeError", "resolveEnvironmentUrl", "sendWithOptions", "throwError"}]
       34 SETTABLEKS                       R2 R7 K5 ["createRuntime"]
       36 SETTABLEKS                       R3 R7 K6 ["describeError"]
       38 SETTABLEKS                       R4 R7 K7 ["resolveEnvironmentUrl"]
       40 SETTABLEKS                       R5 R7 K8 ["sendWithOptions"]
       42 SETTABLEKS                       R6 R7 K9 ["throwError"]
       44 RETURN                           R7 1
