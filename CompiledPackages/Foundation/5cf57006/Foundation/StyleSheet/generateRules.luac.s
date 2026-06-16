PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 MOVE                             R3 R1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R2
        6 CALL                             R3 2 3
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K0 ["joinArrays"]
       10 MOVE                             R7 R3
       11 MOVE                             R8 R4
       12 MOVE                             R9 R5
       13 CALL                             R6 3 1
       14 MOVE                             R7 R6
       15 MOVE                             R8 R3
       16 MOVE                             R9 R4
       17 MOVE                             R10 R5
       18 RETURN                           R7 4

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Providers"]
       18 GETTABLEKS                       R4 R4 K9 ["Style"]
       20 GETTABLEKS                       R4 R4 K10 ["Tokens"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K11 ["Rules"]
       31 GETTABLEKS                       R5 R5 K12 ["Types"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETIMPORT                        R6 K1 [script]
       38 GETTABLEKS                       R6 R6 K4 ["Parent"]
       40 GETTABLEKS                       R6 R6 K13 ["formatTokens"]
       42 CALL                             R5 1 1
       43 DUPCLOSURE                       R6 K14 [PROTO_0]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R2
       46 RETURN                           R6 1
