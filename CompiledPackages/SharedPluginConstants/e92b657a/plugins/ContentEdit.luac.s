PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CPC_CALLBACKS"]
        3 GETTABLEKS                       R2 R2 K1 ["EDIT_INSTANCE_PREFIX"]
        5 MOVE                             R3 R0
        6 CONCAT                           R1 R2 R3
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{[1] = "CPC::ContentEdit", ["CPC_CALLBACKS"]}]
        2 DUPTABLE                         R1 K6 [{["EDIT_INSTANCE_PREFIX"] = "EditInstance::"}]
        3 SETTABLEKS                       R1 R0 K2 ["CPC_CALLBACKS"]
        5 DUPCLOSURE                       R1 K7 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K8 ["editInstanceEvent"]
        9 RETURN                           R0 1
