PROTO_0:
        0 LOADK                            R3 K0 ["^%l"]
        1 GETIMPORT                        R4 K3 [string.upper]
        3 NAMECALL                         R1 R0 K4 ["gsub"]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
