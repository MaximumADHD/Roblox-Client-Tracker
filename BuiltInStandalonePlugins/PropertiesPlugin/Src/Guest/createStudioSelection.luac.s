PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K3 [{"Get", "Set", "SelectionChanged"}]
        1 DUPCLOSURE                       R1 K4 [PROTO_0]
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["Get"]
        5 DUPCLOSURE                       R1 K5 [PROTO_1]
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K1 ["Set"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["SelectionChanged"]
       12 SETTABLEKS                       R1 R0 K2 ["SelectionChanged"]
       14 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_2]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
