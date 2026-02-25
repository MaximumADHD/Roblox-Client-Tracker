PROTO_0:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["(%d+)$"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 FASTCALL1                        TONUMBER R1 ; [+3]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K5 [tonumber]
       10 CALL                             R2 1 1
       11 RETURN                           R2 1
       12 LOADNIL                          R2
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
