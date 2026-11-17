PROTO_0:
        0 GETIMPORT                        R0 K2 [coroutine.running]
        2 CALL                             R0 0 1
        3 GETIMPORT                        R1 K5 [task.defer]
        5 GETIMPORT                        R2 K7 [task.spawn]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 0
        9 GETIMPORT                        R1 K9 [coroutine.yield]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
