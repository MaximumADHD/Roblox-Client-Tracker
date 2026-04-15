MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R2 K4 [require]
        7 GETTABLEKS                       R3 R0 K5 ["Collections"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R1 R2 K6 ["Object"]
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R4 K1 [script]
       16 GETTABLEKS                       R3 R4 K7 ["makeTimerImpl"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R4 R5 K8 ["makeIntervalImpl"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R1 K9 ["assign"]
       28 NEWTABLE                         R5 0 0
       30 MOVE                             R6 R2
       31 GETIMPORT                        R7 K12 [task.delay]
       33 CALL                             R6 1 1
       34 MOVE                             R7 R3
       35 GETIMPORT                        R8 K12 [task.delay]
       37 CALL                             R7 1 -1
       38 CALL                             R4 -1 -1
       39 RETURN                           R4 -1
