PROTO_0:
        0 NOT                              R2 R0
        1 NOT                              R1 R2
        2 JUMPIFNOT                        R1 ; [+12]
        3 LOADB                            R1 0
        4 JUMPIFEQKN                       R0 K0 [0] ; [+10]
        6 LOADB                            R1 0
        7 JUMPIFEQKS                       R0 K1 [""] ; [+7]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["isNaN"]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 NOT                              R1 R2
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Number"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 CAPTURE                          VAL R1
       14 RETURN                           R2 1
