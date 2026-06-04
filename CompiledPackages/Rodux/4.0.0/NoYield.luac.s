PROTO_0:
        0 PREPVARARGS                      2
        1 JUMPIF                           R1 ; [+10]
        2 GETVARARGS                       R2 1
        3 GETIMPORT                        R3 K1 [error]
        5 GETIMPORT                        R4 K4 [debug.traceback]
        7 MOVE                             R5 R0
        8 MOVE                             R6 R2
        9 CALL                             R4 2 1
       10 LOADN                            R5 2
       11 CALL                             R3 2 0
       12 GETIMPORT                        R2 K7 [coroutine.status]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 JUMPIFEQKS                       R2 K8 ["dead"] ; [+10]
       18 GETIMPORT                        R2 K1 [error]
       20 GETIMPORT                        R3 K4 [debug.traceback]
       22 MOVE                             R4 R0
       23 LOADK                            R5 K9 ["Attempted to yield inside changed event!"]
       24 CALL                             R3 2 1
       25 LOADN                            R4 2
       26 CALL                             R2 2 0
       27 GETVARARGS                       R2 -1
       28 RETURN                           R2 -1

PROTO_1:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K2 [coroutine.create]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 GETIMPORT                        R4 K4 [coroutine.resume]
        9 MOVE                             R5 R1
       10 GETVARARGS                       R6 -1
       11 CALL                             R4 -1 -1
       12 CALL                             R2 -1 -1
       13 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
