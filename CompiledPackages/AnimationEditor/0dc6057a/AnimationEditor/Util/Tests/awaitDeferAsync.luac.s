PROTO_0:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 GETIMPORT                        R1 K5 [coroutine.resume]
        4 GETIMPORT                        R2 K7 [coroutine.running]
        6 CALL                             R2 0 -1
        7 CALL                             R0 -1 0
        8 GETIMPORT                        R0 K9 [coroutine.yield]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
