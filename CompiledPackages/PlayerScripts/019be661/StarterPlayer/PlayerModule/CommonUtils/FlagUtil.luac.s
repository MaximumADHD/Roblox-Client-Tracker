PROTO_0:
        0 GETIMPORT                        R0 K1 [UserSettings]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R0 R0 K2 ["IsUserFeatureEnabled"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 AND                              R3 R1 R2
        6 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 DUPCLOSURE                       R1 K0 [PROTO_1]
        4 SETTABLEKS                       R1 R0 K1 ["getUserFlag"]
        6 RETURN                           R0 1
