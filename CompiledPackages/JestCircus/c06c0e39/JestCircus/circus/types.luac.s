MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Symbol"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 8 0
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R1 K6 ["JestTypes"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R1 K7 ["Expect"]
       25 CALL                             R5 1 1
       26 MOVE                             R6 R2
       27 LOADK                            R7 K8 ["JEST_STATE_SYMBOL"]
       28 CALL                             R6 1 1
       29 SETTABLEKS                       R6 R3 K9 ["STATE_SYM"]
       31 GETTABLEKS                       R7 R2 K10 ["for_"]
       33 LOADK                            R8 K11 ["RETRY_TIMES"]
       34 CALL                             R7 1 1
       35 SETTABLEKS                       R7 R3 K11 ["RETRY_TIMES"]
       37 GETTABLEKS                       R8 R2 K10 ["for_"]
       39 LOADK                            R9 K12 ["LOG_ERRORS_BEFORE_RETRY"]
       40 CALL                             R8 1 1
       41 SETTABLEKS                       R8 R3 K12 ["LOG_ERRORS_BEFORE_RETRY"]
       43 GETTABLEKS                       R9 R2 K10 ["for_"]
       45 LOADK                            R10 K13 ["WAIT_BEFORE_RETRY"]
       46 CALL                             R9 1 1
       47 SETTABLEKS                       R9 R3 K13 ["WAIT_BEFORE_RETRY"]
       49 GETTABLEKS                       R10 R2 K10 ["for_"]
       51 LOADK                            R11 K14 ["RETRY_IMMEDIATELY"]
       52 CALL                             R10 1 1
       53 SETTABLEKS                       R10 R3 K14 ["RETRY_IMMEDIATELY"]
       55 GETTABLEKS                       R11 R2 K10 ["for_"]
       57 LOADK                            R12 K15 ["TEST_TIMEOUT_SYMBOL"]
       58 CALL                             R11 1 1
       59 SETTABLEKS                       R11 R3 K15 ["TEST_TIMEOUT_SYMBOL"]
       61 RETURN                           R3 1
