MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["Symbol"]
       18 CALL                             R3 1 1
       19 NEWTABLE                         R4 8 0
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R1 K7 ["JestTypes"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K4 [require]
       28 GETTABLEKS                       R7 R1 K8 ["Expect"]
       30 CALL                             R6 1 1
       31 MOVE                             R7 R3
       32 LOADK                            R8 K9 ["JEST_STATE_SYMBOL"]
       33 CALL                             R7 1 1
       34 SETTABLEKS                       R7 R4 K10 ["STATE_SYM"]
       36 GETTABLEKS                       R8 R3 K11 ["for_"]
       38 LOADK                            R9 K12 ["RETRY_TIMES"]
       39 CALL                             R8 1 1
       40 SETTABLEKS                       R8 R4 K12 ["RETRY_TIMES"]
       42 GETTABLEKS                       R9 R3 K11 ["for_"]
       44 LOADK                            R10 K13 ["LOG_ERRORS_BEFORE_RETRY"]
       45 CALL                             R9 1 1
       46 SETTABLEKS                       R9 R4 K13 ["LOG_ERRORS_BEFORE_RETRY"]
       48 GETTABLEKS                       R10 R3 K11 ["for_"]
       50 LOADK                            R11 K14 ["WAIT_BEFORE_RETRY"]
       51 CALL                             R10 1 1
       52 SETTABLEKS                       R10 R4 K14 ["WAIT_BEFORE_RETRY"]
       54 GETTABLEKS                       R11 R3 K11 ["for_"]
       56 LOADK                            R12 K15 ["RETRY_IMMEDIATELY"]
       57 CALL                             R11 1 1
       58 SETTABLEKS                       R11 R4 K15 ["RETRY_IMMEDIATELY"]
       60 GETTABLEKS                       R12 R3 K11 ["for_"]
       62 LOADK                            R13 K16 ["TEST_TIMEOUT_SYMBOL"]
       63 CALL                             R12 1 1
       64 SETTABLEKS                       R12 R4 K16 ["TEST_TIMEOUT_SYMBOL"]
       66 RETURN                           R4 1
