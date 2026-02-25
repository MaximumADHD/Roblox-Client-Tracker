PROTO_0:
        0 GETIMPORT                        R4 K1 [pairs]
        2 MOVE                             R5 R3
        3 CALL                             R4 1 3
        4 FORGPREP_NEXT                    R4
        5 MOVE                             R11 R1
        6 MOVE                             R12 R7
        7 NAMECALL                         R9 R0 K2 ["getText"]
        9 CALL                             R9 3 1
       10 JUMPIFNOTEQ                      R9 R2 ; [+2]
       12 RETURN                           R7 1
       13 FORGLOOP                         R4 2 ; [-9]
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
