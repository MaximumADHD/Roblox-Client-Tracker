PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [string.gsub]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K3 ["[\n\t]"]
        7 LOADK                            R4 K4 [""]
        8 CALL                             R1 3 1
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
