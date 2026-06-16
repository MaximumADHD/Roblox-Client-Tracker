PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K2 [os.clock]
        4 CALL                             R0 0 1
        5 SETUPVAL                         R0 1
        6 GETIMPORT                        R0 K5 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CALL                             R0 1 1
       12 SETUPVAL                         R0 2
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 4
       15 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 SETUPVAL                         R0 4
        7 GETUPVAL                         R2 0
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R0 0
       10 GETIMPORT                        R2 K2 [os.clock]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R4 1
       14 GETUPVAL                         R5 5
       15 ADD                              R3 R4 R5
       16 JUMPIFNOTLT                      R3 R2 ; [+26]
       18 GETUPVAL                         R2 6
       19 JUMPIFNOT                        R2 ; [+7]
       20 GETUPVAL                         R2 2
       21 JUMPIFEQKNIL                     R2 ; [+5]
       23 GETIMPORT                        R2 K5 [task.cancel]
       25 GETUPVAL                         R3 2
       26 CALL                             R2 1 0
       27 LOADB                            R2 0
       28 SETUPVAL                         R2 0
       29 GETIMPORT                        R2 K2 [os.clock]
       31 CALL                             R2 0 1
       32 SETUPVAL                         R2 1
       33 GETIMPORT                        R2 K7 [task.spawn]
       35 NEWCLOSURE                       R3 P1
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U4
       38 CALL                             R2 1 1
       39 SETUPVAL                         R2 2
       40 LOADNIL                          R2
       41 SETUPVAL                         R2 4
       42 RETURN                           R0 0
       43 LOADB                            R2 1
       44 SETUPVAL                         R2 0
       45 GETIMPORT                        R2 K9 [task.delay]
       47 GETUPVAL                         R3 5
       48 MOVE                             R4 R1
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R3
        1 LOADB                            R4 0
        2 LOADK                            R5 K0 [-∞]
        3 LOADNIL                          R6
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          REF R4
        6 CAPTURE                          REF R5
        7 CAPTURE                          REF R6
        8 CAPTURE                          VAL R0
        9 CAPTURE                          REF R3
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 CLOSEUPVALS                      R3
       13 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
