MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["JestEnvironment"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Expect"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K7 ["JestTypes"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K9 [error]
       24 LOADK                            R5 K10 ["Do not import `JestGlobals` outside of the Jest 3 test environment.\nTip: Jest 2 uses a different pattern - check your Jest version."]
       25 CALL                             R4 1 0
       26 NEWTABLE                         R4 0 0
       28 RETURN                           R4 1
