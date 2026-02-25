PROTO_0:
        0 LOADK                            R4 K0 ["://(%d+)"]
        1 NAMECALL                         R2 R0 K1 ["match"]
        3 CALL                             R2 2 -1
        4 FASTCALL                         TONUMBER ; [+2]
        5 GETIMPORT                        R1 K3 [tonumber]
        7 CALL                             R1 -1 1
        8 JUMPIF                           R1 ; [+8]
        9 LOADK                            R4 K4 ["(%d+)"]
       10 NAMECALL                         R2 R0 K1 ["match"]
       12 CALL                             R2 2 -1
       13 FASTCALL                         TONUMBER ; [+2]
       14 GETIMPORT                        R1 K3 [tonumber]
       16 CALL                             R1 -1 1
       17 JUMPIFNOT                        R1 ; [+1]
       18 RETURN                           R1 1
       19 LOADNIL                          R2
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
