PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 NAMECALL                         R0 R0 K2 ["GetFFlags"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 0
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K3 ["JSONDecode"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 NAMECALL                         R0 R0 K2 ["GetFFlagOverrides"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 0
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K3 ["JSONDecode"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [settings]
        2 CALL                             R1 0 1
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K2 ["SetFFlagOverrides"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K7 [{"GetFFlags", "GetFFlagOverrides", "SetFFlagOverrides"}]
        8 DUPCLOSURE                       R2 K8 [PROTO_0]
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R1 K4 ["GetFFlags"]
       12 DUPCLOSURE                       R2 K9 [PROTO_1]
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R1 K5 ["GetFFlagOverrides"]
       16 DUPCLOSURE                       R2 K10 [PROTO_2]
       17 SETTABLEKS                       R2 R1 K6 ["SetFFlagOverrides"]
       19 RETURN                           R1 1
