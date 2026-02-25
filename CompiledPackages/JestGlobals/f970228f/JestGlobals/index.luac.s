MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Error"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["JestEnvironment"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R0 K8 ["Expect"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K4 [require]
       26 GETTABLEKS                       R6 R0 K9 ["JestTypes"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K4 [require]
       31 GETTABLEKS                       R7 R0 K8 ["Expect"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K11 [error]
       36 GETTABLEKS                       R8 R2 K12 ["new"]
       38 LOADK                            R9 K13 ["Do not import `JestGlobals` outside of the Jest 3 test environment.\nTip: Jest 2 uses a different pattern - check your Jest version."]
       39 CALL                             R8 1 -1
       40 CALL                             R7 -1 0
       41 NEWTABLE                         R7 0 0
       43 RETURN                           R7 1
