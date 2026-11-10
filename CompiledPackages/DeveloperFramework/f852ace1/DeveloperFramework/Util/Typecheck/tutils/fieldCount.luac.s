PROTO_0:
        0 LOADN                            R1 0
        1 GETIMPORT                        R2 K1 [pairs]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 ADDK                             R1 R1 K2 [1]
        7 FORGLOOP                         R2 1 ; [-2]
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
