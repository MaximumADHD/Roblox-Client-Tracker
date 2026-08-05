PROTO_0:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_2:
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
        1 NEWTABLE                         R0 4 0
        3 NEWTABLE                         R1 0 0
        5 DUPCLOSURE                       R2 K0 [PROTO_0]
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R2 R0 K1 ["register"]
        9 DUPCLOSURE                       R2 K2 [PROTO_1]
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R2 R0 K3 ["get"]
       13 DUPCLOSURE                       R2 K4 [PROTO_2]
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R2 R0 K5 ["list"]
       17 RETURN                           R0 1
