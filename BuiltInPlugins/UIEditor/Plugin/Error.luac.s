PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["ERROR:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 LOADNIL                          R1
        6 NAMECALL                         R1 R1 K3 ["throw"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 SETGLOBAL                        R0 K1 ["Error"]
        4 GETGLOBAL                        R0 K1 ["Error"]
        6 RETURN                           R0 1
