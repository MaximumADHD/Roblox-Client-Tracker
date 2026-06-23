PROTO_0:
        0 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 GETIMPORT                        R3 K3 [string.find]
        6 GETIMPORT                        R4 K5 [string.lower]
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 GETIMPORT                        R5 K5 [string.lower]
       12 MOVE                             R6 R1
       13 CALL                             R5 1 1
       14 LOADN                            R6 1
       15 LOADB                            R7 1
       16 CALL                             R3 4 1
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
