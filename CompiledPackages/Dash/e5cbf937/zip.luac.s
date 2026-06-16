PROTO_0:
        0 GETIMPORT                        R0 K1 [next]
        2 GETUPVAL                         R1 2
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 2
        5 SETUPVAL                         R0 0
        6 SETUPVAL                         R1 1
        7 GETIMPORT                        R0 K1 [next]
        9 GETUPVAL                         R1 5
       10 GETUPVAL                         R2 3
       11 CALL                             R0 2 2
       12 SETUPVAL                         R0 3
       13 SETUPVAL                         R1 4
       14 GETUPVAL                         R0 1
       15 JUMPIFNOT                        R0 ; [+2]
       16 GETUPVAL                         R0 4
       17 JUMPIF                           R0 ; [+2]
       18 LOADNIL                          R0
       19 RETURN                           R0 1
       20 GETUPVAL                         R0 1
       21 GETUPVAL                         R1 4
       22 RETURN                           R0 2

PROTO_1:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          REF R4
        7 CAPTURE                          VAL R0
        8 CAPTURE                          REF R3
        9 CAPTURE                          REF R5
       10 CAPTURE                          VAL R1
       11 CLOSEUPVALS                      R2
       12 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
