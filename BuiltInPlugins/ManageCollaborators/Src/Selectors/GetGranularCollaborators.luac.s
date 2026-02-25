PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["GranularPermissions"]
        2 GETTABLEKS                       R2 R1 K1 ["RoleIds"]
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
