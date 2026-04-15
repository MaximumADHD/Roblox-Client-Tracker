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
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 SETGLOBAL                        R0 K1 ["reverse"]
        4 GETGLOBAL                        R0 K1 ["reverse"]
        6 RETURN                           R0 1
