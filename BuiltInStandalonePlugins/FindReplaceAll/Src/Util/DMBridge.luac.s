PROTO_0:
        0 LOADK                            R4 K0 ["DmChanged"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K1 ["OnInvoke"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_1:
        0 LOADK                            R4 K0 ["DmAboutToChange"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K1 ["OnInvoke"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"connectOnDmChange", "connectOnDmAboutToChange"}]
        2 DUPCLOSURE                       R1 K3 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K0 ["connectOnDmChange"]
        5 DUPCLOSURE                       R1 K4 [PROTO_1]
        6 SETTABLEKS                       R1 R0 K1 ["connectOnDmAboutToChange"]
        8 RETURN                           R0 1
