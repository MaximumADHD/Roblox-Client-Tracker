MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["enumerate"]
       13 CALL                             R2 1 1
       14 MOVE                             R3 R2
       15 LOADK                            R4 K6 ["ViewType"]
       16 NEWTABLE                         R5 0 2
       18 LOADK                            R6 K7 ["Grid"]
       19 LOADK                            R7 K8 ["List"]
       20 SETLIST                          R5 R6 2 [1]
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1
