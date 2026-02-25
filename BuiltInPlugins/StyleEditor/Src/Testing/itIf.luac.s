PROTO_0:
        0 LOADB                            R1 1
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 AND                              R1 R1 R6
        6 FORGLOOP                         R2 2 ; [-2]
        8 JUMPIFNOT                        R1 ; [+2]
        9 GETUPVAL                         R2 0
       10 RETURN                           R2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["skip"]
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Packages"]
       13 GETTABLEKS                       R3 R4 K6 ["Dev"]
       15 GETTABLEKS                       R2 R3 K7 ["JestGlobals"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K8 ["it"]
       20 DUPCLOSURE                       R3 K9 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1
