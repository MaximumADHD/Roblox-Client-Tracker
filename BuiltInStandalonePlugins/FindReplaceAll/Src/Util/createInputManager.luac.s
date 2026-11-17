PROTO_0:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETIMPORT                        R1 K4 [table.remove]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETIMPORT                        R1 K4 [table.remove]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 MOVE                             R6 R5
        5 MOVE                             R7 R0
        6 CALL                             R6 1 0
        7 FORGLOOP                         R1 2 ; [-4]
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 MOVE                             R6 R5
        5 MOVE                             R7 R0
        6 CALL                             R6 1 0
        7 FORGLOOP                         R1 2 ; [-4]
        9 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K4 [{"addInputBegan", "addInputEnded", "fireInputBegan", "fireInputEnded"}]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R3 R2 K0 ["addInputBegan"]
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["addInputEnded"]
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R3 R2 K2 ["fireInputBegan"]
       17 NEWCLOSURE                       R3 P3
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R3 R2 K3 ["fireInputEnded"]
       21 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_6]
        2 RETURN                           R0 1
