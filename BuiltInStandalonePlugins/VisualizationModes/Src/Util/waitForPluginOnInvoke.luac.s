PROTO_0:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K2 [coroutine.status]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 1
        6 JUMPIFNOTEQKS                    R0 K3 ["suspended"] ; [+5]
        8 GETIMPORT                        R0 K5 [coroutine.resume]
       10 GETUPVAL                         R1 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R3 K2 [coroutine.running]
        2 CALL                             R3 0 1
        3 LOADB                            R4 0
        4 MOVE                             R7 R1
        5 NEWCLOSURE                       R8 P0
        6 CAPTURE                          REF R4
        7 CAPTURE                          VAL R3
        8 NAMECALL                         R5 R0 K3 ["OnInvoke"]
       10 CALL                             R5 3 1
       11 JUMPIFNOT                        R2 ; [+2]
       12 MOVE                             R6 R2
       13 CALL                             R6 0 0
       14 JUMPIF                           R4 ; [+3]
       15 GETIMPORT                        R6 K5 [coroutine.yield]
       17 CALL                             R6 0 0
       18 NAMECALL                         R6 R5 K6 ["Disconnect"]
       20 CALL                             R6 1 0
       21 CLOSEUPVALS                      R4
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
