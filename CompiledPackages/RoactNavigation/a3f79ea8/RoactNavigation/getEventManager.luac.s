PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R3 R2 R4
        5 JUMP                             ; [+1]
        6 LOADNIL                          R3
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R4 K2 [table.find]
       11 MOVE                             R5 R3
       12 MOVE                             R6 R1
       13 CALL                             R4 2 1
       14 GETIMPORT                        R5 K4 [table.remove]
       16 MOVE                             R6 R3
       17 MOVE                             R7 R4
       18 CALL                             R5 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETUPVAL                         R4 3
        6 GETTABLE                         R3 R2 R4
        7 JUMP                             ; [+1]
        8 LOADNIL                          R3
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R0 0
       11 GETIMPORT                        R4 K2 [table.find]
       13 MOVE                             R5 R3
       14 MOVE                             R6 R1
       15 CALL                             R4 2 1
       16 GETIMPORT                        R5 K4 [table.remove]
       18 MOVE                             R6 R3
       19 MOVE                             R7 R4
       20 CALL                             R5 2 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 0
        2 GETTABLE                         R3 R4 R0
        3 JUMPIF                           R3 ; [+2]
        4 NEWTABLE                         R3 0 0
        6 SETTABLE                         R3 R2 R0
        7 GETUPVAL                         R3 0
        8 GETTABLE                         R2 R3 R0
        9 GETUPVAL                         R3 1
       10 GETUPVAL                         R6 0
       11 GETTABLE                         R5 R6 R0
       12 GETUPVAL                         R6 1
       13 GETTABLE                         R4 R5 R6
       14 JUMPIF                           R4 ; [+2]
       15 NEWTABLE                         R4 0 0
       17 SETTABLE                         R4 R2 R3
       18 GETUPVAL                         R5 0
       19 GETTABLE                         R4 R5 R0
       20 GETUPVAL                         R5 1
       21 GETTABLE                         R3 R4 R5
       22 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       24 MOVE                             R4 R1
       25 GETIMPORT                        R2 K2 [table.insert]
       27 CALL                             R2 2 0
       28 DUPTABLE                         R2 K4 [{"remove"}]
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R3 R2 K3 ["remove"]
       36 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+2]
        3 NEWTABLE                         R2 0 0
        5 GETUPVAL                         R5 1
        6 GETTABLE                         R4 R2 R5
        7 JUMPIFNOT                        R4 ; [+6]
        8 GETIMPORT                        R3 K2 [table.clone]
       10 GETUPVAL                         R5 1
       11 GETTABLE                         R4 R2 R5
       12 CALL                             R3 1 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R3
       15 JUMPIFNOT                        R3 ; [+9]
       16 MOVE                             R4 R3
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 MOVE                             R9 R8
       21 MOVE                             R10 R1
       22 CALL                             R9 1 0
       23 FORGLOOP                         R4 2 ; [-4]
       25 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 DUPTABLE                         R4 K2 [{"addListener", "emit"}]
        9 SETTABLEKS                       R3 R4 K0 ["addListener"]
       11 NEWCLOSURE                       R5 P2
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R5 R4 K1 ["emit"]
       16 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_4]
        2 RETURN                           R0 1
