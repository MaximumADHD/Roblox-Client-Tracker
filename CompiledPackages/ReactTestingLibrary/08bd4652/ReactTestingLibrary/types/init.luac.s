MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Object"]
       14 NEWTABLE                         R3 0 0
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["DomTestingLibrary"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R5 R4 K8 ["queries"]
       23 GETIMPORT                        R6 K4 [require]
       25 GETIMPORT                        R9 K1 [script]
       27 GETTABLEKS                       R9 R9 K2 ["Parent"]
       29 GETTABLEKS                       R9 R9 K11 ["jsHelpers"]
       31 GETTABLEKS                       R8 R9 K10 ["react-dom"]
       33 GETTABLEKS                       R7 R8 K9 ["test-utils"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R6 R6 K12 ["act"]
       38 GETTABLEKS                       R7 R2 K13 ["assign"]
       40 MOVE                             R8 R3
       41 GETIMPORT                        R9 K4 [require]
       43 GETTABLEKS                       R10 R0 K7 ["DomTestingLibrary"]
       45 CALL                             R9 1 -1
       46 CALL                             R7 -1 0
       47 RETURN                           R3 1
