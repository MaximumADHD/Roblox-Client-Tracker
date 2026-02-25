PROTO_0:
        0 PREPVARARGS                      0
        1 LOADB                            R1 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["Function wrapped in onlyOnce called twice"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 0
        9 GETVARARGS                       R1 -1
       10 CALL                             R0 -1 -1
       11 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
