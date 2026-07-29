PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["name"]
        3 SETTABLE                         R0 R1 R2
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETTABLEKS                       R2 R1 K0 ["resolve"]
        7 CALL                             R2 0 1
        8 JUMPIFEQKNIL                     R2 ; [+8]
       10 GETTABLEKS                       R3 R1 K1 ["onResolve"]
       12 JUMPIFNOT                        R3 ; [+4]
       13 GETTABLEKS                       R3 R1 K1 ["onResolve"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 0
       17 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+2]
        3 LOADNIL                          R3
        4 RETURN                           R3 1
        5 GETTABLEKS                       R3 R2 K0 ["resolve"]
        7 CALL                             R3 0 1
        8 JUMPIFNOTEQKNIL                  R3 ; [+3]
       10 LOADNIL                          R4
       11 RETURN                           R4 1
       12 GETTABLEKS                       R4 R2 K1 ["onResolve"]
       14 JUMPIFNOT                        R4 ; [+4]
       15 GETTABLEKS                       R4 R2 K1 ["onResolve"]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 GETTABLEKS                       R4 R2 K2 ["wrap"]
       21 JUMPIFNOT                        R4 ; [+6]
       22 GETTABLEKS                       R4 R2 K2 ["wrap"]
       24 MOVE                             R5 R3
       25 MOVE                             R6 R1
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1
       28 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R4
       10 GETIMPORT                        R6 K2 [table.insert]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 1 ; [-8]
       15 GETIMPORT                        R1 K4 [table.sort]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 NEWTABLE                         R1 0 0
        5 DUPCLOSURE                       R2 K0 [PROTO_0]
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R2 R0 K1 ["register"]
        9 DUPCLOSURE                       R2 K2 [PROTO_1]
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R2 R0 K3 ["get"]
       13 DUPCLOSURE                       R2 K4 [PROTO_2]
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R2 R0 K5 ["resolve"]
       17 DUPCLOSURE                       R2 K6 [PROTO_3]
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R2 R0 K7 ["resolveWrapped"]
       21 DUPCLOSURE                       R2 K8 [PROTO_4]
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R2 R0 K9 ["isRegistered"]
       25 DUPCLOSURE                       R2 K10 [PROTO_5]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R2 R0 K11 ["names"]
       29 RETURN                           R0 1
