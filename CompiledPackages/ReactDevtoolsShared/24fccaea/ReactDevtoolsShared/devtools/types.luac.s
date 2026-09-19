MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K2 ["Parent"]
       20 GETTABLEKS                       R3 R3 K2 ["Parent"]
       22 GETTABLEKS                       R3 R3 K6 ["devtools"]
       24 GETTABLEKS                       R3 R3 K7 ["views"]
       26 GETTABLEKS                       R3 R3 K8 ["Components"]
       28 GETTABLEKS                       R3 R3 K9 ["types"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K4 [require]
       33 GETIMPORT                        R4 K1 [script]
       35 GETTABLEKS                       R4 R4 K2 ["Parent"]
       37 GETTABLEKS                       R4 R4 K2 ["Parent"]
       39 GETTABLEKS                       R4 R4 K9 ["types"]
       41 CALL                             R3 1 1
       42 GETIMPORT                        R4 K4 [require]
       44 GETIMPORT                        R5 K1 [script]
       46 GETTABLEKS                       R5 R5 K2 ["Parent"]
       48 GETTABLEKS                       R5 R5 K2 ["Parent"]
       50 GETTABLEKS                       R5 R5 K10 ["events"]
       52 CALL                             R4 1 1
       53 GETIMPORT                        R5 K4 [require]
       55 GETIMPORT                        R6 K1 [script]
       57 GETTABLEKS                       R6 R6 K2 ["Parent"]
       59 GETTABLEKS                       R6 R6 K2 ["Parent"]
       61 GETTABLEKS                       R6 R6 K11 ["bridge"]
       63 CALL                             R5 1 1
       64 GETIMPORT                        R6 K4 [require]
       66 GETIMPORT                        R7 K1 [script]
       68 GETTABLEKS                       R7 R7 K2 ["Parent"]
       70 GETTABLEKS                       R7 R7 K2 ["Parent"]
       72 GETTABLEKS                       R7 R7 K12 ["backend"]
       74 GETTABLEKS                       R7 R7 K9 ["types"]
       76 CALL                             R6 1 1
       77 GETIMPORT                        R7 K4 [require]
       79 GETIMPORT                        R8 K1 [script]
       81 GETTABLEKS                       R8 R8 K2 ["Parent"]
       83 GETTABLEKS                       R8 R8 K7 ["views"]
       85 GETTABLEKS                       R8 R8 K13 ["Profiler"]
       87 GETTABLEKS                       R8 R8 K9 ["types"]
       89 CALL                             R7 1 1
       90 LOADB                            R8 1
       91 RETURN                           R8 1
