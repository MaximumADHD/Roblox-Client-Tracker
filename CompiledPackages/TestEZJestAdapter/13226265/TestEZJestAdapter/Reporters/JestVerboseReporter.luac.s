MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["JestReporters"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R2 R2 K6 ["VerboseReporter"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["JestReporterAdapter"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K8 ["createReporter"]
       23 GETTABLEKS                       R5 R2 K9 ["new"]
       25 DUPTABLE                         R6 K14 [{["rootDir"] = "", ["useStderr"] = False}]
       26 CALL                             R5 1 -1
       27 CALL                             R4 -1 -1
       28 RETURN                           R4 -1
