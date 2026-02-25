MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["makeTimerImpl"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K5 ["makeIntervalImpl"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R6 K3 [script]
       19 GETTABLEKS                       R5 R6 K6 ["Parent"]
       21 GETTABLEKS                       R4 R5 K7 ["Object"]
       23 GETTABLEKS                       R3 R4 K8 ["assign"]
       25 CALL                             R2 1 1
       26 MOVE                             R3 R2
       27 NEWTABLE                         R4 0 0
       29 MOVE                             R5 R0
       30 GETIMPORT                        R6 K11 [task.delay]
       32 CALL                             R5 1 1
       33 MOVE                             R6 R1
       34 GETIMPORT                        R7 K11 [task.delay]
       36 CALL                             R6 1 -1
       37 CALL                             R3 -1 -1
       38 RETURN                           R3 -1
