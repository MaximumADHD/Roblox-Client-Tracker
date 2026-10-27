MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R2 K3 [script]
        7 GETTABLEKS                       R2 R2 K4 ["formatTestResults"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R1 R1 K5 ["default"]
       12 SETTABLEKS                       R1 R0 K4 ["formatTestResults"]
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K6 ["helpers"]
       20 CALL                             R1 1 1
       21 GETTABLEKS                       R2 R1 K7 ["addResult"]
       23 SETTABLEKS                       R2 R0 K7 ["addResult"]
       25 GETTABLEKS                       R2 R1 K8 ["buildFailureTestResult"]
       27 SETTABLEKS                       R2 R0 K8 ["buildFailureTestResult"]
       29 GETTABLEKS                       R2 R1 K9 ["createEmptyTestResult"]
       31 SETTABLEKS                       R2 R0 K9 ["createEmptyTestResult"]
       33 GETTABLEKS                       R2 R1 K10 ["makeEmptyAggregatedTestResult"]
       35 SETTABLEKS                       R2 R0 K10 ["makeEmptyAggregatedTestResult"]
       37 GETIMPORT                        R2 K1 [require]
       39 GETIMPORT                        R3 K3 [script]
       41 GETTABLEKS                       R3 R3 K11 ["types"]
       43 CALL                             R2 1 1
       44 RETURN                           R0 1
