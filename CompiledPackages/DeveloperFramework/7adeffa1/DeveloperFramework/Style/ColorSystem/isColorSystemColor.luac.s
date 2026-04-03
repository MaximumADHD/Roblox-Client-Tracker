PROTO_0:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 GETIMPORT                        R6 K1 [pairs]
        7 MOVE                             R7 R5
        8 CALL                             R6 1 3
        9 FORGPREP_NEXT                    R6
       10 JUMPIFNOTEQ                      R0 R10 ; [+3]
       12 LOADB                            R11 1
       13 RETURN                           R11 1
       14 FORGLOOP                         R6 2 ; [-5]
       16 FORGLOOP                         R1 2 ; [-12]
       18 LOADB                            R1 0
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["Parent"]
        7 CALL                             R0 1 1
        8 DUPCLOSURE                       R1 K5 [PROTO_0]
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1
