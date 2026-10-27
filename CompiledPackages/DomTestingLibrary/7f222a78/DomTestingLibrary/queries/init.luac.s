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
       16 GETTABLEKS                       R4 R2 K7 ["assign"]
       18 MOVE                             R5 R3
       19 GETIMPORT                        R6 K4 [require]
       21 GETIMPORT                        R8 K1 [script]
       23 GETTABLEKS                       R7 R8 K8 ["placeholder-text"]
       25 CALL                             R6 1 -1
       26 CALL                             R4 -1 0
       27 GETTABLEKS                       R4 R2 K7 ["assign"]
       29 MOVE                             R5 R3
       30 GETIMPORT                        R6 K4 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R7 R7 K9 ["text"]
       36 CALL                             R6 1 -1
       37 CALL                             R4 -1 0
       38 GETTABLEKS                       R4 R2 K7 ["assign"]
       40 MOVE                             R5 R3
       41 GETIMPORT                        R6 K4 [require]
       43 GETIMPORT                        R8 K1 [script]
       45 GETTABLEKS                       R7 R8 K10 ["display-value"]
       47 CALL                             R6 1 -1
       48 CALL                             R4 -1 0
       49 GETTABLEKS                       R4 R2 K7 ["assign"]
       51 MOVE                             R5 R3
       52 GETIMPORT                        R6 K4 [require]
       54 GETIMPORT                        R8 K1 [script]
       56 GETTABLEKS                       R7 R8 K11 ["test-id"]
       58 CALL                             R6 1 -1
       59 CALL                             R4 -1 0
       60 RETURN                           R3 1
