MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R2 K3 [script]
        7 GETTABLEKS                       R2 R2 K4 ["formatTestResults"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K4 ["formatTestResults"]
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K5 ["helpers"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R1 K6 ["addResult"]
       21 SETTABLEKS                       R2 R0 K6 ["addResult"]
       23 GETTABLEKS                       R2 R1 K7 ["buildFailureTestResult"]
       25 SETTABLEKS                       R2 R0 K7 ["buildFailureTestResult"]
       27 GETTABLEKS                       R2 R1 K8 ["createEmptyTestResult"]
       29 SETTABLEKS                       R2 R0 K8 ["createEmptyTestResult"]
       31 GETTABLEKS                       R2 R1 K9 ["makeEmptyAggregatedTestResult"]
       33 SETTABLEKS                       R2 R0 K9 ["makeEmptyAggregatedTestResult"]
       35 GETIMPORT                        R2 K1 [require]
       37 GETIMPORT                        R3 K3 [script]
       39 GETTABLEKS                       R3 R3 K10 ["types"]
       41 CALL                             R2 1 1
       42 RETURN                           R0 1
