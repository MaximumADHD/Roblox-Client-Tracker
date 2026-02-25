PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["Disconnect"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"Disconnect"}]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K0 ["Disconnect"]
        5 RETURN                           R0 1
