PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 1
        3 GETIMPORT                        R3 K1 [pairs]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 SETTABLE                         R6 R1 R2
        9 ADDK                             R2 R2 K2 [1]
       10 FORGLOOP                         R3 1 ; [-3]
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
