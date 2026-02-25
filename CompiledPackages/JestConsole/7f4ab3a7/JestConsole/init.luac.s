MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 NEWTABLE                         R1 8 0
        5 GETIMPORT                        R2 K3 [require]
        7 GETTABLEKS                       R3 R0 K4 ["helpers"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K4 ["helpers"]
       12 GETIMPORT                        R2 K3 [require]
       14 GETTABLEKS                       R3 R0 K5 ["Console"]
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K5 ["Console"]
       19 GETIMPORT                        R3 K3 [require]
       21 GETTABLEKS                       R4 R0 K6 ["BufferedConsole"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R3 K7 ["default"]
       26 SETTABLEKS                       R4 R1 K6 ["BufferedConsole"]
       28 GETIMPORT                        R4 K3 [require]
       30 GETTABLEKS                       R5 R0 K8 ["CustomConsole"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R4 K7 ["default"]
       35 SETTABLEKS                       R5 R1 K8 ["CustomConsole"]
       37 GETIMPORT                        R5 K3 [require]
       39 GETTABLEKS                       R6 R0 K9 ["NullConsole"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K7 ["default"]
       44 SETTABLEKS                       R6 R1 K9 ["NullConsole"]
       46 GETIMPORT                        R7 K3 [require]
       48 GETTABLEKS                       R8 R0 K10 ["getConsoleOutput"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R6 R7 K7 ["default"]
       53 SETTABLEKS                       R6 R1 K10 ["getConsoleOutput"]
       55 GETIMPORT                        R6 K3 [require]
       57 GETTABLEKS                       R7 R0 K11 ["types"]
       59 CALL                             R6 1 1
       60 RETURN                           R1 1
