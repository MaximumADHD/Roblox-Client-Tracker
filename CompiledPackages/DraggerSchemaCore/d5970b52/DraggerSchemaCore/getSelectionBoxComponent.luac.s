PROTO_0:
        0 LOADK                            R4 K0 ["Attachment"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+5]
        5 LOADK                            R4 K2 ["Constraint"]
        6 NAMECALL                         R2 R1 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 LOADK                            R2 K3 ["SelectionBox"]
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
