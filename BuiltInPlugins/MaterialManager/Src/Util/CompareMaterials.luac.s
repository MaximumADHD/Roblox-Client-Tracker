PROTO_0:
        0 JUMPIF                           R0 ; [+3]
        1 JUMPIF                           R1 ; [+2]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 JUMPIFNOT                        R0 ; [+1]
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K0 ["MaterialVariant"]
       10 JUMPIFNOT                        R2 ; [+12]
       11 GETTABLEKS                       R2 R1 K0 ["MaterialVariant"]
       13 JUMPIFNOT                        R2 ; [+9]
       14 GETTABLEKS                       R3 R0 K0 ["MaterialVariant"]
       16 GETTABLEKS                       R4 R1 K0 ["MaterialVariant"]
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1
       23 GETTABLEKS                       R2 R0 K0 ["MaterialVariant"]
       25 JUMPIFNOT                        R2 ; [+3]
       26 GETTABLEKS                       R2 R1 K0 ["MaterialVariant"]
       28 JUMPIFNOT                        R2 ; [+6]
       29 GETTABLEKS                       R2 R0 K0 ["MaterialVariant"]
       31 JUMPIF                           R2 ; [+5]
       32 GETTABLEKS                       R2 R1 K0 ["MaterialVariant"]
       34 JUMPIFNOT                        R2 ; [+2]
       35 LOADB                            R2 0
       36 RETURN                           R2 1
       37 GETTABLEKS                       R3 R0 K1 ["Material"]
       39 GETTABLEKS                       R4 R1 K1 ["Material"]
       41 JUMPIFEQ                         R3 R4 ; [+2]
       43 LOADB                            R2 0 +1
       44 LOADB                            R2 1
       45 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_0]
       17 RETURN                           R2 1
