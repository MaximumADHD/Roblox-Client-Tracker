PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 JUMPIF                           R0 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 LOADK                            R4 K3 ["Studio"]
        8 NAMECALL                         R2 R1 K4 ["FindFirstChild"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
