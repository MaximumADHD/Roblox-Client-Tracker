PROTO_0:
        0 GETIMPORT                        R1 K2 [utf8.len]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 JUMPIFNOTEQKN                    R1 K3 [0] ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 FASTCALL1                        TONUMBER R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K5 [tonumber]
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+4]
       14 LOADN                            R2 0
       15 JUMPIFNOTLT                      R2 R1 ; [+2]
       17 RETURN                           R1 1
       18 LOADNIL                          R2
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
