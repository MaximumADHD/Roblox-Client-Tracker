PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetSetting"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["SetSetting"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Plugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestorOfClass"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 2 0
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K5 ["GetSetting"]
       13 DUPCLOSURE                       R2 K6 [PROTO_1]
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R1 K7 ["SetSetting"]
       17 RETURN                           R1 1
