PROTO_0:
        0 MOVE                             R5 R1
        1 JUMPIFNOTEQKNIL                  R2 ; [+3]
        3 LOADB                            R6 1
        4 JUMP                             ; [+1]
        5 MOVE                             R6 R2
        6 NAMECALL                         R3 R0 K0 ["SetItem"]
        8 CALL                             R3 3 0
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 NAMECALL                         R3 R0 K1 ["Invoke"]
       13 CALL                             R3 3 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["read"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_2:
        0 MOVE                             R4 R1
        1 LOADNIL                          R5
        2 NAMECALL                         R2 R0 K0 ["GetItem"]
        4 CALL                             R2 3 1
        5 JUMPIFEQKNIL                     R2 ; [+3]
        7 JUMPIFNOTEQKB                    R2 FALSE ; [+3]
        9 LOADNIL                          R3
       10 RETURN                           R3 1
       11 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOTEQKNIL                  R0 ; [+3]
        8 LOADB                            R2 1
        9 JUMP                             ; [+1]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          REF R3
        3 CAPTURE                          VAL R2
        4 MOVE                             R7 R1
        5 MOVE                             R8 R4
        6 NAMECALL                         R5 R0 K0 ["OnInvoke"]
        8 CALL                             R5 3 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K1 ["read"]
       12 MOVE                             R7 R0
       13 MOVE                             R8 R1
       14 CALL                             R6 2 1
       15 JUMPIFEQKNIL                     R6 ; [+11]
       17 JUMPIFNOT                        R3 ; [+1]
       18 JUMP                             ; [+8]
       19 LOADB                            R3 1
       20 MOVE                             R7 R2
       21 JUMPIFNOTEQKNIL                  R6 ; [+3]
       23 LOADB                            R8 1
       24 JUMP                             ; [+1]
       25 MOVE                             R8 R6
       26 CALL                             R7 1 0
       27 CLOSEUPVALS                      R3
       28 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["fire"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["hasFired"]
       10 DUPCLOSURE                       R1 K4 [PROTO_2]
       11 SETTABLEKS                       R1 R0 K5 ["read"]
       13 DUPCLOSURE                       R1 K6 [PROTO_4]
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K7 ["listen"]
       17 RETURN                           R0 1
