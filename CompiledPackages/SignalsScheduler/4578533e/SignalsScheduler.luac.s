PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+19]
        2 LOADB                            R1 1
        3 SETUPVAL                         R1 0
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 1
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 MOVE                             R6 R5
       11 CALL                             R6 0 0
       12 FORGLOOP                         R1 2 ; [-3]
       14 GETIMPORT                        R1 K2 [table.clear]
       16 GETUPVAL                         R2 1
       17 CALL                             R1 1 0
       18 LOADB                            R1 0
       19 SETUPVAL                         R1 0
       20 RETURN                           R0 0
       21 MOVE                             R1 R0
       22 CALL                             R1 0 0
       23 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_1]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 LOADB                            R0 0
        2 NEWTABLE                         R1 0 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R0
        6 CAPTURE                          VAL R1
        7 DUPCLOSURE                       R3 K0 [PROTO_2]
        8 CAPTURE                          VAL R2
        9 DUPCLOSURE                       R4 K1 [PROTO_3]
       10 CAPTURE                          VAL R1
       11 DUPTABLE                         R5 K5 [{"batch", "flush", "schedule"}]
       12 SETTABLEKS                       R2 R5 K2 ["batch"]
       14 SETTABLEKS                       R3 R5 K3 ["flush"]
       16 SETTABLEKS                       R4 R5 K4 ["schedule"]
       18 CLOSEUPVALS                      R0
       19 RETURN                           R5 1
