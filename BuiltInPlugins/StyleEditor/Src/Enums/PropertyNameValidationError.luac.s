MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["enumerate"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R4 K8 ["Types"]
       22 CALL                             R2 1 1
       23 MOVE                             R3 R1
       24 LOADK                            R4 K9 ["PropertyNameValidationError"]
       25 NEWTABLE                         R5 0 4
       27 LOADK                            R6 K10 ["None"]
       28 LOADK                            R7 K11 ["DoesNotExist"]
       29 LOADK                            R8 K12 ["DoesNotExistOnType"]
       30 LOADK                            R9 K13 ["AlreadyDefined"]
       31 SETLIST                          R5 R6 4 [1]
       33 CALL                             R3 2 1
       34 RETURN                           R3 1
