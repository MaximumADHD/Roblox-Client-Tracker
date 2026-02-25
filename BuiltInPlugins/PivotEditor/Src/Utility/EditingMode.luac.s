MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETTABLEKS                       R2 R1 K3 ["Packages"]
       11 GETIMPORT                        R3 K5 [require]
       13 GETTABLEKS                       R4 R2 K6 ["enumerate"]
       15 CALL                             R3 1 1
       16 MOVE                             R4 R3
       17 LOADK                            R5 K7 ["EditingMode"]
       18 NEWTABLE                         R6 0 5
       20 LOADK                            R7 K8 ["None"]
       21 LOADK                            R8 K9 ["Transform"]
       22 LOADK                            R9 K10 ["SelectGeometry"]
       23 LOADK                            R10 K11 ["SelectSurface"]
       24 LOADK                            R11 K12 ["SelectPart"]
       25 SETLIST                          R6 R7 5 [1]
       27 CALL                             R4 2 -1
       28 RETURN                           R4 -1
