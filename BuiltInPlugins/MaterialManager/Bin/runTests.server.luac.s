MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["commonInit"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 CALL                             R2 0 0
       18 GETIMPORT                        R2 K4 [require]
       20 GETIMPORT                        R3 K1 [script]
       22 GETTABLEKS                       R3 R3 K2 ["Parent"]
       24 GETTABLEKS                       R3 R3 K6 ["defineLuaFlags"]
       26 CALL                             R2 1 0
       27 GETIMPORT                        R2 K4 [require]
       29 GETTABLEKS                       R3 R0 K7 ["Packages"]
       31 GETTABLEKS                       R3 R3 K8 ["TestLoader"]
       33 CALL                             R2 1 1
       34 GETTABLEKS                       R3 R2 K9 ["launch"]
       36 GETTABLEKS                       R4 R0 K10 ["Name"]
       38 GETTABLEKS                       R5 R0 K11 ["Src"]
       40 CALL                             R3 2 0
       41 RETURN                           R0 0
