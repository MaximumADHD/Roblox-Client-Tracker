PROTO_0:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETTABLE                         R7 R1 R5
        6 JUMPIF                           R7 ; [+2]
        7 LOADB                            R7 0
        8 RETURN                           R7 1
        9 FORGLOOP                         R2 1 ; [-5]
       11 GETIMPORT                        R2 K1 [pairs]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 3
       15 FORGPREP_NEXT                    R2
       16 GETTABLE                         R7 R0 R5
       17 JUMPIF                           R7 ; [+2]
       18 LOADB                            R7 0
       19 RETURN                           R7 1
       20 FORGLOOP                         R2 1 ; [-5]
       22 LOADB                            R2 1
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
