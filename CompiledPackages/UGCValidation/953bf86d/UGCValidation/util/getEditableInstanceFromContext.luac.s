PROTO_0:
        0 JUMPIF                           R2 ; [+13]
        1 GETTABLEKS                       R4 R3 K0 ["isServer"]
        3 JUMPIFNOT                        R4 ; [+8]
        4 GETIMPORT                        R4 K2 [error]
        6 GETIMPORT                        R5 K5 [string.format]
        8 LOADK                            R6 K6 ["Failed to load texture data"]
        9 CALL                             R5 1 -1
       10 CALL                             R4 -1 0
       11 JUMP                             ; [+2]
       12 LOADB                            R4 0
       13 RETURN                           R4 1
       14 GETTABLE                         R4 R2 R0
       15 JUMPIF                           R4 ; [+16]
       16 GETTABLE                         R5 R0 R1
       17 JUMPIFNOT                        R5 ; [+2]
       18 JUMPIFNOTEQKS                    R5 K7 [""] ; [+3]
       20 LOADB                            R6 0
       21 RETURN                           R6 1
       22 GETTABLEKS                       R6 R3 K0 ["isServer"]
       24 JUMPIFNOT                        R6 ; [+7]
       25 GETIMPORT                        R6 K2 [error]
       27 GETIMPORT                        R7 K5 [string.format]
       29 LOADK                            R8 K6 ["Failed to load texture data"]
       30 CALL                             R7 1 -1
       31 CALL                             R6 -1 0
       32 GETTABLE                         R5 R4 R1
       33 JUMPIFNOT                        R5 ; [+3]
       34 GETTABLEKS                       R6 R5 K8 ["instance"]
       36 JUMPIF                           R6 ; [+19]
       37 GETTABLE                         R6 R0 R1
       38 JUMPIFNOT                        R6 ; [+2]
       39 JUMPIFNOTEQKS                    R6 K7 [""] ; [+3]
       41 LOADB                            R7 0
       42 RETURN                           R7 1
       43 GETTABLEKS                       R7 R3 K0 ["isServer"]
       45 JUMPIFNOT                        R7 ; [+8]
       46 GETIMPORT                        R7 K2 [error]
       48 GETIMPORT                        R8 K5 [string.format]
       50 LOADK                            R9 K6 ["Failed to load texture data"]
       51 CALL                             R8 1 -1
       52 CALL                             R7 -1 0
       53 JUMP                             ; [+2]
       54 LOADB                            R7 0
       55 RETURN                           R7 1
       56 LOADB                            R6 1
       57 GETTABLEKS                       R7 R5 K8 ["instance"]
       59 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 RETURN                           R2 1
