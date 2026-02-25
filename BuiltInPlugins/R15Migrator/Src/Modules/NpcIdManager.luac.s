PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["SetNpcWithId"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Npcs"]
        3 SETTABLE                         R0 R2 R1
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Npcs"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["Npcs"]
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 8 0
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K4 ["Npcs"]
       13 DUPCLOSURE                       R2 K5 [PROTO_0]
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R1 K6 ["AddNpc"]
       18 DUPCLOSURE                       R2 K7 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R2 R1 K8 ["SetNpcWithId"]
       22 DUPCLOSURE                       R2 K9 [PROTO_2]
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R2 R1 K10 ["GetNpcFromId"]
       26 DUPCLOSURE                       R2 K11 [PROTO_3]
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R2 R1 K12 ["Reset"]
       30 RETURN                           R1 1
