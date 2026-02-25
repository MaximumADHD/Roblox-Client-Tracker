MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["JestFakeTimers"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["JestTypes"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["JestMock"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K9 ["fn"]
       27 GETTABLEKS                       R6 R4 K10 ["mocked"]
       29 GETTABLEKS                       R7 R4 K11 ["spyOn"]
       31 GETIMPORT                        R8 K4 [require]
       33 GETTABLEKS                       R9 R0 K12 ["JestMockGenv"]
       35 CALL                             R8 1 1
       36 NEWTABLE                         R9 0 0
       38 RETURN                           R9 1
