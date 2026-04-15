MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K2 ["Parent"]
       20 GETTABLEKS                       R4 R5 K2 ["Parent"]
       22 GETTABLEKS                       R3 R4 K6 ["ReactElementType"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETIMPORT                        R7 K1 [script]
       29 GETTABLEKS                       R6 R7 K2 ["Parent"]
       31 GETTABLEKS                       R5 R6 K2 ["Parent"]
       33 GETTABLEKS                       R4 R5 K7 ["ReactTypes"]
       35 CALL                             R3 1 1
       36 DUPTABLE                         R4 K9 [{"current"}]
       37 LOADNIL                          R5
       38 SETTABLEKS                       R5 R4 K8 ["current"]
       40 RETURN                           R4 1
