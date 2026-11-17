PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETIMPORT                        R0 K2 [task.cancel]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 GETIMPORT                        R0 K4 [task.delay]
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R2 2
       13 GETVARARGS                       R3 -1
       14 CALL                             R0 -1 1
       15 SETUPVAL                         R0 0
       16 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R2
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R2
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 CLOSEUPVALS                      R2
        6 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
