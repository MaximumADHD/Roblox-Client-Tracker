PROTO_0:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 1
        2 JUMPIFNOTLT                      R2 R1 ; [+8]
        4 GETTABLE                         R3 R0 R1
        5 GETTABLE                         R4 R0 R2
        6 SETTABLE                         R3 R0 R2
        7 SETTABLE                         R4 R0 R1
        8 ADDK                             R2 R2 K0 [1]
        9 SUBK                             R1 R1 K0 [1]
       10 JUMPBACK                         ; [-9]
       11 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 RETURN                           R2 1
