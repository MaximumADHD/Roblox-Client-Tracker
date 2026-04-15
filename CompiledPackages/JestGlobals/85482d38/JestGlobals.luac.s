MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K6 ["Object"]
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Expect"]
       16 CALL                             R3 1 1
       17 GETIMPORT                        R4 K4 [require]
       19 GETTABLEKS                       R5 R0 K8 ["Jest"]
       21 CALL                             R4 1 1
       22 GETIMPORT                        R5 K4 [require]
       24 GETTABLEKS                       R6 R0 K9 ["JestSnapshot"]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K4 [require]
       29 GETTABLEKS                       R7 R0 K10 ["TestEZ"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K4 [require]
       34 GETTABLEKS                       R8 R0 K11 ["TestEZJestAdapter"]
       36 CALL                             R7 1 1
       37 DUPTABLE                         R8 K16 [{"expect", "jest", "testEnv", "jestSnapshot", "TestEZ"}]
       38 SETTABLEKS                       R3 R8 K12 ["expect"]
       40 SETTABLEKS                       R4 R8 K13 ["jest"]
       42 GETTABLEKS                       R9 R4 K14 ["testEnv"]
       44 SETTABLEKS                       R9 R8 K14 ["testEnv"]
       46 DUPTABLE                         R9 K19 [{"toMatchSnapshot", "toThrowErrorMatchingSnapshot"}]
       47 GETTABLEKS                       R10 R5 K17 ["toMatchSnapshot"]
       49 SETTABLEKS                       R10 R9 K17 ["toMatchSnapshot"]
       51 GETTABLEKS                       R10 R5 K18 ["toThrowErrorMatchingSnapshot"]
       53 SETTABLEKS                       R10 R9 K18 ["toThrowErrorMatchingSnapshot"]
       55 SETTABLEKS                       R9 R8 K15 ["jestSnapshot"]
       57 GETTABLEKS                       R9 R2 K20 ["assign"]
       59 NEWTABLE                         R10 0 0
       61 MOVE                             R11 R6
       62 DUPTABLE                         R12 K22 [{"Reporters"}]
       63 GETTABLEKS                       R13 R2 K20 ["assign"]
       65 NEWTABLE                         R14 0 0
       67 GETTABLEKS                       R15 R6 K21 ["Reporters"]
       69 GETTABLEKS                       R16 R7 K21 ["Reporters"]
       71 CALL                             R13 3 1
       72 SETTABLEKS                       R13 R12 K21 ["Reporters"]
       74 CALL                             R9 3 1
       75 SETTABLEKS                       R9 R8 K10 ["TestEZ"]
       77 RETURN                           R8 1
