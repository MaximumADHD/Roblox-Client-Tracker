MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R2 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Symbol"]
       16 NEWTABLE                         R4 4 0
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R1 K7 ["JestTypes"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R1 K8 ["Expect"]
       27 CALL                             R6 1 1
       28 MOVE                             R7 R3
       29 LOADK                            R8 K9 ["JEST_STATE_SYMBOL"]
       30 CALL                             R7 1 1
       31 SETTABLEKS                       R7 R4 K10 ["STATE_SYM"]
       33 GETTABLEKS                       R8 R3 K11 ["for_"]
       35 LOADK                            R9 K12 ["RETRY_TIMES"]
       36 CALL                             R8 1 1
       37 SETTABLEKS                       R8 R4 K12 ["RETRY_TIMES"]
       39 GETTABLEKS                       R9 R3 K11 ["for_"]
       41 LOADK                            R10 K13 ["TEST_TIMEOUT_SYMBOL"]
       42 CALL                             R9 1 1
       43 SETTABLEKS                       R9 R4 K13 ["TEST_TIMEOUT_SYMBOL"]
       45 RETURN                           R4 1
