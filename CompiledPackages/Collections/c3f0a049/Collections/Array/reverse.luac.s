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
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R2 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["ES7Types"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K6 [PROTO_0]
       15 RETURN                           R3 1
