PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 JUMPIFNOTEQ                      R2 R0 ; [+7]
        4 LOADB                            R2 0
        5 SETUPVAL                         R2 1
        6 JUMPIF                           R1 ; [+3]
        7 GETUPVAL                         R2 2
        8 GETVARARGS                       R3 -1
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+3]
        3 LOADB                            R1 0
        4 SETUPVAL                         R1 1
        5 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 ADDK                             R0 R0 K0 [1]
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["leading"]
        8 JUMPIFNOT                        R1 ; [+2]
        9 GETUPVAL                         R2 2
       10 NOT                              R1 R2
       11 GETUPVAL                         R2 3
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETIMPORT                        R2 K4 [task.cancel]
       15 GETUPVAL                         R3 3
       16 CALL                             R2 1 0
       17 LOADNIL                          R2
       18 SETUPVAL                         R2 3
       19 JUMPIFNOT                        R1 ; [+5]
       20 LOADB                            R2 1
       21 SETUPVAL                         R2 2
       22 GETUPVAL                         R2 4
       23 GETVARARGS                       R3 -1
       24 CALL                             R2 -1 0
       25 GETIMPORT                        R2 K6 [task.delay]
       27 GETUPVAL                         R3 5
       28 GETUPVAL                         R4 6
       29 MOVE                             R5 R0
       30 MOVE                             R6 R1
       31 GETVARARGS                       R7 -1
       32 CALL                             R2 -1 1
       33 SETUPVAL                         R2 3
       34 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R3 K2 [{"leading", "trailing"}]
        1 LOADB                            R4 0
        2 SETTABLEKS                       R4 R3 K0 ["leading"]
        4 LOADB                            R4 1
        5 SETTABLEKS                       R4 R3 K1 ["trailing"]
        7 GETUPVAL                         R4 0
        8 MOVE                             R5 R3
        9 MOVE                             R6 R2
       10 CALL                             R4 2 1
       11 LOADN                            R5 0
       12 LOADNIL                          R6
       13 LOADB                            R7 0
       14 DUPCLOSURE                       R8 K3 [PROTO_0]
       15 GETTABLEKS                       R9 R4 K1 ["trailing"]
       17 JUMPIFNOT                        R9 ; [+5]
       18 NEWCLOSURE                       R8 P1
       19 CAPTURE                          REF R5
       20 CAPTURE                          REF R7
       21 CAPTURE                          VAL R0
       22 JUMP                             ; [+6]
       23 GETTABLEKS                       R9 R4 K0 ["leading"]
       25 JUMPIFNOT                        R9 ; [+3]
       26 NEWCLOSURE                       R8 P2
       27 CAPTURE                          REF R5
       28 CAPTURE                          REF R7
       29 NEWCLOSURE                       R9 P3
       30 CAPTURE                          REF R5
       31 CAPTURE                          VAL R4
       32 CAPTURE                          REF R7
       33 CAPTURE                          REF R6
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          REF R8
       37 CLOSEUPVALS                      R5
       38 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["assign"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_4]
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1
