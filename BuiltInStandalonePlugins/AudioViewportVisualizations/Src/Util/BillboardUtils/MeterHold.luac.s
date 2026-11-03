PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R1 R0
        6 GETUPVAL                         R1 2
        7 LOADNIL                          R2
        8 SETTABLE                         R2 R1 R0
        9 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETUPVAL                         R2 0
        2 SETTABLE                         R1 R2 R0
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 SETTABLE                         R3 R2 R0
        7 GETUPVAL                         R2 1
        8 LOADNIL                          R3
        9 SETTABLE                         R3 R2 R0
       10 GETUPVAL                         R2 2
       11 LOADNIL                          R3
       12 SETTABLE                         R3 R2 R0
       13 RETURN                           R0 0

PROTO_3:
        0 JUMPIFEQKNIL                     R1 ; [+8]
        2 GETUPVAL                         R2 0
        3 SETTABLE                         R1 R2 R0
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R3 0 1
        7 SETTABLE                         R3 R2 R0
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 0
       10 LOADNIL                          R3
       11 SETTABLE                         R3 R2 R0
       12 GETUPVAL                         R2 1
       13 LOADNIL                          R3
       14 SETTABLE                         R3 R2 R0
       15 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFEQKNIL                     R2 ; [+4]
        6 ORK                              R3 R1 K0 [0]
        7 JUMPIFNOTLE                      R2 R3 ; [+18]
        9 JUMPIFEQKNIL                     R1 ; [+8]
       11 GETUPVAL                         R4 1
       12 SETTABLE                         R1 R4 R0
       13 GETUPVAL                         R4 2
       14 GETUPVAL                         R5 3
       15 CALL                             R5 0 1
       16 SETTABLE                         R5 R4 R0
       17 JUMP                             ; [+6]
       18 GETUPVAL                         R4 1
       19 LOADNIL                          R5
       20 SETTABLE                         R5 R4 R0
       21 GETUPVAL                         R4 2
       22 LOADNIL                          R5
       23 SETTABLE                         R5 R4 R0
       24 MOVE                             R3 R1
       25 RETURN                           R3 1
       26 GETUPVAL                         R4 2
       27 GETTABLE                         R3 R4 R0
       28 JUMPIFNOT                        R3 ; [+9]
       29 GETUPVAL                         R5 3
       30 CALL                             R5 0 1
       31 SUB                              R4 R5 R3
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R5 R5 K1 ["HANG_TIME"]
       35 JUMPIFNOTLT                      R4 R5 ; [+2]
       37 RETURN                           R2 1
       38 JUMPIFEQKNIL                     R1 ; [+8]
       40 GETUPVAL                         R5 1
       41 SETTABLE                         R1 R5 R0
       42 GETUPVAL                         R5 2
       43 GETUPVAL                         R6 3
       44 CALL                             R6 0 1
       45 SETTABLE                         R6 R5 R0
       46 JUMP                             ; [+6]
       47 GETUPVAL                         R5 1
       48 LOADNIL                          R6
       49 SETTABLE                         R6 R5 R0
       50 GETUPVAL                         R5 2
       51 LOADNIL                          R6
       52 SETTABLE                         R6 R5 R0
       53 MOVE                             R4 R1
       54 RETURN                           R4 1

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 1
        7 GETTABLE                         R6 R7 R4
        8 JUMPIFNOT                        R6 ; [+20]
        9 GETUPVAL                         R9 2
       10 GETTABLE                         R8 R9 R4
       11 ORK                              R7 R8 K0 [0]
       12 JUMPIFNOTLT                      R7 R6 ; [+16]
       14 GETUPVAL                         R8 3
       15 CALL                             R8 0 1
       16 SUB                              R7 R8 R5
       17 GETUPVAL                         R8 4
       18 GETTABLEKS                       R8 R8 K1 ["HANG_TIME"]
       20 JUMPIFNOTLE                      R8 R7 ; [+8]
       22 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       24 MOVE                             R8 R0
       25 MOVE                             R9 R4
       26 GETIMPORT                        R7 K4 [table.insert]
       28 CALL                             R7 2 0
       29 FORGLOOP                         R1 2 ; [-24]
       31 RETURN                           R0 1

PROTO_6:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K2 [table.clear]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K2 [table.clear]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 GETIMPORT                        R1 K2 [os.clock]
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 0
        8 NEWTABLE                         R4 0 0
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R2
       12 NEWCLOSURE                       R6 P1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R4
       16 NEWCLOSURE                       R7 P2
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R4
       20 NEWCLOSURE                       R8 P3
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R1
       24 NEWCLOSURE                       R9 P4
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U0
       30 NEWCLOSURE                       R10 P5
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U0
       36 NEWCLOSURE                       R11 P6
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 DUPTABLE                         R12 K9 [{"get", "set", "heldVolume", "expired", "clear", "reset"}]
       41 SETTABLEKS                       R5 R12 K3 ["get"]
       43 SETTABLEKS                       R7 R12 K4 ["set"]
       45 SETTABLEKS                       R9 R12 K5 ["heldVolume"]
       47 SETTABLEKS                       R10 R12 K6 ["expired"]
       49 SETTABLEKS                       R6 R12 K7 ["clear"]
       51 SETTABLEKS                       R11 R12 K8 ["reset"]
       53 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 LOADK                            R1 K0 [0.5]
        4 SETTABLEKS                       R1 R0 K1 ["HANG_TIME"]
        6 DUPCLOSURE                       R1 K2 [PROTO_7]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["create"]
       10 RETURN                           R0 1
