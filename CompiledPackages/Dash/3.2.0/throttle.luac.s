PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [os.clock]
        2 CALL                             R0 0 1
        3 SETUPVAL                         R0 0
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 1
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
        9 GETIMPORT                        R1 K5 [table.unpack]
       11 CALL                             R1 1 -1
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [os.clock]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 GETVARARGS                       R2 -1
        7 SETLIST                          R1 R2 -1 [1]
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R2 1
       11 SUB                              R1 R0 R2
       12 GETUPVAL                         R2 2
       13 JUMPIFNOT                        R2 ; [+25]
       14 GETUPVAL                         R2 3
       15 JUMPIFNOTLE                      R2 R1 ; [+23]
       17 GETUPVAL                         R2 4
       18 JUMPIFNOT                        R2 ; [+6]
       19 GETIMPORT                        R2 K5 [task.cancel]
       21 GETUPVAL                         R3 4
       22 CALL                             R2 1 0
       23 LOADNIL                          R2
       24 SETUPVAL                         R2 4
       25 GETIMPORT                        R2 K2 [os.clock]
       27 CALL                             R2 0 1
       28 SETUPVAL                         R2 1
       29 LOADNIL                          R2
       30 SETUPVAL                         R2 4
       31 GETUPVAL                         R2 5
       32 GETUPVAL                         R4 0
       33 FASTCALL1                        TABLE_UNPACK R4 ; [+2]
       34 GETIMPORT                        R3 K8 [table.unpack]
       36 CALL                             R3 1 -1
       37 CALL                             R2 -1 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R2 6
       40 JUMPIFNOT                        R2 ; [+21]
       41 GETUPVAL                         R2 4
       42 JUMPIF                           R2 ; [+19]
       43 GETUPVAL                         R3 1
       44 JUMPIFNOTEQKN                    R3 K9 [-∞] ; [+3]
       46 MOVE                             R2 R0
       47 JUMPIF                           R2 ; [+1]
       48 GETUPVAL                         R2 1
       49 GETUPVAL                         R4 3
       50 SUB                              R5 R0 R2
       51 SUB                              R3 R4 R5
       52 LOADN                            R4 0
       53 JUMPIFNOTLT                      R3 R4 ; [+2]
       55 LOADN                            R3 0
       56 GETIMPORT                        R4 K11 [task.delay]
       58 MOVE                             R5 R3
       59 GETUPVAL                         R6 7
       60 CALL                             R4 2 1
       61 SETUPVAL                         R4 4
       62 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R3 K2 [{"leading", "trailing"}]
        1 LOADB                            R4 1
        2 SETTABLEKS                       R4 R3 K0 ["leading"]
        4 LOADB                            R4 1
        5 SETTABLEKS                       R4 R3 K1 ["trailing"]
        7 GETUPVAL                         R4 0
        8 MOVE                             R5 R3
        9 MOVE                             R6 R2
       10 CALL                             R4 2 1
       11 LOADN                            R6 0
       12 FASTCALL2                        MATH_MAX R6 R1 ; [+4]
       14 MOVE                             R7 R1
       15 GETIMPORT                        R5 K5 [math.max]
       17 CALL                             R5 2 1
       18 GETTABLEKS                       R6 R4 K0 ["leading"]
       20 GETTABLEKS                       R7 R4 K1 ["trailing"]
       22 LOADK                            R8 K6 [-∞]
       23 LOADNIL                          R9
       24 NEWTABLE                         R10 0 0
       26 NEWCLOSURE                       R11 P0
       27 CAPTURE                          REF R9
       28 NEWCLOSURE                       R12 P1
       29 CAPTURE                          REF R8
       30 CAPTURE                          REF R9
       31 CAPTURE                          VAL R0
       32 CAPTURE                          REF R10
       33 NEWCLOSURE                       R13 P2
       34 CAPTURE                          REF R10
       35 CAPTURE                          REF R8
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R5
       38 CAPTURE                          REF R9
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R12
       42 CLOSEUPVALS                      R8
       43 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["assign"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_3]
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1
