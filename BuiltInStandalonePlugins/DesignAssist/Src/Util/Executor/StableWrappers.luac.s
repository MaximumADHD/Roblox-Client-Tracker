PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["impl"]
        4 GETVARARGS                       R1 -1
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOT                        R3 ; [+5]
        3 SETTABLEKS                       R1 R3 K0 ["impl"]
        5 GETTABLEKS                       R4 R3 K1 ["wrapper"]
        7 RETURN                           R4 1
        8 DUPTABLE                         R4 K3 [{[1], ["wrapper"] = }]
        9 SETTABLEKS                       R1 R4 K0 ["impl"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R4
       13 SETTABLEKS                       R5 R4 K1 ["wrapper"]
       15 GETUPVAL                         R5 0
       16 SETTABLE                         R4 R5 R0
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R6 R4 K1 ["wrapper"]
       20 OR                               R7 R2 R0
       21 SETTABLE                         R7 R5 R6
       22 GETTABLEKS                       R5 R4 K1 ["wrapper"]
       24 RETURN                           R5 1

PROTO_2:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K2 [table.clear]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["function"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLE                         R1 R2 R0
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 NEWTABLE                         R1 0 0
        5 NEWTABLE                         R2 0 0
        7 DUPCLOSURE                       R3 K0 [PROTO_1]
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 SETTABLEKS                       R3 R0 K1 ["getOrCreate"]
       12 DUPCLOSURE                       R3 K2 [PROTO_2]
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 SETTABLEKS                       R3 R0 K3 ["clear"]
       17 DUPCLOSURE                       R3 K4 [PROTO_3]
       18 CAPTURE                          VAL R2
       19 SETTABLEKS                       R3 R0 K5 ["getName"]
       21 RETURN                           R0 1
