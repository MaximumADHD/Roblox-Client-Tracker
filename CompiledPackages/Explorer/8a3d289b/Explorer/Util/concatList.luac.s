PROTO_0:
        0 GETIMPORT                        R2 K2 [table.move]
        2 MOVE                             R3 R1
        3 LOADN                            R4 1
        4 LENGTH                           R5 R1
        5 LENGTH                           R7 R0
        6 ADDK                             R6 R7 K3 [1]
        7 MOVE                             R7 R0
        8 CALL                             R2 5 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
