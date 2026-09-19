MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 NEWTABLE                         R3 0 0
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R1 K6 ["JestTestResult"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K4 [require]
       21 GETTABLEKS                       R6 R1 K7 ["JestTypes"]
       23 CALL                             R5 1 1
       24 GETIMPORT                        R6 K4 [require]
       26 GETTABLEKS                       R7 R1 K8 ["RobloxShared"]
       28 CALL                             R6 1 1
       29 RETURN                           R3 1
