PROTO_0:
        0 PREPVARARGS                      2
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETIMPORT                        R2 K2 [coroutine.status]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIFEQKS                       R2 K3 ["dead"] ; [+3]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETVARARGS                       R2 -1
       13 RETURN                           R2 -1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 GETIMPORT                        R2 K3 [coroutine.create]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 MOVE                             R3 R1
        6 MOVE                             R4 R2
        7 GETIMPORT                        R5 K5 [coroutine.resume]
        9 MOVE                             R6 R2
       10 CALL                             R5 1 -1
       11 CALL                             R3 -1 -1
       12 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
