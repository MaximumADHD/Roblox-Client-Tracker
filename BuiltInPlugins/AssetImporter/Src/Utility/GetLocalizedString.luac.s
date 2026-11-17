PROTO_0:
        0 MOVE                             R6 R1
        1 MOVE                             R7 R2
        2 MOVE                             R8 R3
        3 NAMECALL                         R4 R0 K0 ["getText"]
        5 CALL                             R4 4 1
        6 LENGTH                           R8 R2
        7 MINUS                            R7 R8
        8 NAMECALL                         R5 R4 K1 ["sub"]
       10 CALL                             R5 2 1
       11 JUMPIFNOTEQ                      R5 R2 ; [+3]
       13 LOADNIL                          R5
       14 RETURN                           R5 1
       15 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
