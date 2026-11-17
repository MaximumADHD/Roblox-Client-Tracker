PROTO_0:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
        5 GETIMPORT                        R1 K1 [unpack]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R0 1
        8 JUMPIFNOT                        R0 ; [+15]
        9 GETUPVAL                         R0 2
       10 JUMPIFEQKNIL                     R0 ; [+11]
       12 GETIMPORT                        R0 K2 [coroutine.status]
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 1
       16 JUMPIFNOTEQKS                    R0 K3 ["suspended"] ; [+5]
       18 GETIMPORT                        R0 K6 [task.cancel]
       20 GETUPVAL                         R1 2
       21 CALL                             R0 1 0
       22 LOADB                            R0 0
       23 SETUPVAL                         R0 1
       24 GETUPVAL                         R0 1
       25 JUMPIF                           R0 ; [+11]
       26 LOADB                            R0 1
       27 SETUPVAL                         R0 1
       28 GETIMPORT                        R0 K8 [task.delay]
       30 GETUPVAL                         R1 3
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U0
       35 CALL                             R0 2 1
       36 SETUPVAL                         R0 2
       37 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R2
        1 LOADB                            R3 0
        2 LOADNIL                          R4
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          REF R2
        5 CAPTURE                          REF R3
        6 CAPTURE                          REF R4
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 CLOSEUPVALS                      R2
       10 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
