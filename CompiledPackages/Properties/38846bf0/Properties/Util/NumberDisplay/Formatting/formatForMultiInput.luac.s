PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%.3f"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 LOADK                            R3 K4 ["%.?0+$"]
        6 LOADK                            R4 K5 [""]
        7 NAMECALL                         R1 R1 K6 ["gsub"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
