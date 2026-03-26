PROTO_0:
        0 JUMPIFNOT                        R0 ; [+9]
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETUPVAL                         R2 0
        3 LOADK                            R5 K0 [" "]
        4 NAMECALL                         R3 R0 K1 ["split"]
        6 CALL                             R3 2 1
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 RETURN                           R2 1
       10 LOADB                            R2 0
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["includes"]
       16 DUPCLOSURE                       R3 K7 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
