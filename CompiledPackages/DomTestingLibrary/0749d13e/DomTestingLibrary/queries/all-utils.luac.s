MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Object"]
       16 NEWTABLE                         R3 0 0
       18 GETTABLEKS                       R4 R2 K7 ["assign"]
       20 MOVE                             R5 R3
       21 GETIMPORT                        R6 K4 [require]
       23 GETIMPORT                        R7 K1 [script]
       25 GETTABLEKS                       R7 R7 K2 ["Parent"]
       27 GETTABLEKS                       R7 R7 K2 ["Parent"]
       29 GETTABLEKS                       R7 R7 K8 ["matches"]
       31 CALL                             R6 1 -1
       32 CALL                             R4 -1 0
       33 GETTABLEKS                       R4 R2 K7 ["assign"]
       35 MOVE                             R5 R3
       36 GETIMPORT                        R6 K4 [require]
       38 GETIMPORT                        R8 K1 [script]
       40 GETTABLEKS                       R8 R8 K2 ["Parent"]
       42 GETTABLEKS                       R8 R8 K2 ["Parent"]
       44 GETTABLEKS                       R7 R8 K9 ["get-node-text"]
       46 CALL                             R6 1 -1
       47 CALL                             R4 -1 0
       48 GETTABLEKS                       R4 R2 K7 ["assign"]
       50 MOVE                             R5 R3
       51 GETIMPORT                        R6 K4 [require]
       53 GETIMPORT                        R8 K1 [script]
       55 GETTABLEKS                       R8 R8 K2 ["Parent"]
       57 GETTABLEKS                       R8 R8 K2 ["Parent"]
       59 GETTABLEKS                       R7 R8 K10 ["query-helpers"]
       61 CALL                             R6 1 -1
       62 CALL                             R4 -1 0
       63 GETTABLEKS                       R4 R2 K7 ["assign"]
       65 MOVE                             R5 R3
       66 GETIMPORT                        R6 K4 [require]
       68 GETIMPORT                        R7 K1 [script]
       70 GETTABLEKS                       R7 R7 K2 ["Parent"]
       72 GETTABLEKS                       R7 R7 K2 ["Parent"]
       74 GETTABLEKS                       R7 R7 K11 ["config"]
       76 CALL                             R6 1 -1
       77 CALL                             R4 -1 0
       78 RETURN                           R3 1
